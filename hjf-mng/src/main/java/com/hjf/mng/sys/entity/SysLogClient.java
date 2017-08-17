package com.hjf.mng.sys.entity;

import java.util.Date;

import com.hjf.base.model.BaseModel;
 
/**
 * 功能说明:【客户端日志实体类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
public class SysLogClient  extends BaseModel implements java.io.Serializable {

	private Integer  logId;
	private String   content;
	private Date 	 logTime;
	private Integer  accountId;
	private String   longitude;//经度                  
	private String   latitude; //纬度                  
	 
	 
	public Integer getLogId() {
		return logId;
	}
	public void setLogId(Integer logId) {
		this.logId = logId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getLogTime() {
		return logTime;
	}
	public void setLogTime(Date logTime) {
		this.logTime = logTime;
	}
 
	 
	 
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	 
}