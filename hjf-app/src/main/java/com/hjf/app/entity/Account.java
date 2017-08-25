package com.hjf.app.entity;

import java.util.Date;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【个人账户实体类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
public class Account extends BaseModel implements java.io.Serializable {
	private Integer accountId;
	private String  userToken;					//账户token  免密码登录
	private String  accountName; 				//用户名称
	private String  telephone;					//电话号码
	private String  password;					//账号密码
	private Integer age;						//年龄
	private String  headPic;					//头像地址
	private String 	cityCode;				    //城市编号
	private String 	cityName;				    //城市名称
	private String  dynamic;					//当前动态
	private String  status;						//状态0.正常1.暂停}
	private String  sessionId;
	private Date    registTime;
	private Date    loginTime;
	private String  cityNameFull;		
	private String  address;
	private String  level;//会员等级【 1、普通  2、铁牌 3 银牌  4  金牌 5 钻石】
	private String  sex;//0男 1女
	private String  birthday;//生日
	
	
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public String getUserToken() {
		return userToken;
	}
	public void setUserToken(String userToken) {
		this.userToken = userToken;
	}
	public String getSessionId() {
		return sessionId;
	}
	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegistTime() {
		return registTime;
	}
	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getHeadPic() {
		return headPic;
	}
	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}
	public String getDynamic() {
		return dynamic;
	}
	public void setDynamic(String dynamic) {
		this.dynamic = dynamic;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCityNameFull() {
		return cityNameFull;
	}
	public void setCityNameFull(String cityNameFull) {
		this.cityNameFull = cityNameFull;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}	

	
}
