/**
 * 角色工具类
 */
var RoleUtil = {
		/***************删除用户***************************/
		 deleteRole:function(roleId){
			bootbox.confirm("确认要删除数据吗?", function(result) {
				if(result) {
					var  url ="/sys/role?delete&roleId="+roleId;
					AjaxRequest.urlRequestWithMsg(url,searchSubmit) ;
				}
			});
		},	 
		/***************添加系统角色**********************/	
		add:function(){
			 BootstrapDialog.show({
				 title:'添加系统角色',
		         message: $('<div></div>').load('/sys/role?add&Ajax=true'),//加载远程地址
		         buttons: [{
		             label: '确定',
		             icon: 'glyphicon glyphicon-ok',
		             cssClass: 'btn-primary',
		             action: function(dialog) {
		                 if($('#dataForm').valid()){
		                 	AjaxRequest.submitFormForModel("dataForm",dialog,searchSubmit);//提交数据表单
		                 }
		             }
		         }, {
		             label: '取消',
		             icon: 'glyphicon glyphicon-remove',
		             cssClass: 'btn-danger',
		             action: function(dialog) {
		            	 dialog.close();
		             }
		         }]
		     });
		},
		/***************更新系统角色**********************/	
		update:function(roleId){
			 BootstrapDialog.show({
				 title:'更新系统角色',
		         message: $('<div></div>').load('/sys/role?update&Ajax=true&roleId='+roleId),//加载远程地址
		         buttons: [{
		             label: '确定',
		             icon: 'glyphicon glyphicon-ok',
		             cssClass: 'btn-primary',
		             action: function(dialog) {
		                 if($('#dataForm').valid()){
		                 	AjaxRequest.submitFormForModel("dataForm",dialog,searchSubmit);//提交数据表单
		                 }
		             }
		         }, {
		             label: '取消',
		             icon: 'glyphicon glyphicon-remove',
		             cssClass: 'btn-danger',
		             action: function(dialog) {
		            	 dialog.close();
		             }
		         }]
		     });
		},
		/***************分配权限**********************/	
		permission:function(roleId){
			 BootstrapDialog.show({
				 title:'分配权限',
		         message: $('<div></div>').load('/sys/role?permission&Ajax=true&roleId='+roleId),//加载远程地址
		         buttons: [{
		             label: '确定',
		             icon: 'glyphicon glyphicon-ok',
		             cssClass: 'btn-primary',
		             action: function(dialog) {
		               var json=zTree.getCheckedNodes(true);
		                 var ids="";
		                 for(var i=0; i<json.length; i++)  
						  {  
						    ids=ids+(json[i].id)+"-"  ;
						  }
						   $("#ids").val(ids);
		                   //按钮事件，点击确定按钮之后，按钮变灰，不可再次操作
		                   var $button = this; 
		                   $button.disable();
						   var ajaxbg = $("#progressBar");	
						   ajaxbg.show();
		                   AjaxRequest.submitFormForModel("permissionForm",dialog,function (){
		                    ajaxbg.hide();
		                   }) ;
		                 
		             }
		         }, {
		             label: '取消',
		             icon: 'glyphicon glyphicon-remove',
		             cssClass: 'btn-danger',
		             action: function(dialog) {
		            	 dialog.close();
		             }
		         }]
		     });
		},
		 
		/***************角色详情**********************/
		 detail:function(roleId){
			 BootstrapDialog.show({
				 title:'角色详情',
		         message: $("<div></div>").load("/sys/role?detail&Ajax=true&roleId="+roleId)//加载远程地址
		     });
		},
};