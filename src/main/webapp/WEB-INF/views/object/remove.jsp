<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
     <%@ include file="../includes/header.jsp" %>
    
    <style>
.container-fluid{
	margin-left: 30%;
	height: 50vh;
}
.btn-wrap{
	margin-left: 40%;
}
.p-5{
	padding-bottom: 0px;
}
footer{
	margin-top:0px;	
	height: 220px;
}

    </style>
     
     <form action="/object/remove" method="post">
   <div class="p-5 mb-4 bg-light rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">목표를 달성하셨습니까?</h1>
        <p class="col-md-8 fs-4">달성하지 못하셨다면 한번 더 도전해보세요!! 할 수 있습니다!!</p>
        <div class="btn-wrap"><button class="btn btn-primary btn-lg" type="submit">삭제</button></div>
        <input type="hidden" id="bno" name="bno" value='<c:out value="${object.bno }"/>'>
        <input type="hidden" id="idbno" name="idbno" value='<c:out value="${object.idbno }"/>'>
        
      </div>
    </div> 
    </form> 

     
<%@include file="../includes/footer.jsp" %>