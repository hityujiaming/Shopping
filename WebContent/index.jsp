<%@ page contentType="text/html; charset=utf-8" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.wy.domain.GoodsForm" %>
<jsp:useBean id="newGood" scope="page" class="com.wy.dao.GoodsDao"/>
<%-- <%List nowList =newGood.selectMark(Integer.valueOf("0"));%> --%>
<%-- <%List freeList =newGood.selectMark(Integer.valueOf("1"));%> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Shenzhen Onething Technology Co., Ltd</title>
<!-- 深圳市望信科技有限公司 -->

<link rel="icon" href="favicon.ico?v000020" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico?v000020" type="image/x-icon" />
<link rel="stylesheet" href="css_2/base.css?v000020" type="text/css" media="screen" />
<link rel="stylesheet" href="css_2/index.css?12v000020" type="text/css" media="screen" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" src="js/common.js?v000020"></script> 
<script type="text/javascript" src="js/index.js?v000020"></script> 
<!--[if lt IE 7]>
<link rel="stylesheet" href="css_2/ie6.css?v000020" type="text/css" media="screen" />
<script type="text/javascript" src="js/ie6.js?v000020"></script> 
<![endif]-->

<style>
#grad1 {
    height: 10px;
    background: -webkit-linear-gradient(#E0E0E0, #F0F0F0); /* Safari 5.1 - 6.0 */
    background: -o-linear-gradient(#E0E0E0, #F0F0F0); /* Opera 11.1 - 12.0 */
    background: -moz-linear-gradient(#E0E0E0, #F0F0F0); /* Firefox 3.6 - 15 */
    background: linear-gradient(#E0E0E0, #F0F0F0); /* 标准的语法（必须放在最后） */
}
</style>

</head>
 <link href="css/css.css" rel="stylesheet" type="text/css"> 
<body>

<jsp:include page="fg-top.jsp" flush="true"/>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
  <td width="100%" valign="top" bgcolor="#FFFFFF">
<!-- 主窗口     -->
 <div class="pub_c">
   <div class="m_banner">
    <div class="banner b1" style=" background-image:url(images_2/banner_1.jpg);" id="banner1">
      <div class="main_c pr"> <a href="#"  title="" class="start_btn"></a> </div>
    </div>
    <div class="banner b5" style=" background-image:url(images_2/banner_2.jpg);display:none;" id="banner5">
    	<div class="main_c"> <a href="#" target="_blank" title="" class="l1"></a>
    	<div class="countdown">
        	<span class="num_1 fsm">0</span>
            <span class="num_2 fsm">0</span>
        </div>
    		
    	 </div>
    </div>
    <div class="banner b2" style=" background-image:url(images_2/banner_3.jpg);display:none;" id="banner2">
      <div class="main_c pr">
        <p>更多新功能介绍及教程请 <a href="#" target="_blank" title="">点击此处</a> 或咨询 <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456&site=qq&menu=yes" title="">客服QQ</a> / <a target="_blank" href="http://crm2.qq.com/page/portalpage/wpa.php?uin=123456&f=1&ty=1&aty=0&a=&from=6" title="">商务QQ</a></p>
      </div>
    </div>
    <div class="banner b3" style=" background-image:url(images_2/banner_4.jpg);display:none;" id="banner3"> </div>
    <div class="banner b4" style=" background-image:url(images_2/banner_5.jpg);display:none;" id="banner4">
<!--       <div class="main_c pr"> <a href="#" title="" class="start_btn">查看详情</a> </div> -->
    </div>
    <div class="banner_ctrl"> <a href="#" class="prev" title=""></a> <a href="javascript:;" class="next" title=""></a> </div>
  </div>
  </div>
	</td>
  </tr>
</table>
<!-- 留白 -->
<table width="100%" height="60" border="0" align="center" cellpadding="0" cellspacing="0" style="background:#FFFFFF"></table>
<!-- 渐变 -->
<div id="grad1"  ></div>
<!-- about us -->
<table width="100%"  border="0" cellpadding="0" cellspacing="0" style="background:#F0F0F0">
  <tr><td colspan="2"><div style='text-align:center;font-size:30px;color:red;line-height:220%;font-family:NSimSun'>ABOUT US</div></td></tr>
  
  <tr>
  	<td width="50%">
  		<div style='text-align:right;font-size:16px;color:#ADADAD;line-height:220%;font-family:NSimSun'>ONETHINGCAM |</div>
  	</td>
  	<td>
  		<div style='text-align:left;font-size:8px;color:#ADADAD;line-height:110%;font-family:NSimSun'>&nbsp;  FOCUS ON</div>
  		<div style='text-align:left;font-size:8px;color:#ADADAD;line-height:110%;font-family:NSimSun'>&nbsp;  AAA BBB</div>
  	</td>
  </tr>
  
  <tr>
<!--     <td width="198" align="center"><a href="bg-land.jsp" class="a5">进入后台</a></td> -->
	<td colspan="2" width=100% style='font-size:16px;line-height:150%;text-align:left;font-family:NSimSun'>     
		<div style="width:80%; margin:0 auto;">
		<p style='color:#000000;text-align:center;font-size:20px;'>ONETHINGCAM is the Chinese specialized equipment provider of Police Forces 
			and the professional security guard solutions.
		</p>
		<p style='color:#000000;text-align:center;font-size:20px;'>Our product rage including common body worn cameras and docking station system, two way radio and communication system , 
			CCTV camera and system, anti-knife vest, gloves, power flashlight, guards room data station, ETC.
		</p>
		<p style='color:#000000;text-align:center;font-size:20px;'>We are committed to highest level of hardware solutions of police and guards for manufactures. 
		<a href="index.jsp" style='color:red;text-align:center;font-size:20px;TEXT-DECORATION: underline;'>More</a></p>
		
		<br>
		</div>
	</td>	
  </tr>
</table>
<!-- 留白 -->
<table width="100%" height="60" border="0" align="center" cellpadding="0" cellspacing="0" style="background:#FFFFFF"></table>

<jsp:include page="bg-productsList.jsp" flush="true"/>
<%-- <jsp:include page="bg-land.jsp" flush="true"/> --%>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>

</html>
