<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>所有考试</title>
</head>
<style type="text/css">
.container {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr;
	grid-template-rows: auto;
}

.items {
	padding: 10px; background : #ccccff;
	border-radius: 5px;
	margin: 10px;
	background: #ccccff;
}

.btn {
	color:white;
	text-decoration: none;
	cusor: pointer;
	background: #0066ff;
	border-radius: 4px;
	padding: 5px;
	border:0px;
}

.font {
	color: white;
}
</style>
</head>
	<div class="container">
		
			<c:if test="${exams==null}">
				<div>暂无考试！</div>
			</c:if>
			<c:if test="${exams!=null}" >
				<c:forEach items="${examsInfos}" var="exam" varStatus="st">
					<div class="items">
						<form>
						
						<h3>${exam.eName}</h3>
						<p>
							${exam.startTime}到${exam.endTime}
						</p>
						<p>

						</p>
						</form>
					</div>
				</c:forEach>
			</c:if>
	</div>
</body>
</html>