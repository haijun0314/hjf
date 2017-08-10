package com.hjf.common.bean;

import java.util.ArrayList;
import java.util.List;

import com.hjf.base.exception.CodeUtil;
/**
 * 返回实体共用
 * author lihaijun
 * createTime   2014-12-02
 */
public class BaseRespBean {
	private String code; //返回码【成功0000  失败0001】
	private String msg;  //返回结果说明
	private List   datas;//返回数据
	private Object data;  //返回特定数据
	private boolean   fail;// 操作是否失败  true  失败   false  成功
	 	
	
	public boolean isFail() {
		return fail;
	}
	public void setFail(boolean fail) {
		this.fail = fail;
	}
	public BaseRespBean() {
		 
	}
	public BaseRespBean(String code) {
		 this.code=code;
		 this.msg=CodeUtil.getCodeMsg(code);
	}
	
	public BaseRespBean(Object data){
		this.data=data;
	}	
	
	public void success() {
		this.code="0000";
		this.msg="成功";
	}
	public void fail(String code) {
		this.code=code;
		this.msg=CodeUtil.getCodeMsg(code);
		this.fail=true;
	}	
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public void fail(String code,String msg) {
		this.code=code;
		this.msg=msg;
	}
	public void msg(String code,String msg) {
		this.code=code;
		this.msg=msg;
	} 
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	 
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public List getDatas() {
		return datas;
	}
	public void setDatas(List datas) {
		this.datas = datas;
	}
	
	public List initDatas() {
		this.datas=new ArrayList();
		return datas;
	}
	 
	
	
	
}
