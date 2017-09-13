package com.hjf.app.entity;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【支付实体类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
public class FinancePayOrder extends BaseModel implements java.io.Serializable{
	private String  payOrderId;
	private Integer accountId;		//账户
	private Double  money;
	private String  status;			//0成功1 失败 2 待支付
	private String  payRoute; //支付路由0  支付宝 1  微信 
	private String  trade_no;		//支付宝 微信 交易号
	private String  errorDesc;		
	private String  module;			//类型 0 购买商品
	private Integer dataId;			//原始订单编号
	public String getPayOrderId() {
		return payOrderId;
	}
	public void setPayOrderId(String payOrderId) {
		this.payOrderId = payOrderId;
	}
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	 
	public String getPayRoute() {
		return payRoute;
	}
	public void setPayRoute(String payRoute) {
		this.payRoute = payRoute;
	}
	public String getTrade_no() {
		return trade_no;
	}
	public void setTrade_no(String trade_no) {
		this.trade_no = trade_no;
	}
	public String getErrorDesc() {
		return errorDesc;
	}
	public void setErrorDesc(String errorDesc) {
		this.errorDesc = errorDesc;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public Integer getDataId() {
		return dataId;
	}
	public void setDataId(Integer dataId) {
		this.dataId = dataId;
	}
	 
 
	
}
