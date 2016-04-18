<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schaakbord</title>
</head>
<body>
<style type="text/css">
  table#schaakbord td {
      width: 30px;
      height: 30px;
  }
  
  #schaakbord td.zwart {
      background-color: black;
  }
  
  #schaakbord td.wit {
      background-color: white;
  }
  
  table#schaakbord {
      border: 1px solid black;
      border-collapse: collapse;
  }
</style>
<h3>Schaakbord</h3>
<table id="schaakbord">
    <% for (int i = 0; i < 8; i++) { %>
    <tr>
       <% for (int j = 0; j < 8; j++) { 
           if ((i + j) % 2 == 0) { %>
           	<td class="zwart"></td>
           <% } 
           else { %>
           	<td class="wit"></td>
           <% } 
    }%>
    </tr>
   <% } %>
</table>
</body>
</html>