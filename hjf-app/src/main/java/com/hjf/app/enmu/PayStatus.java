package com.hjf.app.enmu;

import com.hjf.common.enums.IHasValueEnum;

/**
 * 充值状态 
 * createTime:2014-12-8
 *  0成功1 失败 2 待支付
 */
public enum PayStatus implements IHasValueEnum{
		 success("0"), fail("1"), waitpay("2");

			private String value;
			private PayStatus(String value){
				this.value = value;
			}
			
			/**
			 * 得到名字
			 */
			public String getName() {
				switch (this) {
				case success:
					return "成功";
				case  fail:
					return "失败";
				case  waitpay:
					return "待支付";	
					
				default:
					break;
				}
				return null;
			}

			/**
			 * 取值
			 */
			public String getValue() {
				
				return this.value;
			}
}
