package com.hjf.mng.sys.dao;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysUserRole;

 
@Repository
public class SysUserRoleDAO extends BaseIbatisDAO{
	 
	/**
	 *  根据用户删除
	 */
	public void deleteUserRole(Integer userid){
		  deleteByID(userid,"SysUserRole.deleteByUserId");
	}	
	
	
	@Override
	public Class getEntityClass() {
		return SysUserRole.class;
	}
 
}