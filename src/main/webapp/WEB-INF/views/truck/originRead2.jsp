<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Hielo by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/resources/css/main.css" />

<style>

.pagination {
	display: inline-block;
	text-align: center;
}
.pagination li {
   display: inline;
            }
.pagination a {
	color: black;	
	padding: 8px 5px;
	text-decoration: none;
}

.pagination .active {
	background-color: yellowgreen;
	color: white;
}

.contentbox {
	min-height: 500px;
}

.outer {
	padding-top: 5%;
 	background-color: #ffffff; 
	background-color: rgba(255, 255, 255, 0.6);
	width: 100%;
}

.mytable {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
}

.actions{
	float: right;
}

.row > * {
	display: inline-block;
	text-align: left;
}


.upwinput{
	width: 100%;
}

.upwConfirm{
	width: 100%;
}

.emailinput{
	width: 100%;
}

.phoneinput{
	width: 100%;
}

#header .logo .loginbtn{
float: right;
display: inline-block;
text-align: right;
}

#header .logo .loginbtn .logOutbtn .btnlogOut1{

float: left;
margin-right: 10px;

}

#header .logo .loginbtn .logOutbtn .btnlogOut2{
display: inline-block;
text-align: left;
margin-top: 10px;
}

.consumerInput{
float: right;
}



.uploadedList
{
	display:block;
	width: 100%;
    min-height: 220px;
    padding: 20px;
    border: 1px solid #ccc;
    
    margin: 30px 0px 30px 0px; 
    float:right;
    list-style: none;



}
.uploadedList li{
	display: inline-block;
	border: 1px solid #ccc;
	width: 170px;
	height: 170px;
	float:left; 
	margin:0px 10px 10px 10px;
	
}
.uploadedList img{
width: 168px;
    height: 130px;
text-align: center;
}
.uploadedList li div{
 background: rgba(144, 144, 144, 0.075);
 height: 30px;

 bottom:0;
}

.mailbox-attachment-name{

        text-overflow: ellipsis;
    white-space: nowrap;
    word-wrap: normal;
    max-width: 149px;
    overflow: hidden;
    display: inline-block;

}
#datestyle{
        font-size: 80%;
        text-align: right;
        }
        .dbtn{

        text-align: right;
        }
        


</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=59e8318797fd6445767e2561cad63793"></script>
	
<body class="subpage">

	<!-- Header -->
	<header id="header">
		<div class="logo">
		
		<div class="loginbtn">

<sec:authorize access="isAnonymous()">
	<form action="/myLogin">
	<button>login</button>
	
	</form>	
</sec:authorize>

<div class="logOutbtn">
<sec:authorize access="isAuthenticated()">
	<form action="/logout" method="post" >
	<sec:authentication property="principal" var="user"/>
	<div class="btnlogOut1">
	<strong>${user.username}</strong>님 <strong>(Consumer)</strong>
	</div>
	<div class="btnlogOut2">
	<button class="lOutbtn">logout</button>
	</div>
	<input type="hidden" name = "${_csrf.parameterName}" value ="${_csrf.token}">
	</form>
</sec:authorize>
</div>

		 </div>
		</div>

		<a href="#menu">Menu</a>
	</header>

	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="/home">Home</a></li>
			<li><a href="/up/ajax">Image gallery</a></li>
			<li><a href="/board/list">Free Board</a></li>
			<li><a href="/mypage">My page</a></li>
		</ul>
	</nav>

	<!-- One -->
	<section id="One" class="wrapper style3">
		<div class="inner">
			<header class="align-center">
				<p>WHAT DO YOU WANT TO EAT?</p>
				<h2>FOOD TRUCK</h2>
			</header>
		</div>
	</section>

