package com.hjf.mng.sys.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hjf.base.model.MyUserDetails;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.enums.ResultType;
import com.hjf.common.enums.UserType;
import com.hjf.common.util.StringUtil;
import com.hjf.common.util.web.MsgUtil;
import com.hjf.mng.common.util.ConfigUtil;
import com.hjf.mng.common.util.SysLogUtil;
import com.hjf.mng.sys.entity.SysMenubar;
import com.hjf.mng.sys.entity.SysUser;
import com.hjf.mng.sys.service.SessionService;
import com.hjf.mng.sys.service.SysRoleService;
import com.hjf.mng.sys.service.SysUserService;
 
/**
 * 系统管理员管理
 * author lihaijun
 * createTime   2014-11-21
 */
@Controller  
@RequestMapping("/sys/sysUser") 
public class SysUserAction extends BaseAction {
	@Resource	SysUserService sysUserService;
	@Resource	SysRoleService sysRoleService;
	@Resource   SessionService sessionService;
	String onlineUserList    ="framework/sysmanage/session/onlineUserList";
	
	//系统操作页面
	String layout      ="framework/sysmanage/user/sys/layout";   //系统管理员查询页面
	String add    	   ="framework/sysmanage/user/sys/add";		  //系统管理员添加页面
	String dataList    ="framework/sysmanage/user/sys/dataList";  //系统管理员列表页面
	
	//公用操作页面
	String detail 	       ="framework/sysmanage/user/detail";	  //系统管理员显示页面
	String update	   	   ="framework/sysmanage/user/update"; 	  //系统管理员修改页面
	String resetPassword   ="framework/sysmanage/user/resetPassword"; 	  //系统管理员修改页面
	
	//代理商操作页面
	String addAgent     	="framework/sysmanage/user/agent/add";//城市账号添加页面
	String layoutAgent      ="framework/sysmanage/user/agent/layout";//城市账号查询页面
	String dataListAgent    ="framework/sysmanage/user/agent/dataList";		//城市账号搜索页面
	
	//个人设置页面
	String mySet 	     ="framework/sysmanage/user/mySet";
	String myInfo      	 ="framework/sysmanage/user/myInfo";
	String setPassword   ="framework/sysmanage/user/setPassword";	
	
