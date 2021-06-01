<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<footer style=" left:0; bottom:0; width: 100%;">
    <div>
        Tel) 010 - 9923 - 2910
    </div>
    <div>
        E-mail) dop2324@naver.com
    </div>
</footer>


<script>
        $('.head-nav').click(function(){ 
            $('.head-nav').animate({ marginLeft : '100px'});
            $('.head-nav-content').animate({ marginLeft : '0px' , left : '0px'})
            $('.span-nav').css('background','white');
            $('.span-nav').addClass('span-nav-1');
        });
        $('#modalCloseBtn').click(function(){
        	$('#myModal').modal('hide');
        });
        
        $('.close').hide();
</script>
</body>

</html>