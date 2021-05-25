<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
     <%@ include file="../includes/header.jsp" %>
 <style>
.container-wrap{
    padding: 50px;
    height: 59vh;
    margin-left:20%;
    margin-right: 20%;
}
.container-lg div{
    margin-bottom: 20px;
}
.btn-wrap{
	display:flex;
	justify-content: flex-end;
}
.btn-wrap button{
	margin-right: 10px;

}
.profile-title{
    border-bottom: 1px solid black;
    padding-bottom: 10px;
}

 </style>
 <div class="container-wrap">
     <div class="container-lg">
        <div class="profile-title">Object-Management</div>
        <form action="/object/register?idbno=${login.idbno}" method="post" id="objectform">
         <input type="hidden" name="idbno" class="idbno" id="idbno" value='<c:out value="${login.idbno}"/>' readonly="readonly">
        <div class="mb-3">
            <label for="period" class="form-label">기간</label>
            <input type="text" name="period" class="form-control" id="period" placeholder="ex)한달 3개월 1년">
          </div>
          <div class="mb-3">
            <label for="object" class="form-label">목표</label>
            <textarea name="object" class="form-control" id="object" rows="3" placeholder="ex)운동하기"></textarea>
          </div>
          <div class="form-floating">
            <select class="form-select" id="percent" name="percent" aria-label="Floating label select example">
              <option selected value="0">0%</option>
              <option value="10">10%</option>
              <option value="20">20%</option>
              <option value="30">30%</option>
              <option value="40">40%</option>
              <option value="50">50%</option>
              <option value="60">60%</option>
              <option value="70">70%</option>
              <option value="80">80%</option>
              <option value="90">90%</option>
            </select>
            <label for="floatingSelect">진행률 설정하기</label>
          </div>
          <div class="btn-wrap">
              <button type="submit" class="btn btn-outline-primary">설정하기</button>
              <button type="reset" class="btn btn-outline-danger">다시 작성하기</button>
          </div>
        </form>
    </div>
     </div>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <script type="text/javascript">
	$('#objectform').on('submit',function(e){
		if($('#period').val()==''){
			alert('기간을 입력해주세요');
			e.preventDefault();
		}else if($('#object').val()==''){
			alert('목표를 설정해주세요');
			e.preventDefault();
		}
	})
</script>

<%@include file="../includes/footer.jsp" %>