package com.hjf.mng.sys.dao;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysLog;
/**
 * 功能说明:【系统日志持久类类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
@Repository
public class SysLogDAO extends BaseIbatisDAO{
	
	@Override
	public Class getEntityClass() {
		return SysLog.class;
	}
	  
}