UrlUtil={
	    /*****返回当前页面的url*********/
	    getURL: function() {
	        return  window.location.href; //大写哦！
	    },


	    /** 返回url参数数组，分别有name和value属性*******/
	    getURLParams: function(url) {
	        var params = [];
	        if (url.indexOf('?') > -1) {
	            var a1 = url.split('?');
	            var a2 = a1[1].split('&');
	            var a3 = '';
	            for (var i = 0; i < a2.length; i++) {
	                a3 = a2[i].split('=');
	                if (a3.length == 2) {
	                    params.push({
	                        'name': a3[0],
	                        'value': a3[1]
	                    })
	                }
	            }
	        }
	        return params;
	    },

	    /** 返回URL中的指定参数
	     * @param {String} url URL字符串
	     * @param {String} paramName 参数名
	     * @author chencha
	     * @since 2014-07-04
	     */
	    getUrlParamByName: function(url, paramName) {
	        var URLUtil = this;
	        var urlObj = URLUtil.getURLObject(url);
	        var res = urlObj[paramName];
	        return res;
	    },
	    
	    /** 返回URL对象，此对象含有的属性名是URL中的参数
	     * @param {String} url URL字符串
	     * @author chencha
	     * @since 2014-07-04
	     */
	    getURLObject: function(url) {
	        var URLUtil = this;
	        var res = {};
	        var urlParams = URLUtil.getURLParams(url);
	        for (var i = 0; i < urlParams.length; i++) {
	            var oneParam = urlParams[i];
	            var name = oneParam.name;
	            var value = oneParam.value;
	            res[name] = value;
	        };
	        return res;
	    },
	    
	    /**var myURL = parseURL('http://abc.com:8080/dir/index.html?id=255&m=hello#top');  
	    myURL.file;     // = 'index.html'  
	    myURL.hash;     // = 'top'  
	    myURL.host;     // = 'abc.com'  
	    myURL.query;    // = '?id=255&m=hello'  
	    myURL.params;   // = Object = { id: 255, m: hello }  
	    myURL.path;     // = '/dir/index.html'  
	    myURL.segments; // = Array = ['dir', 'index.html']  
	    myURL.port;     // = '8080'  
	    myURL.protocol; // = 'http'  
	    myURL.source;   // = 'http://abc.com:8080/dir/index.html?id=255&m=hello#top'  
	    */
	    parseURL:function(url) {  
	        var a =  document.createElement('a');  
	        a.href = url;  
	        return {  
	            source: url,  
	            protocol: a.protocol.replace(':',''),  
	            host: a.hostname,  
	            port: a.port,  
	            query: a.search,  
	            params: (function(){  
	                var ret = {},  
	                    seg = a.search.replace(/^\?/,'').split('&'),  
	                    len = seg.length, i = 0, s;  
	                for (;i<len;i++) {  
	                    if (!seg[i]) { continue; }  
	                    s = seg[i].split('=');  
	                    ret[s[0]] = s[1];  
	                }  
	                return ret;  
	            })(),  
	            file: (a.pathname.match(/\/([^\/?#]+)$/i) || [,''])[1],  
	            hash: a.hash.replace('#',''),  
	            path: a.pathname.replace(/^([^\/])/,'/$1'),  
	            relative: (a.href.match(/tps?:\/\/[^\/]+(.+)/) || [,''])[1],  
	            segments: a.pathname.replace(/^\//,'').split('/')  
	        };  
	    }	    
	}



var 	session;
var SecUtil= {
	checkLogin:function (){
		var  url=UrlUtil.getURL();	
		if(url.indexOf("login.html") >= 0){
			return ;
		}
		session=Cookies.get("CKLHJ");
		if(session==null||session==""){
			window.location.href="/login.html";
		}
	},
	login:function (){
		 
	}	
}
SecUtil.checkLogin();
$(function() {
	FastClick.attach(document.body);
});


  