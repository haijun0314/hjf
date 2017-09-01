<!-- 添加商品页面-->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/common/taglibs.jsp"%>
<link rel="stylesheet" type="text/css" href="/static/webuploader/webuploader.css">
<script type="text/javascript" src="/static/webuploader/webuploader.js"></script>
<script type="text/javascript" src="/static/webuploader/uploadUtil.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	validate_Form();//初始化表单验证
	ProductUtil.initCategorys('pid');
	ProductUtil.initBrands();
});
 
function selectPicd(){
	var pid=$("#pid").val();
	$("#categoryId").empty();
	if(pid==''){
		return;
	}
	
	ProductUtil.initCategorys('categoryId',null,pid);
} 
 
 
/******************表单验证****************************/
function validate_Form(){
   var validateForm  = $('#dataForm');
   validateForm.validate({
       rules:{
    	   
      },
      messages:{
    	  
      }
   });		
}

/******************表单验证****************************/
function add_do(){
    if($('#dataForm').valid()){
     	AjaxRequest.formRequest("dataForm",ProductUtil.return_list());//提交数据表单
     }
}
</script>

<div class="row">
	<div class="col-xs-12">
		<form action="${contextPath}/product?add&ajax=true&reqType=2" class="form-horizontal" role="form"  id="dataForm" name="dataForm">
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right">商品信息</label>
				<div class="col-sm-9">
					<span class="input-icon">
						<input type="text"    class="required"  id="productName"  name="productName"  placeholder="商品名称">
					</span>
					<span class="input-icon input-icon-right">
						<input  type="text" class="required"  id="productNO"  name="productNO" placeholder="商品编号">
					</span>
					<span class="input-icon input-icon-right">
						<input type="text" class="required"  id="store" name="store"   placeholder="商品库存" >
					</span>
				</div>
			</div>
			<div class="form-group" >
				<input  type="hidden" id="pics"  name="pics"   class="required">
				<input id="module" value="product" style="display:none;" fileId="pics">
				<label class="col-sm-3 control-label no-padding-right">商品图片</label>
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
			<div class="form-group" >
				<label for="select_role" class="col-sm-3 control-label no-padding-right"> <b class="star_red">*</b>所属分类</label>
				<div class="col-sm-9" >
					 <select name="pid" id="pid" class="required"  onchange="selectPicd()">
						 <option value=""> 请选择分类</option>
					 </select>
					 <span class="input-icon input-icon-right">
						 <select name="categoryId" id="categoryId" class="required">
						 </select>
					</span>
					 
					 
				</div> 
			</div>
			<div class="form-group" >
				<label for="select_role" class="col-sm-3 control-label no-padding-right"> <b class="star_red">*</b>所属品牌</label>
				<div class="col-sm-9" >
					 <select name="brandId" id="brandId" class="required">
						 
					 </select>
				</div> 
			</div>
			
			<div class="form-group" >
				<label for="select_role" class="col-sm-3 control-label no-padding-right"> <b class="star_red">*</b>销售类型</label>
				<div class="col-sm-9" >
					 <select name="productType" id="productType" >
						 <option value="1">普通商品 </option>
						 <option value="2"> 推荐商品</option>
						 <option value="3"> 热卖商品</option> 
					 </select>
				</div> 
			</div>
			<div class="form-group">
				<label for="remark" class="col-sm-3 control-label no-padding-right">商品介绍</label>
				<div class="col-sm-5">
					<textarea maxlength="500"   rows="3" id="form-field-9" class="form-control limited" placeholder="" id="descriptions" name="descriptions"></textarea>
				</div>
			</div>
			<div class="clearfix form-actions">
				<div class="col-md-offset-3 col-md-9">
					<button class="btn btn-danger" type="button" style="width: 300px"  onclick="add_do()">
						<i class="icon-ok bigger-110"></i>
						确定添加
					</button>
					<button class="btn btn-info" type="button" style="width: 300px"  onclick="ProductUtil.return_list()">
						<i class="icon-ok info-110"></i>
						取消操作
					</button>
				</div>
			</div>
		</form>
	</div>
</div>
 