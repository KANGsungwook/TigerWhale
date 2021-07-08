<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
	<title>Document</title>
	<style>
		.titlebox {
	width: 250px;
	text-align: center;
	height: 40px;
	line-height: 40px;
	margin: 70px auto;
	border-top: 1px solid #E1E1E1;
	border-bottom: 1px solid #E1E1E1;
}

.t-control .t-title {
	width: 100px;
	min-width: 100px; /*화면줄었을때 최소크기*/
	vertical-align: middle; /*테이블에서 세로 가운대정렬*/
}

/*input 요소의 넓이만 선택*/
.t-control input {
	width: 200px;
	display: inline; /*인라인요소로 변경한다*/
}

/*개발자 도구에서 input-sm의 정렬을 푼다*/
.t-control .input-sm {
	height: auto;
	line-height: normal;
}
/*td의 아래만 밑줄*/
.t-control td {
	border-bottom: 1px solid #E1E1E1;
}

.titlefoot {
	text-align: center;
	margin: 30px auto; /*박스의 가운데정렬*/
	width: 50%; /*크기 50%*/
}
/*==========자게 상세보기==========*/
.write-wrap {
	margin: 0 auto;
	/*가운대 정렬방법 하지만 적용되지 않는다. 이유는 col클래스들이 float:left를 들고 있기 때문*/
	float: none; /*플롯을 해제한다. 가운대정렬이 들어간다*/
}
	</style>
</head>
<body>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 write-wrap">
					<div class="titlebox">
						<p>상세보기</p>
					</div>
	
					<form action="freeModify" method="post">
						<div>
							<label>DATE</label>
							<p>
								<fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd" />
							</p>
						</div>
						<div class="form-group">
							<label>번호</label> <input class="form-control" name='bno' value='${vo.bno}' readonly>
						</div>
						<div class="form-group">
							<label>작성자</label> <input class="form-control" name='writer' value='${vo.writer}' readonly>
						</div>
						<div class="form-group">
							<label>제목</label> <input class="form-control" name='title' value='${vo.title}' readonly>
						</div>
	
						<div class="form-group">
							<label>내용</label>
							<textarea class="form-control" rows="10" name='content' readonly>${vo.content}</textarea>
						</div>
						<c:if test="${sessionScope.userVO != null}">
							<button type="submit" class="btn btn-primary">변경</button>
						</c:if>
						<button type="button" class="btn btn-dark" onclick="location.href='freeList'">목록</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	
</body>
</html>