<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <%@ include file="../includes/header.jsp" %>
 
 <style>

.uploadResult {
    width: 100%;
    background-color: gray;
}

.uploadResult ul {
    display: flex;
    flex-flow: row;
    justify-content: center;
    align-items: center;
}

.uploadResult ul li {
    list-style: none;
    padding: 10px;
}

.uploadResult ul li img {
    width: 100px;
}


 .btn-wrap{
	display:flex;
	justify-content: flex-end;
	padding:20px;
}
.btn-wrap button{
	margin-right: 10px;

}
</style>

<div class="board-wrap">
 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Write</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Register
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        
                        <form role="form" action="/board/register" method="post">
                        
                        	<div class="form-group">
                        		<label>Title</label> 
                        		<input class="form-control" name='title'>
                        	</div>
                        	
                        	<div class="form-group">
                        		<label>Text area</label> 
                        		<textarea class="form-control" rows="5"  name='content'></textarea>
                        	</div>
                        	
                        	<div class="form=group">
                        		<label>Writer</label> 
                        		<input class="form-control" name='writer' value="${login.nickname}" readonly="readonly">
                        	</div>
                        	<div class="btn-wrap">
                        	<button type="submit" class="btn btn-outline-primary">전송하기</button>
                        	<button type="reset" class="btn btn-outline-danger">다시 작성하기</button>
                        	</div>
                        </form>
                        </div>
                        </div>
                        </div>
                        </div> <!-- end row  -->

</div>
<script>



</script>


<%@include file="../includes/footer.jsp" %>  