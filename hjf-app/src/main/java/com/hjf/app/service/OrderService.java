package com.hjf.app.service;

import com.hjf.app.core.bean.reqBean.OrderReqBean;
import com.hjf.app.core.bean.respBean.OrderDetailRespBean;
import com.hjf.app.entity.OrderInfo;
import com.hjf.base.model.PageBean;
import com.hjf.common.bean.BaseRespBean;

public interface OrderService {
	//【订单详情】【主要订单实体信息】
	public OrderDetailRespBean getOrder(OrderDetailRespBean r);	 
	//【订单详情】【详细订单数据】
	public OrderDetailRespBean orderDetail(OrderDetailRespBean r);	 
	//订单列表
	public BaseRespBean orderList(PageBean pb,BaseRespBean r ) ;
	// 【订单创建】
	public BaseRespBean create(OrderReqBean q );	 	
	//【订单删除 】
	public BaseRespBean delete( OrderInfo q);
	//查询待评价商品【根据订单号】
	public BaseRespBean  waitCommonPros(Integer orderId)	;
	//评价
	public BaseRespBean comment(OrderReqBean q);
}
