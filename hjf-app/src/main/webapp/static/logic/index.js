 
(function(b) {
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
        fontSizeInit: function() {
            var a = document.documentElement,
            b = a.clientWidth;
            b && (b /= 320, 2 < b && (b = 2), a.style.fontSize = 20 * b + "px")
        },
		/*********加载顶部导航轮播图*****************/
		loadCarouses:function(){
			var url="market?carouses";
			AjaxUtils.loadData(url,'',function(respData){
				data.carouseList=respData.datas;
			});
		},

		/*********加载热门商品*****************/
		loadHotPrds:function(){
			var url="product?search&productType=3";
			AjaxUtils.loadData(url,'',function(respData){
				data.hotPrdsList=respData.datas;
			});
		},

		/*********加载推荐商品*****************/
		loadRecPrds:function(){
			var url="product?search&productType=2";
			AjaxUtils.loadData(url,'',function(respData){
				data.recPrdsList=respData.datas;
			});
		},
		/*********加载普通商品*****************/
		loadPrds:function(){
			var url="product?search&pageSize=24";
			AjaxUtils.loadData(url,'',function(respData){
				data.prdsList=respData.datas;
			});
		},
		
		/*********加载首页数据*****************/
		loadIndexData:function(){
			IndexUtils.loadCarouses();
			IndexUtils.loadRecPrds();
			IndexUtils.loadHotPrds();
			IndexUtils.loadPrds();
		}
	}	
	
    var slide = {
        slideInit: function(a) {
            var b = this;
            a.on("scrollStart",
            function() {
                window.clearInterval(a.timer);
                a.timer = setInterval(function() {
                    a.directionX = 1;
                    b.slidePic(a)
                },
                5E3)
            });
            a.on("scrollEnd",
            function() {
                b.slidePic(this)
            });
            b.slideRun(a)
        },
        slidePic: function(a) {
            0 != a.directionX && (a.pageNum += a.directionX, a.pageNum >= a.pageSize ? a.pageNum = 0 : 0 > a.pageNum && (a.pageNum = a.pageSize - 1), a.scrollToElement(b(a.scroller).find("li").eq(a.pageNum)[0], 300), b(a.wrapper).find(".on").removeClass("on"), b(a.wrapper).find(".dot").eq(a.pageNum).addClass("on"), a.directionX = 0)
        },
        slideRun: function(a) {
            var b = this;
            a.timer = setInterval(function() {
                a.directionX = 1;
                b.slidePic(a)
            },
            5E3)
        },
        topSliderInit: function(slider) {
            if (0 < b("."+slider).length) {
                var a = new IScroll("."+slider, {
                    scrollX: !0,
                    scrollY: !1,
                    snap: !1,
                    momentum: !1,
                    click: !1,
                    eventPassthrough: !0,
                    preventDefault: !0
                });
                a.pageNum = 0;
                a.pageSize = b(".J_top_slider li").length;//正确
                a.pageSize = 5;//暂时解决轮播图问题
                this.slideInit(a)
            }
        },
        bannerSliderInit: function(slider) {
            var a = this;
            b("."+slider).each(function() {
                var c = b(this)[0].id,
                c = new IScroll("#" + c, {
                    scrollX: !0,
                    scrollY: !1,
                    snap: !1,
                    momentum: !1,
                    click: !1,
                    eventPassthrough: !0,
                    preventDefault: !0
                });
                c.pageNum = 0;
                c.pageSize = b(this).find("li").length;
                a.slideInit(c)
            })
        },
    };
    $(document).ready(function(){
    	slide.topSliderInit("J_top_slider");
    	slide.bannerSliderInit("J_banner_slider");
    	IndexUtils.fontSizeInit();
    	IndexUtils.loadIndexData();
    	
    });
    window.onresize = function() {
    	IndexUtils.fontSizeInit()
    };
    
})(jQuery);
 