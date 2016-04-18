<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vermenigvuldigingstabel</title>
</head>
<body>
	<%
		String cellen = "";
		for (int rij = 1; rij <= 10; rij++) {
			cellen += "<tr>";
			for (int kolom = 1; kolom <= 10; kolom++) {
				if (rij == 1 || kolom == 1) {
					cellen += "<th>" + (rij * kolom) + "</th>";
				} else {
					cellen += "<td>" + (rij * kolom) + "</td>";
				}
			}
			cellen += "</tr>";
		}
	%>
	<h1>Vermenigvuldigingstabel</h1>
	<table border="1">
		<%=cellen%>
	</table>
</body>
</html>
