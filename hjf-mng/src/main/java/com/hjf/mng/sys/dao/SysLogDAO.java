package com.hjf.mng.sys.dao;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysLog;
@Repository
public class SysLogDAO extends BaseIbatisDAO{
	
	@Override
	public Class getEntityClass() {
		return SysLog.class;
	}
	  
}