package com.hjf.app.enmu;

import org.apache.commons.lang.StringUtils;

import com.hjf.common.enums.IHasValueEnum;


/**
 * 会员等级【 1、普通  2、铁牌 3 银牌  4  金牌 5 钻石】
 * @author  lihaijun
 * 2017-08-23
 */
public enum AccountLevel implements IHasValueEnum{
	Common("1"),Tie("2"),Yin("3"),Jin("4"),Zuan("5");
	private String value;
	private AccountLevel(String value){
		this.value = value;
	}
	
	public String getName() {
		switch (this) {
		case Common:
			return "普通会员";
		case Tie:
			return "铁牌会员";
		case Yin:
			return "银牌会员";
		case Jin:
			return "金牌会员";
		case Zuan:
			return "钻石会员";
		default:
			break;
		}
		return null;
	}
	/**
	 * 得到名字
	 */
	public static String getName(String valueInt) {
		if (StringUtils.isBlank(valueInt)) {
			return null;
		}
		int id=Integer.valueOf(valueInt);
		switch (id) {
		case 1 :
			return AccountLevel.Common.getName();
		case 2 :
			return AccountLevel.Tie.getName();
		case 3 :
			return AccountLevel.Yin.getName();
				
		case 4 :
			return AccountLevel.Jin.getName();
		case 5 :
			return AccountLevel.Zuan.getName();
		 
		default:
			break;
		}
		return null;
	}	
	
	
	public String getValue() {
		return this.value;
	}

}
