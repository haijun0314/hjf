package com.hjf.app.core.bean.respBean;

import java.util.List;

import com.hjf.common.bean.BaseRespBean;
/**
 * 功能说明:【订单详情】
 * 作    者：lihaijun
 * 创建日期：2017-09-12
 */
public class OrderDetailRespBean extends BaseRespBean {

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
private String 		confirmTime;//订单确认时间【接单时间】
private String 		expressTime;//派送时间
private String 		signTime;//签收时间
private String   	descContent;//单订描述文字
private String   	descPic;//单订描述图片
private String   	createdTime;//订单时间
private String   	completeTime;//完成时间
private String      isComment;
private List   	     pros;//商品列表





public String getCompleteTime() {
	return completeTime;
}
public void setCompleteTime(String completeTime) {
	this.completeTime = completeTime;
}
public Integer getOrderId() {
	return orderId;
}
public void setOrderId(Integer orderId) {
	this.orderId = orderId;
}
public Integer getAccountId() {
	return accountId;
}
public void setAccountId(Integer accountId) {
	this.accountId = accountId;
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
public String getConfirmTime() {
	return confirmTime;
}
public void setConfirmTime(String confirmTime) {
	this.confirmTime = confirmTime;
}
public String getExpressTime() {
	return expressTime;
}
public void setExpressTime(String expressTime) {
	this.expressTime = expressTime;
}
public String getSignTime() {
	return signTime;
}
public void setSignTime(String signTime) {
	this.signTime = signTime;
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
public String getCreatedTime() {
	return createdTime;
}
public void setCreatedTime(String createdTime) {
	this.createdTime = createdTime;
}
public String getIsComment() {
	return isComment;
}
public void setIsComment(String isComment) {
	this.isComment = isComment;
}
public List getPros() {
	return pros;
}
public void setPros(List pros) {
	this.pros = pros;
}
 









 }