<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<footer>
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
</script>
</body>

</html>