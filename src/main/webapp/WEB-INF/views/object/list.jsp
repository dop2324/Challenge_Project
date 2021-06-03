<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
     <%@ include file="../includes/header.jsp" %>
    
    <style>
    
    .profile-wrap{
    padding: 50px;
    height: 59vh;
}
.profile-header{
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-bottom: 20px;
}
.head-grow{
    flex-grow: 0.8;
}
tbody a {
    text-decoration: none;
}
tbody a::before{
    color:black;
}

tbody a:visited {
    color: black;
}
.idbno{
	display:none;
}
    </style>
<div class= "container-wrap" style="height: 140vh;">
   <div class="container-lg">
     <div class="profile-wrap">  
        <div class="profile-header">
            <div class="profile-title">Object-Management</div>
            <div class="head-grow"></div>
            <div class="object-create"><a href="/object/register?idbno=${login.idbno}" class="btn btn-outline-primary">목표 생성</a></div>
          <!--   <div class="object-delete"><a href="/object/remove" class="btn btn-outline-danger">목표 삭제</a></div> -->
        </div>
    
    <table class="table table-hover">
        <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">목표</th>
              <th scope="col">기간</th>
              <th scope="col">Percent</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${list}" var="object" varStatus="status">
           
          <input type="text" name="idbno" class="idbno" id="idbno" value='<c:out value="${object.idbno}"/>' readonly="readonly">
          <tr>
          <th scope="row"><c:out value="${status.count}" /></th>
              <td><a href='/object/get?bno=<c:out value="${object.bno}" />&idbno=<c:out value="${object.idbno}" />'><c:out value="${object.object}" /></a></td>
              <td><c:out value="${object.period}" /></td>
              <td><div class="progress">
                <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" style="width: <c:out value="${object.percent}" />%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                <c:out value="${object.percent}" />%</div>
              </div></td>
              </tr>
              </c:forEach>
            
          </tbody>
      </table>
      <div class="btn-wrap" style="display:flex; justify-content: flex-end;">
      <div class="info-toggle btn btn-outline-warning" >회원 정보 보기</div>
      </div>
      
       <!-- 회원정보 테이블 --> 
       <form role="form" action="/main/modify" method="post">
	     <div class="container-sm">
	     	<div class="m-info mb-3" style="border-bottom: 1px solid black; margin-top:100px;">회원정보</div>
	     <div class="m-wrap" style="padding-left: 10px;">
	     	<input type="hidden" class="m-content input-group mb-3" value="${sessionScope.login.idbno }" readonly="readonly" name='idbno' >
	     <div class="m-title">아이디</div>
			<input type="text" class="m-content input-group mb-3" value="${sessionScope.login.id }" readonly="readonly" name='id' >
		<div class="m-title">비밀번호</div>
			<input type="password" class="m-content input-group mb-3" value="${sessionScope.login.password }" name='password' >
		<div class="m-title">성별</div>
			<input type="text" class="m-content input-group mb-3" value="${sessionScope.login.gender }" readonly="readonly" name='gender' >
		<div class="m-title">이름</div>
			<input type="text" class="m-content input-group mb-3" value="${sessionScope.login.name }" readonly="readonly" name='name' >
		<div class="m-title">닉네임</div>
			<input type="text" class="m-content input-group mb-3" value="${sessionScope.login.nickname }" name='nickname' >
		<div class="m-title">이메일</div>
			<input type="text" class="m-content input-group mb-3" value="${sessionScope.login.email }" name='email' >
		</div>
		<div class="btn-wrap" style="display:flex; justify-content: flex-end;">
       		<button type="submit" data-oper="modify" class="btn btn-outline-success" >회원 정보 수정</button>
      <div class="member-remove" style="margin-left:30px;" ><a href="/object/delete?idbno=${login.idbno}" class="btn btn-outline-danger" style="padding:19px;">회원 탈퇴</a></div>
    	</div>
		</div>
		</form>
			
		     </div> 
		</div>
		</div>  

<script>
	$(".container-sm").hide();
	
	$(".info-toggle").click(function(){
		$(".container-sm").toggle();
	});
</script>
     
<%@include file="../includes/footer.jsp" %>