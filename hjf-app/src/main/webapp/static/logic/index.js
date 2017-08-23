 
var data={
	carouseList:[]	,//导航轮播图
	recPrdsList:[]	,//推荐商品
	hotPrdsList:[]	,//热门商品
	prdsList:[]	,//普通商品
	page	:0
}
 
var index=new Vue({
  el: '#wrapper',
  data:data
})

var IndexUtils = {
	/*********加载顶部导航轮播图*****************/
	loadCarouses:function(){
		var url="market?carouses";
		AjaxUtils.loadData(url,'',function(respData){
			data.carouseList=respData.datas;
		});
	},

	/*********加载热门商品*****************/
	loadHotPrds:function(){
		var url="product?search&productType=2";
		AjaxUtils.loadData(url,'',function(respData){
			data.hotPrdsList=respData.datas;
		});
	},

	/*********加载推荐商品*****************/
	loadRecPrds:function(){
		var url="product?search&productType=3";
		AjaxUtils.loadData(url,'',function(respData){
			data.recPrdsList=respData.datas;
		});
	},
	/*********加载普通商品*****************/
	loadPrds:function(){
		var url="product?search";
		AjaxUtils.loadData(url,'',function(respData){
			data.prdsList=respData.datas;
		});
	}
	
	
}
IndexUtils.loadCarouses();
IndexUtils.loadRecPrds();
IndexUtils.loadHotPrds();
IndexUtils.loadPrds();

