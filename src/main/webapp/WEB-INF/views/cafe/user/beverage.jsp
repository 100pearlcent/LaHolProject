<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음료 선택 페이지</title>
<!-- beverage css -->
<link rel="stylesheet" href="${ contextPath }/resources/css/cafe/user/beverage.css">
</head>
<body style="background: #f0ebe5;">
	
	<!-- menubar -->
	<jsp:include page="/WEB-INF/views/common/menubar.jsp"/>
	
	<!-- 음료  -->
    <div class="beverage-content">
    <div class="beverage-TB">
    <!-- 정렬 방식 -->
    <section class="content-cafe-sc">
    <h1 class="berCate">BEVERAGE</h1>
        <div class="container" id="ct-cf">          
            <div class="row row-cols-4" id="rowP">
            <c:forEach var="coffee" items="${ Coffeelist }">
            <c:choose>
            <c:when test="${!empty coffee}">
	            <div class="col" >
	                <div class="card" id="cardShape" data-bs-toggle="modal" data-bs-target="#staticBackdrop${ coffee.cfNo }">
                        <img src="${ contextPath }/resources/nuploadFiles/cafeImg/${ coffee.cfIchname }" class="card-img-top" alt="...">
                        <div class="card-body" id="card-body">
                            <h4 class="card-text">${ coffee.cfName }</h4>
                            <p style="color: #96877D">${ coffee.cfPrice }원</p>
                        </div>
                    </div>
	            </div>
	            <%@include file="./beverageModal.jsp" %>
	            
            </c:when>
            </c:choose> 
          	
            </c:forEach>
            </div>
            
        </div>
       

    </section>

    

    </div>
    </div>

    <!-- 장바구니 -->
    <%@include file="./bevCart.jsp" %>

	<!-- footer -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>