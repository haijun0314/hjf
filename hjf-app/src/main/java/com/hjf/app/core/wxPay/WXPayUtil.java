package com.hjf.app.core.wxPay;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import com.hjf.app.core.bean.reqBean.PayReqBean;
import com.hjf.app.core.bean.respBean.FinanceRespBean;
import com.hjf.base.LogUtil;
import com.hjf.base.exception.CodeUtil;
import com.hjf.common.util.HttpUtil;
import com.hjf.common.util.PropUtils;
import com.hjf.common.util.StringUtil;
import com.hjf.common.util.XMLUtil;
import com.hjf.common.util.secret.MD5Util;

public class WXPayUtil {
	private static Logger log = LogUtil.getLogger();
	
	public static  PrePayOrderResult prePay(PayReqBean  q) {
		PrePayOrderResult por=new PrePayOrderResult();
		String  unifiedorderUrl	=PropUtils.getMsgStr("weixin.pay.unifiedorderUrl");
		String  key				=PropUtils.getMsgStr("weixin.pay.key");
		String  notify_url		=PropUtils.getMsgStr("weixin.pay.notifyUrl");
		String appid			=PropUtils.getMsgStr("weixin.pay.appid");
		String mch_id			=PropUtils.getMsgStr("weixin.pay.mch_id");
		String body="支付";
		if (StringUtils.isBlank(body)) {
			body="账户充值";
		}
		
		String total_fee=q.getMoney().intValue()+"";
		String spbill_create_ip	=q.getSpbill_create_ip();
		String out_trade_no		=q.getPayOrderId();
		String nonce_str		=StringUtil.randNumStr(15);
		String signSrc="appid=" +appid+
				"&body=" +body+
				"&mch_id=" +mch_id+
				"&nonce_str=" +nonce_str+
				"&notify_url="+notify_url +
				"&out_trade_no=" +out_trade_no+
				"&spbill_create_ip="+spbill_create_ip +
				"&total_fee=" +total_fee+
				"&trade_type=APP"+
				"&key="+key;
		String sign	=MD5Util.encryption(signSrc).toUpperCase();
		log.info("【微信支付】...预订单支付提交签名数据为sign=..."+sign);
		StringBuffer sb = new StringBuffer();
		sb.append("<xml>");
		XMLUtil.addXml(sb, "appid",appid);
		XMLUtil.addXml(sb, "body",body);
		XMLUtil.addXml(sb, "mch_id", mch_id);
		XMLUtil.addXml(sb, "nonce_str", nonce_str);
		XMLUtil.addXml(sb, "notify_url",notify_url);
		XMLUtil.addXml(sb, "out_trade_no",out_trade_no);
		XMLUtil.addXml(sb, "spbill_create_ip",spbill_create_ip);
		XMLUtil.addXml(sb, "sign",sign);
		XMLUtil.addXml(sb, "total_fee",total_fee);
		XMLUtil.addXml(sb, "trade_type","APP");
		sb.append("</xml>");
		log.info("【微信支付】...预订单支付数据"+sb.toString());
		String ret=HttpUtil.post(unifiedorderUrl, sb.toString());
		log.info("【微信支付】...预订单请求结果"+ret);
		String 	return_code=XMLUtil.getXmlValue(ret, "return_code");	//UCCESS/FAIL此字段是通信标识，非交易标识，交易是否成功需要查看result_code来判断
		String 	result_code=XMLUtil.getXmlValue(ret, "result_code");		//SUCCESS/FAIL
		if (StringUtils.isBlank(return_code)||"FAIL".equals(return_code)) {
			log.info("【微信支付】...预订单请求return_code 通信失败");
			por.setReturn_code(CodeUtil.e_4102);
			return por;
		}
		if (StringUtils.isBlank(result_code)||"FAIL".equals(result_code)) {
			log.info("【微信支付】...预订单请求result_code 交易失败");
			por.setReturn_code(CodeUtil.e_4101);
			return por;
		}
		log.info("【微信支付】...预订单请求交易处理成功.....");
		String 	return_msg	=XMLUtil.getXmlValue(ret, "return_msg");	//返回信息，如非空，为错误原因签名失败参数格式校验错误
		String 	err_code	=XMLUtil.getXmlValue(ret, "err_code");		//详细参见第6节错误列表
		String 	err_code_des=XMLUtil.getXmlValue(ret, "err_code_des");	//错误返回的信息描述
		String 	prepay_id	=XMLUtil.getXmlValue(ret, "prepay_id");		//微信生成的预支付回话标识，用于后续接口调用中使用，该值有效期为2小时
		por.setAppid(appid);
		por.setMch_id(mch_id);
		por.setPrepay_id(prepay_id);
		por.setResult_code(result_code);
		por.setReturn_code(return_code);
		por.setErr_code(err_code);
		por.setErr_code_des(err_code_des);
		por.setReturn_msg(return_msg);
		por.setOut_trade_no(out_trade_no);
		por.setReturn_code(CodeUtil.success);
		por.setNonce_str(nonce_str);
		return por;
	}
 
	 
	/**
	 * 【订单查询】
	 * @param out_trade_no
	 * @return
	 */
	public static  QueryOrderResult queryOrder(String out_trade_no ) {
		QueryOrderResult query=new QueryOrderResult();
		String  orderqueryUrl	=PropUtils.getMsgStr("weixin.pay.orderqueryUrl");
		String  key				=PropUtils.getMsgStr("weixin.pay.key");
		String appid			=PropUtils.getMsgStr("weixin.pay.appid");
		String mch_id			=PropUtils.getMsgStr("weixin.pay.mch_id");
		String nonce_str		=StringUtil.randNumStr(15);
		String signSrc="appid=" +appid+
				"&mch_id=" +mch_id+
				"&nonce_str=" +nonce_str+
				"&out_trade_no=" +out_trade_no+
				"&key="+key;
		String sign	=MD5Util.encryption(signSrc).toUpperCase();
		log.info("【订单查询】...订单查询提交签名数据为sign=..."+sign);
		StringBuffer sb = new StringBuffer();
		sb.append("<xml>");
		XMLUtil.addXml(sb, "appid",appid);
		XMLUtil.addXml(sb, "mch_id", mch_id);
		XMLUtil.addXml(sb, "nonce_str", nonce_str);
		XMLUtil.addXml(sb, "out_trade_no",out_trade_no);
		XMLUtil.addXml(sb, "sign",sign);
		sb.append("</xml>");
		log.info("【订单查询】...订单查询数据"+sb.toString());
		String ret=HttpUtil.post(orderqueryUrl, sb.toString());
		log.info("【订单查询】...订单查询请求结果"+ret);
		String 	return_code=XMLUtil.getXmlValue(ret, "return_code");	//UCCESS/FAIL此字段是通信标识，非交易标识，交易是否成功需要查看result_code来判断
		String 	result_code=XMLUtil.getXmlValue(ret, "result_code");		//SUCCESS/FAIL
		String 	return_msg =XMLUtil.getXmlValue(ret, "return_msg");		//SUCCESS/FAIL
		if ("FAIL".equals(return_code)) {
			log.info("【订单查询】...订单查询return_code 通信失败");
			query.setErr_code(CodeUtil.e_4102);
			query.setErr_code_des(return_msg );
			return query;
		}
		
		String 	err_code 	 =XMLUtil.getXmlValue(ret, "err_code");		//SYSTEMERROR 	错误码
		String 	err_code_des =XMLUtil.getXmlValue(ret, "err_code_des");//系统错误 	结果信息描述 
		String 	trade_state  =XMLUtil.getXmlValue(ret, "trade_state");		//交易状态 
		String 	time_end  =XMLUtil.getXmlValue(ret, "time_end");//支付完成时
		String trade_state_desc=XMLUtil.getXmlValue(ret, "trade_state_desc");//支付完成时
		
		if ("FAIL".equals(result_code)) {
			log.info("【订单查询】...订单查询请求result_code 交易失败");
			query.setErr_code(CodeUtil.e_4102);
			query.setErr_code_des(err_code_des );
			return query;
		}else {
			query.setTrade_state_desc(trade_state_desc);
			if ("SUCCESS".equals(trade_state)) {
				log.info("【订单查询】...订单查询请求trade_state 交易成功");
				query.setErr_code(CodeUtil.success);
			}else if ("PAYERROR".equals(trade_state)) {
				log.info("【订单查询】...订单查询请求trade_state 交易失败");
				query.setErr_code(CodeUtil.e_4101);
			}else if ("CLOSED".equals(trade_state)) {
				log.info("【订单查询】...订单查询请求trade_state 交易关闭   失败处理");
				query.setErr_code(CodeUtil.e_4101);
			}else if ("NOTPAY".equals(trade_state)) {
				log.info("【订单查询】...订单查询请求trade_state 未支付   看时间间隔");
				query.setErr_code(CodeUtil.e_4103);
			}else{
				log.info("【订单查询】...订单查询请求trade_state 交易暂不处理");
				query.setErr_code(CodeUtil.doing);
			}
			query.setTime_end(time_end);
		}
		log.info("【订单查询】...预订单请求交易处理成功.....");
		return query;
	}
 	 
	
	public static String signPay (FinanceRespBean r) {
		String  key				=PropUtils.getMsgStr("weixin.pay.key");
		String signSrc="appid=" +r.getAppid()+
				"&noncestr=" +r.getNoncestr()+
				"&package=" +r.getPackage_()+
				"&partnerid=" +r.getPartnerid()+
				"&prepayid=" +r.getPrePayId()+
				"&timestamp=" +r.getTimestamp()+
				"&key="+key;
		String sign	=MD5Util.encryption(signSrc).toUpperCase();
		return sign;
	}
	 
	
	
	
	
	
	
	
}
