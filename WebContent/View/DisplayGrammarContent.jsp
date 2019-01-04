<%@page import="BEAN.Grammar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<%Grammar l=(Grammar)request.getAttribute("displaygrammarcontent"); %>
				<%=l.getGrammarcontent() %>
</body>
</html>