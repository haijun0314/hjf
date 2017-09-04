 
var data={
	product:null 
}
 
var index=new Vue({
  el: '#app_page',
  data:data
})

var ProductUtils = {
	/*********商品详情数据*****************/
	loadProduct:function(){
		var productId=UrlUtil.getParam("productId");
		var url="/product?detail&productId="+productId;
		AjaxUtils.loadData(url,'',function(respData){
			data.product=respData;
			
		});
	},
}

ProductUtils.loadProduct();
$(document).ready(function(){
	setTimeout(function cc(){
		$(".swiper-container").swiper({
			   loop: true,
			   autoplay: 3000 ,
			   pagination : '.swiper-pagination',
		  });
	}, 2000);
});	


