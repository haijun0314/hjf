 
var data={
	cartPros:[],//商品评论 

}
 
var index=new Vue({
  el: '#app_page',
  data:data ,
  methods: { 
	  
  }
})

var CartUtils = {
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
}
CartUtils.initScroller();
 

