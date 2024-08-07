<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>
		<head>
			<meta charset="UTF-8">
			<title>Q&Apage</title>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
				crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
				crossorigin="anonymous"></script>
				<!-- Fonts -->
<link rel="stylesheet" href="https://webfontworld.github.io/daegu/DalseoHealing.css">
			<!-- summernote editer -->
			<script src="cboard/summernote/summernote-lite.js"></script>
<script src="cboard/summernote/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="cboard/summernote/summernote-lite.css">
			<style>
			
			body{
					font-family : 'DalseoHealing';
					background-image: url('/image/background.png');
					background-size:100% 100%;
					color:white;
				}
				
				nav{
					margin-bottom:50px;	
				}
				
				
/*  HEADER CSS  */
.navbar {
           top: 0;
           width: 100%;
           z-index: 1000;
           height:70px;
           background-color : #323232;
       }
       .navbar-brand{
          color:white;
       }
       .nav-link {
            color: white !important;         
       }

       .nav-link:hover {
          background-color: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
       }
       .nav-item{
           align-items: center;
          display: flex;
       }

      .btn{
         color:white;
      }
 
      .btn:hover{
         color:white;
      }
      .navbar .dropdown-menu{
         background-color: #323232;
         text-align: center; /* 중앙 정렬을 위한 설정 */
         width: 100%; /* 너비를 100%로 설정 */
      }
      
      .navbar .dropdown-item{
         background-color: #323232;
         color:white;
      }


    
      /*    end navbar css */
					

				* {
					box-sizing: border-box;
				}

				/*div {
					border: 1px solid black;
				}*/

				.row {
					display: flex;
				}

				.col {
					display: flex;
					flex-direction: column;
				}

				.center {
					display: flex;
					justify-content: center;
					align-items: center;
					
				}

				.container {
				    padding-bottom: 30px;
    				padding-top: 30px;
					background-color:#323232;
					width: 1100px;
					height: 770px;
					margin: auto;
				}

				.boardwritername_container {
					padding-left: 100px;
					padding-right: 100px;
					display: flex;
					align-items: center;
					font-size: larger;
				}

				#boardwriter_div {
					font-weight: bold;
				}

				.category_container {
					display: flex;
					justify-content: flex-end;
				}

				.mydropdown {
					padding-left: 100px;
					padding-right: 100px;
					padding-bottom: 10px;
				}
				
				

 				 /* 커스텀 체크박스 스타일 */
  				.custom-checkbox {
				    width: 20px;
				    height: 20px;
				    cursor: pointer;
				    position: relative;
				    top:4px;
				    
				 }

				.title_container {
					padding-left: 100px;
					padding-right: 100px;
					display: flex;
					align-items: center;
					justify-content: center;
				}

				.title_detail {
					width: 1000px;
					height: 35px;
				}
				
				.title_detailSpan{
					display: inline-block;
					border-bottom: 2px solid gray;
				}

				#title_input {
					color:white;
				    background-color: #323232;
    				margin-right: 5px
					border: none;
					width: 450px;
					text-align: left;
					border: none;
				}

				#contents_detail {
					width: 880px;
					height: 500px;
				}
		
				.dropdown-toggle::after { display: none; }
				
				.note-editable {
					border: 1px solid #d3d3d3;
					color: white;
					font-family : 'DalseoHealing';
				}
				
				.note-dropdown-item:link, .note-dropdown-item:visited, .note-dropdown-item:hover{
					color:black;
				}

				.btns_container {
					display: flex;
					padding-left: 50px;
					padding-right: 50px;
					justify-content: center;
					align-items: flex-end;
					padding-top:20px;
				}

				#back_btn {
					width: 120px;
					margin-right: 5px;
					border-radius: 0;
				}

				#insert_btn {
					width: 120px;
					border-radius: 0;
				}
			

        

