<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/jsp/common/taglibs.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	disabledDiv(2);
    validate_Form();//初始化表单验证

});


function disabledDiv(g){
	if(g==1){
		$("#update").hide();
		$("#save").show();
		 	
	}
	if(g==2){
		$("#update").show();
		$("#save").hide();
		 
		
		
	}
}
 
function save(){

if($('#configForm').valid()){
	AjaxRequest.submitFormForModel("configForm",null,null);
	$("#save").hide();
	$("#update").show();
	 
}else{
	$("#save").show();
	$("#update").hide();
  }
  disabledDiv(2)
  
}

/******************表单验证****************************/
function validate_Form(){
   var validateForm  = $('#configForm');
   validateForm.validate({
       errorElement: 'span', 
       errorClass: 'help-inline',
       focusInvalid: true, 
       ignore: "",
       highlight: function (element) {
       		$(element).closest('.form-group').removeClass('has-info').addClass('has-error');
       },
       unhighlight: function (element) { 
			$(element).closest('.form-group').removeClass('has-error').addClass('has-info');
       },
       success: function (label) {
           label.addClass('valid').addClass('help-inline ok').closest('.control-group').removeClass('error').addClass('success');
       },
       
       submitHandler: function (form) {
       },
       rules:{
		 
      },
      messages:{
	   	    
      },
   });		
}

</script>


<div class="row">
 <div class="col-xs-12">
		<form action="${contextPath}/config?configSystem&&reqType=1ajax=true" class="form-horizontal" role="form"  id="configForm" name="configForm">
			 
			 		 
			<div class="col-sm-2"></div>
			<div class="form-group">
				<div class="col-sm-1"></div>
				<div class="col-sm-1" id="update">
					  <button class="btn btn-purple" type="button" onclick="disabledDiv(1)">
						<i class="icon-edit bigger-120" >更新</i>
					  </button>
				</div>
				<div class="col-sm-1" id="save">
					  <button style="width: 250px" class="btn  btn-danger" type="button" onclick="save()">
						<i class="icon-edit bigger-120" >保存</i>
					  </button>
				</div>
			</div>
		</form>
	</div>
</div>




