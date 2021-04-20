<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CreateClass</title>  
<!-- css연결 -->
<link rel="stylesheet"
	href="${ contextPath }/resources/css/coffeeclass/editclass.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" 
	crossorigin="anonymous">
<!--부트스트랩 css-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<!--부트스트랩 js-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>
<!--아이콘-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--jQuery-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

</head>
<body>
	<!-- menubar -->
	<jsp:include page="/WEB-INF/views/common/menubar.jsp" />


	<!-- Form -->
	<div class="banner">
		<h1 style="padding-top: 18vh;">라홀의 가족이 되시는 것을 환영합니다</h1>
	</div>
	<div>

		<!--입력란-->
		<div id="tbColor" style="margin:0; background-color:#f0d7af;">
		

			<div id="createform" style="" >
				<div class="content-header">
					<h2 class="intro">라홀 예비 클래스 강사님, 안녕하세요 !</h2>
					<pre class="intro" id="intro-sub">
			                    고객님들이 수강하기 전 고민과 걱정을 덜어들이기 위해 다양한 정보 기입을 부탁드리고 있습니다. 
			                    질문지를 빠짐없이 입력해주세요. 작성된 폼은 ‘등록예정 클래스'에 등록되지만 정식 승인은 1-2일이 소요됩니다. 
                </pre>
				</div>
				<form action = "${ contextPath }/coffeeclass/createclass/insert" id="wrtieForm" method="post" enctype="multipart/form-data">
				<table id="clTable" style="white;">
					<tr id="clTr">
						<td>클래스명</td>
						<td class="answer"><input type="text" class="classdes" name="className" required></td>
					</tr>
					<tr>
						<td>사업자번호</td>
						<td class="answer"><input type="text" class="classdes" name = "busNo" required></td>
					</tr>
					<tr>
						<td>강사명</td>
						<td class="answer"><input type="text" class="classdes" name="trName" required></td>
					</tr>
					<tr>
						<td>강사사진</td>
						<td class="answer"><input type="file" class="classdes" name = "imgfile1" required>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><p style="font-size: 11px; float: left;">*얼굴 공개를 원하시지
								않을 경우 일반클래스 사진 올려주시면 됩니다.</p></td>
					</tr>
					<tr>
						<td>강사소개</td>
						<td class="answer"><input type="text" style="height: 200px;"
							class="classdes" name="trIntro"></td>
					</tr>

					<tr>
						<!--검색으로 select-->
						<td>주최카페</td>
						<td class="answer">
								<input type="text" id="linkedcafe" value="${ mycafe.caName }" readonly>
						</td>
					</tr>
					
					<tr>
						<td>카테고리</td>
						<td class="answer" style="text-align: left;">
						<select name="category">
							 <option selected disabled="disabled">난이도 선택</option>
							 <option value="coffee">로스팅/원두</option>
				             <option value="art">라테아트/디자인</option>
				             <option value="dessert">디저트</option>
				             <option value="certi">자격증</option>
				             <option value="etc">기타</option>
						</select></td>
					</tr>


					<tr>
						<td>클래스 한 줄 소개</td>
						<td class="answer"><input type="text" class="classdes" name="clShortDes"></td>
					</tr>

					<tr>
						<td>클래스 상세 소개</td>
						<td class="answer"><input type="textarea"
							style="line-height: 200px;" class="classdes" name="classDes"></td>
					</tr>

					<tr>
						<td>클래스 커리큘럼</td>
						<td class="answer"><input type="textarea" style="height: 200px;"
							class="classdes" name="classCurri" placeholder="10:00-11:00 커피와 함께하는 커피의 역사 -휴식10분- 11:10-12:00 현대 커피브랜드의 가치"></td>
					</tr>

					<tr>
						<td>클래스 대표 이미지</td>
						<td class="answer"><input type="file" class="classdes" name="imgfile2"></td>
					</tr>
					<tr>
						<td>클래스 기타이미지</td>
						<td class="answer"><input type="file" class="classdes" name="imgfile3"></td>
					</tr>
					
					
					<tr>
						
						<td>강의 날짜</td>
						<td class="answer" style="text-align: left;"><input
							type="date" class="classdate end classdes" name="classDate"></td>
					</tr>
					
					<tr>
						<td>강의 시간</td>
						<td class="answer">
						<input type="text" placeholder="하루 최대 3타임 운영가능" class="classdes" name="classTime"> 
						<input type="text" placeholder="예시 ) 10:00 - 12:00" class="classdes" name="classTime2">
						<input type="text" placeholder="예시 ) 19:00 - 21:00" class="classdes" name="classTime3">
						</td>
					</tr>

					<tr>
						<td>강의 장소</td>
						<td class="address">
						<label>주소입력란</label>
						<input type="text" class="classdes" name="classLoca1">
						<label>상세주소</label>
						<input type="text" class="classdes" name="classLoca2">
						</td>
					</tr>

					<!-- <tr>
            <h4>우편번호</h4>
            <td class = "answer"><input type="text" class = "classdes">
			<span class="input_area">
			<input type="text" name="post" class="postcodify_postcode5" id="postcode" readonly>
			</span>
			&nbsp; <button id="postcodify_search_button" type="button">검색</button>
			<h4>도로명주소</h4>
			<span class="input_area">
			<input type="text" name="address1" class="postcodify_address" readonly>
			</span>
			<h4>상세주소</h4>
			<span class="input_area">
			<input type="text" name="address2" class="postcodify_details">
			</span>
            </tr> -->

					<tr>
						<td>수강생 정원</td>
						<td class="answer"><input type="number" min="1" max="4" name="studentMax"
							class="classdes" placeholder="거리두기 방침으로 인해 최대인원이 4명으로 제한됩니다"></td>
					</tr>

					<tr>
						<td>희망 수강료</td>
						<td class="answer"><input type="text" class="classdes" name="clPrice"></td>
						<td>원</td>
					</tr>

					<tr>
						<td>수업 난이도</td>
						<td class="answer" style="text-align: left;">
						<select name="classLvl">
								<option>난이도 선택</option>
								<option value = "상">상</option>
								<option value = "중">중</option>
								<option value = "하">하</option>
						</select></td>
					</tr>

					<tr>
						<td>소요시간</td>
						<td class="answer"><input type="text"
							placeholder="분 단위로 입력해주세요" class="classdes" name="clRuntime"></td>
						<td>분</td>
					</tr>
				</table>
				
					<div class="btnarea">
						<button type="submit" class="btn" id="register">승인요청</button>
						&nbsp;
						<button type="button" class="btn" id="cancel"
							onclick="history.back()">등록취소</button>
					</div>
				</form>
			</div>


		</div>
	</div>
	
	
	
	 <!-- footer -->
	<jsp:include page="/WEB-INF/views/common/footer2.jsp"/>
</body>
</html>