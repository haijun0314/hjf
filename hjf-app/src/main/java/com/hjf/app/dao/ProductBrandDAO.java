package com.hjf.app.dao;

import org.springframework.stereotype.Repository;

import com.hjf.app.entity.ProductBrand;
import com.hjf.base.mybatis.BaseIbatisDAO;

/**
 * 功能说明:【商品品牌持久类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
@Repository
public class ProductBrandDAO extends BaseIbatisDAO{
	
 
	 
	public Class getEntityClass() {
		return ProductBrand.class;
	}	
	 
}