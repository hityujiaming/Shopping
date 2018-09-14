<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1">
<title>jQuery适合做产品详细参数展示的多图片切换代码 - 代码笔记 www.198zone.com</title>
<link href="css/www.198zone.com.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script> 
<script src="js/www.198zone.com.js"></script>
<script>
var photonum=8;
var maxphoto=14;
var headid=1; 
var endid = 15;
var movel=0;
var mover=0;
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body onload="initPhoto(photonum)">
<script type="text/javascript" src="http://www.198zone.com/demo/globalmenu/index.js"></script>
    <div class="mybox">
    
    <div class="photo_area">
 	<div class="l"><a href="#"><img src="image/pshow_05.jpg"  id="go_per" title="1"   /></a>&nbsp;</div>
    
    <div class="m">
   	    <div id='p_1' ><a href="http://www.198zone.com"><img src='image/A19B01C02D01_L_1.jpg'  /></a></div>  
		<div id='p_2' style='display:none;'><a href="http://www.198zone.com"><img src='image/A19B01C02D01_L_2.jpg'  /></a></div>  
		<div id='p_3' style='display:none;'><a href="http://www.198zone.com"><img src='image/A19B01C02D01_L_3.jpg'  /></a></div>  
		<div id='p_4' style='display:none;'><a href="http://www.198zone.com"><img src='image/A19B01C02D01_L_4.jpg'  /></a></div>  
		<div id='p_5' style='display:none;'><a href="http://www.198zone.com"><img src='image/A19B01C02D01_L_5.jpg'  /></a></div> 
		 <div id='p_6' style='display:none;'><a href="http://www.198zone.com">><img src='image/A19B01C02D01_L_6.jpg'  /></a></div>  
		 <div id='p_7' style='display:none;'><a href="http://www.198zone.com"><img src='image/A19B01C02D01_L_7.jpg'  /></a></div>  
		 <div id='p_8' style='display:none;'><a href="http://www.198zone.com"><img src='image/A19B01C02D01_L_8.jpg'  /></a></div>
    </div>
    <div class="r"><a href="#"><img src="image/pshow_03.jpg" id="go_nex" title="2" /></a> &nbsp;</div>
</div>
<div class="photo_ctrl clear" style="text-align:center; height: 60px;" >

   <div class="m" id="m_area"  >
  	<ul>
      <li class='photo_border1' id='l_1'><a href='#' id='_1' name='1'> <span>&nbsp;</span><img src='image/A19B01C02D01_S_1.gif'  /></a></li> 
	  <li class='photo_border1' id='l_2'><a href='#' id='_2' name='2'><span>&nbsp;</span><img src='image/A19B01C02D01_S_2.gif'  /></a></li> 		<li class='photo_border1' id='l_3'><a href='#' id='_3' name='3'><span>&nbsp;</span><img src='image/A19B01C02D01_S_3.gif'  /></a></li> 
	  <li class='photo_border1' id='l_4'><a href='#' id='_4' name='4'><span>&nbsp;</span><img src='image/A19B01C02D01_S_4.gif'  /></a></li> 	  <li class='photo_border1' id='l_5'><a href='#' id='_5' name='5'><span>&nbsp;</span><img src='image/A19B01C02D01_S_5.gif'  /></a></li> 
	  <li class='photo_border1' id='l_6'><a href='#' id='_6' name='6'><span>&nbsp;</span><img src='image/A19B01C02D01_S_6.gif'  /></a></li>      <li class='photo_border1' id='l_7'><a href='#' id='_7' name='7'><span>&nbsp;</span><img src='image/A19B01C02D01_S_7.gif'  /></a></li> 
	  <li class='photo_border1' id='l_8'><a href='#' id='_8' name='8'><span>&nbsp;</span><img src='image/A19B01C02D01_S_8.gif'  /></a></li>

    </ul>
    </div>
</div>  

</div>
 


<!--以下无正文 转载或者使用请注释出自代码笔记 www.198zone.com-->
 <div style="width:960px;margin:10px auto; clear:both; text-align:center;  ">
<script src="/statics/js/ad/96090.js" type="text/javascript"></script>
</div>
<div style="width:960px;margin:20px auto; clear:both; text-align:center; font-size:12px; line-height:25px;    ">
<p>适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗.</p>
<a href="http://www.198zone.com"  style="color:#333"><strong>代码笔记整理</strong></a> </strong>
 转载请自觉注明出处！注：此代码仅供学习交流，请勿用于商业用途。
<br>
关注更多代码笔记更新 请加入代码笔记交流群 ： <strong>8019996</strong> <a target="_blank" href="http://wp.qq.com/wpa/qunwpa?idkey=f19215a1ef0ab2c1d1c163df664fa1bf875bb0f30042403192309b5e0a2c22de"><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="代码笔记资源分享群①" title="代码笔记资源分享群①"></a> <a style="list-style:none" href="http://www.198zone.com/helpweb/2013045.html" target="_blank"><strong>( 查看更多代码笔记QQ群 )</strong></a>
<script src="/statics/js/inc_share.js"  type="text/javascript"></script>
<script src="/statics/js/inc_statistics.js"  type="text/javascript"></script>
<script src="/statics/js/inc_monitor.js"  type="text/javascript"></script> 
</div>
<!--以上无正文 转载或者使用请注释出自代.码.笔.记 www.198zone.com-->
</body>
</html>
