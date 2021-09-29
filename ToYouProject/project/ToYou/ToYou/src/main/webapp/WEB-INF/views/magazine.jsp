<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>You To You &mdash; Youtuber Management</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Overpass:300,400,500|Dosis:400,700"
	rel="stylesheet">
<link rel="stylesheet" href="/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/owl.carousel.min.css">
<link rel="stylesheet" href="/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/css/magnific-popup.css">
<link rel="stylesheet" href="/css/aos.css">
<link rel="stylesheet" href="/css/ionicons.min.css">
<link rel="stylesheet" href="/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/css/jquery.timepicker.css">
<link rel="stylesheet" href="/css/flaticon.css">
<link rel="stylesheet" href="/css/icomoon.css">
<link rel="stylesheet" href="/css/fancybox.min.css">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<!------Header-------->
	<%@ include file="layout/header.jsp"%>
	<%-- 
<jsp:include page="/WEB-INF/views/include/header.jsp" flush="true"></jsp:include> --%>
	<!------Header-------->
	<div class="block-31" style="position: relative;">
		<div class="owl-carousel loop-block-31 ">
			<div class="block-30 block-30-sm item"
				style="background-image: url('/image/bg_1.jpg');"
				data-stellar-background-ratio="0.5">
				<div class="container">
					<div
						class="row align-items-center justify-content-center text-center">
						<div class="col-md-7">
							<h2 class="heading mb-5">You To You</h2>
							<!-- <p style="display: inline-block;"><a href="https://vimeo.com/channels/staffpicks/93951774"  data-fancybox class="ftco-play-video d-flex"><span class="play-icon-wrap align-self-center mr-4"><span class="ion-ios-play"></span></span> <span class="align-self-center">Watch Video</span></a></p> -->
							<!-- 메인 중앙 검색창
               <div class="input-group">
                   <input type="text" class="form-control" placeholder="검색어를 입력하세요">
                   <span class="input-group-btn">
                   <button class="btn btn-secondary" type="button">검색</button>
                   </span>
              </div> END 메인 중앙 검색창 -->
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>


	<br><br><br>
	<div class="container-fluid mt-4">
		<div class="container">
			<div class="row">
				<h3>구글 트렌드</h3>
				<!-- <div class="row"> -->

				<div class="col-md-12 block-11">
					<div class="nonloop-block-11 owl-carousel">

						<div class="card fundraise-item">
							<a href="#"><img class="card-img-top" src="/image/img_1.jpg"
								alt="image placeholder"></a>
							<div class="card-body">
								<h3 class="card-title">
									<a href="#">뉴스 제목</a>
								</h3>
								<p class="card-text">작성자</p>
								<span class="donation-time mb-3 d-block">시간</span>
								<div class="progress custom-progress-success">
									<div class="progress-bar bg-primary" role="progressbar"
										style="width: 28%" aria-valuenow="28" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								
							</div>
						</div>

						<div class="card fundraise-item">
							<a href="#"><img class="card-img-top" src="/image/img_1.jpg"
								alt="Image placeholder"></a>
							<div class="card-body">
								<h3 class="card-title">
									<a href="#">스탠다드</a>
								</h3>
								<p class="card-text">- 데이터 분석조회</p>
								<span class="donation-time mb-3 d-block">Last donation 1w
									ago</span>
								<div class="progress custom-progress-success">
									<div class="progress-bar bg-primary" role="progressbar"
										style="width: 28%" aria-valuenow="28" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								
							</div>
						</div>

						<div class="card fundraise-item">
							<a href="#"><img class="card-img-top" src="/image/img_1.jpg"
								alt="Image placeholder"></a>
							<div class="card-body">
								<h3 class="card-title">
									<a href="#">스타트업</a>
								</h3>
								<p class="card-text">- 데이터 분석조회</p>
								<span class="donation-time mb-3 d-block">Last donation 1w
									ago</span>
								<div class="progress custom-progress-success">
									<div class="progress-bar bg-primary" role="progressbar"
										style="width: 28%" aria-valuenow="28" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								
							</div>
						</div>


						<div class="card fundraise-item">
							<a href="#"><img class="card-img-top" src="/image/img_1.jpg"
								alt="Image placeholder"></a>
							<div class="card-body">
								<h3 class="card-title">
									<a href="#">프로페셔널</a>
								</h3>
								<p class="card-text">- 데이터 분석조회</p>
								<span class="donation-time mb-3 d-block">Last donation 1w
									ago</span>
								<div class="progress custom-progress-success">
									<div class="progress-bar bg-primary" role="progressbar"
										style="width: 28%" aria-valuenow="28" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>



	<div class="site-section border-top fund-raisers"></div>
	<!-- .site-section -->


	<!-- Footer -->
	<%@ include file="layout/footer.jsp"%>
	<%-- 
<jsp:include page="/WEB-INF/views/include/footer.jsp" flush="true"></jsp:include>
 --%>
	<!-- Footer -->

</body>
</html>