(function(a) {
    window.mdd_product = {
        init: function() {
            this.sid = window.sid;
            this.pid = window.prd_info.product_info_new.product_id;
            this.shopId = window.prd_info.product_info_new.shop_id;
            this.templateId = window.prd_info.product_info_new.template_id;
            this.limit_num = a("#limit_num").val() || 9999;
            this.limit_min_num = a("#limit_min_num").val() || 1;
            this.cookie_auto_callback = window.getStorage("MDD_auto_callback");
            this.cookie_settle_account = window.getStorage("MDD_settle_account");
            this.cookie_item_id = window.getStorage("MDD_temp_item_id");
            this.cookie_gift_id = window.getStorage("MDD_temp_gift_id");
            this.cookie_buy_number = window.getStorage("MDD_buy_number");
            this.cookie_area_str = window.getStorage("MDD_area_str");
            this.cookie_area_id = window.getStorage("MDD_area_id");
            this.tempSelectList = [];
            this.pluginInit(a);
            this.eventInit()
        },
        pluginInit: function(a) {
            var c = this;
            a.mdd_getJSON = function(e, d, f) {
                d = a.extend(d, {
                    sid: c.sid
                });
                e = a.ajax({
                    url: "" + e,
                    type: "get",
                    data: d,
                    dataType: "json"
                });
                e.done(f).fail(function() {
                    a(".loading").css("display", "block")
                });
                return e
            };
            a.fn.slideDown = function(a, b) {
                var c = this,
                g = "function" === typeof b ? b: function() {},
                h = this.css("position");
                this.css({
                    position: "absolute",
                    visibility: "hidden"
                });
                var k = this.height();
                this.css({
                    position: h,
                    visibility: "visible",
                    overflow: "hidden",
                    height: 0
                });
                this.animate({
                    height: k + "px"
                },
                a, g);
                setTimeout(function() {
                    c.css("height", "auto")
                },
                a)
            };
            a.fn.slideUp = function(a, b) {
                var c = this,
                g = "function" === typeof b ? b: function() {},
                h = this.height();
                this.css("height", h + "px");
                this.animate({
                    height: 0
                },
                a, g);
                setTimeout(function() {
                    c.css("visibility", "hidden");
                    c.css("height", "auto")
                },
                a)
            }
        },
        eventInit: function() {
            this.autoCallbackInit();
            this.headerInit();
            this.favInit();
            this.shopDsrInit();
            this.buyNumInit();
            this.colorSizeInit();
            this.promoGiftInit();
            this.queryShippingFeeInit();
            this.lazyLoadInit();
            this.collectShopInit();
            this.addRemindInit();
            this.addToCartInit();
            this.directBuyInit();
            this.queryCartNumInit()
        },
        autoCallbackInit: function() {
            var b = this;
            1 == this.cookie_settle_account && this.checkLogin(null,
            function() {
                window.setStorage("MDD_settle_account", 0);
                window.setStorage("MDD_temp_item_id", 0);
                window.setStorage("MDD_temp_gift_id", 0);
                window.setStorage("MDD_buy_number", 0)
            });
            if (1 == this.cookie_auto_callback && this._GET().callback_action) switch (this._GET().callback_action) {
            case "add_wishlist":
                this.addWishList(this.pid,
                function() {
                    a(".J_add_remind").length && a(".J_add_remind").html("\u5df2\u8bbe\u7f6e\u5230\u8d27\u63d0\u9192").removeClass("J_add_remind").addClass("J_remove_remind").attr("dd_name", "\u53d6\u6d88\u5230\u8d27\u63d0\u9192");
                    b.cookie_auto_callback = 0;
                    window.setStorage("MDD_auto_callback", b.cookie_auto_callback);
                    pop.popup({
                        type: "pop",
                        text: "\u52a0\u5165\u6536\u85cf\u6210\u529f"
                    })
                },
                function() {
                    b.cookie_auto_callback = 0;
                    window.setStorage("MDD_auto_callback", b.cookie_auto_callback)
                });
                break;
            case "get_shop_collect":
                var c = "\u5df2\u5173\u6ce8" == a("#collect_shop").html().trim() ? 0 : 1;
                this.collectShop(this.shopId, c,
                function() {
                    b.cookie_auto_callback = 0;
                    window.setStorage("MDD_auto_callback", b.cookie_auto_callback)
                },
                function() {
                    b.cookie_auto_callback = 0;
                    window.setStorage("MDD_auto_callback", b.cookie_auto_callback)
                });
                break;
            case "one_click_buying":
                1 == this.cookie_settle_account && this.directBuy(function() {
                    b.cookie_auto_callback = 0;
                    window.setStorage("MDD_auto_callback", b.cookie_auto_callback)
                })
            }
        },
        checkLogin: function(b, c) {
            a.mdd_getJSON("h5ajax.php", {
                action: "is_login"
            },
            function(e) {
                e ? a.isFunction(b) && b() : a.isFunction(c) && c()
            })
        },
        _GET: function() {
            var a = window.document.location.href.toString().split("?");
            if ("string" == typeof a[1]) { - 1 != a[1].indexOf("#") ? (a = a[1].split("#"), a = a[0].split("&")) : a = a[1].split("&");
                var c = {},
                e;
                for (e in a) {
                    var d = a[e].split("=");
                    c[d[0]] = d[1]
                }
                return c
            }
            return {}
        },
        headerInit: function() {
            a(".header .menu").click(function(b) {
                a(this).hasClass("active") ? (a(this).removeClass("active"), a(".t-nav").removeClass("active")) : (a(this).addClass("active"), a(".t-nav").addClass("active"));
                b.preventDefault()
            })
        },
        checkIfCollected: function(b) {
            var c = {
                action: "check_if_collected"
            };
            "product" == b && (c.pid = this.pid);
            "shop" == b && (c.shop_id = this.shopId);
            _.bind(a.mdd_getJSON, {
                type: b
            },
            "h5ajax.php", c,
            function(c) {
                0 == c.errorCode && ("product" == b && c.data.product ? (a(".fav").addClass("on"), a(".J_add_remind").length && a(".J_add_remind").html("\u5df2\u8bbe\u7f6e\u5230\u8d27\u63d0\u9192").removeClass("J_add_remind").addClass("J_remove_remind").attr("dd_name", "\u53d6\u6d88\u7f3a\u8d27\u767b\u8bb0")) : "shop" == b && c.data.shop && a("#collect_shop").html("\u5df2\u5173\u6ce8"))
            })()
        },
        favInit: function() {
            var b = this;
            this.checkIfCollected("product");
            a(".fav").on("click",
            function() {
                a(".loading").css("display", "block");
                a(this).hasClass("on") ? b.deleteWishList(b.pid,
                function() {
                    a(".J_remove_remind").length && a(".J_remove_remind").html("\u5230\u8d27\u63d0\u9192").removeClass("J_remove_remind").addClass("J_add_remind").attr("dd_name", "\u7f3a\u8d27\u767b\u8bb0")
                }) : b.addWishList(b.pid,
                function() {
                    a(".J_add_remind").length && a(".J_add_remind").html("\u5df2\u8bbe\u7f6e\u5230\u8d27\u63d0\u9192").removeClass("J_add_remind").addClass("J_remove_remind").attr("dd_name", "\u53d6\u6d88\u7f3a\u8d27\u767b\u8bb0");
                    pop.popup({
                        type: "pop",
                        text: "\u52a0\u5165\u6536\u85cf\u6210\u529f"
                    })
                },
                function() {
                    pop.popup({
                        type: "pop",
                        text: "\u5df2\u52a0\u5165\u52a0\u5165\u6536\u85cf"
                    })
                })
            })
        },
        addWishList: function(b, c, e) {
            var d = this;
            a.mdd_getJSON("h5ajax.php", {
                action: "add_wishlist",
                pid: b
            },
            function(b) {
                0 == b.errorCode ? (a(".loading").css("display", "none"), a(".fav").addClass("on"), a.isFunction(c) && c()) : 96 == b.errorCode ? (a(".loading").css("display", "none"), d.cookie_auto_callback = 1, window.setStorage("MDD_auto_callback", d.cookie_auto_callback), window.location.href = b.login_url) : (a(".loading").css("display", "none"), a.isFunction(e) && e(), pop.popup({
                    type: "pop",
                    text: b.errorMsg
                }))
            })
        },
        deleteWishList: function(b, c, e) {
            a.mdd_getJSON("h5ajax.php", {
                action: "delete_wishlist",
                pid: b
            },
            function(b) {
                0 == b.errorCode ? (a(".loading").css("display", "none"), a(".fav").removeClass("on"), a.isFunction(c) && c()) : (a(".loading").css("display", "none"), a.isFunction(e) && e(), pop.popup({
                    type: "pop",
                    text: b.errorMsg
                }))
            })
        },
        images: function(a) {
            var c = new Image,
            e = a.attr("imgsrc");
            c.onload = function() { ! 0 == c.complete && (a.attr("src", e), a.removeClass("lazy"), a.removeAttr("imgsrc"))
            };
            c.src = e
        },
        iScrollClick: function() {
            if (/iPhone|iPad|iPod|Macintosh/i.test(navigator.userAgent)) return ! 1;
            if (/Chrome/i.test(navigator.userAgent)) return /Android/i.test(navigator.userAgent);
            if (/Silk/i.test(navigator.userAgent)) return ! 1;
            if (/Android/i.test(navigator.userAgent)) {
                var a = navigator.userAgent.substr(navigator.userAgent.indexOf("Android") + 8, 3);
                return 44 > parseFloat(a[0] + a[3]) ? !1 : !0
            }
        },
        slideInit: function(a) {
            var c = this;
            a.on("scrollStart",
            function() {
                window.clearInterval(a.timer);
                a.timer = setInterval(function() {
                    a.directionX = 1;
                    c.slidePic(a)
                },
                5E3)
            });
            a.on("scrollEnd",
            function() {
                c.slidePic(this)
            });
            c.slideRun(a)
        },
        slidePic: function(b) {
            0 != b.directionX && (b.pageNum += b.directionX, b.pageNum >= b.pageSize ? b.pageNum = 0 : 0 > b.pageNum && (b.pageNum = b.pageSize - 1), b.scrollToElement(a(b.scroller).find("li").eq(b.pageNum)[0], 300), a(b.wrapper).find(".on").removeClass("on"), a(b.wrapper).find(".dot li").eq(b.pageNum).addClass("on"), b.directionX = 0)
        },
        slideRun: function(a) {
            var c = this;
            a.timer = setInterval(function() {
                a.directionX = 1;
                c.slidePic(a)
            },
            5E3)
        },
        productSliderInit: function() {
            this.topSlider = a.os.ios ? new IScroll("#slider", {
                useTransition: !1,
                scrollX: !0,
                scrollY: !1,
                snap: !1,
                momentum: !1,
                click: !1,
                eventPassthrough: !0,
                preventDefault: !0
            }) : new IScroll("#slider", {
                scrollX: !0,
                scrollY: !1,
                snap: !1,
                momentum: !1,
                click: !1,
                eventPassthrough: !0,
                preventDefault: !0
            });
            this.topSlider.pageNum = 0;
            this.topSlider.pageSize = a(".top-slider li").length;
            this.slideInit(this.topSlider);
            this.sliderPullToJump(a(".top-slider li").last());
            a("#slider li").on("click",
            function() {
                a("#bigpic").toggleClass("bigpic");
                a("#cell").toggleClass("cell")
            })
        },
        sliderPullToJump: function(b) {
            var c = this;
            b.on("touchstart",
            function(b) { ! a("#bigpic").hasClass("bigpic") && (c.pullStartX = b.touches[0].pageX) && (c.pullStartY = b.touches[0].pageY)
            });
            b.on("touchmove",
            function(b) { ! a("#bigpic").hasClass("bigpic") && b.touches[0].pageX < c.pullStartX && Math.abs(b.touches[0].pageX - c.pullStartX) > Math.abs(b.touches[0].pageY - c.pullStartY) && !a("#slider").hasClass("tip") && a("#slider").addClass("tip") && window.clearInterval(c.topSlider.timer)
            });
            b.on("touchend",
            function(b) {
                setTimeout(function() {
                    a("#slider").hasClass("tip") && (a("#slider").removeClass("tip"), location.href = a("#detail_link").attr("href"))
                },
                0)
            })
        },
        buyNumInit: function() {
            var b = this;
            1 < this.limit_min_num && a("#buy_num").val(this.limit_min_num);
            a(".number_con .plus").on("click",
            function() {
                a("#buy_num").val(parseInt(a("#buy_num").val()) + 1);
                1 < parseInt(a("#buy_num").val()) && a(".minus").addClass("on");
                0 != b.limit_num && parseInt(a("#buy_num").val()) >= b.limit_num && (a("#buy_num").val(b.limit_num), a(this).removeClass("on"))
            });
            a(".number_con .minus").on("click",
            function() {
                parseInt(a("#buy_num").val()) > b.limit_min_num && a("#buy_num").val(parseInt(a("#buy_num").val()) - 1);
                parseInt(a("#buy_num").val()) <= b.limit_min_num && a(this).removeClass("on");
                parseInt(a("#buy_num").val()) < b.limit_num && a(".plus").addClass("on")
            });
            a("#buy_num").blur(function() {
                "" == b.limit_min_num && (b.limit_min_num = 1);
                "" == a.trim(a("#buy_num").val()) || isNaN(a("#buy_num").val()) ? a("#buy_num").val(b.limit_min_num) : parseInt(a("#buy_num").val()) <= b.limit_min_num ? (a("#buy_num").val(b.limit_min_num), a(".minus").removeClass("on"), a("#buy_num").val() < b.limit_num && a(".plus").removeClass("on")) : a(".minus").addClass("on");
                a("#buy_num").val() < b.limit_num ? a(".plus").addClass("on") : 0 != this.limit_num && parseInt(a("#buy_num").val()) >= b.limit_num && (a("#buy_num").val(b.limit_num), a(".plus").removeClass("on"), a(".minus").addClass("on"))
            })
        },
        colorSizeInit: function() {
            var b = this,
            c = a("#color_options li").length,
            e = a("#size_options li").length,
            d = window.prd_info.product_attr;
            if (1 == c) {
                a("#color_options > li").addClass("on");
                var f = a("#color_options li").html()
            }
            if (1 == e) {
                a("#size_options > li").addClass("on");
                var g = a("#size_options li").html()
            }
            if (1 == c && 1 == e || 1 == c && 0 == e || 0 == c && 1 == e) this.cookie_item_id = d.product[0].itemid;
            this.tipsToggle();
            if (1 < a("#color_options > li").length) a("#color_options > li").on("click",
            function() {
                a(".thumbnail .color").html(a(this).html()).hide();
                a(this).addClass("on").siblings().removeClass("on");
                f = a(this).html();
                var c = d.attr1_array[f];
                a("#size_options > li").length ? (a("#size_options > li").each(function() {
                    a(this).removeClass("stockout");
                    0 > a.inArray(a(this).html(), c) && (a(this).hasClass("on") && (a(this).removeClass("on"), a(".thumbnail .select").show(), a(".thumbnail .split").hide(), a(".thumbnail .size").html(a("#size_name").html()).show()), a(this).addClass("stockout"))
                }), 0 < a("#size_options .on").length ? (selected_item = _.findWhere(d.product, {
                    color: f,
                    size: g
                }), a("#main_price").html(selected_item[selected_item.show_price_name]), a("#color_size_price").html(selected_item[selected_item.show_price_name]), b.cookie_item_id = selected_item.itemid, a(".thumbnail img").attr("src", selected_item.image)) : (a(".J_change_price").each(function() {
                    a(this).html(a(this).data("price-range"))
                }), b.cookie_item_id = 0)) : (selected_item = _.findWhere(d.product, {
                    color: f
                }), b.cookie_item_id = selected_item.itemid, a("#main_price").html(selected_item[selected_item.show_price_name]), a("#color_size_price").html(selected_item[selected_item.show_price_name]), a(".thumbnail img").attr("src", selected_item.image));
                b.tipsToggle()
            });
            if (1 < a("#size_options > li").length) a("#size_options > li").on("click",
            function() {
                a(".thumbnail .size").html(a(this).html()).hide();
                a(this).addClass("on").siblings().removeClass("on");
                g = a(this).html();
                var c = d.attr2_array[g];
                a("#color_options > li").length ? (a("#color_options > li").each(function() {
                    a(this).removeClass("stockout");
                    0 > a.inArray(a(this).html(), c) && (a(this).hasClass("on") && a(this).removeClass("on"), a(this).addClass("stockout"))
                }), 0 < a("#color_options .on").length ? (selected_item = _.findWhere(d.product, {
                    color: f,
                    size: g
                }), a("#main_price").html(selected_item[selected_item.show_price_name]), a("#color_size_price").html(selected_item[selected_item.show_price_name]), b.cookie_item_id = selected_item.itemid, a(".thumbnail img").attr("src", selected_item.image)) : (a(".J_change_price").each(function() {
                    a(this).html(a(this).data("price-range"))
                }), b.cookie_item_id = 0)) : (selected_item = _.findWhere(d.product, {
                    color: f
                }), b.cookie_item_id = selected_item.itemid, a("#color_size_price").html(selected_item[selected_item.show_price_name]), a(".thumbnail img").attr("src", selected_item.image));
                b.tipsToggle()
            });
            this.optionToggleSlideInit()
        },
        tipsToggle: function() {
            var b = a(".thumbnail .select"),
            c = a(".thumbnail .color"),
            e = a(".thumbnail .split"),
            d = a(".thumbnail .size"),
            f = a("#color_options .on"),
            g = a("#size_options .on"),
            h = a("#color_options li").length,
            k = a("#size_options li").length,
            l = a("#color_name"),
            m = a("#size_name"),
            n = a(".option .title .color"),
            p = a(".option .title .size");
            h && k ? f.length && g.length ? (b.hide(), c.html(f.html()).show(), e.show(), d.html(g.html()).show(), n.html(f.html()), p.html(g.html())) : (b.show(), e.hide(), f.length && (c.hide(), d.html(m.html())), g.length && (d.hide(), c.html(l.html()))) : h ? f.length ? (b.hide(), c.html(f.html()).show(), n.html(f.html()), e.hide()) : (b.show(), c.html(l.html())) : k && (g.length ? (b.hide(), d.html(g.html()).show(), p.html(f.html()), e.hide()) : (b.show(), d.html(m.html())))
        },
        optionToggleSlideInit: function() {
            var b = a(".option .title");
            b.on("click",
            function() {
                b.find(".arrow_d").hasClass("up") ? (b.find(".arrow_d").removeClass("up"), a(".option_detail").slideUp(150,
                function() {
                    a(this).hide()
                })) : (b.find(".arrow_d").addClass("up"), a(".option_detail").slideDown(150,
                function() {
                    a(this).css("display", "block")
                }))
            })
        },
        promoGiftInit: function() {
            switch (a(".barter").data("promo-type")) {
            case 3:
                a(".barter_product li").on("click",
                function() {
                    var b = a(this);
                    b.siblings().removeClass("selected");
                    b.toggleClass("selected");
                    b.hasClass("selected") ? a("#selected_gift_name").html(b.data("gift-name")) : a("#selected_gift_name").html("")
                });
                a(".barter_product li").eq(0).addClass("selected");
                a("#selected_gift_name").html(a(".barter_product li").eq(0).data("gift-name"));
                break;
            case 28:
                a(".barter_product li").on("click",
                function() {
                    var b = a(this);
                    b.siblings().removeClass("selected");
                    b.toggleClass("selected");
                    b.hasClass("selected") ? a("#selected_gift_name").html(b.data("gift-name")) : a("#selected_gift_name").html("")
                });
                break;
            case 30:
                a(".barter_product li").addClass("selected")
            }
        },
        closeRegionSelect: function() {
            a(".mask").hide();
            a(".select_box").slideUp(300);
            this.tempSelectList.length = 0;
            a(".select_box .content").html("")
        },
        queryShippingFeeInit: function() {
            var b = this;
            a(".mask").on("touchmove",
            function(a) {
                a.preventDefault()
            });
            a(".select_box .title").on("touchmove",
            function(a) {
                a.preventDefault()
            });
            a(".mask").click(function() {
                b.closeRegionSelect()
            });
            a(".select_box .back").click(function() {
                b.backRegionSelect()
            });
            a(".select_box .close").click(function() {
                b.closeRegionSelect()
            });
            this.regionScroller = new IScroll("#regionScroller", {
                scrollY: !0,
                click: this.iScrollClick()
            });
            a("#ship_detail").click(function() {
                a(".mask").show();
                a(".select_box").slideDown(300);
                b.getRegionId("country")
            });
            a(".select_box .content").on("click", "dd",
            function() {
                b.getRegionId(a(this).data("region-type"), a(this).data("parent-id"), a(this).html())
            });
            window.prd_info.product_info_new.is_support_mobile_buying && !window.prd_info.product_info_new.is_ebook && this.cookie_area_id && this.getRegionId("district", this.cookie_area_id)
        },
        getRegionId: function(b, c, e) {
            var d = this,
            f = "";
            this.regionTpl = '<% _.each(city_list,function(item){ %>\n<dd data-region-type="<%= city_list.reginonType%>" data-parent-id="<%= item.id%>"><%= item.name%></dd>\n<% }) %>';
            this.shippingFeeTpl = '<%if(stock_info == "\u65e0\u8d27"){%>\n   <% if(area_str){%>\n       <%= area_str.split(",").join(">")%><span style="color:#fe435d;">&nbsp;\u65e0\u8d27</span>\n   <% } %>\n<%} else {%>\n   <% if(area_str){%>\n       <%= area_str.split(",").join(">")%></br>\n   <% } %>\n   <% if(arriver_info){%>\n       <%= arriver_info[0].shipword%></br>\n   <% } %>\n   <% if(shipping_fee){%>\n       <%= shipping_fee%></br>\n   <% } %>\n<% } %>';
            switch (b) {
            case "country":
                c = 9E3;
                f = "province";
                a(".select_box .back").hide();
                break;
            case "province":
                f = "city";
                d.provinceName = e;
                break;
            case "city":
                f = "district";
                d.cityName = e;
                break;
            case "district":
                f = null,
                d.districtName = e
            }
            f ? a.mdd_getJSON("h5ajax.php", {
                action: "get_add",
                parent_id: c
            },
            function(b) {
                b.city_list || 0 == b.errorCode ? (b.city_list.reginonType = f, b = _.template(d.regionTpl, b), a(".select_box .content").html() && (d.tempSelectList.push(a(".select_box .content").html()), a(".select_box .back").show()), a(".select_box .content").html(b), setTimeout(function() {
                    d.regionScroller.refresh();
                    d.regionScroller.scrollTo(0, 0)
                },
                100)) : 101 == b.errorCode ? (d.cookie_area_str = "", d.provinceName && (d.cookie_area_str += d.provinceName + ","), d.cityName && (d.cookie_area_str += d.cityName), d.districtName = "", d.cookie_area_id = c, window.setStorage("MDD_area_str", d.cookie_area_str), window.setStorage("MDD_area_id", d.cookie_area_id), a(".loading").css("display", "block"), d.queryShippingFee(c,
                function() {
                    a(".loading").css("display", "none");
                    d.closeRegionSelect()
                },
                function() {
                    d.closeRegionSelect();
                    a(".loading").css("display", "none")
                })) : (pop.popup({
                    type: "pop",
                    text: b.errorMsg
                }), d.closeRegionSelect())
            }) : (e && (this.cookie_area_str = "", this.provinceName && (this.cookie_area_str += this.provinceName + ","), this.cityName && (this.cookie_area_str += this.cityName), this.districtName && (this.cookie_area_str += "," + this.districtName), this.cookie_area_id = c, window.setStorage("MDD_area_str", d.cookie_area_str), window.setStorage("MDD_area_id", d.cookie_area_id), a(".loading").css("display", "block")), this.queryShippingFee(c,
            function() {
                a(".loading").css("display", "none");
                d.closeRegionSelect()
            },
            function() {
                d.closeRegionSelect();
                a(".loading").css("display", "none")
            }))
        },
        backRegionSelect: function() {
            var b = this;
            if (0 < this.tempSelectList.length) {
                var c = this.tempSelectList.pop();
                a(".select_box .content").html(c);
                setTimeout(function() {
                    b.regionScroller.refresh();
                    b.regionScroller.scrollTo(0, 0)
                },
                100);
                0 == this.tempSelectList.length && a(".select_box .back").hide()
            }
        },
        buyStatusChange: function(b) {
            var c = "";
            switch (b.stock_info) {
            case "\u6709\u8d27":
                c = '<button class="add" dd_name="\u52a0\u5165\u8d2d\u7269\u8f66">\u52a0\u5165\u8d2d\u7269\u8f66</button><button class="buy J_buy" dd_name="\u76f4\u63a5\u8d2d\u4e70">\u7acb\u5373\u8d2d\u4e70</button>'; ! is_weixin || prd_info.shop_info && 5 != prd_info.shop_info.shop_type || 1 != prd_info.product_info_new.is_overseas || (c = "");
                break;
            case "\u65e0\u8d27":
                c = a(".fav").hasClass("on") ? '<button class="buy big J_remove_remind" dd_name="\u53d6\u6d88\u7f3a\u8d27\u767b\u8bb0">\u5df2\u8bbe\u7f6e\u5230\u8d27\u63d0\u9192</button>': '<button class="buy big J_add_remind" dd_name="\u7f3a\u8d27\u767b\u8bb0">\u5230\u8d27\u63d0\u9192</button>';
                break;
            case "\u9884\u8ba2":
                c = '<button class="add" dd_name="\u9884\u552e">\u9884\u8ba2</button><button class="buy J_buy" dd_name="\u7acb\u5373\u9884\u552e">\u7acb\u5373\u9884\u8ba2</button>'
            }
            1 == window.prd_info.product_info_new.is_support_mobile_buying && c && a(".shopping_cart .btn_con").html(c)
        },
        queryShippingFee: function(b, c, e) {
            var d = this;
            a.mdd_getJSON("h5ajax.php", {
                action: "get_send_time",
                area_id: b,
                shop_id: d.shopId,
                template_id: d.templateId,
                pid: d.pid
            },
            function(b) {
                0 == b.errorCode ? (d.buyStatusChange(b), d.cookie_area_str && (b.area_str = d.cookie_area_str), b = _.template(d.shippingFeeTpl, b), a("#ship_detail dd").html(b), a.isFunction(c) && c()) : (pop.popup({
                    type: "pop",
                    text: b.errorMsg
                }), a.isFunction(e) && e())
            })
        },
        shopDsrInit: function() {
            var b = this;
            this.serviceListTpl = '<% _.each(serviceList,function(item){ %>\n\t<% if(item.id == 1){%>\n\t\t<li class="quality"><%= item.name%></li>\n    <%} else if(item.id == 4){%>\n\t\t<li class="check"><%= item.name%></li>\n\t<%} else if(item.id == 9999){%>\n\t\t<li class="pay"><%= item.name%></li>\n\t<%} %>\n<% }) %>';
            this.shopDsrTpl = "<li>\n\t<p>\u63cf\u8ff0\u76f8\u7b26</p>\n\t<em><%= Math.round(dsrdata.descriptionRating * 10, 1)/10 %></em>\n\t<%= getDsrRatingTpl(dsrdata.compDescriptionRating)%>\n</li>\n<li>\n\t<p>\u670d\u52a1\u6001\u5ea6</p>\n\t<em><%= Math.round(dsrdata.serviceRating * 10, 1)/10 %></em>\n\t<%= getDsrRatingTpl(dsrdata.compServiceRating)%>\n</li>\n<li>\n\t<p>\u53d1\u8d27\u901f\u5ea6</p>\n\t<em><%= Math.round(dsrdata.deliveryRating * 10, 1)/10 %></em>\n\t<%= getDsrRatingTpl(dsrdata.compDeliveryRating)%>\n</li>\n<li>\n\t<p>\u5173\u6ce8\u4eba\u6570</p>\n\t<em><%= watched_number%></em>\n</li>";
            a.mdd_getJSON("h5ajax.php", {
                action: "get_shop_dsr",
                shop_id: b.shopId
            },
            function(c) {
                if (c) {
                    if (c.serviceList) {
                        var e = _.template(b.serviceListTpl, c);
                        a(".ensure ul").append(e)
                    }
                    c.dsrdata && (c.getDsrRatingTpl = b.getDsrRatingTpl, e = _.template(b.shopDsrTpl, c), a(".evaluation").html(e))
                }
            })
        },
        getDsrRatingTpl: function(a) {
            return 0 > a ? '<i class="low">\u4f4e</i>': 0 == a ? '<i class="middle">\u4e2d</i>': '<i class="high">\u9ad8</i>'
        },
        reviewInit: function() {
            var b = this;
            this.reviewTpl = ['<section class="jump">\n\t<a href="', prd_cfg.review_url + "&pid=" + this.pid, '" class="arrow_con">\n\t\t<div class="arrow">\n\t\t\t<h4>\u5546\u54c1\u8bc4\u8bba\uff08<%= count%>\uff09</h4>\n\t\t\t<em>\u597d\u8bc4\u7387<%= goodRatio%>%</em>\n\t\t</div>\n\t</a>\n</section>'].join("\n");
            a.mdd_getJSON("h5ajax.php", {
                action: "get_reviews",
                pid: b.pid
            },
            function(c) {
                c && c.count && (c = _.template(b.reviewTpl, c), a(".review_area").html(c))
            })
        },
        guessInit: function() {
            var b = this;
            this.guessListTpl = ['<% if(products.length){%>\n<section class="guess">\n<div class="title_con"><span class="title">\u731c\u4f60\u559c\u6b22</span><div class="line"></div></div>\n<ul>\n<% _.each(products,function(item){ %>\n<li>\n<% if(item.ad_id){%>', '<a href="<%= item.callback_url %>&sid=' + sid + '">', "<% } else {%>", '<a href="<%= item.product_id %>.html?sid=' + sid + '">', '<% }%>\n<aside><img class="lazy" src="coreimages/bg_pic.png" imgsrc="<%= item.image_url %>" ></aside>\n<span><%= item.name%></span>\n<em>\uffe5<%= item.price%></em>\n</a>\n</li>\n<% }) %>\n</ul>\n</section>\n<% }%>'].join("\n");
            a.mdd_getJSON("h5ajax.php", {
                action: "get_product_alsobuy_and_adlist",
                pid: b.pid,
                img_size: "b"
            },
            function(c) {
                0 == c.errorCode && c.products && c.products.length && (c = _.template(b.guessListTpl, c), a(".J_guess").html(c))
            })
        },
        bookAdInit: function() {
            var b = this;
            this.alsoBuyTpl = ['<section class="alsobuy">\n<a href="pro_see_and_see.php?pid=<%= products.pid%>" class="arrow_con">\n<div class="arrow">\n<h4>\u4e70\u8fc7\u672c\u5546\u54c1\u7684\u8fd8\u4e70\u4e86</h4>\n<em>\u66f4\u591a</em>\n</div>\n</a>\n<ul>\n<% _.each(products.reco_list,function(item){ %>\n<li>', '<a href="<%= item.product_id %>.html?sid=' + sid + '">', '<img class="lazy" src="coreimages/bg_pic.png" imgsrc="<%= item.image_url %>" >\n<span><%= item.name%></span>\n<em>\uffe5<%= item.price%></em>\n</a>\n</li>\n<% }) %>\n</ul>\n</section>'].join("\n");
            this.hotTpl = ['<section class="hot">\n<h4>\u70ed\u5356\u5546\u54c1</h4>\n<ul>\n<% _.each(products.ad_list,function(item){ %>\n<li>', '<a href="<%= item.callback_url %>&sid=' + sid + '">', '<img class="lazy" src="coreimages/bg_pic.png" imgsrc="<%= item.image_url %>" >\n<span><%= item.name%></span>\n<em>\uffe5<%= item.price%></em>\n</a>\n</li>\n<% }) %>\n</ul>\n</section>'].join("\n");
            a.mdd_getJSON("h5ajax.php", {
                action: "get_book_see_and_see",
                pid: b.pid,
                img_size: "b"
            },
            function(c) {
                if (0 == c.errorCode) {
                    if (c.products && c.products.reco_list && c.products.reco_list.length) {
                        c.products.pid = b.pid;
                        var e = _.template(b.alsoBuyTpl, c);
                        a(".J_alsobuy").html(e)
                    }
                    c.products && c.products.ad_list && c.products.ad_list.length && (c = _.template(b.hotTpl, c), a(".J_alsobuy").after(c))
                }
            })
        },
        lazyLoadInit: function() {
            var b = this;
            this.alsoBuyLazyload = this.guessLazyload = !1;
            a(".lazy").each(function() {
                b.images(a(this))
            });
            window.onscroll = function() {
                a(".lazy").each(function() {
                    b.images(a(this))
                });
                0 != b.shopId && a(".evaluation").length && !this.shopCollectedLazyload && a(window).scrollTop() + window.innerHeight > a(".evaluation").offset().top - 150 && (this.shopCollectedLazyload = !0, b.checkIfCollected("shop"));
                a(".review_area").length && !this.reviewLazyload && a(window).scrollTop() + window.innerHeight > a(".review_area").offset().top - 150 && (this.reviewLazyload = !0, b.reviewInit());
                a(".J_guess").length && !this.guessLazyload && a(window).scrollTop() + window.innerHeight > a(".J_guess").offset().top - 150 && (this.guessLazyload = !0, b.guessInit());
                a(".J_alsobuy").length && !this.alsoBuyLazyload && a(window).scrollTop() + window.innerHeight > a(".J_alsobuy").offset().top - 150 && (this.alsoBuyLazyload = !0, b.bookAdInit())
            }
        },
        collectShopInit: function() {
            var b = this;
            a("#collect_shop").on("click",
            function() {
                0 > a(this).html().indexOf("\u5df2\u5173\u6ce8") ? (a(".loading").css("display", "block"), b.collectShop(b.shopId, 1)) : (a(".loading").css("display", "block"), b.collectShop(b.shopId, 0))
            })
        },
        collectShop: function(b, c, e, d) {
            var f = this;
            a.mdd_getJSON("h5ajax.php", {
                action: "get_shop_collect",
                pid: f.pid,
                shop_id: b,
                operation: c
            },
            function(b) {
                0 == b.errorCode ? (a(".loading").css("display", "none"), c ? (a("#collect_shop").html("\u5df2\u5173\u6ce8"), pop.popup({
                    type: "pop",
                    text: "\u5173\u6ce8\u6210\u529f"
                })) : (a("#collect_shop").html("\u5173\u6ce8\u5e97\u94fa"), pop.popup({
                    type: "pop",
                    text: "\u53d6\u6d88\u5173\u6ce8\u6210\u529f"
                })), a.isFunction(e) && e()) : 96 == b.errorCode ? (a(".loading").css("display", "none"), f.cookie_auto_callback = 1, window.setStorage("MDD_auto_callback", f.cookie_auto_callback), window.location.href = b.login_url) : (a(".loading").css("display", "none"), pop.popup({
                    type: "pop",
                    text: b.errorMessage
                }), a.isFunction(d) && d())
            })
        },
        getBuyPid: function() {
            return this.pid + "." + this.cookie_buy_number
        },
        directBuyInit: function() {
            var b = this;
            a(".shopping_cart").on("click", ".J_buy",
            function() {
                b.buyCheck()
            })
        },
        scrollToOption: function() {
            window.scrollTo(0, a(".option").offset().top - 100);
            a(".option .arrow_d").hasClass("up") || (a(".option .arrow_d").addClass("up"), a(".option_detail").slideDown(150,
            function() {
                a(this).css("display", "block")
            }))
        },
        colorSizeCheck: function() {
            var b = "\u8bf7\u9009\u62e9" + a("#color_name").html() + "/" + a("#size_name").html(),
            c = "\u8bf7\u9009\u62e9" + a("#color_name").html(),
            e = "\u8bf7\u9009\u62e9" + a("#size_name").html(),
            d = a("#color_options .on").length,
            f = a("#size_options .on").length,
            g = a("#color_options li").length,
            h = a("#size_options li").length;
            if (g && h) {
                if (!d || !f) return d || f ? (!d && pop.popup({
                    type: "pop",
                    text: c
                }), !f && pop.popup({
                    type: "pop",
                    text: e
                })) : pop.popup({
                    type: "pop",
                    text: b
                }),
                this.scrollToOption(),
                !1
            } else if (g && !h) {
                if (!d) return pop.popup({
                    type: "pop",
                    text: c
                }),
                this.scrollToOption(),
                !1
            } else if (!g && h && !f) return pop.popup({
                type: "pop",
                text: e
            }),
            this.scrollToOption(),
            !1;
            return ! 0
        },
        buyCheck: function() {
            this.colorSizeCheck() && this.directBuy()
        },
        getGiftId: function() {
            var b = 0,
            c = a(".barter .selected");
            0 < c.length && 1 == c.length && (b = c.data("gift-id"));
            return b || this.cookie_gift_id
        },
        directBuy: function(b, c) {
            var e = this;
            1 != this.cookie_settle_account && (this.cookie_buy_number = a("#buy_num").val());
            this.cookie_gift_id = this.getGiftId();
            var d = this.pid;
            0 < this.cookie_item_id && (d = this.cookie_item_id);
            a.mdd_getJSON("h5ajax.php", 0 != this.cookie_gift_id ? {
                action: "one_click_buying",
                pid: d,
                gift_id: this.cookie_gift_id,
                count: this.cookie_buy_number
            }: {
                action: "one_click_buying",
                pid: d,
                count: this.cookie_buy_number
            },
            function(d) {
                0 == d.errorCode ? (a.isFunction(b) && b(), window.setStorage("MDD_settle_account", 0), window.setStorage("MDD_temp_item_id", 0), window.setStorage("MDD_temp_gift_id", 0), window.setStorage("MDD_buy_number", 0), a("#product_form").submit()) : 96 == d.errorCode ? (e.cookie_settle_account = 1, window.setStorage("MDD_settle_account", e.cookie_settle_account), window.setStorage("MDD_temp_item_id", e.cookie_item_id), window.setStorage("MDD_temp_gift_id", e.cookie_gift_id), window.setStorage("MDD_buy_number", e.cookie_buy_number), e.cookie_auto_callback = 1, window.setStorage("MDD_auto_callback", e.cookie_auto_callback), window.location.href = d.login_url) : (a.isFunction(c) && c(), pop.popup({
                    type: "pop",
                    text: d.errorMsg
                }))
            })
        },
        addRemindInit: function() {
            var b = this;
            a(".shopping_cart").on("click", ".J_add_remind",
            function() {
                a(".loading").css("display", "block");
                b.addWishList(b.pid,
                function() {
                    a(".J_add_remind").html("\u5df2\u8bbe\u7f6e\u5230\u8d27\u63d0\u9192").removeClass("J_add_remind").addClass("J_remove_remind");
                    pop.popup({
                        type: "pop",
                        text: "\u5546\u54c1\u5230\u8d27\u540e\uff0c\u60a8\u4f1a\u6536\u5230\u6d88\u606f\u63d0\u9192"
                    })
                })
            });
            a(".shopping_cart").on("click", ".J_remove_remind",
            function() {
                a(".loading").css("display", "block");
                b.deleteWishList(b.pid,
                function() {
                    a(".J_remove_remind").html("\u5230\u8d27\u63d0\u9192").removeClass("J_remove_remind").addClass("J_add_remind")
                })
            })
        },
        addToCartInit: function() {
            var b = this;
            a(".shopping_cart").on("click", ".add",
            function() {
                b.addToCart(function() {
                    pop.popup({
                        type: "pop",
                        text: "\u52a0\u5165\u8d2d\u7269\u8f66\u6210\u529f"
                    })
                })
            })
        },
        addToCart: function(b, c) {
            if (this.colorSizeCheck()) {
                var e = this;
                this.cookie_buy_number = a("#buy_num").val();
                this.cookie_gift_id = this.getGiftId();
                var d = "",
                d = 0 != this.cookie_item_id ? this.cookie_item_id + "." + this.cookie_buy_number: this.pid + "." + this.cookie_buy_number;
                0 != this.cookie_gift_id && (d += "-" + this.cookie_gift_id);
                a.mdd_getJSON("h5ajax.php", {
                    action: "cart_append_products",
                    product_ids: d
                },
                function(d) {
                    0 == d.errorCode ? (e.queryCartNumInit(), a.isFunction(b) && b()) : (pop.popup({
                        type: "pop",
                        text: d.errorMsg
                    }), a.isFunction(c) && c())
                })
            }
        },
        queryCartNumInit: function() {
            a(".shopping_cart .cart").length && a.mdd_getJSON("h5ajax.php", {
                action: "cart_product_total"
            },
            function(b) {
                0 == b.errorCode && 0 < b.product_total && (99 < b.product_total && (b.product_total = "99+"), a(".shopping_cart .cart i").html(b.product_total).show())
            })
        }
    };
    a(document).ready(function() {
        FastClick.attach(document.body);
        mdd_product.init();
        window.onload = function() {
            mdd_product.productSliderInit()
        }
    })
})(Zepto);