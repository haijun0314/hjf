package com.hjf.app.service.impl;

/**
 * 登录注册服务
 */
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hjf.app.core.bean.reqBean.RegisterReqBean;
import com.hjf.app.core.bean.respBean.RegisterRespBean;
import com.hjf.app.core.util.AccountUtil;
import com.hjf.app.core.util.ConfigUtil;
import com.hjf.app.entity.Account;
import com.hjf.app.service.AccountService;
import com.hjf.app.service.RegisterService;
import com.hjf.app.service.SmsService;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.mybatis.BaseService;
import com.hjf.common.util.web.CookieUtil;
import com.hjf.common.util.web.SessionUtil;
@Service
@Transactional 
public class RegisterServiceImpl extends BaseService  implements RegisterService {
	@Resource  AccountService   	accountService;
	@Resource  SmsService 		    smsService;
 
	/**
	 * 账户注册
	 * 1、检查是否已经注册过
	 * 2、验证短信验证码
	 * 3、准备昵称
	 * 4、创建账户
	 * 3、添加注册用户缓存
	 */
	public RegisterRespBean register( RegisterReqBean  q,RegisterRespBean r ){
		boolean ret =smsService.smsCheck(q.getTelephone(),q.getSmsCode());
		if (!ret) {
			r.fail( CodeUtil.e_1006);
			log.error("【账户注册】"+q.getTelephone()+" 短信验证失败");
			return r;
		}
		//检查是否已经注册过
		Account c=accountService.getAccountByTelephone(q.getTelephone());
		if (c!=null) {
			r.fail(CodeUtil.e_1007);
			log.error("【账户注册】"+q.getTelephone()+" 该账户已经注册   不能重复注册");
			return r;
		}
	
		try {
			//创建账户
			Account a=AccountUtil.createAccount(q);
			a=accountService.addAccount(a);
			if (a==null||a.getAccountId()==null) {
				r.fail(CodeUtil.e_1005);
				log.info("【账户注册】失败"+q.getTelephone());
				return r;
			}
			AccountUtil.createToken(a);
			SessionUtil.setSession(ConfigUtil.sys_session_isLocal,ConfigUtil.Session_Login_User, a);
			CookieUtil.setCookie(ConfigUtil.Cookie_Login_User, a.getUserToken());
		} catch (Exception e) {
			log.error("【账户注册】...发生异常..."+e.getMessage());
			e.getMessage();
			r.fail(CodeUtil.e_1005);
			return r;
		}
		r.success();
		return r;
	}
	

}
