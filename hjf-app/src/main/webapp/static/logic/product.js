 
var data={
	product:null,//商品信息
	buy_num:1,
	commentList:[],//商品评论 
	commentCount:'',//评论数量
	commentScoreRate:'',//好评率
	
}
 
var app=new Vue({
  el: '#app_page',
  data:data ,
  methods: { 
	  buy_num_plus:function(){
		  var buy_num=$("#buy_num");
		  parseInt(buy_num.val()) <SysConfig.buy_num_limit_max && buy_num.val(parseInt(buy_num.val()) + 1);
		  1 < parseInt(buy_num.val()) && $(".minus").addClass("on");
		  parseInt($("#buy_num").val()) == SysConfig.buy_num_limit_max && $(".plus").removeClass("on");
	  },
	  buy_num_minus:function(){
		  var buy_num=$("#buy_num"); 
		  parseInt(buy_num.val()) > 1 && buy_num.val(parseInt(buy_num.val()) - 1);
	      parseInt(buy_num.val()) <= 1 && $(".minus").removeClass("on");
	      parseInt(buy_num.val()) <SysConfig.buy_num_limit_max && $(".plus").addClass("on")
	  },
	  buy_num_blur:function(){
		  var buy_num=$("#buy_num").val(); 
	      "" == $.trim(buy_num) || isNaN(buy_num) ? $("#buy_num").val(1) : parseInt($("#buy_num").val()) <= 1 ? ($("#buy_num").val(1), $(".minus").removeClass("on"), $("#buy_num").val() < SysConfig.buy_num_limit_max && $(".plus").removeClass("on")) : $(".minus").addClass("on");
	      $("#buy_num").val() < SysConfig.buy_num_limit_max ? $(".plus").addClass("on") : 0 != this.limit_num && parseInt($("#buy_num").val()) >= SysConfig.buy_num_limit_max && ($("#buy_num").val(SysConfig.buy_num_limit_max), $(".plus").removeClass("on"), $(".minus").addClass("on"))
	  },
	  addCart:function(){
		  var cart_ck_pros = CookieUtil.get(SysConfig.proCartName);
	      if(!cart_ck_pros) { //没有购物车     datas  json
	    		CookieUtil.set( SysConfig.proCartName,"[]");
	      }
	      var productId=data.product.productId;
	      CartUtils.addCart(productId,data.buy_num);
	      $.toast("添加成功");
	  }
  }
})
 

var ProductUtils = {
	init:function(){
		this.loadProduct();
		this.loadComment();
		setTimeout(function cc(){
			$(".swiper-container").swiper({
				   loop: true,
				   autoplay: 3000 ,
				   pagination : '.swiper-pagination',
			  });
		}, 2000);
	},
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
	ProductUtils.init();
});	