/* FOOTER CSS */
		.footer {
	margin-top: 50px;
}
		
		
        .footer {
            width: 100%;
            background-color: #323232;
            position: relative;
            height: 150px;
        }
        .leftfooter{
           color : white;
           font-weight : bold;
           margin-top: 20px;
        }
        .rightfooter {
           display: flex;
           align-items: center;
       
       }
         .footerbox {
           width: 1000px;
           height: 100%;
           margin: auto;
           display: flex;
           justify-content: space-between;
           align-items: center;    
       }

        .iconbox {
            display: flex;
            align-items: center;
        }

        .iconbox a {
            margin: 0 10px;
            font-size: 50px;
            color: white;
        }
       .coinbox {
           display: flex;
           align-items: center;
           margin-left: 20px;
       }
        .coinbox img {
            width: 120px;
            height: 100px;
            margin-left : 20px;
        }
        
        .thumbnail{
           border-radius: 20px;
           width: 356px;
           height: 230px;
           object-fit: cover;
        }
        

        a {
          text-decoration: none !important;
      }
       a:link { color: white; text-decoration: none;}
       a:visited { color: white; text-decoration: none;}
       a:hover { color: white; text-decoration: underline;}


				
	</style>
		</head>
		<body>
		<!--  HEADER HTML -->

 <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
           
            <a class="navbar-brand" href="/index.jsp"><img src="/image/headerlogo.png" alt="" style="width: 80px; height: 60px;"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <button class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            게임
                        </button>

                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/viewGame.gboard?gameSeq=1">2048</a></li>
                            <li><a class="dropdown-item" href="/viewGame.gboard?gameSeq=2">GOLD BREAK!</a></li>
                            <li><a class="dropdown-item" href="/viewGame.gboard?gameSeq=3">ICE CUBY</a></li>
                            <li><a class="dropdown-item" href="/viewGame.gboard?gameSeq=4">똥 피하기</a></li>
                            <li><a class="dropdown-item" href="/viewGame.gboard?gameSeq=5">탈출하기</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <button class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            게시판
                        </button>
                        <ul class="dropdown-menu">
                           <li><a class="dropdown-item" href="/list.nboard">공지사항</a></li>
                            <li><a class="dropdown-item" href="/list.cboard">커뮤니티</a></li>
                     <li><a class="dropdown-item" href="/list.review">게임리뷰</a></li>
                            <li><a class="dropdown-item" href="/list.qboard">Q&A게시판</a></li>
                            <li><a class="dropdown-item" href="/list.fboard">FAQ게시판</a></li>
                            
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/list.playrecord">랭킹</a>
                    </li>
                   

                </ul>
                <c:choose>
                   <c:when test="${not empty loginId}">
                   <ul class="navbar-nav ms-auto">
                   
                   <c:if test="${isAdmin eq true}">
                       <li class="nav-item">
                           <a class="nav-link" href="/dashBoard.admin">관리자페이지</a>
                       </li>
                   </c:if>   
                     <li class="nav-item">
                           <a class="nav-link" href="/logout.member">로그아웃</a>
                     </li>
                     
                    <li class="nav-item">
                       <a class="nav-link" href="/mypage.member">
                           <img src="/profile/${userProfileUrl}" class="rounded-circle" width="40" height="40" alt="Profile">
                       </a>
                    </li>                  


                   </ul>                          
                   </c:when>
                   <c:otherwise>
                      <ul class="navbar-nav ms-auto">
                          <li class="nav-item">
                              <a class="nav-link" href="/member/login/login.jsp"><i class="fas fa-user"></i></a>
                          </li>
                      </ul>
                   </c:otherwise>
                </c:choose>

            </div>
        </div>
    </nav>
    <div class="container col">
        <div class="boardwritername_container row" style="flex: 1;color:white;">
            <div class="col" style="flex: 1; display: inline;">
                <span id="boardwriter_div" name="userId">${nickname}</span>
                <span>님의 글</span>
                <hr>
            </div>
        </div>
        <div class="category_container col" style="flex: 1; width: 100%;">
            <div class="mydropdown">
                <button id="categoryToggle" class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                    aria-expanded="false" style="border-radius:0 name="qBoardCategory">카테고리</button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item dropdown-category">게임문의</a></li>
                    <li><a class="dropdown-item dropdown-category">제휴문의</a></li>
                    <li><a class="dropdown-item dropdown-category">기타문의</a></li>
                </ul>
            </div>
        </div>
        <div class="title_container" style="flex: 1; width: 100%">
            <div class="title_detail">
                <div class="title_detailSpan" style="margin-right: 15px;">
                    <input name="qBoardTitle" type="text" id="title_input" style="margin-right: 5px;" placeholder="제목을 입력하세요.">
                </div>
                <label for="secret" style="color:white;"><input name="qBoardSecret" type="checkbox" id="secret" style="margin-right:10px;" class="custom-checkbox">비밀글</label>
            </div>
        </div>
        <div class="contents_container center" style="flex: 5; width: 100%;">
            <div id="summernote"></div>
        </div>  
       <form id="myForm" action="/insert.qboard" method="post" enctype="multipart/form-data">
            <input type="hidden" id="boardwriterNicname" name="boardWriterNicname">
            <input type="hidden" id="qBoardCategory" name="qBoardCategory">
            <input type="hidden" id="qBoardTitle" name="qBoardTitle">
            <input type="hidden" id="qBoardContent" name="qBoardContent">
            <input type="hidden" id="qBoardSecret" name="qBoardSecret">
            <input id="fileinput" type="file" name="file" multiple style="padding-left:100px; padding-top:5px;">
            <div class="btns_container" style="flex: 1; width: 100%;">
                <button id="back_btn" class="btn btn-secondary" type="button" onclick="location.href='/list.qboard'">취소</button>
                <button id="insert_btn" class="btn btn-primary" type="submit">등록</button>
            </div>
        </form>
    </div>    
	<!-- FOOTER CSS -->
