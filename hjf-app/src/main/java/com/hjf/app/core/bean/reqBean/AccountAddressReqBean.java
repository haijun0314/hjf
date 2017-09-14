package com.hjf.app.core.bean.reqBean;

import com.hjf.common.bean.BaseReqBean;

public class AccountAddressReqBean extends BaseReqBean{
	private Integer addressId;
	private String  userName;// 
	private String  telephone;//电话号码
	private String  cityCodes; // 城市编号
	private String  cityNames; // 城市名称
	private String  address; //  
	private String  cityNameFull;
	public Integer getAddressId() {
		return addressId;
	}
	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getCityCodes() {
		return cityCodes;
	}
	public void setCityCodes(String cityCodes) {
		this.cityCodes = cityCodes;
	}
	public String getCityNames() {
		return cityNames;
	}
	public void setCityNames(String cityNames) {
		this.cityNames = cityNames;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCityNameFull() {
		return cityNameFull;
	}
	public void setCityNameFull(String cityNameFull) {
		this.cityNameFull = cityNameFull;
	}

	
	
	
	
 
 
}
