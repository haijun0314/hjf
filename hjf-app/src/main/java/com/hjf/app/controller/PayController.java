package com.hjf.app.controller;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hjf.app.core.alipay.util.AliPayUtil;
import com.hjf.app.core.alipay.util.AlipayNotify;
import com.hjf.app.core.bean.reqBean.PayReqBean;
import com.hjf.app.core.bean.respBean.FinanceRespBean;
import com.hjf.app.service.PayService;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.util.XMLUtil;
import com.hjf.common.util.web.ResponseUtils;
 
/**
 * 支付处理器
 * author lihaijun
 * createTime   2015-1-12
 */

@Controller  
@RequestMapping("/pay") 
public class PayController extends BaseAction{
	 @Resource PayService 		payService;
	 
	/**
	 * 【APP支付同步通知】
	 */
	@RequestMapping(params = "payNotify")   
	public void payNotify(HttpServletRequest request,HttpServletResponse response) {
		try {
			FinanceRespBean  r=new FinanceRespBean();
			//商户订单号
			String out_trade_no = request.getParameter("orderId");
			String trade_no = request.getParameter("trade_no");//同步通知  没有该数据
			log.info("【APP支付同步通知】......out_trade_no="+out_trade_no);
			//交易状态
			String resultStatus = request.getParameter("trade_status");
			if(resultStatus.equals("9000")){
				log.info("【APP支付同步通知】交易异步通知：支付订单号："+out_trade_no+"支付成功 ");	
				r=payService.notify(out_trade_no, trade_no,true);
			}else { 
				log.info("【APP支付同步通知】交易异步通知：支付订单号:"+out_trade_no+"支付失败");
				r=payService.notify(out_trade_no, trade_no,false);
			}
			respMsgObj(response, r);
		} catch (Exception e) {
			errorMsg(response, e);
			log.error("【APP支付同步通知】...发生异常");
		}
	}	 
	 
	 
	/**
	 * 【支付】
	 */
	@RequestMapping(params = "createPayOrder")   
	public void createPayOrder(PayReqBean   q	,HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			FinanceRespBean r =new FinanceRespBean();
			//检查参数
			boolean check=q.checkPayParams(request);
			if (!check) {
				log.error("【支付】...检查参数失败");
				err_param(response, r);
				return;
			}
			r=payService.create(q,r);
			respMsgObj(response, r);
		} catch (Exception e) {
			log.error("【支付】......发生异常");
			 errorMsg(response,e);
		}
	}	
	
 
	
	/**
	 * 【支付宝支付后台通知】
	 */
	@RequestMapping(value = "aliPayNotify")   
	public void aliPayNotify(HttpServletRequest request,HttpServletResponse response) {
		try {
			FinanceRespBean  r=new FinanceRespBean();
			log.info("【支付宝支付后台通知】....");
			Map<String,String> params =  AliPayUtil.buildNotifyParams(request);
			log.info("【支付宝支付后台通知】获取支付宝POST过来反馈信息...params=="+params);
			//商户订单号
			String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
			//支付宝交易号
			String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
			//交易状态
			String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"),"UTF-8");
			log.info("【支付宝支付后台通知】商户订单号="+out_trade_no+"支付宝交易号=="+trade_no+"交易状态="+trade_status);
			if (trade_status.equals("WAIT_BUYER_PAY")) {
				ResponseUtils.renderText(response, "success")	;
				return;
			}
			if(AlipayNotify.verify(params)){//验证成功
				if(trade_status.equals("TRADE_FINISHED")||trade_status.equals("TRADE_SUCCESS")){
					log.info("【支付宝支付后台通知】交易异步通知：支付订单号："+out_trade_no+"支付成功 ");	
					r=payService.notify(out_trade_no, trade_no,true);
				}else {
					log.info("【支付宝支付后台通知】交易异步通知：支付订单号:"+out_trade_no+"支付失败");
					r=payService.notify(out_trade_no, trade_no,false);
				}
				if (CodeUtil.error.equals(r.getCode())) {
					log.info("【支付宝支付后台通知】 ....失败...");
					ResponseUtils.renderText(response, "fail")	;
					return;
				}else {
					ResponseUtils.renderText(response, "success")	;
					return;
				}
			}else{//验证失败
				ResponseUtils.renderText(response, "fail")	;
			} 
		} catch (Exception e) {
			ResponseUtils.renderText(response, "fail")	;
			log.error("【支付宝支付后台通知】...发生异常");
		}
	}
	
	
	/**
	 * 【微信支付后台通知】
	 */
	@RequestMapping(value = "wxPayNotify")   
	public void wxPayNotify(HttpServletRequest request,HttpServletResponse response) {
		try {
			FinanceRespBean  r=new FinanceRespBean();
			log.info("【微信支付后台通知】....");
			InputStream inStream = request.getInputStream();
			ByteArrayOutputStream outSteam = new ByteArrayOutputStream();
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = inStream.read(buffer)) != -1) {
			 outSteam.write(buffer, 0, len);
			}
			outSteam.close();
			inStream.close();
			String result = new String(outSteam.toByteArray(),"utf-8");//获取微信调用我们notify_url的返回信息
			log.info("【微信支付后台通知】...返回数据result= "+result);
			String 	out_trade_no	=XMLUtil.getXmlValue(result, "out_trade_no");		 
			String 	return_code		=XMLUtil.getXmlValue(result, "return_code");			 
			String 	result_code		=XMLUtil.getXmlValue(result, "result_code");	 
			String 	transaction_id	=XMLUtil.getXmlValue(result, "transaction_id");
			
			if ("SUCCESS".equals(return_code)) {
				if ("SUCCESS".equals(result_code)) {
					r=payService.notify(out_trade_no, transaction_id,true);
				}else {
					r=payService.notify(out_trade_no, transaction_id,false);
				}
			}
			ResponseUtils.renderText(response, "SUCCESS")	;
		} catch (Exception e) {
			ResponseUtils.renderText(response, "FALL")	;
			log.error("【微信支付后台通知】...发生异常");
		}
	}
	 	 
	 	
}
