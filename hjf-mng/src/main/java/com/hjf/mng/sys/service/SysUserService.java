package com.hjf.mng.sys.service;

import com.hjf.base.model.PageModel;
import com.hjf.common.bean.BaseRespBean;
import com.hjf.mng.sys.entity.SysUser;

public interface SysUserService {
	 
	//分页查询系统管理员
	public PageModel getUserPageList(PageModel pm);
	//添加系统用户
	public BaseRespBean  addSysUser(SysUser sysUser)  ;
	//根据管理员ID查询
	public SysUser getSysUserById(Integer userid);
	//更新账户
	public BaseRespBean update(SysUser sysUser);
	//删除用户
	public BaseRespBean delete(Integer userid) ;
	//系统用户详情
	public SysUser detail(Integer userid);
	//检查是否已经存在
	public boolean checkUserName(String username);
	
}
