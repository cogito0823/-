<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="dao.VoteDao"%>
<%@page import="vo.Vote"%>
<html>
  <body>
  <form action="vote.jsp" method="post"> 
  <table align="center">
  	<caption>��ӭ����ʦͶƱ<input type="submit" value="�ύͶƱ"></caption>
   <tr bgcolor="yellow">
   	<td>���</td>
   	<td>����</td>
   	<td>��Ʊ��</td>
   	<td>ͶƱ</td>
   </tr>
   <%   		
		VoteDao vdao = new VoteDao();
		ArrayList votes = vdao.getAllVotes();
		for(int i=0;i<votes.size();i++){
			Vote vote = (Vote)votes.get(i);
	%>
		<tr bgcolor="pink">
   		<td><%=vote.getTeacherno() %></td>
   		<td><%=vote.getTeachername() %></td>
   		<td><img src="img/bar.jpg" width="<%=vote.getVotenumber()%>" height="10"> <%=vote.getVotenumber()%></td>
   		<td><input name="teacherno" type="checkbox" value="<%=vote.getTeacherno()%>"></td>
   		</tr>
	<%		
		}
	%>
   </table>     
   </form>
  </body>
</html>
