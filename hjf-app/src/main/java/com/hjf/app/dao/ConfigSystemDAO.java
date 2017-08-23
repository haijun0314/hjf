package com.hjf.app.dao;

import org.springframework.stereotype.Repository;

import com.hjf.app.entity.ConfigSystem;
import com.hjf.base.mybatis.BaseIbatisDAO;



/**
 * 功能说明:【系统配置持久类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
@Repository
public class ConfigSystemDAO extends BaseIbatisDAO{
	
	 
	
	@Override
	public Class getEntityClass() {
		return ConfigSystem.class;
	}
	   
	 
}