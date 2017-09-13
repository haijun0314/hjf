package com.hjf.app.core.bean.reqBean;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

import com.hjf.common.bean.BaseReqBean;

public class PayReqBean extends BaseReqBean {
	private String    payRoute; //支付路由0  支付宝 1  微信 
	 private String   spbill_create_ip;//调用接口提交的终端设备号【微信支付】 
	 private String   module;		   // 类型 0 购物
	 private Integer  dataId; 
	 private String   payOrderId;
	 private Double   money;
	 
	 
	 
	 
	 
	 
	/**
	 * 【支付参数验证】
	 * 0、购物支付  
	 */
	public boolean checkPayParams(HttpServletRequest request) {
		String spbill_create_ip		=request.getRemoteAddr();//调用接口提交的终端设备号【微信支付】 
		if (StringUtils.isBlank(payRoute)) {
			log.error("【支付参数验证】...参数检查失败，缺失payRoute");
			return false;
		}
		if (dataId==null) {
			log.error("【支付参数验证】...参数检查失败，缺失dataId");
			return false;
		}
		setSpbill_create_ip(spbill_create_ip);
		return true;
	}





 


	public String getPayRoute() {
		return payRoute;
	}








	public void setPayRoute(String payRoute) {
		this.payRoute = payRoute;
	}








	public String getSpbill_create_ip() {
		return spbill_create_ip;
	}






	public void setSpbill_create_ip(String spbill_create_ip) {
		this.spbill_create_ip = spbill_create_ip;
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






	public String getPayOrderId() {
		return payOrderId;
	}






	public void setPayOrderId(String payOrderId) {
		this.payOrderId = payOrderId;
	}






	public Double getMoney() {
		return money;
	}






	public void setMoney(Double money) {
		this.money = money;
	}


	 
	
	 
 
 
}
