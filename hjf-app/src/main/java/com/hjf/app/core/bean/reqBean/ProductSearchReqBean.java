package com.hjf.app.core.bean.reqBean;

import com.hjf.common.bean.BaseReqBean;

public class ProductSearchReqBean extends BaseReqBean {
	private Integer   		brandId;//搜索品牌
	private Integer   		categoryId;//搜索类别
	private String    		keyWord;//搜索关键词
	private String    		productType;//商品类型  1、普通商品 2 推荐商品  3 热卖商品
	
	 
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
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
	 
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	} 
	
	
	
}
