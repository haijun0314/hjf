package com.hjf.mng.dao;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.entity.ProductCategory;



/**
 * 功能说明:【商品类别持久类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
@Repository
public class ProductCategoryDAO extends BaseIbatisDAO{
	
	 
	
	@Override
	public Class getEntityClass() {
		return ProductCategory.class;
	}
	   
	 
}