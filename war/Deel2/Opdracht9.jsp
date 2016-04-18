<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Opdracht9.jsp" method="get">
	<input type="text" name="tekst_input_1"> 
	<input type="submit" name="knop_1" value="Ok">
	</form>
	<%
		int getal;

		if (request.getParameter("knop_1") != null) {
			//haal de parameter(s) binnen
			String invoer = request.getParameter("tekst_input_1");
			getal = Integer.parseInt(invoer);
		if (request.getParameter("knop_2") != null) {
				getal = getal - 1;
		}
		if (request.getParameter("knop_3") != null) {
				getal = getal + 1;
		}	

			for (int teller = 1; teller <= 10; teller++) {	%>
	<%=teller%>	x	<%=getal%>	=	<%=teller * getal%>	<br>
<% }
		
		
%>
<form action="Opdracht9.jsp" method="get">
    <input type="submit" name="knop_2" value="Vorige">
    <input type="hidden" name="tekst_input_1" value="<%=getal%>">
    <input type="hidden" name="knop_1" value="Ok">
</form>
<form action="Opdracht9.jsp" method="get">
    <input type="submit" name="knop_3" value="Volgende">
    <input type="hidden" name="tekst_input_1" value="<%=getal%>">
    <input type="hidden" name="knop_1" value="Ok">
</form>
<% }
%>
</body>
</html>