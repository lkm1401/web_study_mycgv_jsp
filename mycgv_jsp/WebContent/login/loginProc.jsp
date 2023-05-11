<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.mycgv_jsp.vo.MemberVo" %>
<%@ page import = "com.mycgv_jsp.dao.MemberDao" %>

<jsp:useBean id="memberVo" class="com.mycgv_jsp.vo.MemberVo" />
<jsp:setProperty property="*" name="memberVo"/>

<%
	MemberDao memberDao = new MemberDao();
	int result = memberDao.loginCheck(memberVo);
	if(result == 1){
		response.sendRedirect("http://localhost:9000/mycgv_jsp/index.jsp");
	}else{
		//로그인 실패
	}
%>