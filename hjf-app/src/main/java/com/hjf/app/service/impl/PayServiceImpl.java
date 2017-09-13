package com.hjf.app.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.core.bean.reqBean.PayReqBean;
import com.hjf.app.core.bean.respBean.FinanceRespBean;
import com.hjf.app.core.util.AccountUtil;
import com.hjf.app.dao.FinancePayOrderDAO;
import com.hjf.app.dao.OrderInfoDAO;
import com.hjf.app.enmu.FinanceType;
import com.hjf.app.enmu.OrderStatus;
import com.hjf.app.enmu.PayStatus;
import com.hjf.app.entity.FinancePayOrder;
import com.hjf.app.entity.OrderInfo;
import com.hjf.app.service.AccountService;
import com.hjf.app.service.FinanceService;
import com.hjf.app.service.PayService;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.mybatis.BaseService;
import com.hjf.common.util.StringUtil;
@Service
@Transactional 
public class PayServiceImpl extends BaseService implements PayService {
	@Resource  FinancePayOrderDAO 	financePayOrderDAO;
	@Resource  OrderInfoDAO  		orderInfoDAO;
	@Resource  AccountService     	accountService;
	@Resource FinanceService 	    financeService;
	/**
	 * 【支付创建订单】
	 */
	public FinanceRespBean  create(PayReqBean  q,FinanceRespBean r) {
		log.info("【支付创建订单】...");
		FinancePayOrder mc=new FinancePayOrder();
		mc.setStatus("2");// 0成功1 失败 2 待支付
		mc.setModule(q.getModule());
		mc.setPayRoute(q.getPayRoute());
		mc.setAccountId(AccountUtil.getMyId());
		mc.setPayOrderId(StringUtil.createId(""));
		mc.setMoney(q.getMoney());
		Integer dataId=q.getDataId();
		mc.setDataId(dataId);
		if (q.getPayRoute().equals("1")) {
			int ret =financePayOrderDAO.save(mc);
		}else if (q.getPayRoute().equals("2")) {
			int ret =financePayOrderDAO.save(mc);
		}  
		r.setOrderId( mc.getPayOrderId());
		r.success();
		return r;		
	}	
	
	 
	/**
	 * 【支付创建订单】
	 */
	public FinanceRespBean  notify(String payOrderId,String trade_no  ,boolean isSuccess){
		FinanceRespBean  r=new FinanceRespBean();
		try {
			FinancePayOrder po=(FinancePayOrder) financePayOrderDAO.getObjById(payOrderId);
			po.setTrade_no(trade_no);
			Integer dataId=po.getDataId();
			String module=po.getModule();
			if ("2".equals(po.getStatus())) {
				if (!isSuccess) {
					log.info("【支付后台通知】....支付订单号"+payOrderId+"支付失败处理");
					po.setStatus(PayStatus.fail.getValue());
					financePayOrderDAO.updateById(po);
					OrderInfo o=new OrderInfo();
					o.setStatus(OrderStatus.fail.getValue());
					o.setStatusDesc("支付失败");
					o.setOrderId(dataId);
					orderInfoDAO.updateById(o);
					log.info("【支付后台通知】..支付失败后增加库存处理");
					return r;
				} 
				/********************【购买玩具】*************************/
				if (module.equals("1")) {
					log.info("【支付后台通知】....来自模块..购买玩具. module="+module);
					OrderInfo o=new OrderInfo();
					o.setOrderId(dataId);
					o.setStatus(OrderStatus.paySuccess.getValue());
					o.setStatusDesc(OrderStatus.getName(o.getStatus()));
					orderInfoDAO.updateById(o);
					log.info("【支付后台通知】 交易成功  保存账单数据");
					financeService.addBill(po.getAccountId(),  dataId, "购买商品", po.getMoney(), FinanceType.BuyProduct.getValue());
					log.info("【支付后台通知】 交易成功  更新订单状态为成功");
					po.setStatus(PayStatus.success.getValue());
					financePayOrderDAO.updateById(po);
				}
			}else {
				log.info("【支付后台通知】.... 订单号"+payOrderId+"处于非待支付状态，不应该继续处理");
			}
			
		} catch (Exception e) {
			errorMsg(e);
			r.setCode(CodeUtil.error);
			return r;
		}
		r.success();
		return r;
	}	
}
