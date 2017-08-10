package com.hjf.mng.sys.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.base.model.PageModel;
import com.hjf.base.mybatis.BaseService;
import com.hjf.base.mybatis.Query;
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
	@Resource SysMenubarDAO sysMenubarDAO;
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
	 * 查询系统导航菜单
	 */
	public List getBannerMenuBarList(){
		Query query=new Query();
		query.append("menulevel", MenuType.Banner);
		List<SysMenubar> menuBaList=sysMenubarDAO.queryList(query);
		return menuBaList;	
	}	
	
	 
	
	 
	/**
	 * 增加功能
	 */
	public int add(SysMenubar smb){
		List menuBarList=sysMenubarDAO.queryList(new Query());
		smb.setTitle(smb.getMenuName());
		String authoritytype=smb.getAuthorityType();
		if (authoritytype.equals(MenuType.Banner.getValue())) {
			smb=MenuBarUtil.createTopMenubar(smb,  menuBarList);
		}else {
			SysMenubar psmb=(SysMenubar) sysMenubarDAO.getObjById(smb.getParentId());
			smb=MenuBarUtil.createNewMenubar(smb, psmb, menuBarList);
		}
		return sysMenubarDAO.save(smb);
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
	public void delete(Integer roleid){
		sysMenubarDAO.deleteByID(roleid);
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
	public void update(SysMenubar smb) {
		sysMenubarDAO.updateById(smb);
		
	}
	 
}
