<!-- 添加商品页面-->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/common/taglibs.jsp"%>
<link rel="stylesheet" type="text/css" href="/static/webuploader/webuploader.css">
<link rel="stylesheet" type="text/css" href="/static/webuploader/demo.css">
<script type="text/javascript" src="/static/webuploader/webuploader.js"></script>
<script type="text/javascript" src="/static/logic/product/uploadPic.js"></script> 
<script type="text/javascript">
$(document).ready(function(){
	validate_Form();//初始化表单验证
	ProductUtil.initData();
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
				<label class="col-sm-3 control-label no-padding-right">玩具信息</label>
				<div class="col-sm-9">
					<span class="input-icon">
						<input   class="required"  type="text"  id="productName"  name="productName"  placeholder="玩具名称">
					</span>
					<span class="input-icon input-icon-right">
						<input  type="text" id="productNO"  name="productNO" placeholder="玩具编号">
					</span>
				</div>
			</div>
			<div class="form-group">
				<label for="countTotal" class="col-sm-3 control-label no-padding-right"><b class="star_red">*</b> 玩具库存</label>
				<div class="col-sm-9">
					<input type="text" class="col-xs-10 col-sm-7 required"  id="store" name="store"   >
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
			<div class="form-group" >
				<label for="select_role" class="col-sm-3 control-label no-padding-right"> <b class="star_red">*</b>所属分类</label>
				<div class="col-sm-9" >
					 <select name="categoryId" id="categoryId" class="required">
						 
					 </select>
				</div> 
			</div>
			<div class="form-group" >
				<label for="select_role" class="col-sm-3 control-label no-padding-right"> <b class="star_red">*</b>销售类型</label>
				<div class="col-sm-9" >
					 <select name="saleType" id="saleType" >
						 <option value="1">售卖</option>
						 <option value="0">租赁</option>
					 </select>
				</div> 
			</div>
			
			<div class="form-group" >
				<label for="select_role" class="col-sm-3 control-label no-padding-right"> <b class="star_red">*</b>所属性别</label>
				<div class="col-sm-9" >
					 <select name="sex" id="sex" >
						 <option value="0">男</option>
						 <option value="1">女</option>
						 <option value="2">不限</option>
					 </select>
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
				<label for="select_role" class="col-sm-3 control-label no-padding-right"> <b class="star_red">*</b>适宜儿童</label>
				<div class="col-sm-9" >
				<!--  年龄段["0-6个月","6个月-12个月","1-3岁","3-6岁"] -->
					 <select name="babyAge" id="babyAge" >
						 <option value="1">0-6个月</option>
						 <option value="2">6个月-12个月</option>
						 <option value="3">1-3岁</option>
						 <option value="4">3-6岁</option>
						 <option value="5">6岁以上</option>
					 </select>
				</div> 
			</div>
			</div>
				<div class="form-group">
					<label for="remark" class="col-sm-2 control-label no-padding-right">玩具介绍</label>
					<div class="col-sm-10">
						<textarea maxlength="500"   rows="10" id="form-field-9" class="form-control limited" placeholder="" id="descriptions" name="descriptions"></textarea>
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
 