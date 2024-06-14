<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Q&Apage</title>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			<script src="https://kit.fontawesome.com/5af4c0ec93.js" crossorigin="anonymous"></script>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
				crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
				crossorigin="anonymous"></script>
			<style>
				* {
					box-sizing: border-box;
				}

				/*div {
					border: 1px solid red;
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
					width: 1100px;
					height: 800px;
					margin: auto;
				}

				.navi_container {
					padding-right: 250px;
					padding-left: 250px;
					margin: 0;
				}

				.navi_container>div:hover {
					border-bottom: 2px solid black;
				}

				.navi_container a {
					text-decoration: none;
					color: black;
				}

				.search_container {
					padding-right: 50px;
					padding-left: 50px;
					margin: 0;
				}

				.search_col2 {
					display: flex;
					align-items: flex-end;
					justify-content: right;
				}

				.search_bar {
					padding-bottom: 2px;
					display: flex;
					align-items: center;
					width: 220px;
					height: 35px;
					border-bottom: 2px solid black;
				}

				.search_bar>#search_input {
					width: 100%;
					height: 100%;
					text-align: center;
					border: none;
				}

				.dropdown-toggle {
					height: 35px;
					border-radius: 0;
				}

				.list_container_row {
					padding-left: 50px;
					padding-right: 50px;
					margin: 0;
				}

				.list_container_col {
					border-bottom: 3px solid black;
					padding: 0;
				}

				.list_head {
					border-top: 3px solid black;
					border-bottom: 3px solid black;
					margin: 0;
				}

				.list_detail_box_row {
					margin: 0;
				}

				.list_detail_box_col {
					padding: 0;
				}

				.list_data_row {
					border-bottom: 1px solid lightgray;
					margin: 0;
				}


				.btns_container {
					display: flex;
					padding-left: 50px;
					padding-right: 50px;
					justify-content: right;
					align-items: flex-end;
				}

				#ask_btn {
					width: 120px;
					border-radius: 0;
				}

				#page_navi a {
					display: inline-block;
					margin-right: 5px;
					text-decoration: none;
					color: black;
				}

				#page_navi a:hover {
					cursor: pointer;
				}
			</style>
		</head>


		<body>
			<div class="container col center">
				<div class="col1 center" style="flex: 1; width: 100%;">Q&Apage</div>
				<div class="col2 col" style="flex: 9; width: 100%;">
					<div class="navi_container row" style="flex: 0.7; width: 100%;">
						<div class="navi_total center" style="flex: 1;">
							<a href="" class="naviAn" data-naviD="전체">전체</a>
						</div>
						<div class="navi_game center" style="flex: 1;">
							<a href="" class="naviAn" data-naviD="게임문의">게임문의</a>
						</div>
						<div class="navi_collaboration center" style="flex: 1;">
							<a href="" class="naviAn" data-naviD="제휴문의">제휴문의</a>
						</div>
						<div class="navi_etc center" style="flex: 1;">
							<a href="" class="naviAn" data-naviD="기타문의">기타문의</a>
						</div>
					</div>
					<div class="search_container row" style="flex: 1.0; width: 100%;">
						<div class="col1" style="flex: 1;"></div>
						<div class="search_col2" style="flex: 1; padding-bottom: 15px;">
							<div class="dropdown">
								<button class="btn btn-secondary dropdown-toggle" type="button"
									data-bs-toggle="dropdown" aria-expanded="false">
									전체
								</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">제목</a></li>
									<li><a class="dropdown-item" href="#">내용</a></li>
								</ul>
							</div>
							<div class="search_bar center">
								<input id="search_input" type="text" placeholder="검색어를 입력하세요.">
								<i class="fa-solid fa-magnifying-glass"></i>
							</div>
						</div>
					</div>
					<div class="list_container_row row" style="flex: 6.9; width: 100%;">
						<div class="list_container_col col" style="flex: 1; height: 100%;">
							<div class="list_head row" style="flex: 1; width: 100%;">
								<div class="list_head_seq center" style="flex: 1;">번호</div>
								<div class="list_head_category center" style="flex: 1;">카테고리</div>
								<div class="list_head_writer center" style="flex: 1;">작성자</div>
								<div class="list_head_title center" style="flex: 4.5;">제목</div>
								<div class="list_head_write_date center" style="flex: 1.5;">작성일</div>
								<div class="list_head_answer center" style="flex: 1;">답변</div>
							</div>
							<div class="list_detail_box_row row" style="flex: 9; width: 100%;">
								<div class="list_detail_box_col col" style="flex: 1; height: 100%;">
									<!--여기에 리스트 동적 할당-->
								</div>
							</div>
						</div>
					</div>
					<div class="btns_container" style="flex: 0.7; width: 100%;">
						<button id="ask_btn" class="btn btn-primary"
							onclick="location.href='/qboard/writeBoard.jsp'">글쓰기</button>
					</div>
					<div id="page_navi" class="page_container center" style="flex: 0.7; width: 100%;"></div>
				</div>
			</div>

			<script>
				// 페이지 로드 시 첫 페이지 데이터 로드
				$(document).ready(function () {
					loadData(1);
				});

				let navi="전체";

				// 페이지 클릭시 클릭 이벤트로 데이터 전달
				$(document).on('click', '.pageAn', function (e) {
					e.preventDefault();
					page = $(this).data('pageN');
					loadData(page);
				});

				function loadData(page) {
					//카테고리 클릭 시 클립 이벤트로 데이터 전달
					$(document).on('click', '.naviAn', function (e) {
						e.preventDefault();
						let navi = $(this).data('naviD');
						loadData(navi);
					});

					$.ajax({
						url: "/select.qboard",
						type: "POST",
						dataType: "json",
						data: {
							cpage: page,
							category: navi
						}
					}).done(function (data) {
						let cpage = data[0];
						let recordCountPerPage = data[1];
						let naviCountPerPage = data[2];
						let recordTotalCount = data[3];
						let list = data[4];

						let page_total_count = 0;
						if (recordTotalCount % recordCountPerPage > 0) {
							page_total_count = Math
								.floor(recordTotalCount / recordCountPerPage) + 1;
						} else {
							page_total_count = Math
								.floor(recordTotalCount / recordCountPerPage);
						}

						let startNavi = Math.floor((cpage - 1) / naviCountPerPage) * naviCountPerPage + 1;

						let endNavi = startNavi + naviCountPerPage - 1;
						if (endNavi > page_total_count) {
							endNavi = page_total_count;
						}

						let needNext = true;
						let needPrev = true;

						if (startNavi == 1) {
							needPrev = false;
						}
						if (endNavi == page_total_count) {
							needNext = false;
						}

						//동적할당이기 때문에 그 전 작업을 지우는 게 필요함
						$("#page_navi").empty();

						if (needPrev) {
							let needPreva = $("<a>").addClass("pageAn").data("pageN", startNavi - 1).html(" < ");
							$("#page_navi").append(needPreva);
						}

						for (let i = startNavi; i <= endNavi; i++) {
							let pagesa = $("<a>").addClass("pageAn").data("pageN", i).html(i + "&nbsp;");
							$("#page_navi").append(pagesa);
						}

						if (needNext) {
							let needNexta = $("<a>").addClass("pageAn").data("pageN", endNavi + 1).html(" > ");
							$("#page_navi").append(needNexta);
						}

						$(".list_detail_box_col").empty();

						for (let dto of list) {
							let list_data_row = $("<div>").addClass("list_data_row row").css({
								"height": "44px",
								"width": "100%"
							});

							let list_data_seq = $("<div>").addClass("list_data_seq center").css("flex", "1").html(dto.qBoardSeq);
							let list_data_category = $("<div>").addClass("list_data_category center").css("flex", "1").html(dto.qBoardCategory);
							let list_data_writer = $("<div>").addClass("list_data_writer center").css("flex", "1").html(dto.userId);
							let list_data_title = $("<div>").addClass("list_data_title center").css("flex", "4.5").html(dto.qBoardTitle);
							let list_data_write_date = $("<div>").addClass("list_data_write_date center").css("flex", "1.5").html(dto.qBoardDate);
							let list_data_answer = $("<div>").addClass("list_data_answer center").css("flex", "1").html(dto.qBoardAnswer);

							list_data_row.append(list_data_seq, list_data_category, list_data_writer, list_data_title, list_data_write_date, list_data_answer);
							$(".list_detail_box_col").append(list_data_row);
						}
					});
				};

				//드랍다운 선택시 카테고리 텍스트 변경 이벤트
				document.addEventListener("DOMContentLoaded", function () {
					// 모든 드롭다운 항목에 이벤트 리스너 추가
					let dropdownItems = document.querySelectorAll('.dropdown-item');
					dropdownItems.forEach(function (item) {
						item.addEventListener('click', function (event) {
							// 버튼 텍스트 변경
							let button = document.querySelector('.dropdown-toggle');
							button.textContent = event.target.textContent;
						});
					});
				});
			</script>

		</body>


		</html>