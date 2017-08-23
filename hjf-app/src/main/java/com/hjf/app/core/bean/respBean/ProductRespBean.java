package com.hjf.app.core.bean.respBean;

import java.math.BigDecimal;
import java.util.List;

import com.hjf.common.bean.BaseRespBean;
/**
 * 功能说明:【接口返回商品详情】
 * 作    者：lihaijun
 * 创建日期：2017-05-26
 */
public class ProductRespBean extends BaseRespBean {

	private Integer 		productId;
	private String  		productName; 
	private String   		producNO;
	private String  		productType;//商品类型  0  正常  1 特价商品
	private String       	status; 
	private String  		saleType; //销售类型 0 租赁1  售卖
	private Integer   		countSale; //销售统计
	private Integer       	countRent;//赁租统计 
	private String  		cityCode;
	private String  		rentType;// 租赁类型 1 、日租2、周租3、月租4、半年租5年租
	private BigDecimal  		rentSeason;
	private BigDecimal  	rentDay;// 
	private BigDecimal   	rentWeek;// 
	private BigDecimal  	rentMonth;//月租价格
	private BigDecimal  	rentYear;//
	private BigDecimal  	rentHalfYear; //
	private BigDecimal      depositMoney; //金押
	private BigDecimal  	saleMoney;//售销价格
	private BigDecimal    	marketMoney;//市场价
	private Integer   		brandId;
	private Integer   		categoryId;
	private String    		sex;
	private String    		babyAge;//孩小年龄段
	private String    		descriptions;
	private String    		source;//商品来源0 平台  1  个人
	private Integer   		accountId;//账户编号 只有source==1时候有数据
	private String    		descDamage;
	private String    		descBuyTime;//商品描述购买时间
	private String    		descParts;//商品描述配件

	private String  brandName;
	private String  categoryName;
	
	private BigDecimal    	psqMoney;//配送费	
	private List picList;
	private BigDecimal  	rentMoney;// 租金   计算获得
	
	public BigDecimal getRentMoney() {
		return rentMoney;
	}
	public void setRentMoney(BigDecimal rentMoney) {
		this.rentMoney = rentMoney;
	}
	public BigDecimal getPsqMoney() {
		return psqMoney;
	}
	public void setPsqMoney(BigDecimal psqMoney) {
		this.psqMoney = psqMoney;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProducNO() {
		return producNO;
	}
	public void setProducNO(String producNO) {
		this.producNO = producNO;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSaleType() {
		return saleType;
	}
	public void setSaleType(String saleType) {
		this.saleType = saleType;
	}
	public Integer getCountSale() {
		return countSale;
	}
	public void setCountSale(Integer countSale) {
		this.countSale = countSale;
	}
	 
	 
	public List getPicList() {
		return picList;
	}
	public void setPicList(List picList) {
		this.picList = picList;
	}
	public Integer getCountRent() {
		return countRent;
	}
	public void setCountRent(Integer countRent) {
		this.countRent = countRent;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public BigDecimal getRentDay() {
		return rentDay;
	}
	public void setRentDay(BigDecimal rentDay) {
		this.rentDay = rentDay;
	}
	public BigDecimal getRentWeek() {
		return rentWeek;
	}
	public void setRentWeek(BigDecimal rentWeek) {
		this.rentWeek = rentWeek;
	}
	public BigDecimal getRentMonth() {
		return rentMonth;
	}
	public void setRentMonth(BigDecimal rentMonth) {
		this.rentMonth = rentMonth;
	}
	public BigDecimal getRentYear() {
		return rentYear;
	}
	public void setRentYear(BigDecimal rentYear) {
		this.rentYear = rentYear;
	}
	public BigDecimal getRentHalfYear() {
		return rentHalfYear;
	}
	public void setRentHalfYear(BigDecimal rentHalfYear) {
		this.rentHalfYear = rentHalfYear;
	}
	public BigDecimal getDepositMoney() {
		return depositMoney;
	}
	public void setDepositMoney(BigDecimal depositMoney) {
		this.depositMoney = depositMoney;
	}
	public BigDecimal getSaleMoney() {
		return saleMoney;
	}
	public void setSaleMoney(BigDecimal saleMoney) {
		this.saleMoney = saleMoney;
	}
	 
	 
	public BigDecimal getMarketMoney() {
		return marketMoney;
	}
	public void setMarketMoney(BigDecimal marketMoney) {
		this.marketMoney = marketMoney;
	}
	public Integer getBrandId() {
		return brandId;
	}
	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBabyAge() {
		return babyAge;
	}
	public void setBabyAge(String babyAge) {
		this.babyAge = babyAge;
	}
	public String getDescriptions() {
		return descriptions;
	}
	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public String getDescDamage() {
		return descDamage;
	}
	public void setDescDamage(String descDamage) {
		this.descDamage = descDamage;
	}
	public String getDescBuyTime() {
		return descBuyTime;
	}
	public void setDescBuyTime(String descBuyTime) {
		this.descBuyTime = descBuyTime;
	}
	public String getDescParts() {
		return descParts;
	}
	public void setDescParts(String descParts) {
		this.descParts = descParts;
	}
	public String getRentType() {
		return rentType;
	}
	public void setRentType(String rentType) {
		this.rentType = rentType;
	}
	public BigDecimal getRentSeason() {
		return rentSeason;
	}
	public void setRentSeason(BigDecimal rentSeason) {
		this.rentSeason = rentSeason;
	}
	
	 
	
}