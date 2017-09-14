package com.hjf.app.entity;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【个人地址实体类】
 * 作    者：lihaijun
 * 创建日期：2017-09-13
 */
public class AccountAddress extends BaseModel implements java.io.Serializable {
	private Integer addressId;
	private Integer accountId;
	private String  userName;// 
	private String  telephone;//电话号码
	private String  isDefault; // 默认【0 是1 否】
	private String  cityCode; // 城市编号
	private String  cityName; // 城市名称
	private String  provinceCode; // 省编号
	private String  provinceName; //  省名称
	private String  quCode; //  
	private String  quName; //   
	private String  address; //  
	private String  addressDetail;
	private String  cityNameFull;
	
	
	
	
	
	
	public String getCityNameFull() {
		return cityNameFull;
	}
	public void setCityNameFull(String cityNameFull) {
		this.cityNameFull = cityNameFull;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getAddressId() {
		return addressId;
	}
	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getIsDefault() {
		return isDefault;
	}
	public void setIsDefault(String isDefault) {
		this.isDefault = isDefault;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getProvinceCode() {
		return provinceCode;
	}
	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	public String getQuCode() {
		return quCode;
	}
	public void setQuCode(String quCode) {
		this.quCode = quCode;
	}
	public String getQuName() {
		return quName;
	}
	public void setQuName(String quName) {
		this.quName = quName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddressDetail() {
		return addressDetail;
	}
	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	} 
		
	
	
}
