package com.hjf.mng.sys.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hjf.base.mybatis.Query;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.util.JsonUtil;
import com.hjf.common.util.MsgUtil;
import com.hjf.common.util.web.ResponseUtils;
import com.hjf.mng.sys.entity.SysRole;
import com.hjf.mng.sys.service.SysRoleService;
 
/**
 * 系统管理员管理
 */
@Controller  
@RequestMapping("/sys/role") 
public class RoleAction extends BaseAction {
	@Resource	SysRoleService sysRoleService;
	String layout	   ="framework/sysmanage/role/layout";
	String dataList	   ="framework/sysmanage/role/dataList";
	String add	       ="framework/sysmanage/role/add";
	String update	   ="framework/sysmanage/role/update";
	String permission  ="framework/sysmanage/role/permission";
	String detail      ="framework/sysmanage/role/detail";
	/**
	 *  角色查询页面【页面显示】
	 */
	@RequestMapping(params = "gridView")   
	public ModelAndView gridView(HttpServletResponse response,Model model,HttpServletRequest request) throws Exception {
		pm=getPageInfo( new String[] {}, request);
		pm=sysRoleService.getSysRolePageList(pm);//查询数据	
		ModelAndView mav=null;
		if (pageRequest(request)) { 
			 mav=new ModelAndView(layout);
		}else {
			 mav=new ModelAndView(dataList);
		}
		mav.addObject("pm", pm);
		return mav;  
	} 
	
	/**
	 * 添加系统角色
	 */
	@RequestMapping(params = "add")   
	public ModelAndView  add(SysRole sysRole ,  Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		if (pageRequest(request)) {
			ModelAndView  mav=new ModelAndView(add);
			return mav;
		}else {
			try {
				r=sysRoleService.add(sysRole);
				if(r.isFail()){
					MsgUtil.operFail(response);
				}
			} catch (Exception e) {
				 MsgUtil.operFail(response,e);
				return null; 
			}
			MsgUtil.operSuccess( response);
			return null;
		}
	}	
	/**
	 * 删除系统角色
	 */
	@RequestMapping(params = "delete")   
	public void delete(HttpServletRequest request,HttpServletResponse response) throws Exception {
		 String roleid=request.getParameter("roleId");
		try {
			 boolean bind=sysRoleService.checkIsBindSysUser(new Integer(roleid));
			 if (bind) {
				 MsgUtil.operFail(response,null,"对不起！该角色已经被使用 删除失败！");
				 return;
			 }
			 sysRoleService.delete(new Integer(roleid));
		 }catch (Exception e) {
			 MsgUtil.operFail(response,e);
			 return;
		 }
		MsgUtil.operSuccess( response);
	}
 
	/**
	 * 执行更新系统角色
	 * author lihaijun
	 * createTime   2014-12-8
	 */
	@RequestMapping(params = "update")   
	public ModelAndView  update(@ModelAttribute SysRole sr,HttpServletRequest request,HttpServletResponse response) throws Exception {
		if (pageRequest(request)) {
			 SysRole sysRole=sysRoleService.getSysRole(sr.getRoleId());
			 ModelAndView  mav=new ModelAndView(update);
			 mav.addObject("sr", sysRole);
			 return mav;
		}else {
			try {
				 sysRoleService.update(sr);
			 }catch (Exception e) {
				 MsgUtil.operFail(response,e);
				 return null;
			 }
			MsgUtil.operSuccess( response);
			 return null;
		}
	}		
	/**
	 * 分配权限
	 * author lihaijun
	 * createTime   2014-12-8
	 */
	@RequestMapping(params = "permission")   
	public ModelAndView  permission(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String roleId=request.getParameter("roleId");
		if(pageRequest(request)) { 
			 ModelAndView  mav=new ModelAndView(permission);
			 mav.addObject("roleId",roleId);
			 return mav;
		}else {
			try {
				String idstr=request.getParameter("ids");
				String [] ids=StringUtils.split(idstr,"-");
				sysRoleService.assignPermission(new Integer(roleId) ,ids);
			 }catch (Exception e) {
				 MsgUtil.operFail(response,e);
				 return null;
			 }
			MsgUtil.operSuccess( response);
			 return null;
		}
	}		
	/**
	 * 详情页面
	 */
	@RequestMapping(params = "detail")   
	public ModelAndView  detail(HttpServletRequest request,HttpServletResponse response) throws Exception {
		try {
			String roleId  =request.getParameter("roleId");
			SysRole sysRole=sysRoleService.getSysRole(new Integer(roleId));
			List userList  = sysRoleService.getRoleUsers(new Integer(roleId));
			ModelAndView  mav=new ModelAndView(detail);
			mav.addObject("sysRole", sysRole);
			mav.addObject("userList", userList);
			return mav;
		} catch (Exception e) {
			return page_404;
		}
	}	
	/**
	 * 检查角色名是否重复
	 */
	@RequestMapping(params = "checkExist")   
	public void  checkExist(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String  roleDesc =new String(request.getParameter("roleDesc").getBytes("iso8859-1"),"utf-8");//跳转标记0表示获取列表json数据，1 表示跳转到jsp页面
		if(StringUtils.isBlank(roleDesc)){
			MsgUtil.operMsg( response,"该角色名称不可以使用");
			return ;
		}
		boolean flag=sysRoleService.checkExist(roleDesc);
		if (flag) {
			MsgUtil.operMsg( response,"该角色名称不可以使用");
		}else {
			MsgUtil.operMsg( response,"该角色名称可以使用");
		}
	}
	
	/**
	 * 查询系统角色
	 */
	@RequestMapping(params = "roleList")   
	public void  roleList(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String  resource =request.getParameter("resource");
		query = new Query();
		query.append("resource",resource);//角色来源  1 总部 2 城市 
		query.append("status", 0);
		List list=sysRoleService.getSysRoleList(query);
		String json=JsonUtil.list2json(list);
		ResponseUtils.renderJson(response, json); 
	}	
	 
}
