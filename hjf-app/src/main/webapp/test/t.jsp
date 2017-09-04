<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
      <script src="/static/logic/common/head.js"></script>
      <script src="/static/js/swiper.js"></script>
</head>
<body>
<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide">Slide 1</div>
        <div class="swiper-slide">Slide 2</div>
        <div class="swiper-slide">Slide 3</div>
    </div>
    <div class="swiper-pagination"></div>
</div>
<script language="javascript"> 
var mySwiper = new Swiper('.swiper-container',{
pagination : '.swiper-pagination',
//pagination : '#swiper-pagination1',
})
</script>
 
</body>
</html>