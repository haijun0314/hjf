package com.hjf.mng.sys.dao;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysUser;
@Repository
public class SysUserDAO extends BaseIbatisDAO{
	
	/**
	 * 根据管理员用户名查询
	 */
	public SysUser getSysUserByUserName(String username){
		SysUser sysUser= (SysUser)getObjById(username,"SysUser.querySysUserByUserName");
		return  sysUser;
	}
	 
	@Override
	public Class getEntityClass() {
		return SysUser.class;
	}		
}
