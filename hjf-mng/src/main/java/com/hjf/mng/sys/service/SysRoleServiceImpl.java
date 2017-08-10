package com.hjf.mng.sys.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.collections.MapUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.base.LogUtil;
import com.hjf.base.model.PageModel;
import com.hjf.base.mybatis.BaseService;
import com.hjf.base.mybatis.Query;
import com.hjf.common.enums.DefaultStatus;
import com.hjf.mng.sys.dao.SysRoleDAO;
import com.hjf.mng.sys.dao.SysRoleMenuDAO;
import com.hjf.mng.sys.dao.SysUserRoleDAO;
import com.hjf.mng.sys.entity.SysRole;
import com.hjf.mng.sys.entity.SysRoleMenu;

/**
 * 系统管理--角色管理
 * @author lihaijun
 */
@Service
@Transactional
public class SysRoleServiceImpl  extends BaseService implements SysRoleService  {
	@Resource SysRoleDAO 	 sysRoleDAO;
	@Resource SysRoleMenuDAO sysRoleMenuDAO;
	@Resource SysUserRoleDAO sysUserRoleDAO;
	Logger log=LogUtil.getLogger();
	/**
	 * 【添加角色】
	 */
	public void add(SysRole sr) {
		sysRoleDAO.save(sr);
	}
	
	/**
	 * 【根据ID删除角色】
	 */
	public void delete(Integer roleId) {
		sysRoleMenuDAO.delete(roleId,"deleteByRoleId"); 
		sysRoleDAO.deleteByID(roleId);
	}
	
	/**
	 * 【编辑角色】
	 */
	public void update(SysRole sr) {
		sysRoleDAO.updateById(sr);
	}
	
	/**
	 * 【分页查询系统管角色】
	 */
	public PageModel getSysRolePageList(PageModel pm) {
		return sysRoleDAO.queryPageList(pm);
	}
	 
	/**
	 * 【检测角色是否被使用【有用户使用该角色】
	 */
	public boolean checkIsBindSysUser(Integer roleId) {
		Query query =new Query();
		query.append("roleId", roleId);
		List list=sysUserRoleDAO.queryList("queryRoleUsers",roleId);
		if (list!=null&&list.size()>0) {
			return true;
		}
		return false;
	}	



	 
	/**
	 * 【分配权限【先删除权限，在增加权限】
	 */
	public void assignPermission(Integer roleId ,String[] menuids) 	{
		if (menuids==null||menuids.length<1) {
			sysRoleMenuDAO.delete(roleId,"deleteByRoleId"); 
			return;
		}
		sysRoleMenuDAO.delete(roleId,"deleteByRoleId"); 
		if (menuids!=null&&menuids.length>0) {
			for (int i = 0; i < menuids.length; i++) {
				String menuid=menuids[i];
				SysRoleMenu srm=new SysRoleMenu();
				srm.setMenuId(new Integer(menuid));
				srm.setRoleId(roleId);
				sysRoleMenuDAO.save(srm);
			}
		}
	}
	/**
	 * 【查询所有角色】
	 */
	public List getSysRoleList(Query query){
		return sysRoleDAO.queryList(query);
	}
	
	/**
	 * 【根据ID查询角色】
	 */
	public SysRole getSysRole(Integer roleId) {
		SysRole sysRole = (SysRole) sysRoleDAO.getObjById(roleId);
		return sysRole;
	}	
	
	
	
	/**
	 * 【查询用户角色    所有角色和用户所属角色】
	 * 查询所有角色以及该用户拥有的角色 
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List getUserRoles(Integer userid){
		List userRoleList=sysUserRoleDAO.queryList("loadUserRolesForSelect",userid);
		for (int i = 0; i <userRoleList.size(); i++) {
			HashMap sr=(HashMap)userRoleList.get(i);
			sr.put("isUsed", DefaultStatus.No.getValue());
			Integer userId=MapUtils.getInteger(sr, "userId");
			if(userId!=null&&userId>0){
				sr.put("isUsed", DefaultStatus.Yes.getValue());
			} 
		}
		return  userRoleList;
	}	
 
	/**
	 * 【查询角色拥有的用户】
	 */
	public List getRoleUsers(Integer roleId){
		List list=sysUserRoleDAO.queryList("queryRoleUsers",roleId);
		return list;
		
	}
	/**
	 * 检查是否已经存在
	 */
	public boolean checkExist(String roleDesc) {
		Query query =new Query();
		query.append("roleDesc", roleDesc);
		List<SysRole>  list =  sysRoleDAO.queryList(query);
		if (list!=null&&list.size()>0) {
			log.info("检查 角色名称是否可用...检查结果【不可用】roleDesc"+roleDesc);
			return true;
		}
		log.info("检查 角色名称是否可用...检查结果【可用】roleDesc"+roleDesc);
		return false;
	}
	
}
