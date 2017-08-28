DataUtil={
	    /*****返回当前页面的url*********/
		getFormData: function() {
			 var isNeedShim = ~navigator.userAgent.indexOf('Android')
		        && ~navigator.vendor.indexOf('Google')
		        && !~navigator.userAgent.indexOf('Chrome')
		        && navigator.userAgent.match(/AppleWebKit\/(\d+)/).pop() <= 534;
		    return isNeedShim ? new DataUtil.FormDataShim() : new FormData()
	    },
	    /*****返回当前页面的url*********/
		getFileSize: function(file) {
			return (file.size / 1024) ;
	    },
	    FormDataShim:function(){
    	    console.warn('using formdata shim');
    	    var o = this,
    	        parts = [],
    	        boundary = Array(21).join('-') + (+new Date() * (1e16 * Math.random())).toString(36),
    	        oldSend = XMLHttpRequest.prototype.send;
    	    this.append = function(name, value, filename) {
    	      parts.push('--' + boundary + '\r\nContent-Disposition: form-data; name="' + name + '"');
    	      if (value instanceof Blob) {
    	        parts.push('; filename="' + (filename || 'blob') + '"\r\nContent-Type: ' + value.type + '\r\n\r\n');
    	        parts.push(value);
    	      }
    	      else {
    	        parts.push('\r\n\r\n' + value);
    	      }
    	      parts.push('\r\n');
    	    };
    	    // Override XHR send()
    	    XMLHttpRequest.prototype.send = function(val) {
    	      var fr,
    	          data,
    	          oXHR = this;
    	      if (val === o) {
    	        // Append the final boundary string
    	        parts.push('--' + boundary + '--\r\n');
    	        // Create the blob
    	        data = getBlob(parts);
    	        // Set up and read the blob into an array to be sent
    	        fr = new FileReader();
    	        fr.onload = function() {
    	          oldSend.call(oXHR, fr.result);
    	        };
    	        fr.onerror = function(err) {
    	          throw err;
    	        };
    	        fr.readAsArrayBuffer(data);
    	        // Set the multipart content type and boudary
    	        this.setRequestHeader('Content-Type', 'multipart/form-data; boundary=' + boundary);
    	        XMLHttpRequest.prototype.send = oldSend;
    	      }
    	      else {
    	        oldSend.call(this, val);
    	      }
    	    };
	    },
	    /********使用canvas对大图片进行压缩************/
	   compress:function(img) {
		   //用于压缩图片的canvas
		   var canvas = document.createElement("canvas");
		   var ctx = canvas.getContext('2d');
		   //瓦片canvas
		   var tCanvas = document.createElement("canvas");
		   var tctx = tCanvas.getContext("2d");
		   
		   
	      var initSize = img.src.length;
	      var width    = img.width;
	      var height   = img.height;
	      //如果图片大于四百万像素，计算压缩比并将大小压至400万以下
	      var ratio;
	      if ((ratio = width * height / 4000000) > 1) {
	        ratio = Math.sqrt(ratio);
	        width /= ratio;
	        height /= ratio;
	      } else {
	        ratio = 1;
	      }
	      canvas.width = width;
	      canvas.height = height;
	  	// 铺底色
	      ctx.fillStyle = "#fff";
	      ctx.fillRect(0, 0, canvas.width, canvas.height);
	      //如果图片像素大于100万则使用瓦片绘制
	      var count;
	      if ((count = width * height / 1000000) > 1) {
	        count = ~~(Math.sqrt(count) + 1); //计算要分成多少块瓦片
	  	//计算每块瓦片的宽和高
	        var nw = ~~(width / count);
	        var nh = ~~(height / count);
	        tCanvas.width = nw;
	        tCanvas.height = nh;
	        for (var i = 0; i < count; i++) {
	          for (var j = 0; j < count; j++) {
	            tctx.drawImage(img, i * nw * ratio, j * nh * ratio, nw * ratio, nh * ratio, 0, 0, nw, nh);
	            ctx.drawImage(tCanvas, i * nw, j * nh, nw, nh);
	          }
	        }
	      } else {
	        ctx.drawImage(img, 0, 0, width, height);
	      }
	      //进行最小压缩
	      var ndata = canvas.toDataURL('image/jpeg', 0.1);
	      tCanvas.width = tCanvas.height = canvas.width = canvas.height = 0;
	      return ndata;
	    },
	    /*****图片上传，将base64的图片转成二进制对象，塞进formdata上传*****/
	    upload:function(basestr,url) {
	      var xhr = new XMLHttpRequest();
	      var formdata = DataUtil.getFormData();
	      formdata.append('headPic', basestr);
	      xhr.open('post', url);
	      xhr.onreadystatechange = function() {
	    	  $.hideLoading();
	        if (xhr.readyState == 4 && xhr.status == 200) {
	          $.toast("上传成功");
	        }
	      };
	      xhr.send(formdata);
	    }
}

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
	}
}

$(function() {
	SecUtil.checkLogin();
	FastClick.attach(document.body);
});

  