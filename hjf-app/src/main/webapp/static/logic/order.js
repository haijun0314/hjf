

var OrderUtils = {
	init:function(){
		 
	},
	/*******加载购物车商品从服务器**************/
	initConfirm:function() {
    	//购物车保存的cookie名称为cart_ck_pros   就是一个json字符串
    	var cart_ck_pros = CookieUtil.get(SysConfig.proCartName);
    	/*判断一下本地是否有一个购物车（cart_ck_pros），没有的话，创建一个空的购物车，有的话就直接拿来使用*/
    	if(!cart_ck_pros) { 
    		return;
    	}
    	var cartPros = JSON.parse(cart_ck_pros); //购物车商品对象数组[{"productId":1990,"count",4},{"productId":1988,"count",3}]
    	if(cartPros.length==0){
    		return;
    	}
    	var url="/product?loadCardProducts&cartPros="+cart_ck_pros;
   		AjaxUtils.httpGet(url,function(respData){
   			data.confirmPros=respData;
   			for(var i = 0, len = respData.length; i < len; i++) {
   				data.totalPayPrice=data.totalPayPrice+respData[i].price*respData[i].count;
   				data.productCount++;
   				var pro={
   						"productId":respData[i].productId,
   						"money":respData[i].price*respData[i].count,
   						"count":respData[i].count,
   				}
   				data.pros.push(pro);
   			}
   		});
    },
     
	/*******设置购物车滚动条**************/
    initScroller:function() {
         function iScrollClick(){
            if (/iPhone|iPad|iPod|Macintosh/i.test(navigator.userAgent)) return false;
            if (/Chrome/i.test(navigator.userAgent)) return (/Android/i.test(navigator.userAgent));
            if (/Silk/i.test(navigator.userAgent)) return false;
            if (/Android/i.test(navigator.userAgent)) {
               var s=navigator.userAgent.substr(navigator.userAgent.indexOf('Android')+8,3);
               return parseFloat(s[0]+s[3]) < 44 ? false : true
            }
        }
        //设置frame的高度
         setTimeout(function(){
                var windowHeight = window.innerHeight-$('footer').height() ;
                $("#wrapper").height(windowHeight);
                OrderUtils.scroller= new IScroll('#wrapper',{click:iScrollClick()});
         },0);
    },	
    /************清空购物车****************/
    clearCart:function(){
    	CookieUtil.set(SysConfig.proCartName,'');
    },
    /***********加载支付订单***************/
    initPayOrder:function(){
    	var orderId=UrlUtil.getParam("orderId");
    	var url="/order?getOrder&orderId="+orderId;
    	AjaxUtils.loadData(url,'',function(respData){
    		data.orderId=orderId;
    		data.money=respData.money;
    	});
    },  
    
    /***********加载订单列表***************/
    loadOrders:function(searchType){
    	var url="/order?orderList&searchType="+searchType;
    	AjaxUtils.loadData(url,'',function(respData){
    		data.orders=respData.datas;
    	});
    },     
    
    /***********订单详情***************/
    detail:function(){
    	var orderId=UrlUtil.getParam("orderId");
    	var url="/order?detail&orderId="+orderId;
    	AjaxUtils.loadData(url,'',function(respData){
    		data.order=respData;
    		data.pros=respData.pros;
    	});
    },     
    /***********订单删除**************/
    del:function(orderId){
    	$.confirm("删除订单之后订单数据就看不见了","确认删除？", function() {
    		var url="/order?delete&orderId="+orderId;
        	AjaxUtils.httpPost(url,'',function(respData){
        		$.toast(respData.msg);
        		window.location.href="/page/order/index.html";
        	});
    	} );
    },      
    /*******查询待评价商品【根据订单号】*************/
    waitCommentPros:function(){
    	var orderId=UrlUtil.getParam("orderId");
    	data.orderId=orderId;
    	var url="/order?waitCommentPros&orderId="+orderId;
    	AjaxUtils.loadData(url,'',function(respData){
    		data.pros=respData.datas;
    	});
    }, 
    /***********订单删除**************/
    comment:function(){
    	if(!data.content){
    		$.toast("请填写评价内容");	 
    		return;
    	}
    	$.confirm("确认提交评价吗？", function() {
    		 AjaxUtils.formRequest("dataForm",function(respData){
				 if (respData.code == "0000") {
					 window.location.href="/page/ucenter/index.html";
				 }
			 });
    	} );
    },    
    
}
 