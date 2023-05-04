<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYCGV</title>
<link rel="stylesheet" href="http://localhost:9000/mycgv/css/mycgv.css">
<script src="http://localhost:9000/mycgv/js/mycgv_javascript.js"></script>
</head>
<body>
	<!-- header -->
	<iframe src="http://localhost:9000/mycgv/header.html"
			scrolling="no" width="100%" height="149px" frameborder=0></iframe>	
	
	<!-- content -->
	<div class="content">
		<section class="board">
			<h1 class="title">게시판</h1>
			<form name="writeForm" action="#" method="get">
				<table>
					<tr>
						<th class="test">제목</th>
						<td>
							<input type="text" name="btitle" id="btitle"
								placeholder="*제목은 반드시 입력해주세요" >
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea rows="5" cols="30" name="bcontent"></textarea>
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							<input type="text" name="id" value="hong1234" disabled>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="button" class="btn_style" onclick="boardFormCheck()">등록완료</button>
							<button type="reset" class="btn_style">다시쓰기</button>
							<a href="board_list.html">
								<button type="button" class="btn_style">리스트</button></a>
							<a href="http://localhost:9000/mycgv/index.html">
								<button type="button" class="btn_style">홈으로</button></a>
						</td>				
					</tr>
				</table>
			</form>
		</section>
	</div>
	
	<!-- footer -->
	<iframe src="http://localhost:9000/mycgv/footer.html"
			scrolling="no" width="100%" height="500px" frameborder=0></iframe>	
</body>
</html>
















