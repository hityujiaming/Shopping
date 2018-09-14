<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.util.*"%>
<%@page import="com.wy.domain.GoodsForm"%>
<jsp:useBean id="goods" scope="page" class="com.wy.dao.GoodsDao"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>电子商城</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css"> 
<body>
<jsp:include page="fg-top.jsp" flush="true"/>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="207" valign="top" bgcolor="#F5F5F5">
    <jsp:include page="fg-left-class.jsp" flush="true"/>
    </td>

    <td  width="400" border="1" bgcolor="#FFFFFF" align="center">
    	<jsp:include page="bg-right-pic.jsp" flush="true"/>
    <!--右侧01-->	
	</td>
  </tr>
</table>

<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