</head>

	<!-- Main -->
	<div id="main" class="container">
	<div class="outer">
			<div class="mytable">
			
				<div class="table-wrapper" style="margin-bottom:0">
					<h3><i class="fa fa-edit" ></i> View</h3>
					<hr>	
					<table class="alt">
						<thead>
							<tr>
								<th>No.<c:out value="178" /></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="2"><strong><c:out value="미스터곱창" /></strong></td>
							</tr>
							<tr>
								<td style="border-right: hidden; border-left: hidden;">Writer:
									<c:out value="이소정" />
								</td>
								<td width=50% style="text-align: right; border-right: hidden;">
									작성일 : 2017-07-30
									<div class="12u$">
										수정일 : 2018-05-21
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="contentbox">
										맛있는 곱창 드시러 오세요~<br><br>
										# 야채곱창 - 9,000원<br> 
										한국인이 사랑하는 곱창 중 베스트는 야채곱창이 아닐까~<br>
										아삭아삭 씹히는 양배추와 깻잎과의 조화는 최고지<br><br>	
										# 순대곱창 - 9,500원<br>
										말그대로 순대와 곱창을 한번에 맛 볼 수 있는 메뉴!<br>
										곱창도 먹고싶고 순대도 먹고 싶을 때 고민할 필요 없음<br><br>
										# 불곱창 - 10,000원<br>
										매콤한 맛이 일품인 불곱창은 매운 음식 마니아들에게 사랑받는 메뉴!<br>
										술 안주로 이만한게 없다는 맛있게 매운 불곱창~!<br><br>
										# 치즈곱창 - 10,000원<br>
										치즈가 눈처럼 쌓여 올라오는 치즈곱창은 트렌디한 메뉴!<br>
										그냥 곱창도 맛나지만 고소한 치즈까지 함께하니 자꾸 손이 간다<br>
									</div>
								</td>
							</tr>
						</tbody>

					</table>
					
					<div class= "mailbox-attachments clearfix uploadedList">
					
					<li data-src='{{fullName}}'>
					<span class="mailbox-attachment-icon has-img"><img src="resources/images/menu/야채곱창.jpg" alt="Attachment"><span>
					<div class="mailbox-attachment-info">
					<a href="{{getLink}}" class="mailbox-attachment-name">야채곱창.jpg</a>
					</span>
					
					</li>
					<li data-src='{{fullName}}'>
					<span class="mailbox-attachment-icon has-img"><img src="resources/images/menu/순대곱창.jpg" alt="Attachment"><span>
					<div class="mailbox-attachment-info">
					<a href="{{getLink}}" class="mailbox-attachment-name">순대곱창.jpg</a>
					</span>
					
					</li>
					<li data-src='{{fullName}}'>
					<span class="mailbox-attachment-icon has-img"><img src="resources/images/menu/불곱창.jpg" alt="Attachment"><span>
					<div class="mailbox-attachment-info">
					<a href="{{getLink}}" class="mailbox-attachment-name">불곱창.jpg</a>
					</span>
					
					</li>
					<li data-src='{{fullName}}'>
					<span class="mailbox-attachment-icon has-img"><img src="resources/images/menu/치즈곱창.jpg" alt="Attachment"><span>
					<div class="mailbox-attachment-info">
					<a href="{{getLink}}" class="mailbox-attachment-name">치즈곱창.jpg</a>
					</span>
					
					</li>
					
					</div>
					
					<div id="map" style="width:100%; height:400px;"></div>
					
					
					<div class="12u$">
					
					<div class='popup back' style="display:none;"></div>
					<div id="popup_front" class='popup front' style="display:none;">
						<img id="popup_img">
	
					</div>
						<ul class="actions" style="margin-top:10px">
						<li><input type="button" class="special list" value="♥" style="background-color: crimson"></li>
							<li><input type="button" class="special list" value="List"></li>
							<li><input type="button" class="special modify"
								data-fno="${vo.fno}" value="Modify" /></li>
							<li><input type="button" class="special remove" value="Remove" /></li>
						</ul>
					</div>
					

					
					
					<div class="wrapper">
    	<div class="inputDiv"><h1>여러분의 소중한 리뷰는 가게 발전에 도움이 됩니다.</h1>
        <div><label style="text-align: left">리뷰내용:</label><input type="text" name="content"/></div>
        <div><label style="text-align: left">리뷰쓴이:</label><input type="text" name="replyer" 
        			value='<sec:authentication property="principal.username"/>'	readonly="readonly" 
        			placeholder='<sec:authentication property="principal.username"/>' /></div>
        <div style="margin-top:30px">
            <button class="rbtn" data-type="register">Register</button>     
        </div>
        <hr>
        <div class="listDiv">
        <span>리뷰쓴이 : 김민주<br>
                  리뷰내용 : 치즈곱창이 너무 맛있어요~ 또 오고 싶어지는 맛!! </span>
         <div id=datestyle><a class=rerebtn data-rno = data.rno>답댓글</a>
          <span id=modibtn data-rno = data.rno><a>수정</a></span>
          <a class=dbtn data-rno = data.rno 
                        data-ord = data.ord>삭제</a>
          	날짜 : 2018-06-22</div><hr>
          	
          	<span>리뷰쓴이 : 석상현<br>
                  리뷰내용 : 소주가 땡기는 맛이네요 너무 맛있어요^^ </span>
         <div id=datestyle><a class=rerebtn data-rno = data.rno>답댓글</a>
          <span id=modibtn data-rno = data.rno><a>수정</a></span>
          <a class=dbtn data-rno = data.rno 
                        data-ord = data.ord>삭제</a>
          	날짜 : 2018-06-20</div><hr>
          	
          	<span>리뷰쓴이 : 정혜승<br>
                  리뷰내용 : 볶음밥으로 마무리하면 완벽~~ </span>
         <div id=datestyle><a class=rerebtn data-rno = data.rno>답댓글</a>
          <span id=modibtn data-rno = data.rno><a>수정</a></span>
          <a class=dbtn data-rno = data.rno 
                        data-ord = data.ord>삭제</a>
          	날짜 : 2018-06-19</div><hr>
          	
          	<span>리뷰쓴이 : 강요천<br>
                  리뷰내용 : 기름을 머금은 부추가 너무 고소해요!! </span>
         <div id=datestyle><a class=rerebtn data-rno = data.rno>답댓글</a>
          <span id=modibtn data-rno = data.rno><a>수정</a></span>
          <a class=dbtn data-rno = data.rno 
                        data-ord = data.ord>삭제</a>
          	날짜 : 2018-06-18</div><hr>
          	
          	<span>리뷰쓴이 : 심성현<br>
                  리뷰내용 : 존맛!! </span>
         <div id=datestyle><a class=rerebtn data-rno = data.rno>답댓글</a>
          <span id=modibtn data-rno = data.rno><a>수정</a></span>
          <a class=dbtn data-rno = data.rno 
                        data-ord = data.ord>삭제</a>
          	날짜 : 2018-06-16</div><hr>
          	
          	<span>리뷰쓴이 : 정채환<br>
                  리뷰내용 : 만족 만족 대만족!! </span>
         <div id=datestyle><a class=rerebtn data-rno = data.rno>답댓글</a>
          <span id=modibtn data-rno = data.rno><a>수정</a></span>
          <a class=dbtn data-rno = data.rno 
                        data-ord = data.ord>삭제</a>
          	날짜 : 2018-06-13</div><hr>
          	
          	<span>리뷰쓴이 : 손진주<br>
                  리뷰내용 : 맛있어요~ </span>
         <div id=datestyle><a class=rerebtn data-rno = data.rno>답댓글</a>
          <span id=modibtn data-rno = data.rno><a>수정</a></span>
          <a class=dbtn data-rno = data.rno 
                        data-ord = data.ord>삭제</a>
          	날짜 : 2018-06-11</div><hr>
          	
          	<span>리뷰쓴이 : 이원기<br>
                  리뷰내용 : 넘나 대존맛~~~ </span>
         <div id=datestyle><a class=rerebtn data-rno = data.rno>답댓글</a>
          <span id=modibtn data-rno = data.rno><a>수정</a></span>
          <a class=dbtn data-rno = data.rno 
                        data-ord = data.ord>삭제</a>
          	날짜 : 2018-06-10</div><hr>
          	
          	<span>리뷰쓴이 : 지수현<br>
                  리뷰내용 : 순대곱창의 순대가 넘 쫀득하고 맛나용</span>
         <div id=datestyle><a class=rerebtn data-rno = data.rno>답댓글</a>
          <span id=modibtn data-rno = data.rno><a>수정</a></span>
          <a class=dbtn data-rno = data.rno 
                        data-ord = data.ord>삭제</a>
          	날짜 : 2018-06-09</div><hr>
          	
          	<span>리뷰쓴이 : 박호성<br>
                  리뷰내용 : 곱창의 전설이라고 할 수 있습니다 </span>
         <div id=datestyle><a class=rerebtn data-rno = data.rno>답댓글</a>
          <span id=modibtn data-rno = data.rno><a>수정</a></span>
          <a class=dbtn data-rno = data.rno 
                        data-ord = data.ord>삭제</a>
          	날짜 : 2018-06-08</div><hr>
          	

          	
          	
	    </div>
	    
	    <div style="text-align:center">
    	<div class="pagination">
           <li class ="active"><a href = i >1</a></li>
           <li ><a href = i >2</a></li>
           <li ><a href = i >3</a></li>
        </div>
        </div>
        
 	   </div><!-- inputDiv end-->
 	   </div>
 	  </div> <!-- table wrapper end -->
			
			
	</div> <!-- mytable end -->
	</div>	
	</div>


