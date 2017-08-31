package com.hjf.mng.bean.vo;

import java.math.BigDecimal;
import java.util.Date;

import com.hjf.common.bean.BaseRespBean;
/**
 * 功能说明:【商品详情】
 * 作    者：lihaijun
 * 创建日期：2017-06-01
 */
public class ProductDetailRespBean extends BaseRespBean { 

	private Integer 		productId;
	private String  		productName; 
	private String   		productNO;
	private String  		productType;//商品类型  0  正常  1 特价商品
	private String       	status; 
	private String  		saleType; //销售类型 0 租赁1  售卖
	private Integer   		countSale; //销售统计
	private String  		pic; 
	private String  		pics; 
	private Integer       	countRent;//赁租统计 
	private String  		cityCode;
	private String  		rentType;// 租赁类型 1 、日租2、周租3、月租4、半年租5年租
	private BigDecimal  	rentDay;// 
	private BigDecimal   	rentWeek;// 
	private BigDecimal  	rentMonth;//月租价格
	private BigDecimal  	rentYear;//
	private BigDecimal  	rentHalfYear; //
	private BigDecimal  	rentSeason;
	private BigDecimal      depositMoney; //金押
	private BigDecimal  	saleMoney;//售销价格
	private BigDecimal    	marketMoney;//市场价
	private Integer   		brandId;
	private String  		brandName;
	private Integer   		categoryId;
	private String  		categoryName;
	private String    		sex;
	private String    		babyAge;//年龄段["0-6个月","6个月-12个月","1-3岁","3-6岁"]
	private String [] 			picList;
	
	
	 
	public String[] getPicList() {
		return picList;
	}
	public void setPicList(String[] picList) {
		this.picList = picList;
	}
	public BigDecimal getRentSeason() {
		return rentSeason;
	}
	public void setRentSeason(BigDecimal rentSeason) {
		this.rentSeason = rentSeason;
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
	private   Date createdTime;
	
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
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
	 
	public String getProductNO() {
		return productNO;
	}
	public void setProductNO(String productNO) {
		this.productNO = productNO;
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
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getPics() {
		return pics;
	}
	public void setPics(String pics) {
		this.pics = pics;
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
	public String getRentType() {
		return rentType;
	}
	public void setRentType(String rentType) {
		this.rentType = rentType;
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
  
	
 
	 
	
	
	
	
	
}