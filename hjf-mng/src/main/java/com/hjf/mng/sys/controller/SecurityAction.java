package com.hjf.mng.sys.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hjf.base.spring.BaseAction;
import com.hjf.common.enums.StartOrStop;
import com.hjf.common.util.JsonUtil;
import com.hjf.common.util.MsgUtil;
import com.hjf.common.util.web.ResponseUtils;
import com.hjf.mng.common.security.MenuBarUtil;
import com.hjf.mng.common.security.MySecurityMetadataSource;
import com.hjf.mng.sys.entity.SysMenubar;
import com.hjf.mng.sys.entity.SysRole;
import com.hjf.mng.sys.service.SysMenuBarService;
import com.hjf.mng.sys.service.SysRoleService;
 
/**
 * 系统权限管理
 */
@Controller  
@RequestMapping("/sys/security") 
public class SecurityAction extends BaseAction{
	@Resource	SysMenuBarService sysMenuBarService;
	@Resource   SysRoleService    sysRoleService;
	@Resource   MySecurityMetadataSource mySecurityMetadataSource;
	String layout 		="framework/sysmanage/menuBar/layout";
	String add			="framework/sysmanage/menuBar/add";
	String dataList     ="framework/sysmanage/menuBar/dataList";
	String update       ="framework/sysmanage/menuBar/update";
 
	 /**
	  *菜单管理页面【导航菜单查询】
	  */
	@RequestMapping(params="gridView")   
	public ModelAndView gridView(Model model,HttpServletRequest request,HttpServletResponse response) {
		pm.setPageSize(20);
		pm=getPageInfo(new String[] {"menuName","menuCode"},request);
		pm=sysMenuBarService.getSysMenuBarPageList(pm);//查询数据	
		ModelAndView mav = null;
		if(pageRequest(request))
		{
			mav = new ModelAndView(layout);	
		}else{
			mav = new ModelAndView(dataList);
		}
		mav.addObject("pm", pm);
		return mav;  
	}
	 /**
	  * 分配权限展示
	  * createTime   2014-12-16
	  */
	@RequestMapping(params="treeView")   
	public void treeView(Model model,HttpServletRequest request,HttpServletResponse response) {
		String roleid=request.getParameter("roleId");
		String selectedMenuStrs = "";
		List  roleMenuList = sysMenuBarService.getMenuListByRoleId(roleid);
		SysRole sr=sysRoleService.getSysRole(new Integer(roleid));
		for (int i = 0; i < roleMenuList.size(); i++) 
		{
			Map map=(HashMap)roleMenuList.get(i);
			Integer menuId=MapUtils.getInteger(map, "menuId");
			if (i==roleMenuList.size()-1) {
				selectedMenuStrs += menuId+"-";
			}else {
				selectedMenuStrs += menuId+"-";
			}
		}
		String json ="";
		if (sr.getResource().equals("1")) {
			json = MenuBarUtil.getTreeJson("101",selectedMenuStrs);
		}else {
			json = MenuBarUtil.getTreeJson("901",selectedMenuStrs);
		}
		ResponseUtils.renderJson(response, json);
	}	 
	 
	/**
	 * 更新菜单【执行操作】
	 * createTime   2014-12-19
	 */
	@RequestMapping(params = "update")
	public ModelAndView update(@ModelAttribute SysMenubar sysMenubar, HttpServletRequest request,HttpServletResponse response)throws Exception {
		if(pageRequest(request))
		{
			String menuid = request .getParameter("menuid");
			SysMenubar smb = sysMenuBarService.getSysMenuBar(new Integer(menuid));
			ModelAndView  mav=new ModelAndView(update);
			mav.addObject("sysMenubar",smb);
			return mav;
		}
		else {
			try {
				sysMenuBarService.update(sysMenubar);
				mySecurityMetadataSource.loadResourceDefine();
			 }catch (Exception e) {
				 MsgUtil.operFail(response,e);
				 return null;
			 }
			MsgUtil.operSuccess( response);
			 return null;
		}
	}

	/**
	 * 添加菜单【执行添加操作】
     * createTime   2014-12-18
	 */
	@RequestMapping(params = "add")
	public ModelAndView add(@ModelAttribute SysMenubar smb, Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		try {
			if(pageRequest(request))
			{
				ModelAndView  mav=new ModelAndView(add);
				return mav;
			}else {
				String parentId = request.getParameter("sonId");
				String parentIds = request.getParameter("parentIdS");
				if(StringUtils.isBlank(parentId))
				{
					smb.setParentId(new Integer(parentIds) );
				}else {
					smb.setParentId(new Integer(parentId) );
				}
				smb.setAuthorityType("2");
				int ret=sysMenuBarService.add(smb);
				if (ret<0) {
					MsgUtil.operFail(response);
					return null;
				}
				mySecurityMetadataSource.loadResourceDefine();
				MsgUtil.operSuccess( response);
				return null;
		}
		}
		catch (Exception e) {
			MsgUtil.operFail(response,e);
			return null;
		}
	}
	 
	/**
	 *  下拉框菜单查询
	 */
	@RequestMapping(params = "getMenuBarList")   
	public void getMenuBarList(HttpServletRequest request,HttpServletResponse response)  throws Exception{
		String  parentid =request.getParameter("parentid");
		query.append("parentId", parentid);
		List menuBarList= sysMenuBarService.getMenuBarList(query);
		String jsonStr=JsonUtil.list2json(menuBarList) ; 
		ResponseUtils.renderJson(response, jsonStr);
	} 
 
	/**
	 * 删除【要验证是否被使用 】
	 * createTime   2014-12-19
	 */
	@RequestMapping(params = "delete")
	public void delete(@ModelAttribute SysMenubar smb,HttpServletRequest request,HttpServletResponse response)throws Exception {
		String menuid = request .getParameter("menuid");
		smb.setMenuId(new Integer(menuid));
		try {
			 boolean bind=sysMenuBarService.checkIsUsed(smb.getMenuId());
			 if (bind) {
				 MsgUtil.operMsg(response,"对不起！该权限已经被使用 删除失败！");
				 return;
			 }
			 sysMenuBarService.delete(smb.getMenuId());
			  mySecurityMetadataSource.loadResourceDefine();
		 }catch (Exception e) {
			 MsgUtil.operFail(response,e);
			 return;
		 }
		MsgUtil.operSuccess( response);
	}
		 
	/**
	 * 启用、停用菜单
	 * @author liubin
	 *  createTime 2015-1-5
	 */
	@RequestMapping(params = "updateStatus")   
	public void  updateStatus(@ModelAttribute SysMenubar sysMenubar,HttpServletRequest request,HttpServletResponse response) throws Exception {
		try {
			 String menuCode=request.getParameter("menuCode");
			 String opertype=request.getParameter("operType");
			 SysMenubar sysMenubars=new SysMenubar();
			 if (opertype.equals(StartOrStop.Start.getValue())) {
				 sysMenubars.setStatus(StartOrStop.Start.getValue());
			 }else {
				 sysMenubars.setStatus(StartOrStop.Stop.getValue());
			}
			 sysMenubars.setMenuCode(menuCode);
			 sysMenuBarService.update(sysMenubars);
			 mySecurityMetadataSource.loadResourceDefine();
		 }catch (Exception e) {
			 MsgUtil.operFail(response,e);
			 return;
		 }
		MsgUtil.operSuccess( response);
	}	
	 
}
