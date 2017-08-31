var MenuUtil = {
		
	/**
	*左侧菜单跳转
	*/
	/********************获得父.子菜单名称以及选中变色****************************/
	menuRequest:function( menucode,url,menuName){
	/********************菜单选中变色****************************/
		var selectMenu=$("#selectMenu").val();
		$("#"+selectMenu).removeClass("selected");
		$("#selectMenu").val(menucode);
		$("#"+menucode).addClass("selected");
		AjaxRequest.urlRequest(url+'&ajax=true' ,"right");
	/********************获得父.子菜单名称 左上角导航****************************/	
		var menubrName=$("#"+menucode.substring(0,6)).html();
		document.getElementById("menu_b").innerHTML=menuName;
	    document.getElementById("menu_a").innerHTML=menubrName;
	},		
		
		
    /********************加载登陆用户数据***********************************/
    loadLeftMenus: function() {

        AjaxRequest.httpPost("/sys/environment?loadUserMenus", {

        },
        function(result) {
            var template_leftMenu = Handlebars.compile($("#leftMenu-template").html());
            var datalist = result.data;
            $('#leftMenu_nav').append(template_leftMenu(datalist));
        });
    },
    /********************父类加载下拉框数据***********************************/
    loadParent: function() {

        AjaxRequest.httpPost("/sys/security?getMenuBarList&parentid=0", {

        },
        function(result) {
            var parent = $("#parent");
            $.each(result,
            function(idx, item) {
                parent.append('<option value=' + item.menuId + '> ' + item.menuName + '</option>');
            });

        });
    },
    /********************子类加载下拉框数据***********************************/
    loadSon: function() {
        var parent = $("#parent").val();
        $("#son").empty();
        var son = $("#son");
        son.append("<option value=''>请选择</option>");
        if (parent == null || parent == '') {
            return;
        }

        AjaxRequest.httpPost("/sys/security?getMenuBarList&parentid=" + parent, {

        },
        function(result) {

            $.each(result,
            function(idx, item) {
                son.append('<option value=' + item.menuId + '> ' + item.menuName + '</option>');
            });
        });
    },
    
    /***************添加菜单**********************/	
    add:function(){
    	 BootstrapDialog.show({
    		 title:'添加菜单',
             message: $('<div></div>').load('/sys/security?add&Ajax=true'),//加载远程地址
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
    /***************更新菜单**********************/	
    update:function(menuid){
    	 BootstrapDialog.show({
    		 title:'更新菜单',
             message: $('<div></div>').load('sys/security?update&Ajax=true&menuid='+menuid),//加载远程地址
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
    /***************删除菜单***************************/
    deleteMenu:function(menuid){
    	bootbox.confirm("确认要删除数据吗?", function(result) {
    		if(result) {
    			var  url ="/sys/security?delete&menuid="+menuid;
    			AjaxRequest.urlRequestWithMsg(url,searchSubmit) ;
    			}
    		});
    },   
    /***************启用，停用服务类型**********************/
    startOrStop:function(menuCode,status){
    	bootbox.confirm("确认要改变该菜单状态吗?", function(result) {
    		if(result) {
    			var  url ="/sys/security?startOrStop&menuCode="+menuCode+"&status="+status;
    				AjaxRequest.urlRequestWithMsg(url,searchSubmit) ;
    			}
    		});
    } 

};