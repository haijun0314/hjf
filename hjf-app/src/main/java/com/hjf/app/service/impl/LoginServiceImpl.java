package com.hjf.app.service.impl;

/**
 * 【用户登录】
 */
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.core.bean.reqBean.LoginReqBean;
import com.hjf.app.core.bean.respBean.LoginRespBean;
import com.hjf.app.core.util.AccountUtil;
import com.hjf.app.core.util.ConfigUtil;
import com.hjf.app.dao.AccountDAO;
import com.hjf.app.entity.Account;
import com.hjf.app.service.LoginService;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.mybatis.BaseService;
import com.hjf.common.bean.BaseRespBean;
import com.hjf.common.util.web.CookieUtil;
import com.hjf.common.util.web.SessionUtil;
@Service
@Transactional 
public class LoginServiceImpl extends BaseService  implements LoginService {
	@Resource AccountDAO accountDAO;
	/**
	 * 【用户登录】
	 */
	public LoginRespBean weblogin(LoginReqBean q,LoginRespBean     r ){
		log.info("登录操作开始....账户"+q.getTelephone());
		Account  lo=new Account();
		lo.setPassword(q.getPassword());
		lo.setTelephone(q.getTelephone());
		Account c =(Account) accountDAO.getObjById(lo, "login");
		if (c==null) {
			log.error("【用户登录】...登录失败....没有查询到该账户信息");
			r.fail(CodeUtil.e_1003);
			return r;
		}
		log.info("登陆验证成功.....创建token");
		AccountUtil.createToken(c);
		log.info("登陆验证成功.....创建Session");
		
		SessionUtil.setSession(ConfigUtil.sys_session_isLocal,ConfigUtil.Session_Login_User, c);
		log.info("登陆验证成功.....创建Cookie");
		CookieUtil.setCookie(q.getResponse(),ConfigUtil.Cookie_Login_User, c.getUserToken());
		copyProperties(r, c);
		r.success();
		return r;
	}
	
	/**
	 * 【用户退出】
	 */
	public BaseRespBean weblogout(LoginReqBean q  ){
		log.info("【用户退出】....账户"+AccountUtil.getMyId());
		SessionUtil.clearSession(ConfigUtil.sys_session_isLocal);;
		CookieUtil.removeCookie(q.getResponse(),ConfigUtil.Cookie_Login_User);
		r.success();
		return r;
	}	 
	

}
