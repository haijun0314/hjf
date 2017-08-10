package com.hjf.common.aop;


import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import com.hjf.base.exception.CodeUtil;
import com.hjf.base.exception.RepeatException;
import com.hjf.base.mybatis.BaseService;
import com.hjf.common.util.PropUtils;
import com.hjf.common.util.web.SessionUtil;

/**
 * 【功能说明】：aop切面判断重复提交  根据提交参数reqNO 是否重复验证是否重复提交
 * @author lihaijun
 * 【创建时间】2017-05-25
 */
@Aspect
@Component
public class ReqNoAspect extends BaseService{
	 /**
	  * 定义切面  凡是在方法上添加了@CheckReqNo的都需要验证reqNO来判断是否重复提交
	  */
	@Pointcut("@annotation(com.hjf.common.aop.annotation.CheckReqNo)")
	public void checkRepeat(){
		 
	}

	@Before("checkRepeat()")
	public void before(JoinPoint joinPoint) throws Exception {
		 String target= joinPoint.getTarget().getClass().getName();
		 String method = joinPoint.getSignature().getName(); 
		 log.info("【验证重复提交AOP】"+"target="+target+"....method="+method);
		 Object[] arguments = joinPoint.getArgs();
		 HttpServletRequest  q=(HttpServletRequest) arguments[0];
		 String reqNO=q.getParameter("reqNO");
		 log.info("【验证重复提交AOP】"+"reqNO="+reqNO);
		 if (StringUtils.isBlank(reqNO)) {
			 throw new RepeatException(CodeUtil.e_9990);
		 }
		 boolean  sys_session_isLocal	=PropUtils.getBooleanMsg("sys.session.isLocal");
		 String reqNO_=(String) SessionUtil.getSession(sys_session_isLocal,"reqNO");
		 if (StringUtils.isNotBlank(reqNO_)&&reqNO_.equals(reqNO)) {
			 throw new RepeatException(CodeUtil.e_9990);
		 }
		 SessionUtil.setSession(sys_session_isLocal,"reqNO", reqNO);
	}
	
	  
 
}
