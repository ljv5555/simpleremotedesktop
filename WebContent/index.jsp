<%@page import="java.awt.Toolkit"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.Rectangle"%>
<%@page import="java.awt.DisplayMode"%>
<%@page import="java.awt.Robot"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>rdp</title>
<style>
.pre1{
padding:1em;margin:1em;font-family:arial,helvetica;background:yellow;color:blue;
}
</style>
</head>
<body>
<% String bc = "--- --- --- bc --- --- ---\r\n"; %>
<% 
Robot r = new Robot();
/*
Rectangle r = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
*/
BufferedImage bi = r.createScreenCapture(new Rectangle(Toolkit.getDefaultToolkit().getScreenSize()));
%>
<pre class="pre1"><%=bc %></pre>
</body>
</html>