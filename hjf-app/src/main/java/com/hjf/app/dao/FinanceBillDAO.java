package com.hjf.app.dao;

import org.springframework.stereotype.Repository;

import com.hjf.app.entity.FinanceBill;
import com.hjf.base.mybatis.BaseIbatisDAO;

/**
 * 功能说明:【账单持久类】
 * 作    者：lihaijun
 * 创建日期：2017-09-12
 */ 
@Repository
public class FinanceBillDAO extends BaseIbatisDAO{
	public Class getEntityClass() {
		return  FinanceBill.class;
	}	 
	
	 
 
	 
}