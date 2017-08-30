 
var data={
	account:null,//账户信息
	 
}
 
/*******************文件上传******************************/
var filechooser = document.getElementById("choose");

var index=new Vue({
  el: '#app_page',
  data:data,
  methods: { 
	  chooseFile: function (e) { 
		  filechooser.click();
	  },
	  cityPicker: function (e) { 
		  $("#cityNameFull").cityPicker({
			   showDistrict: false,
	   	        title: "选择城市",
	   	        onChange: function (picker, values, displayValues) {
	   	            data.account.cityCode=values[1];
	   	            data.account.cityName=displayValues[1];
	   	            data.account.cityNameFull=displayValues[0]+" "+displayValues[1];
	   	        }
	   	   });  
	  }
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
	}
}





