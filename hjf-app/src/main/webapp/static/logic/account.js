 
var data={
	account:null,//账户信息
	 
}
 
var index=new Vue({
  el: '#app_v',
  data:data
})

var AccountUtils = {
	/*********加载顶部导航轮播图*****************/
	loadMyInfo:function(){
		var url="/account?myInfo";
		AjaxUtils.loadData(url,'',function(respData){
			data.account=respData;
		});
	},
	updateInfo:function(){
		AjaxUtils.formRequest("dataForm",function(respData){
			 
		});
	},
	
	
	/*********加载首页数据*****************/
	loadData:function(){
		AccountUtils.loadMyInfo();
	}
}
AccountUtils.loadData();



