<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>成功界面</title>
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#bnt").click(function() {
			window.location.href = "show";
		});
		$("#bnt2").click(function() {
			window.location.href = "showTrolley";
		});
	});
</script>
  </head>
  
  <body>
    <p>恭喜你，添加成功！</p>
    <input type="button" id="bnt" value="跳转到首页" style="margin-left: 200px;margin-top: 100px"/>
    <input type="button" id="bnt2" value="跳转到购物车" style="margin-left: 200px;margin-top: 100px"/>
  </body>
</html>
