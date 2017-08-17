package com.hjf.mng.sys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysRole;
/**
 * 功能说明:【系统角色持久类】
 * 作    者：lihaijun
 * 创建日期：2017-08-17
 */
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