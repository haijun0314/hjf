 
var data={
	carouseList:[]	,
	page	:0
}
 
var index=new Vue({
  el: '#wrapper',
  data:data
})

loadCarouses=function(){
	var url="market?carouses";
	AjaxUtils.loadData(url,'',function(respData){
		data.carouseList=respData.datas;
	});
}
loadCarouses();