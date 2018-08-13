<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
  <title>Welcome to RQE System (Route Quality Evaluation)</title>
  
  <script type="text/javascript">
	$(function(){
		$('#login .text').focusin(function(){
			$(this).addClass('active');
		}).focusout(function(){
			$(this).removeClass('active');
		});
	});
  </script>
 
 <body style="background:#dce1e9 url(./images/login/bg_body.gif) center 0 no-repeat;">
	<!-- #login -->
	<div id="login">
		<ul>
			<li><label for="userId">ID</label> <input type="text" id="userId" class="text" /></li>
			<li><label for="userPw">PASSWORD</label> <input type="password" id="userPw" class="text" /></li>
			<li class="btn"><a href="views/home.do"><img src="./images/login/btn_login.gif" alt="로그인" /></a></li>
		</ul>
	</div>
	<!-- /#login -->
 </body>
</html>
