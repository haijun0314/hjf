<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class="pixel-ratio-1">
<head>
    <script src="/static/logic/common/head.js"></script>
    <script src="/static/js/jquery.validate.js"></script>
  <body>
<form action="/account?setPassword" name="dataForm"  id="dataForm" >
    <!-- 更新密码模块 -->
	<div class="weui-cells weui-cells_form"style="top: 2.2rem" >
	  <div class="weui-cell">
	    <div class="weui-cell__bd">
	      <input class="weui-input "    name="orgPassword" id="orgPassword"   		type="text"  placeholder="请输入原密码" >
	    </div>
	  </div>
      <div class="weui-cell">
          <div class="weui-cell__bd">
          <input class="weui-input"   placeholder="请输入新密码"     type="text" name="password" >
        </div>
      </div>
      <div class="weui-cell">
          <div class="weui-cell__bd">
          <input class="weui-input" placeholder="请再次输入新密码"   type="text" name="eqPassword"  >
        </div>
      </div>
	</div>
    <div class="weui-btn-area">
        <a href="#" onclick="subty()" class="weui-btn weui-btn_primary">保存</a>
    </div>
    </form>      
<script>
 
function  subty(){
	 if($('#dataForm').valid()){
       alert(0);
      }
}
$(document).ready(function(){
	validate_Form(); //初始化表单验证
});
 
 
function validate_Form(){
   var validateForm  = $('#dataForm');
   validateForm.validate({
      rules:{
    	   orgPassword:{required:true,minlength: 3},
    	   password:{required:true,minlength: 3},
    	   eqPassword:{required:true,minlength: 3},
      },
      messages:{
    	  orgPassword:{
	   		    required: "请输入商户名称"
	   	   } 
      }
   });		
}

 
 
</script>

</body></html>