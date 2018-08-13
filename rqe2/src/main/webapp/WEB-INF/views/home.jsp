<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
 <head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <title>Welcome to RQE System (Route Quality Evaluation)</title>
  <link rel="stylesheet" type="text/css" href="../css/import.css" />
  <script type="text/javascript" src="../js/jquery-2.2.4.min.js"></script>
  <script type="text/javascript" src="../js/style.js"></script>
   <!-- fullcalendar css -->
<!--    <link rel="stylesheet" type="text/css" href="../css/fullcalendar.min.css" /> -->
   <link rel="stylesheet" type="text/css" href="../css/fullcalendar.css" />
<!--    <link rel="stylesheet" type="text/css" href="../css/fullcalendar.print.min.css" /> -->
   <!-- fullcalendar js-->
  <script type="text/javascript" src="../js/moment.min.js"></script>
  <script type="text/javascript" src="../js/fullcalendar.js"></script>
<!--   <script type="text/javascript" src="../js/fullcalendar.min.js"></script> -->
  <script type="text/javascript" src="../js/ko.js"></script>


  
 </head>

 <body>
  <!-- #wrap -->
  <div id="wrap">
	<!-- #header -->
	<div id="header">
		<a href="./home.do"><img src=../images/common/logo.gif style="padding-top: 10px; padding-left: 10px;" /></a>
		<ul class="util">
			<li class="name"><strong>홍길동</strong>님</li>
			<li><a href="#none"><img src="../images/common/util_logout.gif" alt="" /></a></li>
		</ul>
		<!-- 현제 강조된 페이지에 a class="active" 삽입해 주세요 -->
		<ul id="gnb" class="gnb">
		
			<li><a href="./home.do" class="active"><img src="../images/common/gnb_1.gif" alt="" /></a></li>
			<li><a href="./bmtListRegistration_1.do"><img src="../images/common/gnb_2.gif" alt="" /></a></li>
			<li><a href="./synthesisData_1.do"><img src="../images/common/gnb_3.gif" alt="" /></a></li>
			<li><a href="./detailsData_1.do"><img src="../images/common/gnb_4.gif" alt="" /></a></li>
			<li><a href="./system_1.do"><img src="../images/common/gnb_5.gif" alt="" /></a></li>
		</ul>
	</div>
	</div>
	<!-- /#header -->

	<hr />

	<!-- #container -->
	<div id="container" class="clearFix mainContainer" />
		<!-- #mainContentsArea -->
		<div id="mainContentsArea">
			<!-- .titContents -->
			<div class="titContents">
				<h2>HOME</h2>
				<p><strong>HOME</strong></p>
			</div>
	<div id ="calendar">
	
	</div>
		

	<!-- #footer -->
	<div id="footer">
		COPYRIGHT ⓒ ALL RIGHTS RESERVED.
	</div>
	<!-- /#footer -->
  </div>
  <!-- /#wrap -->

  
 </body>
 <script>
 
 $(document).ready(function() {

	    $('#calendar').fullCalendar({
// 	      defaultDate: '2018-08-10',
	      editable: true,
	      eventLimit: true, // allow "more" link when too many events
	      events: [
	        {
	          title: 'BMT',
	          start: '2018-08-10'
	        },
			{
	          title: 'BMT',
	          start: '2018-08-09'
	        },
			{
	          title: 'BMT',
	          start: '2018-08-08'
	        },
			{
	          title: 'BMT',
	          start: '2018-08-07'
	        },
			{
	          title: 'BMT',
	          start: '2018-08-06'
	        },
	      ]
	    });

	  });

//  $(document).ready(function() {
// 	    var lang_cd = 'ko';
// 	    var date = new Date();
// 	    var d =date.getDate();
// 	    var m = date.getMonth();
// 	    var y = date.getFullYear();
	    
// 	    alert("테스트 입니다.");
	    
// 	    var calendar = $('#calendar').fullCalendar({
// 	    	header: {
// 	            left: 'prev,next today',
// 	            center: 'title',
// 	            right: 'month,agendaWeek,agendaDay'
// 	        },
	    	
// 	        selectable: true,
// 	        selectHelper: true,
// 	        select: function(start, end, allDay) {
	        	
// 	        	var title = prompt('일정을 입력하세요.');
// 	        	if (title) {
	        		
// 	        		calendar.fullCalendar('renderEvent',
// 	        				{
// 	        					title: title,
// 	        					start: start,
// 	        					end: end,
// 	        					allDay: allDay
// 	        				},
// 	        				true // make the event "stick"
// 	        		);
// 	        	}
// 	        	calendar.fullCalendar('unselect');
	        
// 	        },
// 	        editable: true,
// 	        events: [
// 	        	{
// 	        		title: '01 All Day Event',
// 	        		start: new Date(y, m, 1)
// 	        	},
// 	        	{
// 	        		title: '02 Long Event',
// 	        		start: new Date(y,m,d-5),
// 	        		end: new Date(y,m,d-2)
// 	        	}]	
// 	    });
// 	  });
 
</script>
</html>
