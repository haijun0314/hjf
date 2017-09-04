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
	private String  		pic; 
	private String  		pics; 
	private BigDecimal  	price;//售销价格
	private BigDecimal  	marketPrice;//市场价格
	private Integer 		productId;//商品ID
	private String  		productName;// 商品名称
	private String   		productNO;//商品编号
	private String  		productType;//商品类型  1、普通商品 2 推荐商品  3 热卖商品
	private String       	status; //0 正常 1人工下架  2 库存下架
	private Integer 		store;//库存   【变为0时候商品下架】
	private Integer   		brandId;
	private Integer   		categoryId;
	private String  		brandName;
	private String  		categoryName;
	private String    		sex;
	private String    		babyAge;//年龄段["0-6个月","6个月-12个月","1-3岁","3-6岁"]
	private String [] 		picList;
	private String   		detailDesc;//详细描述
	private String   		descriptions;
	private Date 			createdTime;
	
	
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
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
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public BigDecimal getMarketPrice() {
		return marketPrice;
	}
	public void setMarketPrice(BigDecimal marketPrice) {
		this.marketPrice = marketPrice;
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
	public Integer getStore() {
		return store;
	}
	public void setStore(Integer store) {
		this.store = store;
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
	public String[] getPicList() {
		return picList;
	}
	public void setPicList(String[] picList) {
		this.picList = picList;
	}
	public String getDetailDesc() {
		return detailDesc;
	}
	public void setDetailDesc(String detailDesc) {
		this.detailDesc = detailDesc;
	}
	public String getDescriptions() {
		return descriptions;
	}
	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}
	
	 
	
	
	
	
}