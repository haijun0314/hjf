(function(b) {
    var f = {
        init: function() {
            this.browserDetectiveInit();
        },
        isInViewport: function(a) {
            if (!a || 1 !== a.nodeType) return ! 1;
            a = a.getBoundingClientRect();
            return 0 > a.bottom ? !1 : a.top < Math.max(window.innerHeight, document.documentElement.clientHeight)
        },
        images: function(a) {
            var b = new Image,
            e = a.attr("imgsrc");
            b.onload = function() { ! 0 == b.complete && (a.attr("src", e), a.removeClass("lazy"), a.removeAttr("imgsrc"))
            };
            b.src = e
        },
        browserDetectiveInit: function() {
            var a = navigator.userAgent;
            this.browser = {
                versions: {
                    trident: -1 < a.indexOf("Trident"),
                    presto: -1 < a.indexOf("Presto"),
                    webKit: -1 < a.indexOf("AppleWebKit"),
                    gecko: -1 < a.indexOf("Gecko") && -1 == a.indexOf("KHTML"),
                    mobile: !!a.match(/AppleWebKit.*Mobile.*/),
                    ios: !!a.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/),
                    android: -1 < a.indexOf("Android") || -1 < a.indexOf("Linux"),
                    iPhone: -1 < a.indexOf("iPhone"),
                    iPad: -1 < a.indexOf("iPad"),
                    webApp: -1 == a.indexOf("Safari"),
                    uc: !!a.match(/UCBrowser/)
                },
                language: (navigator.browserLanguage || navigator.language).toLowerCase()
            }
        },
        
        
        openApp: function(a, b) {
            var e = Date.now(),
            d = document.createElement("IFRAME");
            d.src = a;
            d.style.position = "absolute";
            d.style.left = "-1000px";
            d.style.top = "-1000px";
            d.style.width = "1px";
            d.style.height = "1px";
            d.style.webkitTransition = "all 2s";
            document.body.appendChild(d);
            setTimeout(function() {
                d.addEventListener("webkitTransitionEnd",
                function() {
                    document.body.removeChild(d);
                    3E3 > Date.now() - e && "function" === typeof b && b()
                },
                !1);
                d.style.left = "-10px"
            },
            0)
        },
        
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
        topSliderInit: function() {
            if (0 < b(".J_top_slider").length) {
                var a = new IScroll(".J_top_slider", {
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
        bannerSliderInit: function() {
            var a = this;
            b(".J_banner_slider").each(function() {
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
        fontSizeInit: function() {
            var a = document.documentElement,
            b = a.clientWidth;
            b && (b /= 320, 2 < b && (b = 2), a.style.fontSize = 20 * b + "px")
        }
    };
    b(document).ready(function() {
        f.fontSizeInit();
        FastClick.attach(document.body);
        f.init();
    });
    window.onresize = function() {
        f.fontSizeInit()
    };
    window.onload = function() {
        f.topSliderInit();
        f.bannerSliderInit()
    }
})(Zepto);