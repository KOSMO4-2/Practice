<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<title>You To You &mdash; Youtuber Management</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Overpass:300,400,500|Dosis:400,700" rel="stylesheet">
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
		<div class="owl-carousel loop-block-31">
			<div class="block-30 block-30-sm item"
				style="background-image: url('/image/bg_1.jpg');"
				data-stellar-background-ratio="0.5">
				<div class="container">
					<div
						class="row align-items-center justify-content-center text-center">
						<div class="col-md-7">
							<h2 class="heading mb-5">Toyou 커뮤니티</h2>
							
							
							
							
							<!-- <p style="display: inline-block;"><a href="https://vimeo.com/channels/staffpicks/93951774"  data-fancybox class="ftco-play-video d-flex"><span class="play-icon-wrap align-self-center mr-4"><span class="ion-ios-play"></span></span> <span class="align-self-center">Watch Video</span></a></p> -->
							
			<!-- 성연추가 ELK 자동완성검색-->		
			<form action="/elasticSearchPrefix" method="post">		
               <div class="input-group">
                   <input type="text" id="searchKeyword" name="searhValue" list="elastielist" class="form-control" placeholder="커뮤니티 검색">
						<datalist id="elastielist" class="searchResult">
							<!-- ajax -->
						</datalist>
                   <span class="input-group-btn">
                   <button class="btn btn-secondary" type="button">검색</button>
                   </span>
               </div> 
            </form>
			<!-- 성연추가 ELK 자동완성검색-->				
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	

	<div class="container">


<!-- Big Community ############################################# -->
		<div class="row commu">
		<h3 class="col-12">Big 커뮤니티</h3>
		<br><br><br>
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
			</div>
			
			
			
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
			</div>
			
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
			</div>
			
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
			</div>
			
			

			

			<div class="col-md-12 col-lg-12 md-5">
				<div class="person-donate text-left"></div>
			</div>

		</div>
		
		
		
		<!-- Hot Community ############################################# -->
		
		<div class="row commu">
		<h3 class="col-12">Hot 커뮤니티</h3>
		<br><br><br>
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
			</div>
			
			
			
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
			</div>
			
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
			</div>
			
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
				
				
				
				
			</div>
			
			

			

			<div class="col-md-12 col-lg-12 md-5">
				<div class="person-donate text-left"></div>
			</div>

		</div>
		
		<!-- New Community ############################################# -->
		
		<div class="row commu">
		<h3 class="col-12">New 커뮤니티</h3>
		<br><br><br>
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
			</div>
			
			
			
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
			</div>
			
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
				</div>
			</div>
			
			<div class="col-md-3 col-lg-3 mb-3">
				
				<div class="person-donate text-center">
							<img src="/image/person_1.jpg" alt="Image placeholder"
								class="img-left">
							<div class="donate-info">
								<h2>호스트 채널명</h2>
								<span class="time d-block mb-3 text-danger">커뮤니티 가입자수</span>
								<p>
									커뮤니티 설명
									<!-- <span class="text-success">호호</span> <br> <em>for</em>
							<a href="#" class="link-underline fundraise-item">Water Is
								Life. Clean Water In Urban Area</a> -->
								</p>
							</div>
				</div>
	</div>




	<div class="site-section border-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="commu_title_2">
						<h3>커뮤니티 가입 채널</h3>
					</div>
					<div class="person-donate2">
						<img src="/image/person_1.jpg" alt="Image placeholder"
							class="img-left">
						<div class="text_ch">
							<a href="#">[채널명]</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="commu_title_3">
						<h3>커뮤니티 가입 신청 채널</h3>
					</div>
					<div class="person-donate2">
						<img src="/image/person_1.jpg" alt="Image placeholder"
							class="img-left">
						<div class="text_ch">
							<a href="#">[채널명]</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="commu_title_3">
						<h3>커뮤니티 게시판</h3>
					</div>
					<form>
						<table class="table table-striped commu_board">
						<thead>
							<tr class="text-center">
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>조회수</th>
								<th>좋아요</th>
								<th>날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr class="text-center">
								<td>1</td>
								<td>안녕하세요</td>
								<td>김떙떙</td>
								<td>300</td>
								<td>10</td>
								<td>2021-05-21</td>
							<tr class="text-center" >
								<td>2</td>
								<td>안녕하세요</td>
								<td>김떙떙</td>
								<td>300</td>
								<td>10</td>
								<td>2021-05-21</td>
							</tr>
							<tr class="text-center">
								<td>3</td>
								<td>안녕하세요</td>
								<td>이불</td>
								<td>300</td>
								<td>10</td>
								<td>2021-05-21</td>
							</tr>
						</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>



        
<!-- Footer -->
<%-- <%@ include file="layout/footer.jsp"%> --%>

<jsp:include page="layout/footer.jsp" flush="true"></jsp:include>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

$(function() {

	// 성연추가 ELK 커뮤니티 검색 자동완성
	// Ajax 커뮤티니목록 검색
	$('#searchKeyword').keyup(function(event){

		$.ajax({
             url: "/elasticSearchPrefix",
             type: "POST",
             dataType: "JSON",
             data: { "searhValue" : $('#searchKeyword').val()},
             success: function(data) {                 

              	test = data['hits']
             	test2 = test['hits']
             	
             	event.preventDefault();
         		event.stopPropagation();

          		$('.communitytitle').remove();
          		
            	for(var i=0; i<test2.length; i++){
             		$(".searchResult").append("<option class ='communitytitle'>" + test2[i]['_source']['communitytitle'] +"</option>" );
             	}
             }
		});
	});

	
});


</script>


  </body>
</html>