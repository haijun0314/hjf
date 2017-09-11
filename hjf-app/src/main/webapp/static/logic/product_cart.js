

var CartUtils = {
	init:function(){
		this.initScroller();
		this.initCart();
	},
	/*******加载购物车商品从服务器**************/
    initCart:function() {
    	//购物车保存的cookie名称为cart_ck_pros   就是一个json字符串
    	var cart_ck_pros = CookieUtil.get(SysConfig.proCartName);
    	/*判断一下本地是否有一个购物车（cart_ck_pros），没有的话，创建一个空的购物车，有的话就直接拿来使用*/
    	if(!cart_ck_pros) { 
    		$("footer").hide();
    		$("#emptyCart").show();
    		return;
    	}
    	var cartPros = JSON.parse(cart_ck_pros); //购物车商品对象数组[{"productId":1990,"count",4},{"productId":1988,"count",3}]
    	if(cartPros.length==0){
    		$("#emptyCart").show();
    		$("footer").hide();
    		return;
    	}
    	$("footer").show();
    	$("#emptyCart").hide();
    	data.totalPrice=0;
    	var url="/product?loadCardProducts&cartPros="+cart_ck_pros;
   		AjaxUtils.httpGet(url,function(respData){
   			data.cartPros=respData;
   			for(var i = 0, len = respData.length; i < len; i++) {
   				data.totalPrice=data.totalPrice+respData[i].price*respData[i].count;
   	    	}
   		});
    },
    
    getCart:function(){
    	var cart_ck_pros = CookieUtil.get(SysConfig.proCartName);
    	var pros = JSON.parse(cart_ck_pros);
    	return pros;
    },
    
    
    checkCart:function(productId) {
    	var pros = this.getCart();
    	var isExist = false;
    	for(var i = 0, len = pros.length; i < len; i++) {
    		if(pros[i].productId == productId) {
    			isExist = true;
    			break;
    		}
    	}
    	return isExist;  
    },
    /**
     * 更新cookie 购物车数据 
     * productId:商品编号
     * count:购买数量
     */
    addCart:function(productId,count) {
    	if(!count){
    		count=1;
    	}
    	  var pros =  this.getCart();
	      if(this.checkCart(productId)){
		    	for(var i = 0, len = pros.length; i < len; i++) {
		    		if(pros[i].productId == productId) {
		    			pros[i].count = pros[i].count + count;
		    			break;
		    		}
		    	}
		    	var dataStr = JSON.stringify(pros);
		    	CookieUtil.set(SysConfig.proCartName,dataStr);
	      }else{
		    	var pro={
		    		productId:productId,
		    		count:count
		    	}
		    	pros.push(pro);    	
		    	var dataStr = JSON.stringify(pros);
		    	CookieUtil.set(SysConfig.proCartName,dataStr);
	      }
    },
    
    /**
     * 更新cookie 购物车数据 
     * productId:商品编号
     * type:0 增加 1 减少
     */
    updateCart:function(productId,type) {
    	var pros =  this.getCart();
    	for(var i = 0, len = pros.length; i < len; i++) {
    		if(pros[i].productId == productId) {
    			if('0'==type){
    				pros[i].count = pros[i].count + 1;
    			}else{
    				if(pros[i].count>1){
    					pros[i].count = pros[i].count -1;
    				}
    			}
    			break;
    		}
    	}
    	var dataStr = JSON.stringify(pros);
    	CookieUtil.set(SysConfig.proCartName,dataStr);
    	/**************更新data 数据*************/
    	for(var i = 0, len = data.cartPros.length; i < len; i++) {
    		if(data.cartPros[i].productId == productId) {
    			if('0'==type){
    				data.totalPrice=data.totalPrice+data.cartPros[i].price;
    				data.cartPros[i].count++;
    			}else{
    				if(data.cartPros[i].count>1){
        				data.cartPros[i].count--;
        				data.totalPrice=data.totalPrice-data.cartPros[i].price;
    				}
    			}
    			
    		}
    	}
    },   
    
    /**
     * 删除购物车商品
     * productId:商品编号
     */
    delCart:function(productId) {
    	var pros =  this.getCart();
    	for(var i = 0, len = pros.length; i < len; i++) {
    		if(pros[i].productId == productId) {
    			pros.splice(i, 1);
    			break;
    		}
    	}
    	var dataStr = JSON.stringify(pros);
    	CookieUtil.set(SysConfig.proCartName,dataStr);
    	$.toast("删除成功");
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
                CartUtils.scroller= new IScroll('#wrapper',{click:iScrollClick()});
         },0);
    },	
    
    /***********全选操作**************/
	checkAll: function(event) {
//		for(var i = 0, len = data.cartPros.length; i < len; i++) {
//			 data.cartPros[i].checked=true;
//			 console.log(data.cartPros[i]);
//		}  
    },
    
    
}



