package com.hjf.mng.sys.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hjf.base.spring.BaseAction;
import com.hjf.common.bean.BaseRespBean;
import com.hjf.common.util.web.SessionUtil;
import com.hjf.mng.common.security.MenuBarUtil;
import com.hjf.mng.common.security.MyUserDetails;
import com.hjf.mng.common.util.ConfigUtil;
import com.hjf.mng.sys.entity.SysMenubar;
import com.hjf.mng.sys.entity.SysUser;
import com.hjf.mng.sys.service.SysRoleService;
import com.hjf.mng.sys.service.SysUserService;
 
/**
 * 系统环境数据【登录用户信息】
 * author lihaijun
 * createTime   2014-11-21
 */
@Controller  
@RequestMapping("/sys/environment") 
public class EnvironmentAction extends BaseAction {
	@Resource	SysUserService sysUserService;
	@Resource	SysRoleService sysRoleService;
	
	/**
	 *  管理员查询页面【页面显示】
	 */
	@RequestMapping(params = "loadUser")  
	@ResponseBody
	public BaseRespBean loadUser(HttpServletRequest request,HttpServletResponse response)  throws Exception{
		MyUserDetails userDetails=MyUserDetails.getCurUserDetails();
		if (userDetails==null) {
			userDetails=(MyUserDetails) SessionUtil.getSession(ConfigUtil.sys_session_isLocal,ConfigUtil.Session_global);
		}
		SysUser  user=new SysUser();
		user.setUserId(userDetails.getUserid());
		user.setUserName(userDetails.getUsername());
		user.setTelePhone(userDetails.getTelePhone());
		user.setUserType(userDetails.getUserType());
		return returnMsg(user);  
	} 	
	
	/**
	 * 生成左侧菜单【登陆用户所拥有的权限】
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(params = "loadUserMenus") 
	@ResponseBody
	public BaseRespBean loadUserMenus(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String userType=MyUserDetails.getCurUserDetails().getUserType();
		String startCode="";
		if ("0".equals(userType)) {
			startCode="101";
		}else {
			startCode="901";
		}
		
		List list=new ArrayList();
		List<SysMenubar>  meunList=MyUserDetails.getCurUserDetails().getUserMenuBars();
		List<SysMenubar>  meunList_=MenuBarUtil.getChildMenubarList(meunList, startCode, false );
		for (int i=0;i<meunList_.size();i++) {
			SysMenubar smb=meunList_.get(i);
			Map map=new HashMap();
			if (i==0) {
				smb.setSystemId(smb.getMenuId());
			}else {
				smb.setSystemId(null);
			}
			List childMenuList=MenuBarUtil.getChildMenubarList(meunList, smb.getMenuCode(), false );
			map.put("smb", smb);
			map.put("menuList", childMenuList);
			list.add(map);
		}
		return returnMsg(list);  
		
	}	
	 
	 
}
