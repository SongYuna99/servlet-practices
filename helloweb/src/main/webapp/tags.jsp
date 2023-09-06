<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>h1 tag</h1>
	<h2>h2 tag</h2>
	<h3>h3 tag</h3>
	<h4>h4 tag</h4>
	<h5>h5 tag</h5>
	<h6>h6 tag</h6>
	<!-- <h7>h7 tag</h7> -->

	<table border="1px" cellspacing="0" cellpadding="10px">
		<tr>
			<th>글 번호</th>
			<th>글 제목</th>
			<th>작성자</th>
		</tr>
		<tr>
			<td>1</td>
			<td>안녕</td>
			<td>둘리</td>
		</tr>
		<tr>
			<td>2</td>
			<td>안녕~</td>
			<td>마이콜</td>
		</tr>
	</table>

	<img src="/helloweb/assets/images/coco.jpg" style="width: 30%" />
	<img src="./assets/images/coco.jpg" style="width: 30%" />
	<img
		src="https://t1.daumcdn.net/daumtop_chanel/op/20200723055344399.png"
		style="width: 30%" />

	<p> 문장입니다 1 <br>
		문장입니다 2<br> 
		문장입니다 3
	</p>
	
	<a href="/helloweb/hello?name=dooly">hello로 가기</a>
	<br>
	<a href="form.jsp">form으로 가기</a>

</body>
</html>