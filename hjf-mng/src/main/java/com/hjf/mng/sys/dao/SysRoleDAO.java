package com.hjf.mng.sys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysRole;
@Repository
public class SysRoleDAO extends BaseIbatisDAO {
 
	/**
	 *  根据角色编号查询角色对应关系
	 */
	public List getRoleUsers(Integer roleid)throws Exception {
		return  super.queryList("SysRole.queryRoleUsers",roleid);
	}	 	
	
	public Class getEntityClass() {
		return SysRole.class;
	}
	 
}