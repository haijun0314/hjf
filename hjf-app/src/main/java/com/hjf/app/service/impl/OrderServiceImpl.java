package com.hjf.app.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.collections.MapUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.core.bean.reqBean.OrderReqBean;
import com.hjf.app.core.bean.respBean.OrderDetailRespBean;
import com.hjf.app.core.bean.vo.OrderPro;
import com.hjf.app.core.util.AccountUtil;
import com.hjf.app.dao.OrderInfoDAO;
import com.hjf.app.dao.OrderProductDAO;
import com.hjf.app.dao.ProductCommentDAO;
import com.hjf.app.enmu.OrderStatus;
import com.hjf.app.entity.OrderInfo;
import com.hjf.app.entity.OrderProduct;
import com.hjf.app.entity.Product;
import com.hjf.app.entity.ProductComment;
import com.hjf.app.service.ConfigService;
import com.hjf.app.service.OrderService;
import com.hjf.app.service.ProductService;
import com.hjf.base.model.PageBean;
import com.hjf.base.mybatis.BaseService;
import com.hjf.base.mybatis.Query;
import com.hjf.common.bean.BaseRespBean;
import com.hjf.common.enums.DefaultStatus;
import com.hjf.common.util.JsonUtil;
import com.hjf.common.util.TimeUtil;

@Service
@Transactional
public class OrderServiceImpl extends BaseService implements OrderService {
	@Resource	OrderInfoDAO   		orderInfoDAO;
	@Resource	OrderProductDAO 	orderProductDAO;
	@Resource	ProductService		productService;
	@Resource	ConfigService  		configService;
	@Resource   ProductCommentDAO   productCommentDAO;
	
	
	
	
	
	/**
	 * 查询待评价商品【根据订单号】
	 */
	public BaseRespBean  waitCommonPros(Integer orderId) {
		Query query=new Query();
		query.append("orderId", orderId);
		query.append("isComment", DefaultStatus.No.getValue());
		List datas=orderProductDAO.queryList(query);
		r.setDatas(datas);
		r.success();
		return r;
	}
	
	
	
	/**
	 * 【订单删除 】
	 */
	@Override
	public BaseRespBean delete( OrderInfo q) {
		 orderInfoDAO.logicDelete(q);
		 r.success();
		 return r;
	}
	
	
	/**
	 * 【订单详情】【主要订单实体信息】
	 */
	public OrderDetailRespBean getOrder(OrderDetailRespBean r){
		OrderInfo order = (OrderInfo) orderInfoDAO.getObjById(r.getOrderId());
		copyProperties(r, order);
		r.success();
		return r;
	}	
	
	
	
	/**
	 * 【订单详情】【详细订单数据】
	 */
	public OrderDetailRespBean orderDetail(OrderDetailRespBean r) {
		OrderInfo order = (OrderInfo) orderInfoDAO.getObjById(r.getOrderId());
		copyProperties(r, order);
		if ("0".equals(r.getPayRoute())) {
			r.setPayRoute("支付宝");
		}
		if ("1".equals(r.getPayRoute())) {
			r.setPayRoute("微信"); 
		}
		r.setCreatedTime(TimeUtil.formatDateYMDHMS(order.getCreatedTime()));
		
		Query q=new Query();
		q.append("orderId", order.getOrderId());
		List pros=orderProductDAO.queryList(q);
		r.setPros(pros);
		r.success();
		return r;

	}

	/**
	 * 订单列表
	 */
	public BaseRespBean orderList(PageBean pb, BaseRespBean r) {
		String searchType = (String) pb.getParams().get("searchType");
		if ("1".equals(searchType)) {
			pb.append("status", OrderStatus.create.getValue());	
		}else if("2".equals(searchType)){
			pb.append("status", OrderStatus.distribute.getValue());
		}else if("3".equals(searchType)){
			pb.append("status", OrderStatus.complete.getValue());
		}
		pb.append("accountId", AccountUtil.getMyId());	
		pb = orderInfoDAO.queryPageList(pb);
		r.setDatas(pb.getDatas());
		r.success();
		return r;
	}

	
	
	
	
	/**
	 * 【订单创建】
	 */
	@Override
	public BaseRespBean create( OrderReqBean q) {
		List<OrderPro>  pros=JsonUtil.json2List(q.getPros(), OrderPro.class);
		if (pros==null||pros.size()<1) {
			r.fail();
			return r;
		}
		
		Integer productId=pros.get(0).getProductId();
		Product pd=productService.getProduct(productId);
		
		log.info("【下单】..开始....");
		OrderInfo o =new OrderInfo();
		copyProperties(o, q);
		o.setStatus("1");
		o.setStatusDesc("待支付");
		o.setDescContent(pd.getProductName());;
		o.setDescPic(pd.getPic());
		o=(OrderInfo) orderInfoDAO.saveWithReturnId(o);
		if(o==null){
			log.error("【下单】   失败，保存订单数据发生异常");
			r.fail();
			return r;
		}
		
		log.info("【下单】 共计商品个数为"+pros.size() );
		for(OrderPro op:pros){
			OrderProduct p=new OrderProduct();
			p.setCount(op.getCount());
			p.setMoney(op.getMoney());
			p.setProductId(op.getProductId());
			p.setOrderId(o.getOrderId());
			orderProductDAO.save(p);
			log.info("【下单】 当前保存商品ID="+p.getProductId()+"...购买个数"+p.getCount()+"...交易金额"+p.getMoney() );
		}
		r.setData(o.getOrderId());
		r.success();
		log.info("【下单】 订单号="+o.getOrderId() +",开始创建订单商品数据");
		return r;
	}


	/**
	 * 评价
	 */
	public BaseRespBean comment(OrderReqBean q) {
		
		OrderInfo o=new OrderInfo();
		o.setOrderId(q.getOrderId());
		o.setIsComment(DefaultStatus.Yes.getValue());
		int ret =orderInfoDAO.updateById(o);
		if(ret<0){
			r.fail();
			return r;
		}
		r=waitCommonPros(q.getOrderId());
		List pros=r.getDatas();
		for(int i=0;i<pros.size()&&pros.size()>0;i++){
			Map map=(Map)pros.get(i);
			Integer opId=MapUtils.getInteger(map, "opId");
			Integer productId=MapUtils.getInteger(map, "productId");
			OrderProduct  op=new OrderProduct();
			op.setOpId(opId);
			op.setIsComment(DefaultStatus.Yes.getValue());
			orderProductDAO.updateById(op);
			ProductComment  pc=new ProductComment();
			pc.setScore(q.getScore());
			pc.setContent(q.getContent());
			pc.setProductId(productId);
			pc.setAccountId(AccountUtil.getMyId());
			productCommentDAO.save(pc);
		}
		
		
		r.success();
		return r;
	}

	 
 
}
