<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<%@ include file="includes/headSection.jsp" %>

<title>Ideal Transformation</title>

<%--
	api key: Q735l2cPoDwhDCWXMZI9VlmVMSWFCtBgz33oyU1THMTeplLwUX
	secret: Ph964nYVLTnKXW5RNcT6SgxUAmWdMfYC7V4Ut0lFYfkMnhAtGl

 --%>
</head>
<body>
	<header>
		<%@ include file="includes/headerBanner.jsp" %>
		<%@ include file="includes/nav.jsp" %>
	</header>
	<main class="row">
		<c:forEach items="${posts}" var="post">
			<div>
				${post.dateGMT}
			</div>
		</c:forEach>
	</main>
	<%@ include file="includes/footer.jsp" %>
</body>