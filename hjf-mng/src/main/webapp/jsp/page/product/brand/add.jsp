<!-- 添加商品类型页面-->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/common/taglibs.jsp"%>
<link rel="stylesheet" type="text/css" href="/static/webuploader/webuploader.css">
<script type="text/javascript" src="/static/webuploader/webuploader.js"></script>
<script type="text/javascript" src="/static/webuploader/uploadUtil.js"></script> 
<script type="text/javascript">
 
$(document).ready(function(){
	validate_Form();//初始化表单验证
	ProductUtil.initCategorys('categoryId');
});
 
/******************表单验证****************************/
function validate_Form(){
   var validateForm  = $('#dataForm');
   validateForm.validate({
       rules:{
    	  brandName:{required:true,minlength: 2}
      },
      messages:{
    	  brandName: {
	   		    required: "请输入品牌名称"
	   	   }
	   	    
      }
   });		
}
</script>
<div class="row">
	<div class="col-xs-12">
		<form action="${contextPath}/product?brand_add&ajax=true&reqType=2" class="form-horizontal" role="form"  id="dataForm" name="dataForm">
			<div class="form-group">
				<label for="roleName" class="col-sm-3 control-label no-padding-right"> 商品类别</label>
				<div class="col-sm-5">
					<select  name="categoryId"  id="categoryId" class="form-control">
						 <option value=""> 商品类别</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="roleDesc" class="col-sm-3 control-label no-padding-right"> <b class="star_red">*</b>品牌名称</label>
				<div class="col-sm-9">
					<input type="text" class=" required col-xs-10 col-sm-7" placeholder="" id="brandName" name="brandName">
				</div>
			</div>
			<div class="form-group">
				<label for="roleName" class="col-sm-3 control-label no-padding-right">  排序</label>
				<div class="col-sm-9">
					<input type="text" class="col-xs-10 col-sm-7 digits" placeholder="数字越大越靠前"  value="0" id="sortNum" name="sortNum" >
				</div>
			</div>
			<div class="form-group" >
				<input id="module" value="brand" style="display:none;" fileId="pics">
				<input  type="hidden" id="pics"  name="pic"    >
				<label class="col-sm-3 control-label no-padding-right">品牌图片</label>
	            <div id="uploader"  class="col-sm-6">
	                <div class="queueList">
	                    <div id="dndArea" class="placeholder">
	                        <div id="filePicker"></div>
	                    </div>
	                </div>
	                <div class="statusBar" style="display:none;">
	                    <div class="btns">
	                       <div class="uploadBtn">开始上传</div>
	                    </div>
	                </div>
	            </div>
			</div>
			
	 </form>
	</div>
</div>
 