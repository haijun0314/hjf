package com.hjf.app.dao;

import org.springframework.stereotype.Repository;

import com.hjf.app.entity.ProductComment;
import com.hjf.base.mybatis.BaseIbatisDAO;



/**
 * 功能说明:【商品评论持久类】
 * 作    者：lihaijun
 * 创建日期：2017-09-05
 */
@Repository
public class ProductCommentDAO extends BaseIbatisDAO{
	
	 
	
	@Override
	public Class getEntityClass() {
		return ProductComment.class;
	}
	   
	 
}