<%@ page language="java" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
  	<SCRIPT LANGUAGE="JavaScript">
  		function getStuname(){
  			var stusex = document.selectForm.stusex.value;
  			var xmlHttp;
            if(window.ActiveXObject){
//֧��-ͨ��ActiveXObject��һ����ʵ��������XMLHttpRequest����
                xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
            }//��֧��
            else if(window.XMLHttpRequest){
                xmlHttp = new XMLHttpRequest();
            }
            var url = "/servlet/ShowStudentServlet?stusex="+stusex;
            url = encodeURI(url);
            xmlHttp.open("GET", url, true);
			xmlHttp.onreadystatechange=function() {
				if (xmlHttp.readyState==4) {
                    selectForm.stuname.options.length = 0;
                    var xmlDom = (new DOMParser()).parseFromString(xmlHttp.responseText,"text/xml");
                    var stunames=xmlDom.getElementsByTagName("stuname");
                    var len = stunames.length;
                    for(var i=0;i<len;i++) {
                        var stuname = stunames[i].firstChild.nodeValue;
                        selectForm.stuname.options.add(new Option(stuname,stuname));
					}
				}
			}
			xmlHttp.send();	
  		}
	</SCRIPT>
	��ʾѧ����Ϣ<BR>
    <form name="selectForm">
    	ѧ���Ա�
    	<select name="stusex" onchange="getStuname()">
    		<option>ѡ���Ա�</option>  	
    		<option value="��">��</option>
    		<option value="Ů">Ů</option>
    	</select>
    	ѧ������:<select name="stuname">
    	</select>
    </form>
  </body>
</html>
