package com.hjf.mng.sys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysRoleSystem;

 
@Repository
public class SysRoleSystemDAO extends BaseIbatisDAO{
	
	
	/**
	 * 根据角色id查询
	 */
	public List getSysRoleSystemListByRoles(String roleStr){
		String hql="SELECT * FROM sys_role_system , sys_business_system " +
				    "where   sys_role_system.systemid=sys_business_system.systemid  and  roleid  in ("+roleStr+")";
		return getJdbcTemplateEx().queryForList(hql);
	}
 
	@Override
	public Class getEntityClass() {
		
		return SysRoleSystem.class;
	}
	 
}