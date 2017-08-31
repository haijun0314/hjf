var ProductUtil = {
		/**********商品分类***树形展示*********/
		category_load_tree:function(categoryId){
				$("#dataForm").hide();
		  	   var url="/product?categoryList&reqType=1";     
		  		AjaxRequest.getJson(url, function initTree(datas){
		  			  $('#categoryList').treeview({
		  		          data: datas,
		  		          onNodeSelected:ProductUtil.category_update_load,
		  		        });
		  			$('#categoryList').treeview('collapseAll', { silent: true }); 
		  		});	 
		},			
		/**********商品分类***点击树形节点加载数据   更新展示*********/
		category_update_load:function(event,node){
			   var c_s=node.tags.split("_") ;
			   var categoryId=c_s[1];
			   var type=c_s[0];//类型类型  0  一级  1 二级
			   if(type=='0'){
				   $("#btn_del_ca").hide();
			   }else{
				   $("#btn_del_ca").show();
			   }
			   
		  	   var url="/product?category_load&categoryId="+categoryId;     
		  		AjaxRequest.getJson(url, function(data){
		  			$("#dataForm").show();
		  			$("#categoryName").val(data.categoryName);
		  			$("#categoryId").val(categoryId);
		  			$("#sortNum").val(data.sortNum);
		  			$("#pic").attr("src",data.pic);
		  			
		  		});	 
		},		
		/**********商品分类***更新*********/
		category_update:function(){
			if($('#dataForm').valid()){
             	AjaxRequest.submitFormForModel("dataForm",null,function(){
             		ProductUtil.category_load_tree();
             	}); 
             }
		},		
		/**********商品分类***删除*********/
		category_delete:function(){
			 var categoryId=$("#categoryId").val();
			 bootbox.confirm("确认要删除数据吗?", function(result) {
				if(result) {
					var  url ="/product?category_delete&Ajax=true&categoryId="+categoryId;
					AjaxRequest.urlRequestWithMsg(url,function(){
						ProductUtil.category_load_tree();
					}) ;
					}
			});
		},		
		/**********商品分类***添加**********/
		category_add:function(){
			 BootstrapDialog.show({
				 title:'商品分类添加',
		        message: $("<div></div>").load("/product?category_add&Ajax=true"),//加载远程地址
		         buttons: [{
		             label: '确定操作',
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
		/*********商品添加***********/
		add:function(){
			AjaxRequest.urlRequest("/product?add&Ajax=true","right") ;
		},	
		/*********商品添加***********/
		update:function(productId){
			AjaxRequest.urlRequest("/product?update&Ajax=true&productId="+productId,"right") ;
		},	
		
		return_list:function(){
			AjaxRequest.urlRequest("/product?gridView&Ajax=true","right") ;
		},
		/********初始选择数据********/
		initData:function(categoryId_,brandId_){
			AjaxRequest.httpPost(
				"/product?initData",
				{
					 
				},
				function(result) {
					var categorys=result.categorys;
					for( i=0;i<categorys.length;i++){
						var  c=categorys[i];
						$("#categoryId").append("<option value='"+c.categoryId+"'>"+c.categoryName+"</option>");
					}
					if(categoryId_!=null){
						$("#categoryId").val(categoryId_);
					}
					var brands=result.brands;
					for( i=0;i<brands.length;i++){
						var  b=brands[i];
						$("#brandId").append("<option value='"+b.brandId+"'>"+b.brandName+"</option>");
					}
					if(brandId_!=null){
						$("#brandId").val(brandId_);
					}
					
					
			});
		},
		
		/**********删除商品*********/
		del:function(productId){
			 bootbox.confirm("确认要删除数据吗?", function(result) {
					if(result) {
						var  url ="/product?delete&Ajax=true&productId="+productId;
						AjaxRequest.urlRequestWithMsg(url,searchSubmit) ;
						}
				});
		},
		/**********商品详情********/
		detail:function(productId){
			 BootstrapDialog.show({
				 title:'商品详情',
		        message: $("<div></div>").load("/product?detail&Ajax=true&productId="+productId)//加载远程地址
		    });
		},
		/**********更新库存*********/
		updateStroe:function(productId){
			 BootstrapDialog.show({
				 title:'更新库存',
		        message: $("<div></div>").load("/product?updateStroe&Ajax=true&productId="+productId),//加载远程地址
		         buttons: [{
		             label: '确定操作',
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
		/*********上架或下架操作*******/
		startOrStop:function(productId,status){
			 bootbox.confirm("确认要操作数据吗?", function(result) {
					if(result) {
						var  url ="/product?startOrStop&Ajax=true&productId="+productId+"&status="+status;
						AjaxRequest.urlRequestWithMsg(url,searchSubmit) ;
						}
				});
		},
		
}



