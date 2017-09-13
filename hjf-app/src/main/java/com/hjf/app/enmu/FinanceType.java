package com.hjf.app.enmu;

import org.apache.commons.lang.StringUtils;

import com.hjf.common.enums.IHasValueEnum;

/**
 * 账单枚举 0购买商品
 */
public enum FinanceType implements IHasValueEnum{
	BuyProduct("0");
	
	private String value;
	private FinanceType(String value){
		this.value = value;
	}
	
	/**
	 * 得到名字
	 */
	public String getName() {
		switch (this) {
		case BuyProduct:
			return "购买商品";
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
		case 0:
			return FinanceType.BuyProduct.getName();
		default:
			break;
		}
		return "";
	}	

	 
	 

	/**
	 * 取值
	 */
	public String getValue() {
		
		return this.value;
	}
	 
}
