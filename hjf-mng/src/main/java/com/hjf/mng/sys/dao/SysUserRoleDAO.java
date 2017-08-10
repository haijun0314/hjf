package com.hjf.mng.sys.dao;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysUserRole;

 
@Repository
public class SysUserRoleDAO extends BaseIbatisDAO{
	 
	 
	
	@Override
	public Class getEntityClass() {
		return SysUserRole.class;
	}
 
}