package com.hjf.app.core.bean.respBean;

import com.hjf.common.bean.BaseRespBean;

public class FinanceRespBean extends BaseRespBean {
	 private String   orderId	;	// 订单编号
	 private String   subject	;		// 商品名称【支付宝】
	 
	 
	 private String   body	;			// 商品详情【微信】
	 private String   appid	;			// 商品详情【微信】	 
	 private String   partnerid ;		// 商品详情【微信】 
	 private String   package_;			// 商品详情【微信】 
	 private String   sign; 			// 商品详情【微信】 
	 private String   noncestr ;		// 商品详情【微信】 
	 private String   timestamp ;
	
	 private String   prePayId ;
	
	 
	public String getPrePayId() {
		return prePayId;
	}
	public void setPrePayId(String prePayId) {
		this.prePayId = prePayId;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getAppid() {
		return appid;
	}
	public void setAppid(String appid) {
		this.appid = appid;
	}
	public String getPartnerid() {
		return partnerid;
	}
	public void setPartnerid(String partnerid) {
		this.partnerid = partnerid;
	}
	public String getPackage_() {
		return package_;
	}
	public void setPackage_(String package_) {
		this.package_ = package_;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public String getNoncestr() {
		return noncestr;
	}
	public void setNoncestr(String noncestr) {
		this.noncestr = noncestr;
	}
	public String getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
	 
	
	
}
