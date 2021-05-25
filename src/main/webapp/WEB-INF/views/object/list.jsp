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
          <c:forEach items="${list}" var="object">
           
          <input type="text" name="idbno" class="idbno" id="idbno" value='<c:out value="${object.idbno}"/>' readonly="readonly">
          <tr>
          <th scope="row"><c:out value="${object.bno}" /></th>
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
    </div>
</div>  

     
<%@include file="../includes/footer.jsp" %>