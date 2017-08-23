package com.hjf.app.entity;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【商品类别实体类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
public class ProductCategory extends BaseModel implements java.io.Serializable {
	private Integer sortNum;
	private Integer categoryId;
	private String  categoryName;
	public Integer getSortNum() {
		return sortNum;
	}
	public void setSortNum(Integer sortNum) {
		this.sortNum = sortNum;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	
}