	/**
	 * 在线用户展示
	 */
	 @RequestMapping(params = "onlineUserList")   
		public ModelAndView onlineUserList(Model model,HttpServletRequest request,HttpServletResponse response)  throws Exception{
			pm=getPageInfo(new String[] {},request);
			pm=sessionService.getOnlineUserPM(pm);//查询数据	
			ModelAndView mav=new ModelAndView(onlineUserList);
			mav.addObject("pm", pm);
			return mav;  
		} 
    /**
	 * 踢出用户
	 */
	@RequestMapping(params = "kickOutUser")   
	public void kickOurUser(HttpServletRequest request,HttpServletResponse response) throws Exception {
		 String userId=request.getParameter("userId");
		try {
			 r=sessionService.kickOutOnlineUser(new Integer(userId));
			if(r.isFail()){
				SysLogUtil.addlSysLog(request," 踢出用户【"+userId+"】失败",ResultType.Fail);
				MsgUtil.operFail(response);
			}
			 
		 }catch (Exception e) {
			 log.error("【剔除在线用户】  发生异常"+e.getMessage());
			 SysLogUtil.addlSysLog(request," 踢出用户【"+userId+"】失败",ResultType.Fail);
			 MsgUtil.operFail(response,e);
			 return;
		 }
		SysLogUtil.addlSysLog(request, " 踢出用户【"+userId+"】失败", ResultType.Success);  
		MsgUtil.operSuccess(response);
	}	
	 
	
	/**
	 *  管理员查询页面【页面显示】
	 */
	@RequestMapping(params = "gridView")   
	public ModelAndView gridView(HttpServletRequest request,HttpServletResponse response)  throws Exception{
		pm=getPageInfo(new String[] {"userName", "status"},request);
		pm=sysUserService.getUserPageList(pm);//查询数据	
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
	 * 添加系统用户
	 */
	@RequestMapping(params = "add")   
	public ModelAndView add( SysUser sysUser ,HttpServletRequest request,HttpServletResponse response) throws Exception {
		if (pageRequest(request)) {
			return new ModelAndView(add);
		}else {
			 String [] roleStr=request.getParameterValues("roles");
			 sysUser.setRoles(StringUtil.convertToString(roleStr, ","));
			 sysUser.setUserType(UserType.SystemUser.getValue());
			try {
				 boolean isexist=sysUserService.checkUserName(sysUser.getUserName());
				 if (isexist) {
					 MsgUtil.operMsg(response,"对不起 该用户名已经存在 请用其他用户名！");
					 return null;
				 }
				 r=sysUserService.addSysUser(sysUser);
				 if (r.isFail()) {
					 SysLogUtil.addlSysLog(request, "【添加系统用户】"+sysUser.getUserName()+"失败", ResultType.Fail);
					 MsgUtil.operFail(response);
				 }
			 }catch (Exception e) {
				 SysLogUtil.addlSysLog(request, "【添加系统用户】"+sysUser.getUserName()+"失败", ResultType.Fail);
				 log.error("【添加系统用户】  发生异常"+e.getMessage());
				 MsgUtil.operFail(response,e);
				 return null;
			 }
			
			SysLogUtil.addlSysLog(request, "【添加系统用户】"+sysUser.getUserName()+"成功", ResultType.Success);
			MsgUtil.operSuccess( response);
			return null;
		}
	}
	
//	/**
//	 * 添加代理商账号
//	 */
//	@RequestMapping(params = "addAgent")   
//	public ModelAndView addAgent(SysUser sysUser,HttpServletRequest request,HttpServletResponse response) throws Exception {
//		if (pageRequest(request)) {
//			String userType=request.getParameter("userType");//账户类型 0  系统账户 1  城市管理账户   2  城市普通账户
//			query = new Query();
//			query.append("resource", 2);//角色来源  1 总部 2 代理商
//			query.append("status", 0);
//			List roleList=sysRoleService.getSysRoleList(query);
//			ModelAndView  mav=new ModelAndView(addAgent);
//			mav.addObject("roleList", roleList);
//			mav.addObject("userType", userType);
//			return mav;
//		}else {
//			 String [] roleStr=request.getParameterValues("roles");
//			 sysUser.setRoles(StringUtil.convertToString(roleStr, ","));
//			 if (sysUser.getUserType().equals(UserType.AgentUser.getValue())) {
//				 sysUser.setAgentId(getAgentId());
//				 sysUser.setIsSuper(DefaultStatus.No.getValue());
//				 sysUser.setPassword(ConfigUtil.sys_user_defaultPassword);
//			 }
//			try {
//				 boolean isexist=sysUserService.checkUserName(sysUser.getUserName());
//				 if (isexist) {
//					 MsgUtil.operMsg(response,"对不起 该用户名已经存在 请用其他用户名！");
//					 return null;
//				 }
//				sysUserService.addSysUser(sysUser);
//			 }catch (Exception e) {
//				 MsgUtil.operFail(response,e);
//				 return null;
//			 }
//			MsgUtil.operSuccess( response);
//			return null;
//		}
//	}	
	
	/**
	 * 更新系统用户
	 */
	@RequestMapping(params = "update")   
	public ModelAndView  update(SysUser sysUser,HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(pageRequest(request)) {
			String userid=request.getParameter("userId");
			sysUser=sysUserService.getSysUserById(new Integer(userid));
			ModelAndView  mav=new ModelAndView(update);
			mav.addObject("sysUser", sysUser);
			return mav;
		}else {
			String [] roleStr=request.getParameterValues("roles");
			sysUser.setRoles(StringUtil.convertToString(roleStr, ","));
			try {
				 r=sysUserService.update(sysUser);
				 if (r.isFail()) {
					 SysLogUtil.addlSysLog(request, "【更新系统用户】"+sysUser.getUserName()+"失败", ResultType.Fail);
					 MsgUtil.operFail(response);
				 }
			 }catch (Exception e) {
				 SysLogUtil.addlSysLog(request, "【更新系统用户】"+sysUser.getUserName()+"失败", ResultType.Fail);
				 MsgUtil.operFail(response,e);
				 return null;
			 }
			 SysLogUtil.addlSysLog(request, "【更新系统用户】"+sysUser.getUserName()+"成功", ResultType.Success);
			 MsgUtil.operSuccess( response);
			 return null;
		}
	}
	/**
	 * 详情页面
	 */
	@RequestMapping(params = "detail")   
	public ModelAndView  detail(SysUser  sysUser,HttpServletRequest request,HttpServletResponse response) throws Exception {
		try {
			sysUser=sysUserService.detail(sysUser.getUserId());
			ModelAndView  mav=new ModelAndView(detail);
			mav.addObject("sysUser", sysUser);
			return mav;
		} catch (Exception e) {
			return page_404;
		}
	}	
	
	
	/**
	 * 删除系统用户
	 */
	@RequestMapping(params = "delete")   
	public void delete(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String userId=request.getParameter("userId");
		try {
			 r=sysUserService.delete(new Integer(userId));
			 if (r.isFail()) {
				 SysLogUtil.addlSysLog(request, "【删除系统用户】"+userId+"失败", ResultType.Fail);
				 MsgUtil.operFail(response);
			 }
		 }catch (Exception e) {
			 SysLogUtil.addlSysLog(request, "【删除系统用户】"+userId+"失败", ResultType.Fail);
			 MsgUtil.operFail(response,e);
			 return;
		 }
		 SysLogUtil.addlSysLog(request, "【删除系统用户】"+userId+"成功", ResultType.Success);
		MsgUtil.operSuccess( response);
	}
		
	
	/**
	 * 启用、停用系统管理员
	 * @author liubin
	 * createTime 2014-12-3
	 */
	@RequestMapping(params = "startOrStop")   
	public void  startOrStop(@ModelAttribute SysUser sysUser,HttpServletRequest request,HttpServletResponse response) throws Exception {
		 sysUser=sysUserService.detail(sysUser.getUserId());
		 String logm="";
		 if (sysUser.getStatus().equals("0")) {
			 logm="启用系统账户"+sysUser.getUserName();
		 }else{
			 logm="停用系统账户"+sysUser.getUserName();
		 }
		try {
			 r=sysUserService.update(sysUser);
			 if (r.isFail()) {
				 SysLogUtil.addlSysLog(request, logm+"失败", ResultType.Fail);
				 MsgUtil.operFail(response);
			 }
		 }catch (Exception e) {
			 SysLogUtil.addlSysLog(request, logm+"失败", ResultType.Fail);
			 MsgUtil.operFail(response,e);
			 return;
		 }
		 SysLogUtil.addlSysLog(request, logm+"成功", ResultType.Success);
		 MsgUtil.operSuccess( response);
	}	
	
	/**
	 *  管理员密码重置
	 */
	@RequestMapping(params = "resetPassword")   
	public void  resetPassword(@ModelAttribute SysUser sysUser,HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		try {
			 sysUser.setPassword(ConfigUtil.sys_user_defaultPassword);
			 r=sysUserService.update(sysUser);
			 sysUser=sysUserService.detail(sysUser.getUserId());
			 if (r.isFail()) {
				 SysLogUtil.addlSysLog(request, sysUser.getUserName()+"管理员密码重置失败", ResultType.Fail);
				 MsgUtil.operFail(response);
			 }
		 }catch (Exception e) {
			 SysLogUtil.addlSysLog(request, sysUser.getUserName()+"管理员密码重置失败", ResultType.Fail);
			 MsgUtil.operFail(response,e);
			 return;
		 }
		SysLogUtil.addlSysLog(request, sysUser.getUserName()+"管理员密码重置成功", ResultType.Success);
		MsgUtil.operSuccess( response);
	}	
	
	 
	/**
	 * 检查用户名是否重复
	 */
	@RequestMapping(params = "checkUserName")   
	public void  checkUserName(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String  username =request.getParameter("userName");//跳转标记0表示获取列表json数据，1 表示跳转到jsp页面
		if(StringUtils.isBlank(username)){
			MsgUtil.operMsg( response,"该登陆名称不可以使用");
			return ;
		}
		boolean flag=sysUserService.checkUserName(username);
		if (flag) {
			MsgUtil.operMsg( response,"该登陆名称不可以使用");
		}else {
			MsgUtil.operMsg( response,"该登陆名称可以使用");
		}
	}
//	/**
//	 * 城市管理员查询页面【页面显示】
//	 * @author liubin
//	 * createTime 2014-12-3
//	 */
//	@RequestMapping(params = "gridViewAgent")   
//	public ModelAndView gridViewAgent(HttpServletRequest request,HttpServletResponse response)  throws Exception{
//		pm=getPageInfo(new String[] {"userName", "status"},request);
//		pm.append("agentId", getAgentId());
//		pm=sysUserService.getUserPageList(pm);//查询数据
//		ModelAndView mav=null;
//		if (pageRequest(request)) {
//			 mav=new ModelAndView(layoutAgent);
//		}else { 
//			 mav=new ModelAndView(dataListAgent);
//		}
//		mav.addObject("pm", pm);
//		return mav; 
//	} 
	
	
	
	
	
	/**
	 * 修改密码
	 */
	@RequestMapping(params = "setPassword")
	public ModelAndView changePwd(@ModelAttribute SysUser sysUser,Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(pageRequest(request)){
				return new ModelAndView(setPassword);
		}else{
			try{
			String oldPassword = request.getParameter("oldPassword");
			String newPassword = request.getParameter("newPassword");
			if(!MyUserDetails.getCurUserDetails().getPassword().equals(oldPassword)){
				MsgUtil.operMsg(response,  "原密码不正确！");
				return null;
			}
				sysUser.setPassword(newPassword);
				sysUser.setUserId(MyUserDetails.getCurUserDetails().getUserid());
				r=sysUserService.update(sysUser);
				 if (r.isFail()) {
					 SysLogUtil.addlSysLog(request, "系统账户"+MyUserDetails.getCurUserDetails().getUsername()+"修改登录密码失败", ResultType.Fail);
					 MsgUtil.operFail(response);
				 }
				MyUserDetails.getCurUserDetails().setPassword(newPassword);
			}catch(Exception e){
				SysLogUtil.addlSysLog(request, "系统账户"+MyUserDetails.getCurUserDetails().getUsername()+"修改登录密码失败", ResultType.Fail);
				MsgUtil.operFail(response,e);
				return null;
			}
			SysLogUtil.addlSysLog(request, "系统账户"+MyUserDetails.getCurUserDetails().getUsername()+"修改登录密码成功", ResultType.Success);
			MsgUtil.operSuccess( response);
			return null;
		}
	}	
	
	
	/**
	 * 我的设置
	 */
	@RequestMapping(params = "mySet")   
	public ModelAndView mySet(@ModelAttribute SysUser sysUser,HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(pageRequest(request)){
			SysUser su = sysUserService.getSysUserById(MyUserDetails.getCurUserDetails().getUserid());
			ModelAndView mav = new ModelAndView(mySet);
			mav.addObject("sysUser",su);
			return mav;
		}else{
			try{
				sysUserService.update(sysUser);
			}catch (Exception e) {
				MsgUtil.operFail(response,e);
				return null;
			}
			MsgUtil.operSuccess( response);
			return null;
		}
	}
	
	/**
	 * 个人资料
	 */
	@RequestMapping(params = "myInfo")
	public ModelAndView myInfo(HttpServletRequest request,HttpServletResponse response) throws Exception {
		try {
			List  list =MyUserDetails.getCurUserDetails().getUserMenuBars();//将取到的登录者的信息放在list集合中
			List  datas=new  ArrayList();//实例化一个List集合,用来存放map
			Map map =new HashMap();//实例化一个map集合,用来存放权限名称
			int i=0;//声明变量i=0
			for(int j = 0 ; j < list.size(); j++){//循环遍历list集合
			SysMenubar smb=(SysMenubar)list.get(j);//将list中取出的数据强转为实体
			i++;
			map.put("menuName"+i, smb.getMenuName());//将取到的名字以键值对的方式放到map中
				if((j+1)%5==0){
					datas.add(map);//将map添加到list集合中
					i=0;
					map =new HashMap(); //重新实例化一个map
				}
			}
			SysUser su = sysUserService.getSysUserById(MyUserDetails.getCurUserDetails().getUserid());//从session中得到userId
			ModelAndView  mav=new ModelAndView(myInfo);
			mav.addObject("sysUser", su);
			mav.addObject("datas", datas);
			return mav;
		} catch (Exception e) {
			return page_404;
		}
	}	
	 
}
