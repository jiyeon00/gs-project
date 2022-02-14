<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				location.href = "/login";		    
			})
			$("#submit").on("click", function(){
				if($("#name").val()==""){
					alert("이름를 입력해주세요.");
					$("#id").focus();
					return false;
				}
				if($("#phone").val()==""){
					alert("전화번호를 입력해주세요.");
					$("#pw").focus();
					return false;
				}
				if($("#email").val()==""){
					alert("이메일을 입력해주세요.");
					$("#name").focus();
					return false;
				}
				if($("#home").val()==""){
					alert("점포명을 입력해주세요.");
					$("#phone").focus();
					return false;
				}
				if($("#homenumber").val()==""){
					alert("사업자 등록번호를 입력해주세요.");
					$("#email").focus();
					return false;
				}
			});
		})
	</script>
		
	<form action="edit.do" method="post">
		<table class="table">
			<tr>
				<th>name : </th>
				<td><input type="text" name="name" id="name" value="${memberlist.getName()}"></td>
			</tr>
			<tr>
				<th>phone : </th>
				<td><input type="text" name="phone" id="phone" value="${memberlist.getPhone()}"></td>
			</tr>
			<tr>
				<th>email : </th>
				<td><input type="text" name="email" id="email" value="${memberlist.getEmail()}"></td>
			</tr>
			<tr>
				<th>점포명 : </th>
				<td><input type="text" name="home" id="home" value="${memberlist.getHome()}"></td>
			</tr>
			<tr>
				<th>사업자등록번호 : </th>
				<td><input type="text" name="homenumber" id="homenumber" value="${memberlist.getHomenumber()}"></td>
			</tr>
		</table>
		<button class="btn btn-success" type="submit" id="submit">수정</button>
	</form>
</body>
</html>