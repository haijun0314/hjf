
/**
 * ajax 请求统一处理
 */
var AjaxUtils = {
	/**
	 * 完成处理,主要用于操作回调函数
	 */
	loadding : function(type){
		var load="<div class='weui-loadmore'> <i class='weui-loading'></i> <span class='weui-loadmore__tips'>正在加载</span></div>";
 		var loader = $("<div class='weui-ajax-loading'  ><p class='weui-toast_content'>正在加载.....</p></div>"); 
 		$("body").append(load);
 		if(type==0){
 			 $(".weui-loadmore").remove();
 		} 
	},
	httpGet : function(requestUrl ,callback){
		$.getJSON( requestUrl,callback);
	},	
	httpPost: function(url, data, callback) {
		$.ajax({
			type : 'post',
			url : url,
			cache : false,
			data : JSON.stringify(data),
			contentType : "application/json",
			dataType : "json",
			success : function(result) {
				callback(result);
			},
			error : function() {
				
			}
		});
	},	
	 
	/**
	 * 表单请求
	 */
	formRequest : function(form ,  callback,btnId){
		if(btnId){
			$("#"+btnId).addClass("weui-btn_disabled");
		}
        var data = $("#"+form).serialize();
        var url = $("#"+form).attr("action");
        $.showLoading();
        $.post(url, data, function (respData) {
        	 $.hideLoading();
            if (respData.code == "0000") {
            	callback(respData);
            	$.toast(respData.msg);
            } else {
        		if(btnId){
        			$("#"+btnId).removeClass("weui-btn_disabled");
        		}
            	callback(respData);
            	$.toast(respData.msg, "forbidden");
            }
        }, 'json');
	},
	 
	loadData: function(url, data, callback) {
		AjaxUtils.loadding(1);
		$.post(url, '', function (respData) {
	        if (respData.code == "0000") {
	        	AjaxUtils.loadding(0);
	        	callback(respData);
	        } else if(respData.code == "1010"){
	        	window.location.href="/login.html";
	        }  else {
	        	 $.toast(respData.msg);	 
	        }
	    });
	}

};

 