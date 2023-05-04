<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYCGV</title>
<link rel="stylesheet" href="http://localhost:9000/mycgv/css/mycgv.css">
</head>
<body>
	<!-- header -->
	<iframe src="http://localhost:9000/mycgv/header.html"
			scrolling="no" width="100%" height="149px" frameborder=0></iframe>	
	
	<!-- content -->
	<div class="content">
		<section class="board">
			<h1 class="title">게시판</h1>
			<form name="deleteForm" action="#" method="get">
				<table>
					<tr>
						<td><img src="http://localhost:9000/mycgv/images/trash.jpg"></td>
					</tr>
					<tr>					
						<td>정말로 삭제 하시겠습니까?</td>
					</tr>				
					<tr>
						<td colspan="2">
							<button type="button" class="btn_style">삭제완료</button>
							<a href="board_content.html">
								<button type="button" class="btn_style">이전페이지</button></a>
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
















