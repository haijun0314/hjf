package com.hjf.app.core.bean.vo;

/**
 * 功能说明:【接口返回商品购物车数据】
 * 作    者：lihaijun
 * 创建日期：2017-08-26
 */
public class ProductCart { 
	private Double  		price;//售销价格
	private Integer 		productId;//商品ID
	private String  		productName;// 商品名称
	private String  		pic; 
	private Integer 		count;//购买数量
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
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
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	 
	 
	
	
}