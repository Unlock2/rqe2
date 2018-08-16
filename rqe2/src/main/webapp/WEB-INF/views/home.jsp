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
  <script type="text/javascript" src="../js/fullcalendar.js"></script>
  <script type="text/javascript" src="../js/moment.min.js"></script>
<!--   <script type="text/javascript" src="../js/fullcalendar.min.js"></script> -->
  <script type="text/javascript" src="../js/locale-all.js"></script>


  
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
				<h2>BMT Schedule </h2>
				<p><strong>HOME</strong></p>
			</div>
	<div id ="calendar_body" >
		<table>
			<thead>
	
			</thead>
				<tbody>
					<tr>
						<td id="calendar_1" style="width: 250px; height: 350px; padding: 5px"></td>
						<td id="calendar_2" style="width: 250px; height: 350px; padding: 5px"></td>
						<td id="calendar_3" style="width: 250px; height: 350px; padding: 5px"></td>
						<td id="calendar_4" style="width: 250px; height: 350px; padding: 5px"></td>
					</tr>
					<tr>
						<td id="calendar_5" style="width: 250px; height: 350px; padding: 5px"></td>
						<td id="calendar_6" style="width: 250px; height: 350px; padding: 5px"></td>
						<td id="calendar_7" style="width: 250px; height: 350px; padding: 5px"></td>
						<td id="calendar_8" style="width: 250px; height: 350px; padding: 5px"></td>
					</tr>
					<tr>
						<td id="calendar_9" style="width: 250px; height: 350px; padding: 5px"></td>
						<td id="calendar_10" style="width: 250px; height: 350px; padding: 5px"></td>
						<td id="calendar_11" style="width: 250px; height: 350px; padding: 5px"></td>
						<td id="calendar_12" style="width: 250px; height: 350px; padding: 5px"></td>
					</tr>
				</tbody>
		
		
		</table>
		
	
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

	 var date = new Date();
	 var month = date.getMonth() + 1;
	 var year = date.getFullYear();
	 
	 var events = [
	        {
         title: '',
         start: '2018-08-10'
       },
		{
         title: '',
         start: '2018-08-09'
       },
		{
         title: '',
         start: '2018-08-08'
       },
		{
         title: '',
         start: '2018-08-07'
       },
		{
         title: '',
         start: '2018-08-06'
       },
     ];
	 
// 	 var events2 = [
// 	        {
//       title: 'BMT',
//       start: '2018-07-10'
//     },
// 		{
//       title: 'BMT',
//       start: '2018-07-09'
//     },
// 		{
//       title: 'BMT',
//       start: '2018-07-08'
//     },
// 		{
//       title: 'BMT',
//       start: '2018-07-07'
//     },
// 		{
//       title: 'BMT',
//       start: '2018-07-06'
//     },
//   ];
	 
	 
	 drawCalendar('calendar_1', '01', events);
	 drawCalendar('calendar_2', '02', events);
	 drawCalendar('calendar_3', '03', events);
	 drawCalendar('calendar_4', '04', events);
	 drawCalendar('calendar_5', '05', events);
	 drawCalendar('calendar_6', '06', events);
	 drawCalendar('calendar_7', '07', '');
	 drawCalendar('calendar_8', '08', events);
	 drawCalendar('calendar_9', '09', events);
	 drawCalendar('calendar_10', '10', events);
	 drawCalendar('calendar_11', '11', events);
	 drawCalendar('calendar_12', '12', events);
	 
	  $(".fc-left").hide();
	  $(".fc-right").hide();
	 
 	function drawCalendar(div, month, events){
 		$('#'+div).fullCalendar({
//  		      defaultDate: year + '-' + month + '-10',
 		      defaultDate: year + '-' + month + '-10',
 		      contentHeight:310,
 				height: 150,
 				locale: "ko",
 				header : {
 					left : 'prev, today',
 					center : 'title',
 					//right : 'month,agendaWeek,agendaDay'
 					right : 'next'
 				},
 				calendar_title_separate : function(){
 			         console.log($('.fc-center').text());                  // 타이틀 텍스트를 받아온다.
 			         var strArray = $('.fc-center').text().split(' ');     // 텍스트 분리
 			         console.log(strArray);                              // ["2015년", "5월2015년", "5월"]
//  			         $('.fc-left h2:first').replaceWith('<h2>' + strArray[0] + '</h2>');  // 2015년 대체
 			         $('.fc-center h2:last').replaceWith('<h2>' + strArray[2] + '</h2>');   // 5월 대체
 			     },
 		      editable: true,
 		      eventLimit: true, // allow "more" link when too many events
 		      events: events
 		    });

 	}
  });
 
 
</script>
</html>
