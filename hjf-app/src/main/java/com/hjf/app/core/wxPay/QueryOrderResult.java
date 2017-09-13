package com.hjf.app.core.wxPay;

public class QueryOrderResult {

	private String 			result_code;	//SUCCESS/FAIL
	private String 			err_code;		//详细参见第6节错误列表
	private String 			err_code_des;	//错误返回的信息描述
	private String 			trade_state ;
	//SUCCESS—支付成功 、REFUND—转入退款、NOTPAY—未支付、CLOSED—已关闭
	//REVOKED—已撤销（刷卡支付）、USERPAYING--用户支付中   PAYERROR--支付失败(其他原因，如银行返回失败)
	private String 			transaction_id 	;//微信支付订单号 	
	private String 			time_end ;//支付完成时间 	
	private String 			trade_state_desc;//交易状态描述  对当前查询订单状态的描述和下一步操作的指引
	
	
	public String getTrade_state() {
		return trade_state;
	}
	public void setTrade_state(String trade_state) {
		this.trade_state = trade_state;
	}
	public String getTransaction_id() {
		return transaction_id;
	}
	public void setTransaction_id(String transaction_id) {
		this.transaction_id = transaction_id;
	}
	public String getTime_end() {
		return time_end;
	}
	public void setTime_end(String time_end) {
		this.time_end = time_end;
	}
	public String getTrade_state_desc() {
		return trade_state_desc;
	}
	public void setTrade_state_desc(String trade_state_desc) {
		this.trade_state_desc = trade_state_desc;
	}
	public String getResult_code() {
		return result_code;
	}
	public void setResult_code(String result_code) {
		this.result_code = result_code;
	}
	public String getErr_code() {
		return err_code;
	}
	public void setErr_code(String err_code) {
		this.err_code = err_code;
	}
	public String getErr_code_des() {
		return err_code_des;
	}
	public void setErr_code_des(String err_code_des) {
		this.err_code_des = err_code_des;
	}
	 
	 

	
	
}
