package com.hjf.mng.sys.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.base.model.PageModel;
import com.hjf.base.mybatis.BaseService;
import com.hjf.base.mybatis.Query;
import com.hjf.common.bean.BaseRespBean;
import com.hjf.common.enums.DefaultStatus;
import com.hjf.common.enums.MenuType;
import com.hjf.mng.common.security.MenuBarUtil;
import com.hjf.mng.sys.dao.SysMenubarDAO;
import com.hjf.mng.sys.dao.SysRoleMenuDAO;
import com.hjf.mng.sys.entity.SysMenubar;

/**
 * 系统管理--系统菜单管理
 * @author lihaijun
 */
@Service
@Transactional
public class SysMenuBarServiceImpl extends BaseService implements SysMenuBarService {
	@Resource  SysMenubarDAO sysMenubarDAO;
	@Resource  SysRoleMenuDAO sysRoleMenuDAO;
	/**
	 * 分页查询系统菜单
	 */
	public PageModel getSysMenuBarPageList(PageModel pm) {
		pm=sysMenubarDAO.queryPageList(pm);
		List menuList=pm.getDatas();
		for (int i = 0; i < menuList.size()&&menuList.size()>0; i++) {
			SysMenubar smb=(SysMenubar)menuList.get(i);
			SysMenubar smbP=(SysMenubar) sysMenubarDAO.getObjById(smb.getParentId());
			if (smbP==null) {
				continue;
			}
			smb.setParentName(smbP.getMenuName());
		}
		return pm;
	}	
	 
	/**
	 * 增加功能
	 */
	public BaseRespBean add(SysMenubar smb){
		List menuBarList=sysMenubarDAO.queryList(new Query());
		smb.setTitle(smb.getMenuName());
		String authoritytype=smb.getAuthorityType();
		if (authoritytype.equals(MenuType.Banner.getValue())) {
			smb=MenuBarUtil.createTopMenubar(smb,  menuBarList);
		}else {
			SysMenubar psmb=(SysMenubar) sysMenubarDAO.getObjById(smb.getParentId());
			smb=MenuBarUtil.createNewMenubar(smb, psmb, menuBarList);
		}
		int ret= sysMenubarDAO.save(smb);
		if (ret<0) {
			log.error("【添加系统菜单失败】"+smb.getMenuName());
			r.fail();
		}
		return r;
	}
	 
	 
	/**
	 * 检测权限是否被使用
	 */
	public boolean checkIsUsed(Integer menuId){
		List roleList=sysRoleMenuDAO.queryList("loadMenuRoles",menuId);
		if (roleList!=null&&roleList.size()>0) {
			return true;
		}
		return false;
	}	
	/**
	 * 根据id删除菜单
	 */
	public BaseRespBean delete(Integer menuId) {
		int ret=sysMenubarDAO.deleteByID(menuId);
		if (ret<0) {
			log.error("【更新系统菜单失败】menuId="+menuId);
			r.fail();
		}
		return r;
	}
	
	/**
	 * 根据id查询
	 */
	public List getMenuListByRoleId(String roleId) {
		Query query =new Query();
		query.append("roleId", roleId);
		query.append("status", DefaultStatus.Yes);
		return sysRoleMenuDAO.queryList(query);
	}
	/**
	 * 查询菜单
	 */
	public List getMenuBarList(Query query) {
		return sysMenubarDAO.queryList(query);
	}
	 
	/**
	 * 根据id查询(更新方法)
	 */
	public SysMenubar getSysMenuBar(Integer menuId) {
		SysMenubar sysMenubar = (SysMenubar) sysMenubarDAO.getObjById(menuId);
		return sysMenubar;
	}
	/**
	 * 更新(更新方法)
	 */
	public BaseRespBean update(SysMenubar smb) {
		int ret=sysMenubarDAO.updateById(smb);
		if (ret<0) {
			log.error("【更新系统菜单失败】"+smb.getMenuId());
			r.fail();
		}
		return r;
	}
	
	
	/**
	 * 启用、停用菜单
	 */
	public BaseRespBean startOrStop(SysMenubar smb) {
		int ret=sysMenubarDAO.update(smb,"startOrStop");
		if (ret<0) {
			log.error("【启用、停用菜单失败】"+smb.getMenuId());
			r.fail();
		}
		return r;
	}
	
	
	
	
	
	 
}
