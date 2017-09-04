package com.hjf.app.core.bean.respBean;

import java.util.Date;
import java.util.List;

import com.hjf.common.bean.BaseRespBean;
/**
 * 功能说明:【接口返回商品详情】
 * 作    者：lihaijun
 * 创建日期：2017-05-26
 */
public class ProductRespBean extends BaseRespBean { 
	private Double  	price;//售销价格
	private Double  	marketPrice;//市场价格
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
	private List 			picList;
	private String   		detailDesc;//详细描述
	private String   		descriptions;
	private Date 			createdTime;
	private String  		pic; 
	private String  		pics;
	
	
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getMarketPrice() {
		return marketPrice;
	}
	public void setMarketPrice(Double marketPrice) {
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
	public List getPicList() {
		return picList;
	}
	public void setPicList(List picList) {
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
	 
	
	
}