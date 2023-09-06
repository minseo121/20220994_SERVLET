<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %> 
<%@ 와이러노 %> 
<%
    HelloWorld h = new HelloWorld();
%>
<html>
<body>
    message = <%=h.hello() %>
</body>	
</html>
