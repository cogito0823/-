<%@ page language="java" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <body>
  	<SCRIPT LANGUAGE="JavaScript">
  		function writeArticle(){	
 	  		var xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	  		var article = postForm.article.value;
	  		var url = "/servlet/WriteArticleServlet?article=" + article;	  					    xmlHttp.open("GET", url, true);
			xmlHttp.onreadystatechange=function() {
				if (xmlHttp.readyState==4) {
					var text = xmlHttp.responseText;
					if(text=="OK"){
						postForm.article.value = "";
						articleDiv.innerHTML += (article + "<HR>");
					}
					else{
						alert("����ʧ��");
					}					
				}
			}
			xmlHttp.send();	
  		}
	</SCRIPT>
	��������(ʡ��)<HR>
	<div id="articleDiv"></div>
	<form name="postForm">
		��������:<BR>
		<textarea name="article" rows="5" cols="20"></textarea>
		<input type="button" onclick="writeArticle()" value="�ύ">
	</form>
  </body>
</html>