<div class="footer">
        <div class="footerbox">
            <div class="leftfooter">
                <p>회사명: 팀별빛</p>
                <p>전화: 02-1234-5678</p>
                <p>이메일: info@example.com</p>
            </div>
            <div class="rightfooter">
                <div class="iconbox">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>
                <div class="coinbox">
                    <img src="/image/coin.png" alt="">
                </div>
            </div>
        </div>
    </div>
				
			<script>
			
			
			$(document).ready(function(){
				$('#summernote').summernote({
					width: '890px',
					height: '400px', // 에디터 높이
					disableResizeEditor: true, // 에디터 사이즈 조절 옵션 끄기
					focus: true, // 에디터 로딩후 포커스를 맞출지 여부
					lang: "ko-KR", // 한글 설정
					toolbar: [ // 툴바 설정
							['fontname', ['fontname']],
							['fontsize', ['fontsize']],
							['color', ['color']],
							['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
							['para', ['ul', 'ol', 'paragraph']],
							['height', ['height']]
						],
						fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
						fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','32','36','48','60']
				});
				$('#summernote').summernote('fontSize', '16'); // 기본 폰트 사이즈 설정
			});
			
			// 제목 입력 필드의 입력 길이 제한
			$("#title_input").on("input", function () {
			    var maxLength = 33;
			    if ($(this).val().length > maxLength) {
			        alert("제목은 최대 33글자까지 입력할 수 있습니다.");
			        $(this).val($(this).val().substring(0, maxLength));
			    }
			});
		
			 $("#insert_btn").on("click", function () {
				 event.preventDefault(); // 기본 제출 동작 막기
				 
				 if( $("#categoryToggle").html()=="카테고리"){
					 alert("카테고리를 선택해주세요.");
					 return false;
				 }
				 
				 if($("#title_input").val().trim()==""){
					 alert("제목을 입력해주세요.");
					 return false;
				 }
				 
				 
				 // 폼 데이터 설정
			        document.getElementById("boardwriterNicname").value = $("#boardwriter_div").text();
			        document.getElementById("qBoardCategory").value = $("#categoryToggle").text();
			        document.getElementById("qBoardTitle").value = $("#title_input").val().trim();
			        document.getElementById("qBoardContent").value = $(".note-editable").html().trim();
			        document.getElementById("qBoardSecret").value = $('#secret').prop('checked');

			        // 폼 제출
			        document.getElementById("myForm").submit();
             	
         	});
			 
		   //.dropdown-item을 클릭했을 때
	       $(".dropdown-category").on("click", function (e) {
	          e.preventDefault();
	          $("#categoryToggle").html($(this).html());
	          console.log($("#categoryToggle").html());
	       });
		   			
	
			</script>

		</body>

		</html>