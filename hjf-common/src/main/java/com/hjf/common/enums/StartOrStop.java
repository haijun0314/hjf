package com.hjf.common.enums;


/**
 * 通用【0开启、1关闭】
 * @author  lihaijun
 * 2012-10-14
 */
public enum StartOrStop implements IHasValueEnum{
	Start("0"),Stop("1");
	private String value;
	private StartOrStop(String value){
		this.value = value;
	}
	
	public String getName() {
		switch (this) {
		case Start:
			return "开启";
		case Stop:
			return "关闭";
		default:
			break;
		}
		return null;
	}

	public String getValue() {
		return this.value;
	}

}
