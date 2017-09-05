 
var  config={
		buy_num_limit_max:10,//购买数量最大限度
}

var data={
	product:null,//商品信息
	commentList:[],//商品评论 
	commentCount:'',//评论数量
	commentScoreRate:'',//好评率

}
 
var index=new Vue({
  el: '#app_page',
  data:data ,
  methods: { 
	  buy_num_plus:function(){
		  var buy_num=$("#buy_num");
		  parseInt(buy_num.val()) <config.buy_num_limit_max && buy_num.val(parseInt(buy_num.val()) + 1);
		  1 < parseInt(buy_num.val()) && $(".minus").addClass("on");
		  parseInt($("#buy_num").val()) == config.buy_num_limit_max && $(".plus").removeClass("on");
	  },
	  buy_num_minus:function(){
		  var buy_num=$("#buy_num"); 
		  parseInt(buy_num.val()) > 1 && buy_num.val(parseInt(buy_num.val()) - 1);
	      parseInt(buy_num.val()) <= 1 && $(".minus").removeClass("on");
	      parseInt(buy_num.val()) <config.buy_num_limit_max && $(".plus").addClass("on")
	  },
	  buy_num_blur:function(){
		  var buy_num=$("#buy_num").val(); 
	      "" == $.trim(buy_num) || isNaN(buy_num) ? $("#buy_num").val(1) : parseInt($("#buy_num").val()) <= 1 ? ($("#buy_num").val(1), $(".minus").removeClass("on"), $("#buy_num").val() < config.buy_num_limit_max && $(".plus").removeClass("on")) : $(".minus").addClass("on");
	      $("#buy_num").val() < config.buy_num_limit_max ? $(".plus").addClass("on") : 0 != this.limit_num && parseInt($("#buy_num").val()) >= config.buy_num_limit_max && ($("#buy_num").val(config.buy_num_limit_max), $(".plus").removeClass("on"), $(".minus").addClass("on"))
	  }
  }
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
	/*********商品评论数据*****************/
	loadComment:function(){
		var productId=UrlUtil.getParam("productId");
		var url="/product?comments&productId="+productId;
		AjaxUtils.loadData(url,'',function(respData){
			data.commentList=respData.datas;
			data.commentCount=respData.commentCount;
			data.commentScoreRate=respData.commentScoreRate;
			
		});
	},	
}


$(document).ready(function(){
	ProductUtils.loadProduct();
	ProductUtils.loadComment();
	setTimeout(function cc(){
		$(".swiper-container").swiper({
			   loop: true,
			   autoplay: 3000 ,
			   pagination : '.swiper-pagination',
		  });
	}, 2000);
});	


