package com.hjf.mng.sys.service;

import java.util.List;

import com.hjf.base.model.PageModel;
import com.hjf.base.mybatis.Query;
import com.hjf.common.bean.BaseRespBean;
import com.hjf.mng.sys.entity.SysRole;

public interface SysRoleService {
	//添加角色
	public BaseRespBean add(SysRole sr) ;
	//删除角色
	public BaseRespBean delete(Integer roleId)throws Exception  ;
	//编辑角色
	public BaseRespBean update(SysRole sr) ;
	//分页查询系统管角色
	public PageModel getSysRolePageList(PageModel pm);
	//通用查询角色
	public List getSysRoleList(Query query) ;
	//【根据ID查询角色】
	public SysRole getSysRole(Integer roleId);
	//【查询角色拥有的用户】
	public List getRoleUsers(Integer roleId);
	//分配权限 
	public BaseRespBean assignPermission(Integer roleid ,String[] menuids);
	//检测角色是否被使用
	public boolean checkIsBindSysUser(Integer roleId);
	//【检查是否已经存在】
	public boolean checkExist(String roleDesc);
		
	
	
	
	
	
}
