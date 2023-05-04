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
			<h1 class="title">관리자 - 공지사항</h1>
			<form name="updateForm" action="#" method="get">
				<table>
					<tr>
						<th>제목</th>
						<td>
							<input type="text" name="ntitle" value="CGV 공지사항 입니다.">
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea name="ncontent">2023년 4월 기준 전체 시스템 점검 예정입니다.참고해주세요.</textarea>
						</td>
					</tr>					
					<tr>
						<td colspan="2">
							<button type="button">수정완료</button>
							<button type="reset">다시쓰기</button>
							<a href="admin_notice_content.html">
								<button type="button">이전페이지</button></a>
							<a href="admin_notice_list.html">
								<button type="button">리스트</button></a>							
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
















