<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<body>
<script type="text/javascript">
 function filter(strTemp) { 
   strTemp = strTemp.replace(/<|>/g,""); 
   return strTemp;
}
function send(){
	document.queryForm.flower.value = filter(document.queryForm.flower.value);
    document.queryForm.submit();
}
</script>
��ӭ��ѯ�ʻ�
<form name="queryForm" action="filter1.jsp" method="post">
	���������ʻ�����Ϣ��<BR>
	<input name="flower" type="text" size="50">
	<input type="button" value="��ѯ" onClick="send()">	
</form>
<HR>
�ύ���ʻ���
<%
	String flower = request.getParameter("flower");
	if(flower!=null){
		out.println(flower);
	}
 %>
 </body>
</html>


