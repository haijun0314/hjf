package com.hjf.app.entity;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【商品实体类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
public class Product extends BaseModel implements java.io.Serializable {
	private Integer 		productId;//商品ID
	private String  		productName;// 商品名称
	private String   		productNO;//商品编号
	private String  		productType;//商品类型  1、普通商品 2 推荐商品  3 热卖商品
	private String       	status; //0 正常 1人工下架  2 库存下架
	private Integer 		store;//库存   【变为0时候商品下架】
	private String  		pic; 
	private String  		pics; 
	private Integer   		brandId;
	private Integer   		categoryId;
	private String   		descriptions;
	private Double  		price;//售价
	private Double 			marketPrice;//市场价
	private String   		detailDesc;//详细描述
	
	
	
	public String getDetailDesc() {
		return detailDesc;
	}
	public void setDetailDesc(String detailDesc) {
		this.detailDesc = detailDesc;
	}
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
	public String getDescriptions() {
		return descriptions;
	}
	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}
 
	 
	
}
  