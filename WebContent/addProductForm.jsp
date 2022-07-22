<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>상품 관리 입력 폼</h2>
<form method="post" action="addProduct.jsp">
	<table>
		<tr>
			<td>아이디	</td>
			<td><input type="text" name="p_id" size="11"></td>
		</tr>
		<tr>
			<td>상품명	</td>
			<td><input type="text" name="p_name" size="20"></td>
		</tr>
		<tr>
			<td>가격	</td>
			<td><input type="text" name="p_unitPrice" size="20"></td>
		</tr>
		<tr>
			<td>설명	</td>
			<td><input type="text" name="p_description" size="20"></td>
		</tr>
		<tr>
			<td>종류	</td>
			<td><input type="text" name="p_category" size="20"></td>
		</tr>
		<tr>
			<td>제조사	</td>
			<td><input type="text" name="p_manufacturer" size="20"></td>
		</tr>
		<tr>
			<td><input type="submit" value="전송"></td>
			<td><input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>