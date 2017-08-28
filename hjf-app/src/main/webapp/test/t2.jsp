<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 个人资料页面 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="/static/logic/common/head.js"></script>
</head>
<body>
<div id="app_v" >
	<form action="/account?update" name="dataForm"  id="dataForm" >
	    <a  v-on="click:chooseFile"  >上传onClick</a>
    </form>
    
    
</div>
<div id="example-2">
  <!-- `greet` 是在下面定义的方法名 -->
  <button v-on:click="greet">Greet</button>
</div>

 <script type="text/javascript">
 
 var example2 = new Vue({
	  el: '#example-2',
	  data: {
	    name: 'Vue.js'
	  },
	  // 在 `methods` 对象中定义方法
	  methods: {
	    greet: function (event) {
	      // `this` 在方法里指当前 Vue 实例
	      alert('Hello ' + this.name + '!')
	      // `event` 是原生 DOM 事件
	      if (event) {
	        alert(event.target.tagName)
	      }
	    }
	  }
	})
 
 
 
 </script>














<script>
   
</script>
</body>
</html>