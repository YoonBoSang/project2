<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>


	<div class="container-lg">
		<h2>메이트구하기</h2>
		<!-- 새로 작성된 코드, 변경된 코드  -->
		<!-- table.table>thead>tr>th*4^^tbody -->
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>제목</i></th>
					<th>작성자</th>
					<th>작성일자</th>
				</tr>
			</thead>
			<tbody>
			<!-- mateList를 받았다.  -->
				<c:forEach items="${climbingMateList }" var="board">
					<tr>
						<td>${board.id }</td>
						<td><a href="/climbing/mateId/${board.id }"> ${board.title }</a>
						<td>${board.writer }</td>
						<td>${board.inserted }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
		<div class="container-lg">
		<h2>오늘의 등산</h2>
		<!-- 새로 작성된 코드, 변경된 코드  -->
		<!-- table.table>thead>tr>th*4^^tbody -->
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>제목</i></th>
					<th>작성자</th>
					<th>작성일자</th>
				</tr>
			</thead>
			<tbody>
			<!-- todayList를 받았다.  -->
				<c:forEach items="${climbingTodayList }" var="board">
					<tr>
						<td>${board.id }</td>
						<td><a href="/climbing/todayId/${board.id }"> ${board.title }</a>
						<td>${board.writer }</td>
						<td>${board.inserted }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

		<div class="container-lg">
		<h2>추천 코스</h2>
		<!-- 새로 작성된 코드, 변경된 코드  -->
		<!-- table.table>thead>tr>th*4^^tbody -->
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>제목</i></th>
					<th>작성자</th>
					<th>작성일자</th>
				</tr>
			</thead>
			<tbody>
			<!-- courseList를 받았다.  -->
				<c:forEach items="${climbingCourseList }" var="board">
					<tr>
						<td>${board.id }</td>
						<td><a href="/climbing/courseId/${board.id }"> ${board.title }</a>
						<td>${board.writer }</td>
						<td>${board.inserted }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

<div class="container-lg">
		<div class="row">
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">

					<!-- 이전 버튼 -->
					<c:if test="${pageInfo.currentPageNum gt 1 }">
						<my:pageItem pageNum="${pageInfo.currentPageNum - 1 }">
							<i class="fa-solid fa-angle-left"></i>
						</my:pageItem>
					</c:if>

					<c:forEach begin="${pageInfo.leftPageNum }" end="${pageInfo.rightPageNum }" var="pageNum">
						<my:pageItem pageNum="${pageNum }">
							${pageNum }
						</my:pageItem>
					</c:forEach>

					<!-- 다음 버튼 -->
					<c:if test="${pageInfo.currentPageNum lt pageInfo.lastPageNum }">
						<%-- 페이지 번호 : ${pageInfo.currentPageNum + 1 } --%>
						<my:pageItem pageNum="${pageInfo.currentPageNum + 1 }">
							<i class="fa-solid fa-angle-right"></i>
						</my:pageItem>
					
					</c:if>

				</ul>
			</nav>
		</div>
	</div>


</body>
</html>