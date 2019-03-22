<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link
	href="${pageContext.servletContext.contextPath }/assets/css/guestbook.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<c:import url="/WEB-INF/views/includes/header.jsp" />
		<div id="content">
			<div id="guestbook" class="delete-form">
			
				<form:form method="post"
				modelAttribute="guestbookVo"
					action="${pageContext.servletContext.contextPath }/guestbook/delete">
					<input
						type='hidden' name="no" value="${no }"> 
					<label>비밀번호</label>
					<input type="password" name="password">
					 <input	type="submit" value="확인">
					 <p style="margin:0;padding:0;font-weight:bold;color:red;text-align:left;">
					<form:errors path="password"/>
					</p>
				</form:form>
				<a href="${pageContext.servletContext.contextPath }/guestbook/list">방명록 리스트</a>
			</div>
		</div>
		<c:import url="/WEB-INF/views/includes/navigation.jsp" >
			<c:param name="menu" value="guestbook"/>
		</c:import>
		<c:import url="/WEB-INF/views/includes/footer.jsp" />
	</div>
</body>
</html>