<!-- Footer -->
	<footer id="footer">
		<div class="container">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span
						class="label">Email</span></a></li>
			</ul>
		</div>
		<div class="copyright">&copy; Untitled. All rights reserved.</div>
	</footer>

	<!-- Scripts -->
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/jquery.scrollex.min.js"></script>
	<script src="/resources/js/skel.min.js"></script>
	<script src="/resources/js/util.js"></script>
	<script src="/resources/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
			<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
			
		
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script id="templateAttach" type="text/x-handlebars-template">
<li data-src='{{fullName}}'>
<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"><span>
<div class="mailbox-attachment-info">
<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
</span>
</div>
</li>
</script>
	<script>
	
	$(document).ready(function(e) {
		
		   var windowW = 900;  // 창의 가로 길이
	       var windowH = 700;  // 창의 세로 길이
	       var left = Math.ceil((window.screen.width - windowW)/2);
	       var top = Math.ceil((window.screen.height - windowH)/2);
		
		$(".rbtn").on("click", function(e){
			
			e.preventDefault();
			
			window.open("http://10.10.10.21:8080/keyword", "keywordInput", 
					"toolbar=no, menubar=no, scrollbars=no, resizable=yes, l top="+
					top+", left="+left+", height="+windowH+", width="+windowW);			
			
		});				
		
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new daum.maps.LatLng(37.526571, 126.933590), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};

		var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
		// 마커가 표시될 위치입니다 
		var markerPosition  = new daum.maps.LatLng(37.526571, 126.933590); 

		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		
		 $(".uploadedList").on("click",".mailbox-attachment-info a", function(e){
	        	/* e.stopPropagation(); */
	        	
	        	console.log("1111111111111111");
	        	var fileLink = $(this).attr("href");
	        	
	        	if(checkImageType(fileLink)){
	        	e.preventDefault();

	        	var imgTag = $("#popup_img");
	        	imgTag.attr("src",fileLink);
	        	
	        	console.log(imgTag.attr("src"));
	        	
	        	$(".popup").show('slow');
	        	imgTag.addClass("show");
	        	}
	        });
	        	
	       $("#popup_img").on("click", function(){
	    	  
	    	   $(".popup").hide('slow');
	       });

		
		
		
		
		
		
		
	});
	
	
				
	</script>
		
	
</body>
</html>