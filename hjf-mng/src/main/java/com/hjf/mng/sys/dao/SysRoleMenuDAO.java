package com.hjf.mng.sys.dao;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.hjf.base.jdbc.JdbcTemplateEx;
import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysRoleMenu;

 
@Repository
public class SysRoleMenuDAO extends BaseIbatisDAO{
	
	@Resource JdbcTemplateEx jdbcTemplateEx;
	 
	
	@Override
	public Class getEntityClass() {
		return SysRoleMenu.class;
	}
	 
}