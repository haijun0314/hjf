package com.hjf.mng.sys.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.base.LogUtil;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.model.PageModel;
import com.hjf.base.mybatis.BaseService;
import com.hjf.base.mybatis.Query;
import com.hjf.common.bean.BaseRespBean;
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
	/**
	 * 【添加角色】
	 */
	public BaseRespBean add(SysRole sr) {
		int ret=sysRoleDAO.save(sr);
		if(ret<0){
			log.error("【添加系统角色失败】"+sr.getRoleDesc());
			r.fail(CodeUtil.error);
		}
		return  r;
	}
	
	/**
	 * 【根据ID删除角色】
	 */
	public BaseRespBean delete(Integer roleId)throws Exception  {
		int ret=sysRoleMenuDAO.delete(roleId,"deleteByRoleId"); 
		if(ret<0){
			log.error("【删除角色失败】roleId="+roleId);
			r.fail(CodeUtil.error);
		}
		ret=sysRoleDAO.deleteByID(roleId);
		if(ret<0){
			log.error("【删除角色失败】roleId="+roleId);
			r.fail(CodeUtil.error);
		}
		return  r;
	}
	
	/**
	 * 【编辑角色】
	 */
	public BaseRespBean update(SysRole sr) {
		int ret=sysRoleDAO.updateById(sr);
		if(ret<0){
			log.error("【更新角色失败】roleId="+sr.getRoleId());
			r.fail(CodeUtil.error);
		}
		return  r;
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
	public BaseRespBean assignPermission(Integer roleId ,String[] menuids) {
		if (menuids==null||menuids.length<1) {
			int ret=sysRoleMenuDAO.delete(roleId,"deleteByRoleId"); 
			if(ret<0){
				log.error("【分配权限【先删除权限 失败】"+roleId);
				r.fail(CodeUtil.error);
				return r;
			}
			return r;
		}
		sysRoleMenuDAO.delete(roleId,"deleteByRoleId"); 
		if (menuids!=null&&menuids.length>0) {
			for (int i = 0; i < menuids.length; i++) {
				String menuid=menuids[i];
				SysRoleMenu srm=new SysRoleMenu();
				srm.setMenuId(new Integer(menuid));
				srm.setRoleId(roleId);
				int ret=sysRoleMenuDAO.save(srm);
				if(ret<0){
					log.error("【分配权限【增加权限 失败】"+roleId);
					r.fail(CodeUtil.error);
					return r;
				}
			}
		}
		return r;
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
