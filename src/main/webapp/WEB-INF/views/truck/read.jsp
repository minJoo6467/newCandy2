<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Hielo by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/resources/css/main.css?ver=3" />

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
        
 .listDiv li {
            list-style-type: none;

        }
        ul {
            display: inline;
            padding: 0;
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
								<td colspan="2"><strong><c:out value="${vo.title}" /></strong></td>
							</tr>
							<tr>
								<td style="border-right: hidden; border-left: hidden;">Writer:
									<c:out value="${vo.writer}" />
								</td>
								<td width=50% style="text-align: right; border-right: hidden;">
									작성일 : <fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd HH:mm" />
									<div class="12u$">
										수정일 : <fmt:formatDate value="${vo.updatedate}" pattern="yyyy-MM-dd HH:mm" />
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									
									<textarea rows="20" cols=""><c:out value="${vo.content}" /></textarea>
									
								</td>
							</tr>
						</tbody>

					</table>
					
					<div class= "mailbox-attachments clearfix uploadedList">
					</div>
					<div class='popup back' style="display:none;"></div>
					<div id="popup_front" class='popup front' style="display:none;">
						<img id="popup_img">
	
					</div>
					<div id="map" style="width:100%; height:400px;"></div>
					
					
					<div class="12u$">
					
					
						<ul class="actions" style="margin-top:10px; width: 100%">
						<li><input type="button" class="special list" value="♥" style="background-color: crimson"></li>
							<li><input type="button" class="special list" value="List"></li>
							<li><input type="button" class="special modify"
								data-fno="${vo.fno}" value="Modify" /></li>
							<li><input type="button" class="special remove" value="Remove" /></li>
						</ul>
					</div>
					

					
					
	<div class="wrapper">
    	<div class="inputDiv">

    	
    	<div><!-- 버튼 미디어쿼리 main.css 1977라인참고 -->
        	<div><label>여러분의 소중한 리뷰는 가게 발전에 도움이 됩니다.</label></div>
        	<div style=" width: 100%; margin-top:10px"><input type="text" name="content" placeholder="리뷰쓰기..."/></div>
        	<div style=" text-align: right; margin-top:10px">
            <button class="rbtn" data-type="register">Register</button>    
        </div>
        </div>
        

        	<!-- <div style="display: inline-block"><label>리뷰쓴이:</label></div>
        	<div style="display: inline-block;"> -->
       	 		<input type="hidden" name="replyer" value='<sec:authentication property="principal.username"/>'	
        		readonly="readonly" placeholder='<sec:authentication property="principal.username"/>' />
        	<!-- </div> -->
        	
        </div>
        
        

        <div class="listDiv">
        
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
		
		var csrfToken = "${_csrf.token}";

        function setCsrf(token){
        	
        	$.ajaxSetup({
                headers:
                { 'X-CSRF-TOKEN':token }
            });
        }
		
		  /*  var windowW = 900;  // 창의 가로 길이
	       var windowH = 700;  // 창의 세로 길이
	       var left = Math.ceil((window.screen.width - windowW)/2);
	       var top = Math.ceil((window.screen.height - windowH)/2);
		
		$(".rbtn").on("click", function(e){
			
			e.preventDefault();
			
			window.open("http://10.10.10.21:8080/keyword", "keywordInput", 
					"toolbar=no, menubar=no, scrollbars=no, resizable=yes, l top="+
					top+", left="+left+", height="+windowH+", width="+windowW);			
			
		}); */
		
		//-------------------------------------------------------------------------------
		//지도
		var lat = ${vo.lat};
		var lng = ${vo.lng};
		
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new daum.maps.LatLng(lat, lng), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};

		var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
		// 마커가 표시될 위치입니다 
		var markerPosition  = new daum.maps.LatLng(lat, lng); 

		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		//-------------------------------------------------------------------------------
		//첨부파일
		
		var fno = ${vo.fno};
		
		
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
	       
	       var template = Handlebars.compile($("#templateAttach").html());
	        
	        $.getJSON("/truck/getAttach/"+fno, function(list){

	        	$(list).each(function(){
	        		
	        		
	        		
	        		var fileInfo = getFileInfo(this);
	        		
	        		var html = template(fileInfo);
	        		console.log("fileInfo......",fileInfo)
	        		$(".uploadedList").append(html);
	        	});
	        });
		
	       
	       
	       
	       
	    //-------------------------------------------------------------------------------
		//댓글

	       var inputContent = $("input[name='content']");
	        var inputReplyer = $("input[name='replyer']");
	        var modifyContent = $("input[name='modalContent']");
	        var modifyReplyer = $("input[name='modalReplyer']");
	        var reContent = $("input[name='reModalContent']");
	        var reReplyer = $("input[name='reModalReplyer']");

	        var rbtn = $(".rbtn");
	        var mbtn = $(".mbtn");
	        var dbtn = $(".dbtn");
	        var listUL = $(".listDiv");

	        var reviewPage = 1;
	        var gno=1;

	        

	        function loadList(fno, page) {
	           reviewPage = page || 1;
	            /* var fno = fno || 1; */
	            $.getJSON("/reviews/list/" + fno + "/" + page + ".json", function (data) {

	                console.log(data.reviewCnt);
	                console.log(data.list);
	                var str = "";
	                $(data.list).each(function (idx, data) {
	                    var regdate = new Date(data.regdate);
	                    console.log("ord===",data)
	                    if(data.ord==1){
	                    	str += "<li>" + "<span data-rno = '" + data.rno + "'>"
	                    	+"&emsp;"+"<span style='color:crimson'>"+"[Re:]"+"</span>"
	                    	+"글쓴이: " +data.replyer+ "<br>"
	                    	+"&emsp;&emsp;&emsp;내용: "+ data.rcontent + "</span></li>"
	                        +"<div id=datestyle>"
	                        +"&nbsp&nbsp"+"<span id=modibtn data-rno = '" + data.rno + "'><a>수정</a></span>"
	                        +"&nbsp&nbsp"+"<a class=dbtn data-rno = '" + data.rno + "'data-ord = '"+data.ord+"'>삭제</a> "
	                        +"날짜 :   "+ formatDate(regdate) + "</div><hr>";
	                    	
	                    }else if(data.replyer!=""){
	                    	str += "<li>" + "<span data-rno = '" + data.rno + "'>"
	                    	 +"글쓴이: " +data.replyer+ "<br>"
	                    	 +"내용: "+ data.rcontent + "</span></li>"
	                         +"<div id=datestyle><a class=rerebtn data-rno = '"+data.rno+"'>답댓글</a>"
	                         +"&nbsp&nbsp"+"<span id=modibtn data-rno = '" + data.rno + "'><a>수정</a></span>"
	                         +"&nbsp&nbsp"+"<a class=dbtn data-rno = '" + data.rno 
	                         + "' data-ord = '"+data.ord+"'>삭제</a> "
	                         +"날짜 :   "+ formatDate(regdate) + "</div><hr>";
	                    }else{
	                    	str += "<li>" + "<span data-rno = '" + data.rno + "' style='color:gray'>"
	                   	 +"<br>"
	                   	 + data.rcontent + "</span></li>"
	                        +"<br><hr>";
	                    	
	                    }
	                    	
	                });
	                listUL.html("<hr>"+str);
	                showReviewPage(replyPage, data.reviewCnt);
	                console.log("로드리스트 페이지는"+reviewPage);
	            })
	        }

	        loadList(fno, 1);


	        function saveReviews(ord, inputgno) {

	        	console.log("inputval"+inputContent.val());
	        	console.log("inputval"+reContent.val());     		
	        		 if(ord == 0){
	        			 
	        			 if(inputContent.val()!="" && inputReplyer.val()!=""){       				 

	        				var data = {fno: fno, rcontent: inputContent.val(), replyer: inputReplyer.val(), ord:0};

	        			}else {
	                		alert("내용을 똑바로 입력하세요 ㅡ_ㅡ!!"); return;
	                	}
	        		 }else{
	        			if(reContent.val()!="" && reReplyer.val()!=""){

	        				var data = {fno: fno, rcontent: reContent.val(), replyer: reReplyer.val(),ord:1, gno: inputgno};

	        			}else {
	        	        		alert("내용을 똑바로 입력하세요 ㅡ_ㅡ!!"); return;
	        	        	}
	        			}
	        		 
	        		 setCsrf(csrfToken);
	        		 
	            	$.ajax({
	               	 type: 'post',
	               	 url: "/reviews/new",
	               	 headers: {
	               	     "Content-type": "application/json"
	               	 },
	               	 dataType: "text",
	               	 data: JSON.stringify(data),
	               	 success: function (result) {
	               	     

	                     loadList(fno, 1);

	                     alert("등록이 완료되었습니다.");
	                     inputContent.val("");
	                     inputReplyer.val("");
	                     reContent.val("");
	                     reReplyer.val("");
	                     
	                }
	            });      		
	        	
	            console.log("세이브리플 페이지는"+reviewPage);
	        }

	        function readReviews(rno, page) {

	            $.getJSON("/reviews/" + rno + ".json", function (data) {
	                
					var reviewPage = page;
	                modifyContent.val(data.rcontent);
	                modifyReplyer.val(data.replyer);
	                mbtn.attr("data-rno", rno);
	                dbtn.attr("data-rno", rno);
	            });
	            console.log("리드 리플 페이지는"+reviewPage);
	        }

	        function modifyReviews() {
	            var rno = mbtn.attr("data-rno");
	            var data = {rcontent: modifyContent.val(), replyer: modifyReplyer.val()};
	            
	            setCsrf(csrfToken);
	            
	            $.ajax({
	                type: 'put',
	                url: "/reviews/" + rno,
	                headers: {
	                    "Content-type": "application/json"
	                },
	                dataType: "text",
	                data: JSON.stringify(data),
	                success: function (result) {
	                    

	                    loadList(fno, reviewPage);

	                    modalLayer.fadeOut("slow");
	                }
	            });
	        }

	        function deleteReviews(rno,ord) {
	        	
	            $.ajax({
	                type: 'delete',
	                url: "/reviews/" + rno +"/" + ord,
	                headers: {
	                    "Content-type": "application/json"
	                },
	                dataType: "text",
	                
	                success: function (result) {
	                    

	                    loadList(fno, reviewPage);

	                }
	            });
	        }

	        $(".pagination").on("click", "a", function (e) {
	            e.preventDefault();
	            console.log("hi~~~");
	            reviewPage = $(this).attr("href");


	            loadList(fno, reviewPage);


	        });
	        
	        
	        
	        
	        listUL.on("click",".dbtn", function (e) {

	            var rno = $(this).attr("data-rno");
	            var ord = $(this).attr("data-ord");

	            if (confirm(rno + "번 글을 삭제하시겠습니까?")) {
	                deleteReviews(rno,ord);
	               
	            }

	        });
	         


	        rbtn.on("click", function (e) {
	            saveReviews(0);
	        });
	        
	      

	        var modalLayer = $("#modalLayer");
	        var modalCont = $(".modalContent");
	        var marginLeft = modalCont.outerWidth() / 2;
	        var marginTop = modalCont.outerHeight() / 2;
	        
	        var reModalLayer = $("#reModalLayer");
	        var reModalCont = $(".reModalContent");
	        var reMarginLeft = reModalCont.outerWidth() / 2;
	        var reMarginTop = reModalCont.outerHeight() / 2;
	        
	        var reviewNumber;
	        
	        listUL.on("click",".rerebtn", function(e){
	         reviewNumber = $(this).attr("data-rno");
	       	 reModalLayer.fadeIn("slow");
	       	 reModalCont.css({"margin-top": -reMarginTop, "margin-left": -reMarginLeft});
	         $(this).blur();
	         $(".reModalContent > a").focus();
	        
	         
	         
	       });
	        $(".reRegister").on("click", function(e){
	       		
	        	saveReviews(1,reviewNumber);
	        	reModalLayer.fadeOut("slow");
	     
	   		});

	       
	        
	        listUL.on("click", "#modibtn", function (e) {
	            var rno = $(this).attr("data-rno");
	            readReviews(rno, reviewPage);
	            modalLayer.fadeIn("slow");
	            modalCont.css({"margin-top": -marginTop, "margin-left": -marginLeft});
	            $(this).blur();
	            $(".modalContent > a").focus();
	        });

	       

	        $(".modalContent > .closebtn").click(function () {
	            modalLayer.fadeOut("slow");

	        });
	        
	        $(".reModalContent > .reClosebtn").click(function () {
	            reModalLayer.fadeOut("slow");

	        });

	        mbtn.on("click", function (e) {
	            modifyReviews();
	            alert("수정되었습니다.");
	        });
	        


	       
		
		
		
		
		
	});
	
	
				
	</script>
		<script type="text/javascript" src="/resources/js/pageMaker.js"></script>	

<script type="text/javascript" src="/resources/js/upload.js?ver=3"></script>	
		
	
</body>
</html>