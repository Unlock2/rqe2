<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
    
    Calendar now = Calendar.getInstance();
    int year = now.get(Calendar.YEAR);
    int month = now.get(Calendar.MONTH)+1;
    
    String _year = request.getParameter("year");
    String _month = request.getParameter("month");
    
    if(_year != null)
        year = Integer.parseInt(_year);
    
    if(_month != null)
        month = Integer.parseInt(_month);
    
    now.set(year, month-1, 1);    //출력할 년도, 월로 설정
    
    year = now.get(Calendar.YEAR);    //변화된 년, 월
    month = now.get(Calendar.MONTH) + 1;
    
    int end = now.getActualMaximum(Calendar.DAY_OF_MONTH);    //해당월의 마지막 날짜
    int w = now.get(Calendar.DAY_OF_WEEK);    //1~7(일~토)
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       	<script type="text/javaScript" language="javascript">


	
	</script>
	<style TYPE="text/css">
		body {
		scrollbar-face-color: #F6F6F6;
		scrollbar-highlight-color: #bbbbbb;
		scrollbar-3dlight-color: #FFFFFF;
		scrollbar-shadow-color: #bbbbbb;
		scrollbar-darkshadow-color: #FFFFFF;
		scrollbar-track-color: #FFFFFF;
		scrollbar-arrow-color: #bbbbbb;
		margin-left:"0px"; margin-right:"0px"; margin-top:"0px"; margin-bottom:"0px";
		}

		td {font-family: "돋움"; font-size: 9pt; color:#595959;}
		th {font-family: "돋움"; font-size: 9pt; color:#000000;}
		select {font-family: "돋움"; font-size: 9pt; color:#595959;}


		.divDotText {
		overflow:hidden;
		text-overflow:ellipsis;
		}

		A:link { font-size:9pt; font-family:"돋움";color:#000000; text-decoration:none; }
		A:visited { font-size:9pt; font-family:"돋움";color:#000000; text-decoration:none; }
		A:active { font-size:9pt; font-family:"돋움";color:red; text-decoration:none; }
		A:hover { font-size:9pt; font-family:"돋움";color:red;text-decoration:none;}
		.day{
			width:100px; 
			height:30px;
			font-weight: bold;
			font-size:15px;
			font-weight:bold;
			text-align: center;
		}
		.sat{
			color:#529dbc;
		}
		.sun{
			color:red;
		}
		.today_button_div{
			float: right;
		}
		.today_button{
			width: 100px; 
			height:30px;
		}
		.calendar{
			width:80%;
			margin:auto;
		}
		.navigation{
			margin-top:100px;
			margin-bottom:30px;
			text-align: center;
			font-size: 25px;
			vertical-align: middle;
		}
		.calendar_body{
			width:100%;
			background-color: #FFFFFF;
			border:1px solid white;
			margin-bottom: 50px;
			border-collapse: collapse;
		}
		.calendar_body .today{
			border:1px solid white;
			height:120px;
			background-color:#c9c9c9;
			text-align: left;
			vertical-align: top;
		}
		.calendar_body .date{
			font-weight: bold;
			font-size: 15px;
			padding-left: 3px;
			padding-top: 3px;
		}
		.calendar_body .sat_day{
			border:1px solid white;
			height:120px;
			background-color:#EFEFEF;
			text-align:left;
			vertical-align: top;
		}
		.calendar_body .sat_day .sat{
			color: #529dbc; 
			font-weight: bold;
			font-size: 15px;
			padding-left: 3px;
			padding-top: 3px;
		}
		.calendar_body .sun_day{
			border:1px solid white;
			height:120px;
			background-color:#EFEFEF;
			text-align: left;
			vertical-align: top;
		}
		.calendar_body .sun_day .sun{
			color: red; 
			font-weight: bold;
			font-size: 15px;
			padding-left: 3px;
			padding-top: 3px;
		}
		.calendar_body .normal_day{
			border:1px solid white;
			height:120px;
			background-color:#EFEFEF;
			vertical-align: top;
			text-align: left;
		}
		.cal_body{
			border:1px solid white;
			height:120px;
			background-color:#EFEFEF;
			vertical-align: top;
			text-align: left;
		}
		.before_after_month{
			margin: 10px;
			font-weight: bold;
		}
		.before_after_year{
			font-weight: bold;
		}
		.this_month{
			margin: 10px;
		}
	</style>
    </head>
    <body>
        <br/>&nbsp;<br/>
        
			<div class="calendar" >

				<form name="calendarFrm" id="calendarFrm" action="" method="GET">
					<div class="navigation" style="margin-top: 30px";>
		            
		            <a class="before_after_year" href="calendar1.do?year=<%=year-1%>&month=<%=month%>">
					&lt;&lt;
					<!-- 이전해 -->
					</a> 
					<a class="before_after_month" href="calendar1.do?year=<%=year%>&month=<%=month-1%>">
						&lt;
					<!-- 이전달 -->
					</a> 
					<span class="this_month">
						&nbsp;<%=year %>년 <%=month %>월
					</span>
					<a class="before_after_month" href="calendar1.do?year=<%=year%>&month=<%=month+1%>">
					<!-- 다음달 -->
						&gt;
					</a> 
					<a class="before_after_year" href="calendar1.do?year=<%=year+1%>&month=<%=month%>">
						<!-- 다음해 -->
						&gt;&gt;
					</a>
			</div>
		            
<table class="calendar_body">

<thead>
	<tr bgcolor="#CECECE">
		<td class="day sun" >
			일
		</td>
		<td class="day" >
			월
		</td>
		<td class="day" >
			화
		</td>
		<td class="day" >
			수
		</td>
		<td class="day" >
			목
		</td>
		<td class="day" >
			금
		</td>
		<td class="day sat" >
			토
		</td>
	</tr>
</thead>
<tbody>
                <%
                    int newLine = 0;
                	String classname = "cal_body";
                    //1일이 어느 요일에서 시작하느냐에 따른 빈칸 삽입
                    out.println("<tr class =" + classname + " height='120px'>");	//font-size: '15px' font-weight: 'bold' padding-left: '3px' padding-top: '3px' background-color:'#c9c9c9'
                    for(int i=1; i<w; i++)
                    {
                        out.println("<td class = " + classname + " bgcolor='#EFEFEF'>&nbsp;</td>");
                        newLine++;
                    }
                    
                    String fc, bg, fs;
                    for(int i=1; i<=end; i++)
                    {
                        
                        fc = (newLine == 0)?"red":(newLine==6?"blue":"#000000");
                        bg = "#EFEFEF";
                        fs = "5px";
                        out.println("<td class=" + classname + " align='left' bgcolor=" + bg + "><font color=" + fc + " size='" + fs +  "'>"
                                + i + "</font></td>");
                        newLine++;
                        if(newLine == 7 && i != end)
                        {
                            out.println("</tr>");
                            out.println("<tr class=" + classname + " height='120px'>"); // font-size: '15px' font-weight: 'bold' padding-left: '3px' padding-top: '3px' background-color:'#c9c9c9'
                            newLine = 0;
                        }
                    }
                    
                    while(newLine>0 && newLine<7)
                    {
                        out.println("<td bgcolor='EFEFEF'>&nbsp;</td>");
                        newLine++;    
                    }
                    out.println("</tr>");
                %>
</tbody>
</table>
    </body>
</html>