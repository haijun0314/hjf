package com.hjf.app.dao;

import org.springframework.stereotype.Repository;

import com.hjf.app.entity.SysLogClient;
import com.hjf.base.mybatis.BaseIbatisDAO;

 
@Repository
public class SysLogClientDAO extends BaseIbatisDAO{
	public Class getEntityClass() {
		return  SysLogClient.class;
	}	 
	
	 
 
	 
}