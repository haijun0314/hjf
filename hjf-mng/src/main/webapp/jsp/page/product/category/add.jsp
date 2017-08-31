<!-- 添加角色页面-->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/common/taglibs.jsp"%>
<link rel="stylesheet" type="text/css" href="/static/webuploader/webuploader.css">
<link rel="stylesheet" type="text/css" href="/static/webuploader/demo.css">
<script type="text/javascript" src="/static/webuploader/webuploader.js"></script>
<script type="text/javascript" src="/static/logic/product/uploadPic.js"></script> 
<script type="text/javascript">
$(document).ready(function(){
	validate_Form();//初始化表单验证
});
 
/******************表单验证****************************/
function validate_Form(){
   var validateForm  = $('#dataForm');
   validateForm.validate({
       
       rules:{
    	   categoryName:{required:true,minlength: 2}
			 
      },
      messages:{
    	  categoryName: {
	   		    required: "请输入类型名称"
	   	   }
	   	    
      }
   });		
}
</script>
<div class="row">
	<div class="col-xs-12">
		<form action="${contextPath}/product?category_add&ajax=true&reqType=2" class="form-horizontal" role="form"  id="dataForm" name="dataForm">
			<div class="form-group">
				<label for="roleDesc" class="col-sm-3 control-label no-padding-right"> <b class="star_red">*</b>类别名称</label>
				<div class="col-sm-9">
					<input type="text" class=" required col-xs-10 col-sm-7" placeholder="" id="categoryName" name="categoryName">
				</div>
			</div>
			<div class="form-group">
				<label for="roleName" class="col-sm-3 control-label no-padding-right"><b class="star_red">*</b> 排序</label>
				<div class="col-sm-9">
					<input type="text" class="col-xs-10 col-sm-7" placeholder="" id="sortNum" name="sortNum">
				</div>
			</div>
			<div class="form-group" >
				<input  type="hidden" id="pics"  name="pics"   class="required">
				<label class="col-sm-3 control-label no-padding-right">玩具图片</label>
				<div id="uploader" class="wu-example col-sm-4">
				    <div class="queueList">
				        <div id="dndArea" class="placeholder">
				            <div id="filePicker" class="webuploader-container">
					            <div class="webuploader-pick">点击选择图片</div>
					            <div id="rt_rt_1bj26dqhb8nbr673um1d1g1gb41" style="position: absolute; top: 0px; left: 448px; width: 168px; height: 44px; overflow: hidden; bottom: auto; right: auto;"><input name="file" class="webuploader-element-invisible" multiple="multiple" accept="image/*" type="file"><label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255) none repeat scroll 0% 0%;"></label></div>
				            </div>
				        </div>
				    	<ul class="filelist"></ul>
				    </div>
				    <div class="statusBar" style="display:none;">
				        <div class="progress" style="display: none;">
				            <span class="text">0%</span>
				            <span class="percentage" style="width: 0%;"></span>
				        </div> 
				        <div class="btns">
				            <div id="rt_rt_1bj26dqhn1j8rccdirc1iabekf6" style="position: absolute; top: 0px; left: 0px; width: 1px; height: 1px; overflow: hidden;">
				            <input name="file" class="webuploader-element-invisible" multiple="multiple" accept="image/*" type="file"><label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255) none repeat scroll 0% 0%;"></label></div>
				        </div>
				        <div class=" uploadBtn state-ready btn btn-primary ">开始上传</div>
				    </div>
			    </div>
			</div>
		</form>
	</div>
</div>
 