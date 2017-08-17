package com.hjf.mng.sys.dao;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysLogClient;
/**
 * 功能说明:【客户端日志持久类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
 
@Repository
public class SysLogClientDAO extends BaseIbatisDAO{
	public Class getEntityClass() {
		return  SysLogClient.class;
	}	 
	
	 
 
	 
}