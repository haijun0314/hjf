package com.hjf.app.entity;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【商品品牌实体类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
public class ProductBrand extends BaseModel implements java.io.Serializable {
	private Integer sortNum;
	private Integer brandId;
	private String  brandName;
	public Integer getSortNum() {
		return sortNum;
	}
	public void setSortNum(Integer sortNum) {
		this.sortNum = sortNum;
	}
	public Integer getBrandId() {
		return brandId;
	}
	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
 
	
}
