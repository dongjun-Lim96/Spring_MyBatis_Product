<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function insert() {
		location.href='registerForm.mb';
	}
</script>
</head>
<%@ include file="../common/common.jsp" %> 
<body align="center">
	<h2 align="center">맴버 리스트</h2>
	
	<form action="list.mb">
		<select name="colname">
			<option value="">전체검색
			<option value="name">이름
			<option value="gender">성별
		</select>
		
		<input type="text" name="keyword">
		<input type="submit" value="검색">
	</form>
	
	<table border="1" align="center">
		<tr>
			<td align="right" colspan="9">
				<input type="button" value="추가하기" onclick="insert()">
			</td>
		</tr>
		 
		<tr>
			<td>ID</td>
			<td>이름</td>
			<td>비번</td>
			<td>성별</td>
			<td>취미</td>
			<td>주소</td>
			<td>포인트</td>
			<td>삭제</td>
			<td>수정</td>
		</tr>
		
			<c:forEach var="lists" items="${lists}">
				<tr>
					<td>${lists.id}</td>
					<td><a href="">${lists.name}</a></td>
					<td>${lists.password}</td>
					<td>${lists.gender}</td>
					<td>${lists.hobby}</td>
					<td>${lists.address1} ${lists.address2}</td>
					<td>${lists.mpoint}</td>
					<td><a href="delete.mb?id=${lists.id}&pageNumber=${pageInfo.pageNumber}">삭제</a></td>
					<td><a href="update.mb?id=${lists.id}&pageNumber=${pageInfo.pageNumber}">수정</a></td>
				</tr>
			</c:forEach>
	</table>
	${pageInfo.pagingHtml} 
</body>
</html>