<!-- 更新商品页面-->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/common/taglibs.jsp"%>
<link rel="stylesheet" type="text/css" href="/static/webuploader/webuploader.css">
<script type="text/javascript" src="/static/webuploader/webuploader.js"></script>
<script type="text/javascript" src="/static/webuploader/uploadUtil.js"></script>
<link href="/static/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="/static/umeditor/third-party/template.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/umeditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/static/umeditor/umeditor.min.js"></script>
<script type="text/javascript" src="/static/umeditor/lang/zh-cn/zh-cn.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	validate_Form();//初始化表单验证
	ProductUtil.initCategorys('pid','${pc.pid}');
	selectPicd('${pc.pid}');
	ProductUtil.initBrands();
	var um = UM.getEditor('detailDesc');
});
 
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
function update_do(){
    if($('#dataForm').valid()){
     	AjaxRequest.formRequest("dataForm",ProductUtil.return_list());//提交数据表单
     }
}
function selectPicd(pid){
	pid_=$("#pid").val();
	$("#categoryId").empty();
	if(!pid){
		pid=$("#pid").val();
	}
	if(!pid){
		return;
	}
	
	ProductUtil.initCategorys('categoryId',null,pid);
} 
</script>
<div class="row">
	<div class="col-xs-12">
		<form action="${contextPath}/product?update&ajax=true&reqType=2" class="form-horizontal" role="form"  id="dataForm" name="dataForm">
			<input class="required"  type="hidden"  id="productId"  name="productId"  value="${p.productId }">
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"><b class="star_red">*</b>商品名称</label>
				<div class="col-sm-9">
						<input class="required col-sm-9"  type="text"  id="productName"  name="productName" placeholder="商品名称" value="${p.productName }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"><b class="star_red">*</b>商品编号</label>
				<div class="col-sm-9">
						<input type="text"  class=" col-sm-4"  id="productNO"  name="productNO" placeholder="商品编号" value="${p.productNO }"  >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"><b class="star_red">*</b>商品库存</label>
				<div class="col-sm-9">
						<input type="text" class="required digits col-sm-4"  min="1"  id="store" name="store"   placeholder="商品库存"  value="${p.store }"  >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right">商品价格</label>
				<div class="col-sm-9">
						<input type="text"    class="col-sm-4 required number"  min="0.1"  id="price"  name="price"  placeholder="商品价格" value="${p.price }">
						
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right">市场价格</label>
				<div class="col-sm-9">
					<input  type="text" class="col-sm-4 number" min="0.1" id="marketPrice"  name="marketPrice" placeholder="市场价" value="${p.marketPrice }">
				</div>
			</div>
			
			
			<div class="form-group" >
				<input  type="hidden" id="pics"  name="pics"  value="${p.pics }">
				<input id="module" value="product" style="display:none;" fileId="pics" fileNumLimit="5">
				<label class="col-sm-3 control-label no-padding-right"><b class="star_red">*</b>商品图片</label>
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
		 
			<div class="form-group">
				<label for="remark" class="col-sm-2 control-label no-padding-right">商品介绍</label>
				<div class="col-sm-10">
					<textarea maxlength="500"   rows="10" id="form-field-9" class="form-control limited" placeholder="" id="descriptions" name="descriptions">${p.descriptions }</textarea>
				</div>
			</div>
			<div class="clearfix form-actions">
				<div class="col-md-offset-3 col-md-9">
					<button class="btn btn-danger" type="button" style="width: 300px"  onclick="update_do()">
						<i class="icon-ok bigger-110"></i>
						确定修改
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
 
 