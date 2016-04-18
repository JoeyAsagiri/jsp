<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Opdracht8.jsp" method="get">
		<input type="text" name="tekst_input_1"> <input type="submit"
			name="knop_1" value="Ok">
	</form>
	<%
		int getal;

		if (request.getParameter("knop_1") != null) {
			//haal de parameter(s) binnen
			String invoer = request.getParameter("tekst_input_1");
			getal = Integer.parseInt(invoer);

			for (int teller = 1; teller <= 10; teller++) {
	%>
	<%=teller%>
	x
	<%=getal%>
	=
	<%=teller * getal%>
	<br>
	<%
		}
		}
	%>
</body>
</html>