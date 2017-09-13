package com.hjf.app.enmu;

import org.apache.commons.lang.StringUtils;

import com.hjf.common.enums.IHasValueEnum;

/**
 * 订单状态 
 * 状态【 -1 未支付 0、失败 1下单待支付 2 支付成功、3、确认收单 4配送中 5、签收 6交易完成】
 */
public enum OrderStatus implements IHasValueEnum{
notPay("-1"),fail("0"), create("1"), paySuccess("2"), receive("3"), distribute ("4"),sign("5"), complete("6");

			private String value;
			private OrderStatus(String value){
				this.value = value;
			}
			
			/**
			 * 得到名字
			 */
			public String getName() {
				switch (this) {
				case  notPay:
					return "未支付";
				case  fail:
					return "订单失败";
				case  paySuccess:
					return "支付完成";	
				case receive:
					return "接单完成";
				case  distribute:
					return "配送中";
				case complete:
					return "交易完成";
				case  sign:
					return "订单签收";
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
				case -1:
					return OrderStatus.notPay.getName();
				case 0:
					return OrderStatus.fail.getName();
				case 1 :
					return OrderStatus.create.getName();
				case 3 :
					return OrderStatus.receive.getName();
					
				case 4 :
					return OrderStatus.distribute.getName();
						
				case 2 :
					return OrderStatus.paySuccess.getName();
				case 6 :
					return OrderStatus.complete.getName();
				case 5 :
					return OrderStatus.sign.getName();
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
