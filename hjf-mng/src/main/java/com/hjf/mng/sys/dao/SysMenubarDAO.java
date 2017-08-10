package com.hjf.mng.sys.dao;

import org.springframework.stereotype.Repository;

import com.hjf.base.mybatis.BaseIbatisDAO;
import com.hjf.mng.sys.entity.SysMenubar;
@Repository
public class SysMenubarDAO extends   BaseIbatisDAO{
	 
	
	@Override
	public Class getEntityClass() {
		return SysMenubar.class;
	}
	
	 
	
	

}