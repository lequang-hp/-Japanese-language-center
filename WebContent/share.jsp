<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>     
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Chia sẻ của học viên</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
    
    <script type="text/javascript">
	    function Comment(){
			var xhttp;
			var user = document.getElementById("user").value;
			var content = document.getElementById("content").value;
			var email = document.getElementById("email").value;
		
			var url = "CommentController?user="+user+"&content="+content+"&email="+email;
			
			if(window.XMLHttpRequest){
				//code for chrome, firefox, Ie+7,Opera,Safari
				xhttp = new XMLHttpRequest();
			}
			else{
				xhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			
			xhttp.onreadystatechange = function(){
				if(xhttp.readyState == 4){
					var data = xhttp.responseText; //Lay du lieu tu Server
					document.getElementById("myComment").innerHTML = data;
				}
			}
			
			xhttp.open("post",url,true);
			xhttp.send();
	}
    </script>
</head>

<body>

   <!-- header-start -->
   <%@ include file = "header.jsp" %> 
   <!-- header-end -->
	
        <!-- bradcam_area_start -->
        <div class="bradcam_area breadcam_bg overlay2">
            <h3>Chia sẻ học viên</h3>
        </div>
        <!-- bradcam_area_end -->

    <!--================Blog Area =================-->
    <section class="blog_area single-post-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 posts-list">
                    <div class="single-post">
                        <div class="feature-img">
                            <img class="img-fluid" src="img/course2max.jpg" alt="" style="width: 750px;height: 375px;">
                        </div>
                        <div class="blog_details">
                            <h2>Suy nghĩ về khóa học ôn thi N2 tại LMQ
                            </h2>
                            <ul class="blog-info-link mt-3 mb-4">
                                <li><a href="#"><i class="fa fa-user"></i> Travel, Lifestyle</a></li>
                                <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
                            </ul>
                            <p class="excert">
                                MCSE boot camps have its supporters and its detractors. Some people do not understand why you
                                should have to spend money on boot camp when you can get the MCSE study materials yourself at a
                                fraction of the camp price. However, who has the willpower
                            </p>
                            <p>
                                MCSE boot camps have its supporters and its detractors. Some people do not understand why you
                                should have to spend money on boot camp when you can get the MCSE study materials yourself at a
                                fraction of the camp price. However, who has the willpower to actually sit through a
                                self-imposed MCSE training. who has the willpower to actually
                            </p>
                            <div class="quote-wrapper">
                                <div class="quotes">
                                    MCSE boot camps have its supporters and its detractors. Some people do not understand why you
                                    should have to spend money on boot camp when you can get the MCSE study materials yourself at
                                    a fraction of the camp price. However, who has the willpower to actually sit through a
                                    self-imposed MCSE training.
                                </div>
                            </div>
                            <p>
                                MCSE boot camps have its supporters and its detractors. Some people do not understand why you
                                should have to spend money on boot camp when you can get the MCSE study materials yourself at a
                                fraction of the camp price. However, who has the willpower
                            </p>
                            <p>
                                MCSE boot camps have its supporters and its detractors. Some people do not understand why you
                                should have to spend money on boot camp when you can get the MCSE study materials yourself at a
                                fraction of the camp price. However, who has the willpower to actually sit through a
                                self-imposed MCSE training. who has the willpower to actually
                            </p>
                        </div>
                    </div>
                    <div class="navigation-top">
                        <div class="d-sm-flex justify-content-between text-center">
                            <p class="like-info"><span class="align-middle"><i class="fa fa-heart"></i></span> Lily and 4
                                people like this</p>
                            <div class="col-sm-4 text-center my-2 my-sm-0">
                                <!-- <p class="comment-count"><span class="align-middle"><i class="fa fa-comment"></i></span> 06 Comments</p> -->
                            </div>
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div> <!--faceboook -->
                    </div>

                    <div class="blog-author">
                        <div class="media align-items-center">
                            <img src="img/1241.jpg" alt="" class="rounded-circle" style="width: 80px;height: 80px;">
                            <div class="media-body">
                                <a href="#">
                                    <h4>Kiều Đăng Nam</h4>
                                </a>
                                <p>Second divided from form fish beast made. Every of seas all gathered use saying you're, he
                                    our dominion twon Second divided from</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="comments-area">
                        
      					<h3>Comment</h3>
                        <div id="myComment">
                        	<c:forEach items="${list_cmt}" var="r">
								<img alt="" src="img/user.png" class="rounded-circle" style="width:60px;height:60px">
								<b>${r.user}</b><br/>
								<p>${r.content}</p>
								<hr/>
							</c:forEach>
                        </div>
                        
                    </div>
                    
                    
                    
                    <div class="comment-form">
                        <h4>Chia sẻ của bạn</h4>
                        <form class="form-contact comment_form" id="commentForm">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                  <textarea class="form-control w-100"  id="content" cols="30" rows="9"
                                            placeholder="Write Comment"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control"  id="user" type="text" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control" id="email" type="email" placeholder="Email" value="<%= session.getAttribute("email")%>" readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="button" class="button button-contactForm btn_1 boxed-btn" onclick="Comment()" value="Send Message">
                            </div>
                        </form>
                    </div>   
                </div>

                <div class="col-lg-4"></div>
            </div>
        </div>
    </section>
    <!--================ Blog Area end =================-->


   

    <!-- JS here -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>

    <!--contact js-->
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>

    <script src="js/main.js"></script>
    <script src="https://kit.fontawesome.com/f038d30f8a.js" crossorigin="anonymous"></script>
</body>

</html>