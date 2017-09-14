 
var data={
	account:{},//账户信息
	addressList:[],//账户地址
	address:{"cityCodes":'' ,"cityNames":''},//账户信息
}
 
/*******************文件上传******************************/
var filechooser = document.getElementById("choose");

var app=new Vue({
  el: '#app_page',
  data:data,
  methods: { 
	  chooseFile: function (e) { 
		  filechooser.click();
	  },
	  cityPicker_info: function (e) { 
		  $("#cityNameFull").cityPicker({
			   showDistrict: false,
	   	        title: "选择城市",
	   	        onChange: function (picker, values, displayValues) {
	   	            data.account.cityCode=values[1];
	   	            data.account.cityName=displayValues[1];
	   	            data.account.cityNameFull=displayValues[0]+" "+displayValues[1];
	   	        }
	   	   });  
	  },
	  cityPicker_address: function (e) { 
		  $("#cityNameFull").cityPicker({
			   showDistrict: true,
	   	        title: "选择城市",
	   	        onChange: function (picker, values, displayValues) {
	   	            data.address.cityCodes=values;
	   	            data.address.cityNames=displayValues;
	   	            data.address.cityNameFull=displayValues[0]+" "+displayValues[1]+" "+displayValues[2];
	   	        }
	   	   });  
	  },
	  addressAdd: function () { 
		  window.location.href="/page/ucenter/address/add.html"
	  },
	  addressDefault: function (addressId) { 
		  AddressUtils.addressDefault(addressId);
	  },
	  addressUpdate: function (addressId) { 
		  AddressUtils.addressUpdate(addressId);
	  },
	  addressDelete: function (addressId) { 
		  AddressUtils.addressDelete(addressId);
	  },
	  
  }

})

var AccountUtils = {
	/*********加载顶部导航轮播图*****************/
	loadMyInfo:function(){
		var url="/account?myInfo";
		AjaxUtils.loadData(url,'',function(respData){
			data.account=respData;
		});
	},
	/************更新账户资料******************/
	updateInfo:function(){
		AjaxUtils.formRequest("dataForm",function(respData){
			  
		});
	},
	/************更新账户资料******************/
	setPassword:function(){
		 if($('#dataForm').valid()){
			 AjaxUtils.formRequest("dataForm",function(respData){
				 if (respData.code == "0000") {
					 window.location.href="/page/ucenter/index.html";
				 }
			 },"btn_submit");
		 }
	},
	/*********加载首页数据*****************/
	loadData:function(){
		AccountUtils.loadMyInfo();
	},
	/*********退出登录**************/
	logOut:function(){
		var url="/app/login?weblogout";
		AjaxUtils.httpPost(url,'',function(respData){
			 window.location.href="/index.html";
		});
	}
	
	
}

var  AddressUtils = {
	/*********加载地址列表*****************/
	initAddress:function(){
		var addressId=UrlUtil.getParam("addressId");
		var url="/account?getAddress&addressId="+addressId;
		AjaxUtils.httpPost(url,'',function(respData){
			data.address=respData;
		});
	},		
	
	
	/*********加载地址列表*****************/
	loadAddressList:function(){
		var url="/account?addressList";
		AjaxUtils.loadData(url,'',function(respData){
			data.addressList=respData.datas;
		});
	},	
	
	/*********删除地址*****************/
	addressDelete:function(addressId){
		$.confirm("确认删除？", function() {
			var url="/account?addressDelete&addressId="+addressId;
			AjaxUtils.loadData(url,'',function(respData){
				$.toast(respData.msg);	 
				AddressUtils.loadAddressList();
			});
    	} );
	},	
	/*********添加地址*****************/
	addressAdd:function(){
		if($('#dataForm').valid()){
			AjaxUtils.formRequest("dataForm",function(respData){
				$.toast(respData.msg);	 
				 window.location.href="/page/ucenter/address/address.html";
			 });
		}
		
	},	
	/*********编辑地址*****************/
	addressUpdate:function(){
		AjaxUtils.formRequest("dataForm",function(respData){
			$.toast(respData.msg);	 
			AddressUtils.loadAddressList();
		 });
	},	
	/*********设置默认地址****************/
	addressDefault:function(addressId){
		var url="/account?addressDefault&addressId="+addressId;
		AjaxUtils.httpPost(url,'',function(respData){
			$.toast(respData.msg);	 
			AddressUtils.loadAddressList();
		});
	},	
	
}



