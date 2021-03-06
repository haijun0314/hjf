package com.hjf.mng.entity;

import com.hjf.base.model.BaseModel;
/**
 * 功能说明:【商品类别实体类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
public class ProductCategory extends BaseModel implements java.io.Serializable {
	private Integer  sortNum;
	private Integer  categoryId;
	private String   categoryName;
	private String   pic;//图片
	private Integer  pid;//上级分类
	
	
	
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
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
