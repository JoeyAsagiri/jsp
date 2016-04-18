<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String invoer = request.getParameter("tekst_input_1");
double getal = Double.parseDouble(invoer);
%>
<h1>Conversie van Celsius naar Fahrenheit</h1>
<p><%= getal %> graden Celsius is <%= getal * 1.8 + 32 %> graden Fahrenheit
<p>Ga <a href="/Deel2/Opdracht10.jsp">terug</a> naar de hoofd pagina.</p>
</body>
</html>