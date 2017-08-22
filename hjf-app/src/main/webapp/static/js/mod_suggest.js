var Suggest = function(a) {
    that = this;
    that.opt = a || {};
    that.operator = that.opt.operator || ".keyword";
    that.ajaxUrl = that.opt.ajaxUrl || "h5ajax.php";
    that.wrapEl = that.opt.wrapEl || ".suggest";
    that.formEl = that.opt.formEl || "#search_form";
    that.defaultVal = that.opt.defaultVal || "";
    that.initInput()
};
Suggest.prototype = {
    initInput: function() {
        var a = document.getElementById("keyword");
        a.autocomplete = "off";
        a.addEventListener("input",
        function() {
            var b = a.value.replace(/(^\s+)|(\s+$)/g, "");
            that.ajax(b)
        })
    },
    ajax: function(a) {
        if ("" == a.replace(/(^\s*)|(\s*$)/g, "")) that.getElemByClassName(".search_list")[0].innerHTML = "",
        that.getElemByClassName(".search_list")[0].style.display = "none";
        else {
            var b = document.getElementsByName("sid")[0].value;
            myurl = that.ajaxUrl + "?key=" + a + "&action=suggest&sid=" + b + "&fun_type=2&callback=that.updateList";
            that.invokeServer(myurl)
        }
    },
    updateList: function(a) {
        var b = [];
        that.getElemByClassName(".search_list")[0].innerHTML = "";
        that.getElemByClassName(".search_list")[0].style.display = "block";
        if (0 == a.errorCode) {
            a = a.word;
            for (var d = 0; d < a.length; d++) b.push("<li><a><span class='value'>" + a[d].key + "</span><span class='num'>\u7ea6" + a[d].count + "\u4e2a\u7ed3\u679c</span></a></li>");
            a = "<ul>" + b.join("") + "</ul><div class='clear_search'>[\u5173\u95ed]</div>";
            that.getElemByClassName(".search_list")[0].innerHTML = a;
            that.effect()
        } else that.getElemByClassName(".search_list")[0].innerHTML = "",
        that.getElemByClassName(".search_list")[0].style.display = "none"
    },
    effect: function() {
        var a = that.getElemByClassName(".search_list")[0].firstChild.children;
        for (i = 0; i < a.length; i++)(function() {
            var b = i;
            a[i].onclick = function() {
                that.changeVal(a[b].firstChild.children[0].innerHTML)
            }
        })();
        that.getElemByClassName(".clear_search")[0].onclick = function() {
            that.getElemByClassName(".search_list")[0].innerHTML = "";
            that.getElemByClassName(".search_list")[0].style.display = "none"
        }
    },
    changeVal: function(a) {
        document.getElementById("keyword").value = a;
        that.getElemByClassName(".search_list")[0].innerHTML = "";
        that.getElemByClassName(".search_list")[0].style.display = "none";
        document.getElementById("index_search_form").submit()
    },
    invokeServer: function(a) {
        var b = document.getElementById("temp_script");
        if (null != b && document.all) b.src = a;
        else {
            var d = document.documentElement.firstChild,
            c = document.createElement("script");
            c.id = "temp_script";
            c.type = "text/javascript";
            c.src = a;
            null != b ? d.replaceChild(c, b) : d.appendChild(c)
        }
    },
    getElemByClassName: function(a) {
        var b = a.match(/\.\S*/),
        d = (a = a.match(/\s\S[\S]*/ig)) ? a.length: 0,
        c = null;
        0 < b.length && (c = document.querySelectorAll(b[0]));
        if (c && 0 < c.length) return a && 0 < d ? c[0].getElementsByTagName(a[0].replace(/^\s+/, "").replace(/\s+$/, "")) : c
    }
};