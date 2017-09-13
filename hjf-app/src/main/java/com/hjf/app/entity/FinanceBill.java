package com.hjf.app.entity;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【账单实体类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
public class FinanceBill extends BaseModel implements java.io.Serializable {
	private Integer billId;//单账编号
	private String  billDate;//
	private Integer accountId;//
	private Double  money;//金额
	private String  billType;//账单类型
	private String  remark;//备注
	private Integer dataId;//原始订单号
	 
	public Integer getDataId() {
		return dataId;
	}
	public void setDataId(Integer dataId) {
		this.dataId = dataId;
	}
	public Integer getBillId() {
		return billId;
	}
	public void setBillId(Integer billId) {
		this.billId = billId;
	}
	public String getBillDate() {
		return billDate;
	}
	public void setBillDate(String billDate) {
		this.billDate = billDate;
	}
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	 
	 
	public String getBillType() {
		return billType;
	}
	public void setBillType(String billType) {
		this.billType = billType;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	
	 
	
	
}
