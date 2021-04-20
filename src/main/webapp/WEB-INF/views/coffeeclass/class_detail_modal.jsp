<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ClassModals</title>
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">  
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <!-- css추가 -->
    <link rel="stylesheet" href="${ contextPath }/resources/css/coffeeclass/classdetail.css">
    <!-- bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <!-- bootstrap js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <!-- jQuery-->
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <!-- iamport -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>

	  <!-- 클래스 삭제 Modal -->
	  <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
			<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #4B654A;">
				<h5 class="modal-title" id="deleteModalLabel" style="color: white;">
					<img src="${ contextPath }/resources/img/common/logo-lahol2.png" class = "logoimg"
					style="width : 30px; height: 30px;">
					경고
				</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
				
				<h5 class="sorry-text"> 삭제 유의사항 </h5> 
	            <h6>클래스 삭제 시 업로드하신 클래스의 내용과 함께 댓글과 질의응답 </h6>
	            	<h6 style="color:red"> 모두 삭제되며 복구가 어렵습니다. </h6>
	                <h6> * 클래스가 종료되어 삭제를 하시는 경우라면 
	               	 클래스가 종료시 일반사용자들에게 더 이상 노출이 되지 않으며 사업자 본인만 클래스 내용들을 확인할 수 있음을 알려드립니다. 
	                </h6>
	
						<br>
						<p class="alert-text">
						정말 삭제하시겠습니까? 
						</p>
					</p>
					
					</div>
					<div class="modal-footer" style="background-color: #4B654A;">
					<button type="button" class="btn btn-danger" onclick="location.href='${ contextPath }/coffeeclass/deleteClass?classNo=${ coffeeclass.classNo }'"
					>삭제</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					</div>
				</table>
			</div>
			</div>
		</div>
 
  
 	    <!-- 클래스 신고Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #4B654A;">
				<h5 class="modal-title" id="exampleModalLabel" style="color: white;">
					<img src="${ contextPath }/resources/img/common/logo-lahol2.png" style="width : 30px; height: 30px;">
					클래스신고
				</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
				<h5  style="text-align: center; padding: 5vh;">페이지 사용에 불편을 드려 죄송합니다. <br> 신고가 접수되면 3일내로 처리됩니다. </h5>
					<form action = "${ contextPath }/coffeeclass/classreport" method="post">
					<td><input name ="classNo" type="hidden" value="${ coffeeclass.classNo }"></td>
					<table style="width: 100%;">					
						<tr>
							<td>신고 클래스</td>
							<td aria-readonly="true">${ coffeeclass.className }</td>
						</tr>
						<tr>
							<td>신고사유</td>
							<td>
								<select name="rpReason">
									<option disabled="disabled" selected>
										--신고사유선택--
									</option>
									<option>
										강사의 부적절한 언어 및 행위
									</option>
									<option>
										강사 허위자격(실력의심)
									</option>
									<option>
										강의 중 상품강매
									</option>
									<option>
										기타
									</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>사유 상세 설명</td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea name="rpDeets" style="width: 100%; line-height: 15vh;"></textarea>
							</td>
						</tr>
					</table>
						<br>
						<p class="alert-text" style="color:rgb(170, 42, 42); font-size: 12px;">
						허위신고일 경우, 신고자의 활동이 제한될 수 있으니 신중하게 신고해주세요. 
						</p>					
					<div class="modal-footer"  style="background-color: #4B654A;">
					<button type="submit" class="btn btn-danger">신고</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					</div>
					</form>
					</div>
			</div>
			</div>
		</div>
		
		 <!-- 댓글 신고Modal -->
		<div class="modal fade" id="commentModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #4B654A;">
				<h5 class="modal-title" id="exampleModalLabel" style="color: white;">
					<img src="${ contextPath }/resources/img/common/logo-lahol2.png" style="width : 30px; height: 30px;">
					댓글신고
				</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
				<h5  style="text-align: center; padding: 5vh;">페이지 사용에 불편을 드려 죄송합니다. <br> 신고가 접수되면 3일내로 처리됩니다. </h5>
					<form action = "${ contextPath }/coffeeclass/classreport" method="post">
					<td><input name ="classNo" type="hidden" value="${ coffeeclass.classNo }"></td>
					<table style="width: 100%;">					
						<tr>
							<td>신고 대상</td>
							<td aria-readonly="true">작성자아이디</td>
						</tr>
						<tr>
							<td>신고사유</td>
							<td>
								<select name="rpReason">
								<option disabled="disabled" selected>
									--신고사유선택--
								</option>
								<option>
									욕설/비방
								</option>
								<option>
									음란/부적절 언어사용
								</option>
								<option>
									허위사실 유포
								</option>
								<option>
									광고/도배
								</option>
								<option>
									기타
								</option>
							</select>
							</td>
						</tr>
						<tr>
							<td>사유 상세 설명</td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea name="rpDeets" style="width: 100%; line-height: 15vh;"></textarea>
							</td>
						</tr>
					</table>
						<br>
						<p class="alert-text" style="color:rgb(170, 42, 42); font-size: 12px;">
						허위신고일 경우, 신고자의 활동이 제한될 수 있으니 신중하게 신고해주세요. 
						</p>					
					<div class="modal-footer"  style="background-color: #4B654A;">
					<button type="submit" class="btn btn-danger">신고</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					</div>
					</form>
					</div>
			</div>
			</div>
		</div>
  


</body>
</html>