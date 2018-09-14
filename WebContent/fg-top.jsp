<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.wy.domain.MemberForm"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <meta name="viewport"
          content=" height = device-height,
                    width = device-width,
                    initial-scale = 1.0,
                    minimum-scale = 1.0,
                    maximum-scale = 1.0,
                    user-scalable = no"/>
    <link rel="stylesheet" href="css/css-daohang.css"/>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/js.js"></script>
    
<title>无标题文档</title>
</head>
<%
  String memberlink="connection.jsp";
  String orderlink="connection.jsp";
  String shoppinglink="connection.jsp";
  MemberForm form=null;
  if(session.getAttribute("form")!=null){
  form=(MemberForm)session.getAttribute("form");
  memberlink="memberAction.do?action=5&id="+form.getId();
  orderlink="cart_detail.jsp";
  shoppinglink="cart_see.jsp";
  }
%>
<body>
<table width="100%" height="26" border="0" align="center" cellpadding="0" cellspacing="0" style="background:#E0E0E0">
 <tr>
    <td width="100%"><font color="#000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome to visit Shenzhen Onething Technology Co., Ltd</font></td>
<!--     欢迎您访问深圳市望信科技有限公司官网 -->
    <td width="139" valign="top">
	    <table width="125" border="0" cellpadding="0" cellspacing="0">
	      <tr>
<!-- 	        <td width="70" height="23" valign="bottom"><font color="#000000"><a href="#" class="a4" style='text-decoration:none'>简体中文</a></font></td> -->
	        <td width="55" valign="bottom"><font color="#000000"><a href="#" class="a4" style='text-decoration:none'>English</a></font></td>
	      </tr>
	    </table>
    </td>
  </tr>
</table>
<table width="100%" height="80" border="0" align="center" cellpadding="0" cellspacing="0" style="background:#FFFFFF">
	<tr>
		<td width="5%" ></td>
		<td background="image/fg_top_logo.jpg" style="background-repeat:no-repeat;">	</td>
		<td  style='font-size:14px;color:#585858;line-height:150%;text-align:right'>
<!-- 			<font style='text-align:center;font-size:14px;'>Tel:</font>  +86-755-21043953 -->
<!-- 		<br> -->
<!-- 			<font style='text-align:center;font-size:14px;'>Fax:</font>+86-755-21043953 -->
<!-- 		<br> -->
<!-- 			<font style='text-align:center;font-size:14px;'>E-mail:</font> sales@onethingcam.com -->
<!-- <div class="find_nav"> -->
			    <div class="find_nav_left">
			        <div class="find_nav_list">
			            <ul>
			                <li class="find_nav_cur"><a href="index.jsp">Home</a></li>
			                <li><a href="bg-product-main.jsp">Product</a></li>
			                <li><a href="javascript:void(0)">Service And Support</a></li>
			                <li><a href="javascript:void(0)">Blog</a></li>
			                <li><a href="javascript:void(0)">Contact With Us</a></li>
			                <li><a href="javascript:void(0)">About Us</a></li>
			                <li class="sideline"></li>
			            </ul>
			        </div>
			    </div>
<!-- 			    </div> -->
		</td>
	</tr>
</table>
<!-- <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC" background="image/fg_top03.jpg"> -->
<!--       <tr align="center"> -->
<!--         <td width="10%" height="31" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="index.jsp" class="a4" style='text-decoration:none'><font size="4">Home</font></a></td> -->
<!--         <td width="10%" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="bg-resultTen.jsp" class="a4" style='text-decoration:none'><font size="4">About us</font></a></td> -->
<!--         <td width="10%" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="goodsAction.do?action=14&mark=0" class="a4" style='text-decoration:none'><font size="4">Product</font></a></td> -->
<!--         <td width="10%" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="goodsAction.do?action=15&mark=1" class="a4" style='text-decoration:none'><font size="4">Contact us</font></a></td> -->
<!--         <td width="60"></td> -->
<%--         <td width="10%" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="<%=orderlink%>" class="a4">查看订单</a></td> --%>
<%--         <td width="10%" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="<%=shoppinglink%>" class="a4">购物车</a></td> --%>
<%--         <td width="10%" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="<%=memberlink%>" class="a4">会员修改</a></td> --%>
<!--         <td width="10%" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="#" onclick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://www.mingrisoft.com')" class="a4">设为首页</a></td> -->
<!--       </tr>	 -->
<!-- </table> -->
<!-- <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0"> -->
<!--   <tr> -->
<!--     <td><img src="image/fg_top05.jpg" width="100%" height="117"></td> -->
<!--   </tr> -->
<!-- </table> -->
</body>
</html>
