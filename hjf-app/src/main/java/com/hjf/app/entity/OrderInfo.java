package com.hjf.app.entity;

import java.util.Date;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【订单实体类】
 * 作    者：lihaijun
 * 创建日期：2017-09-10
 */
public class OrderInfo extends BaseModel implements java.io.Serializable {
	private Integer 	orderId;
	private Integer  	accountId;//账户编号
	private String   	status;//状态【0、失败 1下单待支付 2 支付成功、3、商家确认收单 4配送中 5、签收 6交易完成】
	private String      statusDesc;//订单状态说明
	private Double  	money;//  支付金额
	private Double  	expressMoney;//送费
	private Integer  	productCount;//商品种类个数
	private String      linkUserName; //联系人姓名
	private String      linkAddress; //联系地址
	private String  	linkTelephone;// 联系人电话
	private String    	payRoute; //支付路由0  支付宝 1  微信 
	private Date 		confirmTime;//订单确认时间【接单时间】
	private Date 		expressTime;//派送时间
	private Date 		signTime;//签收时间
	private String   	descContent;//单订描述文字
	private String   	descPic;//单订描述图片
	private String      isComment;//是否评价【0是1否】
	private Date   	    completeTime;//完成时间
	 
	
	
	
	public Date getCompleteTime() {
		return completeTime;
	}
	public void setCompleteTime(Date completeTime) {
		this.completeTime = completeTime;
	}
	public String getIsComment() {
		return isComment;
	}
	public void setIsComment(String isComment) {
		this.isComment = isComment;
	}
	public String getDescContent() {
		return descContent;
	}
	public void setDescContent(String descContent) {
		this.descContent = descContent;
	}
	public String getDescPic() {
		return descPic;
	}
	public void setDescPic(String descPic) {
		this.descPic = descPic;
	}
	public Date getConfirmTime() {
		return confirmTime;
	}
	public void setConfirmTime(Date confirmTime) {
		this.confirmTime = confirmTime;
	}
	public Date getExpressTime() {
		return expressTime;
	}
	public void setExpressTime(Date expressTime) {
		this.expressTime = expressTime;
	}
	public Date getSignTime() {
		return signTime;
	}
	public void setSignTime(Date signTime) {
		this.signTime = signTime;
	}
	private String      remark;//下单备注
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getStatusDesc() {
		return statusDesc;
	}
	public void setStatusDesc(String statusDesc) {
		this.statusDesc = statusDesc;
	}
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	public Double getExpressMoney() {
		return expressMoney;
	}
	public void setExpressMoney(Double expressMoney) {
		this.expressMoney = expressMoney;
	}
	public Integer getProductCount() {
		return productCount;
	}
	public void setProductCount(Integer productCount) {
		this.productCount = productCount;
	}
	public String getLinkUserName() {
		return linkUserName;
	}
	public void setLinkUserName(String linkUserName) {
		this.linkUserName = linkUserName;
	}
	public String getLinkAddress() {
		return linkAddress;
	}
	public void setLinkAddress(String linkAddress) {
		this.linkAddress = linkAddress;
	}
	public String getLinkTelephone() {
		return linkTelephone;
	}
	public void setLinkTelephone(String linkTelephone) {
		this.linkTelephone = linkTelephone;
	}
	public String getPayRoute() {
		return payRoute;
	}
	public void setPayRoute(String payRoute) {
		this.payRoute = payRoute;
	}
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	 
	 
 
	
}
 







