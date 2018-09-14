<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.util.*"%>
<%@page import="com.wy.domain.GoodsForm"%>
<jsp:useBean id="goods" scope="page" class="com.wy.dao.GoodsDao"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Shenzhen Onething Technology Co., Ltd</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css"> 
<body>
<div style="background-color:#FFFFFF;">
<table width="80%" align="center"  border="1" style="margin:auto;">
  <tr>
    <td width="100%" valign="top" bgcolor="#FFFFFF" align="center"  cellpadding="20" cellspacing="20" >
	<%
        List list=goods.selectGoodsNumber();
		int number=list.size();
		if(number>10){
		number=10;
	}%>

      <%  for(int i=0;i<number;i++){
          GoodsForm form=(GoodsForm)list.get(i);
        %>
		<table width="50%"  border="1" align="left" >
<!-- 		 bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC" -->
          <tr>
            <td rowspan="5" width="50%" height="300px" style="border:1px;">
            	<div align="left" >
                <input name="pricture<%=i%>" type="image" src="<%=form.getPriture()%>" width="300px" height="300px" style='border:none'>
            	</div>
            </td>
            <td width="50%" height="40px" style="word-break:break-all"><div style='text-align:left;font-size:20px;'><%=form.getName()%></div></td>
          </tr>
          
          <tr>
          <%if(form.getIntroduce().length()<10) {%>
            <td width="50%" height="220px" style="word-break:break-all"><div style='text-align:left;font-size:20px;width:"50%";margin-top:0px;'><%=form.getIntroduce()%></div></td>
         <%}else{ %>
         	<td width="50%" height="220px" style="word-break:break-all"><div style='text-align:left;font-size:20px;width:"50%";margin-top:0px;'><%= form.getIntroduce().substring(0, 10) %></div></td>
         <%} %>
          </tr>
          
          <tr>
            <td height="40px">  <%if(form.getId()!=null){%>
			<a href="#" style='color:red;text-align:left;font-size:16px;TEXT-DECORATION: underline;' onClick="window.open('goodsAction.do?action=16&id=<%=form.getId()%>','','width=500,height=200');">>>More</a>
            <%}else{%>
           	</td>
            <%}%>
          </tr>
		</table>
<!-- 		<table width="50%" height="30" border="0" align="left" cellpadding="0" cellspacing="0" style="background:#000000;margin:auto;"></table> -->
	<%}%>
</td>
</tr>
</table>
</div>
</body>
</html>
