package com.hjf.app.dao;

import org.springframework.stereotype.Repository;

import com.hjf.app.entity.FinancePayOrder;
import com.hjf.base.mybatis.BaseIbatisDAO;
/**
 * 功能说明:【支付持久类】
 * 作    者：lihaijun
 * 创建日期：2017-09-12
 */ 
@Repository
public class FinancePayOrderDAO extends BaseIbatisDAO{
	
	 
	 
	 
	public Class getEntityClass() {
		return FinancePayOrder.class;
	}	
	 
}