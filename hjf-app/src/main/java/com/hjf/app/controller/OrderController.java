package com.hjf.app.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.app.core.bean.reqBean.OrderReqBean;
import com.hjf.app.core.bean.respBean.OrderDetailRespBean;
import com.hjf.app.core.util.AccountUtil;
import com.hjf.app.entity.OrderInfo;
import com.hjf.app.service.OrderService;
import com.hjf.base.model.PageBean;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.bean.BaseRespBean;
/**
 * 功能说明:【订单控制】
 * 作    者：lihaijun
 * 创建日期：2017-09-12
 */
@Controller  
@RequestMapping("/order") 
public class OrderController extends BaseAction{
	@Resource OrderService orderService;

	/**  
	 * 订单评价
	 */
	@RequestMapping(params = "comment")   
	public void comment(OrderReqBean q,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			r=orderService.comment(q);
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response,e);
		}
	}	
		
	
	/**  
	 * 查询待评价商品【根据订单号】
	 */
	@RequestMapping(params = "waitCommentPros")   
	public void waitCommentPros(OrderInfo q,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			r=orderService.waitCommonPros(q.getOrderId());
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response,e);
		}
	}		
		
	
	/**  
	 * 【订单删除】
	 */
	@RequestMapping(params = "delete")   
	public void delete(OrderInfo q,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			r=orderService.delete(q);
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response,e);
		}
	}		
	
	
	
	
	/**  
	 * 【订单创建】
	 */
	@RequestMapping(params = "create")   
	public void create(OrderReqBean q,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			
		    Integer accountId=AccountUtil.getMyId();
			q.setAccountId(accountId);
			BaseRespBean  r=new BaseRespBean();
			if (!q.checkCreate()) {
				err_param(response, r);
				return  ;
			}
			r=orderService.create(q);
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response,e);
		}
	}	
	 
 
	/**  
	 * 【我的订单】
	 */
	@RequestMapping(params = "orderList")   
	public void orderList(OrderReqBean q,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			BaseRespBean  r=new BaseRespBean();
			PageBean  pb		=new PageBean(request);
			pb.append("searchType", q.getSearchType());
			r=orderService.orderList(pb, r);
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response);
		}
	}	
	
	/**  
	 * 【订单详情】
	 */
	@RequestMapping(params = "detail")   
	public void detail(OrderReqBean q,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			OrderDetailRespBean  r=new OrderDetailRespBean();
			if (!q.checkOrderId()) {
				err_param(response, r);
				return  ;
			}
			r.setOrderId(q.getOrderId());
			r=orderService.orderDetail(r);
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response);
		}
	}
	/**  
	 * 【订单详情】
	 */
	@RequestMapping(params = "getOrder")   
	public void getOrder(OrderReqBean q,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			OrderDetailRespBean  r=new OrderDetailRespBean();
			if (!q.checkOrderId()) {
				err_param(response, r);
				return  ;
			}
			r.setOrderId(q.getOrderId());
			r=orderService.orderDetail(r);
			respMsgObj(response, r); 
		} catch (Exception e) {
			 errorMsg(response);
		}
	}	
	
	
	
	
	  
}
