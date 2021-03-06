package com.hjf.app.entity;

import com.hjf.base.model.BaseModel;

public class OrderProduct extends BaseModel implements java.io.Serializable {
	private Integer 	opId;//ID
	private Integer 	orderId;//订单号
	private Integer  	productId;//商品编号
	private Double  	money;//  金额
	private Integer  	count;//个数
	private String      isComment;//是否评价【0是1否】
	
	 
	public String getIsComment() {
		return isComment;
	}
	public void setIsComment(String isComment) {
		this.isComment = isComment;
	}
	public Integer getOpId() {
		return opId;
	}
	public void setOpId(Integer opId) {
		this.opId = opId;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}

	 
 
	
}
 







