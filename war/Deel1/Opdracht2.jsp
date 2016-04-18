<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% int minuut = 60; %>
        <!-- html code  -->
        <table border="1">
            <thead>
                <tr>
                    <th>Eenheid</th>
                    <th>Aantal seconden</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Minuut</td>
                    <td> <%= minuut %></td>
                </tr>
                <tr>
                    <td>Uur</td>
                    <td> <%= minuut * 60 %></td>
                </tr>
                <tr>
                    <td>dag</td>
                    <td><%= minuut * 60 * 24 %></td>
                </tr>
                <tr>
                    <td>Week</td>
                    <td><%= minuut * 60 * 24 * 7 %></td>
                </tr>
                <tr>
                    <td>Jaar</td>
                    <td><%= minuut * 60 * 24 * 365 %></td>
                </tr>
            </tbody>
        </table>
</body>
</html>