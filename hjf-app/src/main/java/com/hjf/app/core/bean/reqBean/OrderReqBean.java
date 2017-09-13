package com.hjf.app.core.bean.reqBean;

import org.apache.commons.lang.StringUtils;

import com.hjf.common.bean.BaseReqBean;

public class OrderReqBean extends BaseReqBean {
	private Integer 	orderId;
	private Double  	money;//  支付金额
	private Double  	expressMoney;//送费
	private Integer  	productCount;//商品种类个数
	private String      linkUserName; //联系人姓名
	private String      linkAddress; //联系地址
	private String  	linkTelephone;// 联系人电话
	private String    	payRoute; //支付路由0  支付宝 1  微信 
	private String    	pros; //商品信息
	private String    	remark; //订单备注
	private String    	searchType; //查询条件【空 全部、1待付款 2 待收货 3 已完成 】
	
	//评价
	private Integer    	score;  
	private String    	content;  
	
	
	
	

	/**
	 * 检查订单号创建参数
	 */
	public boolean checkCreate(){
		 printLog();
		 log.info("【检查订单号创建参数】.......");
		 if (money==null) {
			log.error("验证失败...缺失money");
			return  false;
		 }
		 
		 if (accountId==null) {
			log.error("验证失败...缺失money");
			return  false;
		 }
		 if (StringUtils.isBlank(pros)) {
			log.error("验证失败...缺失pros");
			return  false;
	     }
		 
		 if (StringUtils.isBlank(linkTelephone)) {
			log.error("验证失败...缺失linkTelephone");
			return  false;
		 }
		 if (StringUtils.isBlank(linkAddress)) {
			log.error("验证失败...缺失linkAddress");
			return  false;
		 }
		 if (StringUtils.isBlank(linkUserName)) {
			log.error("验证失败...缺失linkUserName");
			return  false;
		 }
		 return true;
	}	
	
	
 
	/**
	 * 检查订单号参数
	 * @return
	 */
	public boolean checkOrderId(){
		if(orderId==null){
			log.error("【检查订单号参数】 缺失...orderId");
			return false;
		}
		 return true;
	}
	
 
 
	
	public Integer getScore() {
		return score;
	}



	public void setScore(Integer score) {
		this.score = score;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}


	 


	public Integer getOrderId() {
		return orderId;
	}



	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
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



	public String getPros() {
		return pros;
	}



	public void setPros(String pros) {
		this.pros = pros;
	}



	public String getRemark() {
		return remark;
	}



	public void setRemark(String remark) {
		this.remark = remark;
	}




	
	public String getSearchType() {
		return searchType;
	}



	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}



	public void printLog(){
		log.info("【创建订单参数打印...........开始............................】");
		log.info("【orderId】"+this.getOrderId());
		log.info("【money】"+this.getMoney());
		log.info("【linkAddress】"+this.getLinkAddress());
		log.info("【linkTelephone：】"+this.getLinkTelephone());
		log.info("【linkUserName】"+this.getLinkUserName());
		log.info("【pros】"+this.getPros());
		log.info("【创建订单参数打印............结束...........................】");
	}	
	
	
}
