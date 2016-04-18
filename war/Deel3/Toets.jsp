<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="toets.Auto"%>
<%@ page import="toets.AutoLijst"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<title>Auto Webshop</title>
</head>
<body>
	<%
		int tel = 0;
	    int teller = 3;
		int min = 458;
		int max = 350501;
		
		if(request.getParameter("prijsmin") != null) {
			min = Integer.parseInt(request.getParameter("prijsmin"));
		}
		
		if(request.getParameter("prijsmax") != null) {
			max = Integer.parseInt(request.getParameter("prijsmax"));
		}
		
		AutoLijst al = new AutoLijst();
		ArrayList<Auto> autolijst = al.getLijst();
		ArrayList<Auto> selectie = new ArrayList<Auto>();
		ArrayList<String> merken = al.getMerken();
	%>
	<form action="">
	<label>min prijs</label>
	<input id="minprijsvak" type="text" name="prijsmin" value="<%=min%>">
	<br>
	<label>max prijs</label>
	<input id="maxprijsvak" type="text" name="prijsmax" value="<%=max%>">
	<br>
	<input id="knop" type="submit" name="knop" value="OK">
	<select name="merk">
		<option value="Alle merken">Alle Merken</option>
		<%
			for (String m : merken) {
		%>
		<option value="<%=m%>">
			<%=m%></option>
		<%
			}
		%>
	</select>
	</form>
	
	<div class="container">
	<%
		if (request.getParameter("knop") == null) {
			for (Auto auto : autolijst) {
				String autoprijs = auto.getPrijsFormat();
	%>
	<div class="auto">
	<p>
		&nbsp;&nbsp;&nbsp; 
		<%=auto.getMerk()%>
		<%=auto.getType()%>
		&nbsp;&nbsp;&nbsp; 
		<%=autoprijs%>
	</p>
		<img src=<%=auto.getFoto() %> alt="Car">
		</div>
		<% 	
		}
		}
	%>
	<%
		if (request.getParameter("knop") != null) {
			String m = request.getParameter("merk");
			String getalmin = request.getParameter("prijsmin");
			String getalmax = request.getParameter("prijsmax");
			min = Integer.parseInt(getalmin);
			max = Integer.parseInt(getalmax);

			if (m.equals("Alle merken")) {
				for (Auto auto : autolijst) {
					if (auto.getPrijs() > min && auto.getPrijs() < max) {
						String autoprijs = auto.getPrijsFormat();
	%>
	<div class="auto">
	<p>
		&nbsp;&nbsp;&nbsp; 
		<%=auto.getMerk()%>
		<%=auto.getType()%>
		&nbsp;&nbsp;&nbsp; 	
		<%=autoprijs%>
	</p>
		<img src=<%=auto.getFoto() %> alt="Car">
		</div>
		<% 
		}
				}
			}
			for (Auto auto : autolijst) {
				if (auto.getMerk().equals(m)) {
					if (auto.getPrijs() > min && auto.getPrijs() < max) {
						String autoprijs = auto.getPrijsFormat();
	%>
	<div class="auto">
	<p>
		&nbsp;&nbsp;&nbsp; 
		<%=auto.getMerk()%>
		<%=auto.getType()%>  
		&nbsp;&nbsp;&nbsp;        
		<%=autoprijs%>
	</p>
		<img src=<%=auto.getFoto() %> alt="Car">
		</div>
		<% 
					}
				}
			}
		}
	%>
		</div>
</body>
</html>