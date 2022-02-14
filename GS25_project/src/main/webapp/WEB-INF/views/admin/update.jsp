<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글수정</title> ​
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function() {

		$("#cancelBtn").click(function() {
			history.back();

		});

	});
</script>
</head>
<body>
	<div class="container">
		<h1>공지사항 글수정</h1>
		<form action="update.do" method="post">

			<table class="table">
				<tr>
					<th>글번호</th>
					<td><input name="no" value="${vo.no }" readonly="readonly"
						class="form-conrtol" /></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input name="title" value="${vo.title }"
						class="form-conrtol" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="5" class="form-control" name="content">${vo.content }</textarea>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input name="writer" value="${vo.writer }"
						class="form-conrtol" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<button class="btn btn-default">수정</button>
						<button class="btn btn-default" type="reset">다시입력</button>
						<button class="btn btn-default" type="button" id="cancelBtn">취소</button>
			</table>
		</form>

		​

	</div>

</body>

</html>