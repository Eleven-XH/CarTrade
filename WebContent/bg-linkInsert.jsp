<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<script language="javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("表单信息不能为空");
return false;
}
}
}
</script><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>汽车二手市场交易系统的后台</title>
</head>
 

<html:html>
<link href="css/css.css" rel="stylesheet" type="text/css">
<body>



<jsp:include page="bg-up.jsp" flush="true"/>
<table width="788" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="170"  valign="top"><jsp:include page="bg-left.jsp" flush="true" /></td>
    <td width="618" align="center" valign="top" bgcolor="#FFFFFF"> <br>
	
        <table width="610" height="25" border="0" cellpadding="0" cellspacing="0" background="image/bg_02.jpg">
          <tr>
            <td><div align="center"><strong>添加网站信息</strong></div></td>
          </tr>
        </table>
        <br>
        <html:form action="linkAction.do?action=2" onsubmit="return checkEmpty(linkForm)">
        
   
        <table width="53%" height="60"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#CCCCCC">
          <tr>
            <td width="25%" height="30"><div align="center">网站名称</div></td>
            <td width="75%" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;
            <html:text property="linkName"></html:text>
        
            </td>
          </tr>
          <tr>
            <td height="30"><div align="center">网站地址</div></td>
            <td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;
             <html:text property="linkAddress"></html:text>
      
            </td>
          </tr>
        </table>
     <br>
     
     <input type="image" class="input1"  src="image/save.jpg" width="51" height="20">
&nbsp;&nbsp;
      <a href="#" onClick="javascript:linkForm.reset()"><img src="image/clear.gif"></a>
&nbsp;&nbsp;
      <a href="#" onClick="javasrcipt:history.go(-1)"><img src="image/back.gif"></a>
         
</html:form>


    </td>
  </tr>
</table>

<jsp:include page="bg-down.jsp" flush="true" />









</body>
</html:html>
