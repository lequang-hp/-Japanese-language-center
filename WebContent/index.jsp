<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ</title>
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
    	function loginValidate(){
    		var count = 0;
    		//B1
    		var txtEmail = document.getElementById("txtEmail").value;
    		var txtPass = document.getElementById("txtPass").value;
    		
    		//B2
    		var errEmail = document.getElementById("errEmail");
    		var errPass = document.getElementById("errPass");
    		
    		if(txtEmail.length == 0)
    			errEmail.innerHTML = "Không để trống phần này";
    		else{
    			errEmail.innerHTML = "";
    			count++;
    		}
    		
    		if(txtPass.length == 0)
    			errPass.innerHTML = "Không để trống phần này";
    		else{
    			errPass.innerHTML = "";
    			count++;
    		}
    		
    		if(count == 2) return true;
    		else return false;
    	}
    	
    	function registerValidate(){
    		var count = 0;
    		//B1
    		var txtEmail = document.getElementById("txtEmail").value;
    		var txtPass = document.getElementById("txtPass").value;
    		var txtPass2 = document.getElementById("txtPass2").value;
    		
    		//B2
    		var errEmail = document.getElementById("errEmail");
    		var errPass = document.getElementById("errPass");
    		var errPass2 = document.getElementById("errPass2");
    		
    		//B3
    		
    		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    		if(txtEmail.length == 0)
    			errEmail.innerHTML = "Không để trống phần này";
    		else{
    			if (txtEmail.match(mailformat)) {
    		        errEmail.innerHTML = "";
    		        count++;
    		    } else{
    		        errEmail.innerHTML = "Email không hợp lệ";
    		    } 
    		}
    		
    		if(txtPass.length == 0)
    			errPass.innerHTML = "Không để trống phần này";
    		else if(txtPass.length < 4)
    			errPass.innerHTML = "Mật khẩu không dưới 4 ký tự";
    		else{
    			errPass.innerHTML = "";
    			count++;
    		}
    		
    		if(txtPass2.length == 0)
    			errPass2.innerHTML = "Không để trống phần này";
    		else{
    			if(txtPass2 != txtPass)
    				errPass2.innerHTML = "Mật khẩu không khớp";
    			else{
    				errPass2.innerHTML = "";
    				count++;
    			}
    		}
		    
    		if(count == 3) return true;
    		else return false;
		}
    	
    	function checkLogin(){
    		var txtEmail = document.getElementById("txtEmail").value;
    	    var txtPass = document.getElementById("txtPass").value;
    	   	if(txtEmail.length == 0 || txtPass.length == 0) {
    	    	alert("Bạn phải login mới thực hiện được");
    	    }
    	}
    </script>
    
</head>
<body>

	<!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid p-0">
                    <div class="row align-items-center no-gutters">
                        <!--Logo header-->
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo-img">
                                <a href="index.jsp">
                                    <img src="img/MQ.png" alt="" style="height: 100px;">
                                </a>
                            </div>
                        </div>

                        <!--Thanh menu-->
                        <div class="col-xl-7 col-lg-7">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="active" href="index.jsp">Trang chủ</a></li>
                                        <li><a href="#" onclick="checkLogin()">Khóa học</a></li>
                                        <li><a href="#">Test<i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="#" onclick="checkLogin()">Ngữ Pháp</a></li>
                                                <li><a href="#" onclick="checkLogin()">Từ vựng</a>
                                            </ul>
                                        </li>

                                        <li><a href="#"  onclick="checkLogin()">Chia sẻ học viên</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>

						
                        <!--Login-->
                        <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                            <div class="log_chat_area d-flex align-items-center">
                                <a href="#test-form" class="login popup-with-form">
                                    <i class="flaticon-user"></i>
                                    <span>Đăng nhập</span>
                                </a>
                            </div>
                            <span style="color:yellow;float:right;font-weight: bold;"><%= request.getAttribute("TB") != null? request.getAttribute("TB"):" "%></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->
    
    <!-- slider_area_start -->
    <div class="slider_area ">
        <div class="single_slider d-flex align-items-center justify-content-center slider_bg_1">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-xl-6 col-md-6">
                        <div class="illastrator_png">
                            <img src="img/banner/edu_ilastration.png" alt="">
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="slider_info">
                            <h3>Chinh phục <br>
                                Tiếng Nhật <br>
                            </h3>
                            <a href="#" class="boxed_btn" onclick="checkLogin()">Khóa học của chúng tôi</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider_area_end -->
    
    <!-- Events -->
    <!-- popular_courses_start -->
    <div class="popular_courses">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title text-center mb-100">
                        <h3>Khóa học sắp khai giảng</h3>
                    </div>
                </div>
            </div>
        </div>

        <div class="all_courses">
            <div class="container">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="row">
                                    <div class="col-xl-4 col-lg-4 col-md-6">
                                        <div class="single_courses">
                                            <div class="thumb">
                                                <a href="#" onclick="checkLogin()">
                                                    <img src="img/kaiwa.jpg" alt="" style="width: 400px;height: 240px;">
                                                </a>
                                            </div>
                                            <div class="courses_info">
                                                <span>Học giao tiếp</span>
                                                <h3><a href="#" onclick="checkLogin()">Kaiwa trực tuyến</a></h3>
                                                <div class="star_prise d-flex justify-content-between">
                                                    <div class="star">
                                                        <i class="flaticon-mark-as-favorite-star"></i>
                                                        <span>(4.5)</span>
                                                    </div>
                                                    <div class="prise">
                                                        <span class="offer">$89.00</span>
                                                        <span class="active_prise">
                                                            $0
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6">
                                        <div class="single_courses">
                                            <div class="thumb">
                                                <a href="#" onclick="checkLogin()">
                                                    <img src="img/course2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="courses_info">
                                                <span>Luyện JLPT</span>
                                                <h3><a href="#" onclick="checkLogin()">Ôn thi JLPT N2</a></h3>
                                                <div class="star_prise d-flex justify-content-between">
                                                    <div class="star">
                                                        <i class="flaticon-mark-as-favorite-star"></i>
                                                        <span>(4.5)</span>
                                                    </div>
                                                    <div class="prise">
                                                        <span class="offer">$89.00</span>
                                                        <span class="active_prise">
                                                            $0
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6">
                                        <div class="single_courses">
                                            <div class="thumb">
                                                <a href="#" onclick="checkLogin()">
                                                    <img src="img/course3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="courses_info">
                                                <span>Luyện JLPT</span>
                                                <h3><a href="#" onclick="checkLogin()">Ôn thi JLPT N3</a></h3>
                                                <div class="star_prise d-flex justify-content-between">
                                                    <div class="star">
                                                        <i class="flaticon-mark-as-favorite-star"></i>
                                                        <span>(4.5)</span>
                                                    </div>
                                                    <div class="prise">
                                                        <span class="offer">$89.00</span>
                                                        <span class="active_prise">
                                                            $0
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-12">
                                        <div class="more_courses text-center">
                                            <a href="#" onclick="checkLogin()" class="boxed_btn_rev">Xem thêm</a>
                                        </div>
                                    </div>
                                </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- popular_courses_end-->
    
    <!-- testimonial_area_start -->
    <div class="testimonial_area testimonial_bg_1 overlay">
        <div class="testmonial_active owl-carousel">
            <div class="single_testmoial">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="testmonial_text text-center">
                                <div class="author_img">
                                    <img src="img/6874.jpg" alt="" class="rounded-circle" style="width:250px;height:250px;">
                                </div>
                                <p>Điều tuyệt vời nhất là mình được truyền cảm hứng, thái độ đúng đắn và phương pháp học tập hiệu quả. Có những thứ đó rồi thì ngay cả khi không còn học trên lớp nữa,
                                    mình vẫn có thể tự tìm hiểu và tiếp tục học lên các trình độ cao hơn.</p>
                                <span>Nguyễn Trung Thành (N1 180/180)</span>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="single_testmoial">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="testmonial_text text-center">
                                <div class="author_img">
                                    <img src="img/1241.jpg" alt="" class="rounded-circle" style="width:250px;height:250px;">
                                </div>
                                <p>Với mình đây giống như ngôi nhà thứ 2 vậy.
                                    Đây là nơi mình đã nuôi dưỡng tình yêu, niềm tin và
                                    ước mơ về đất nước mặt trời mọc. Phương pháp học đặc biệt
                                    của LMQ đã truyền cảm hứng học tiếng Nhật, tự giác – điều cần phải có nếu
                                    muốn làm việc cho công ty Nhật hoặc đi du học Nhật Bản.</p>
                                <span>Kiều Đăng Nam (N2 180/180)</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- testimonial_area_end -->
    
    <!-- our_courses_start -->
    <div class="our_courses">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title text-center mb-100">
                        <h3>Khóa học đặc biệt của chúng tôi</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-3 col-md-6 col-lg-6">
                    <div class="single_course text-center">
                        <div class="icon">
                            <i class="flaticon-art-and-design"></i>
                        </div>
                        <p>
                            Luôn có những bài học thiết kế dành riêng cho bạn
                        </p>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 col-lg-6">
                    <div class="single_course text-center">
                        <div class="icon blue">
                            <i class="flaticon-business-and-finance"></i>
                        </div>
                        <p>
                            Trải nghiệm phương pháp học thú vị
                        </p>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 col-lg-6">
                    <div class="single_course text-center">
                        <div class="icon">
                            <i class="flaticon-premium"></i>
                        </div>
                        <p>
                            Giáo trình được biên soạn khoa học
                        </p>
                    </div>
                </div>

                <div class="col-xl-3 col-md-6 col-lg-6">
                    <div class="single_course text-center">
                        <div class="icon gradient">
                            <i class="flaticon-crown"></i>
                        </div>
                        <p>
                            Luôn có hệ thống bài tập,kiểm tra phong phú
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- our_courses_end -->
    
    <!-- footer -->
    <footer class="footer footer_bg_1" style="height: 70%;">
        <div class="footer_top">
            <div class="container">
                <img src="img/MQ.png" style="height: 100px;">
                <div class="row">
                    <div class="col-sm-6">
                        <br/>
                        <img  src="https://9mobi.vn/cf/Images/ba/2018/3/28/google-maps-ho-tro-39-ngon-ngu-khac-nhau.jpg">
                    </div>
                    <div class="col-sm-6">
                        <br/><h3 style="color: white;">Trung tâm tiếng Nhật LMQ</h3>
                        <i class="fas fa-envelope-square" style="font-size: 20px;color: #0048bc;"></i><span style="color: white;">Email:lequang0810@gmail.com</span>
                        <br/><br/>

                        <div class="card-columns">
                            <div class="card bg-primary">
                                <div class="card-body text-center">
                                    <p class="card-text" style="color: white;">Học Online</p>
                                    <i class="fas fa-phone-alt" style="font-size: 20px;color: red;"></i>
                                    <span style="font-weight: bold;color: white" >0123456789</span>
                                </div>
                            </div>
                            <div class="card bg-warning">
                                <div class="card-body text-center">
                                    <p class="card-text" style="color: white;">Học tại trung tâm</p>
                                    <i class="fas fa-phone-alt" style="font-size: 20px;color: red;"></i>
                                    <span style="font-weight: bold;color:white;">0123456789</span>
                                </div>
                            </div>
                            <div class="card bg-success">
                                <div class="card-body text-center">
                                    <p class="card-text" style="color: white;">Du học Nhật Bản</p>
                                    <i class="fas fa-phone-alt" style="font-size: 20px;color: red;"></i>
                                    <span style="font-weight: bold;color: white">0456789123</span>
                                </div>
                            </div>
                            <div class="card bg-danger">
                                <div class="card-body text-center">
                                    <p class="card-text" style="color: white;">Tuyển dụng</p>
                                    <i class="fas fa-phone-alt" style="font-size: 20px;color: red;"></i>
                                    <span style="font-weight: bold;color: white;">0135792468</span>
                                </div>
                            </div>
                        </div>
                        <br/>
                        <i class="fab fa-facebook-square" style="font-size: 20px;color: #007bff;"></i>
                        <i class="fab fa-youtube" style="font-size: 20px;color: red;"></i>
                        <span style="color: white;">Copyright © 2019 LMQ All Rights Reserved</span>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- footer -->


    <!-- form itself end-->
    <form id="test-form" class="white-popup-block mfp-hide" action="LoginController" method="post" onsubmit="return loginValidate()">
        <div class="popup_box ">
            <div class="popup_inner">
                <div class="logo text-center">
                    <a href="#">
                        <img src="img/MQ.png" alt="" style="height: 100px;">
                    </a>
                </div>
                <h3>Đăng nhập</h3>
                
                    <div class="row">
                        <div class="col-xl-12 col-md-12">
                        	<span id="errEmail" style="color:white;"></span>
                            <input type="email" placeholder="Enter email" name="email" id="txtEmail">
                        </div>
                        <div class="col-xl-12 col-md-12">
                        	<span id = "errPass" style="color:white;"></span>
                            <input type="password" placeholder="Password" name="password" id = "txtPass">
                        </div>
                        <div class="col-xl-12">
                            <input type="submit" class="boxed_btn_orange" onclick="loginValidate()" value="Đăng nhập">
                        </div>
                    </div>
               
                <p class="doen_have_acc">Bạn chưa có tài khoản? <a class="dont-hav-acc" href="#test-form2">Đăng ký</a>
                </p>
            </div>
        </div>
    </form>
    <!-- form itself end -->

    <!-- form itself end-->
    <form id="test-form2" class="white-popup-block mfp-hide" onsubmit="return registerValidate()" action="RegisterController" method="post">
        <div class="popup_box ">
            <div class="popup_inner">
                <div class="logo text-center">
                    <a href="index.jsp">
                        <img src="img/MQ.png" alt="" style="height: 100px;">
                    </a>
                </div>
                <h3>Đăng ký</h3>
                
                    <div class="row">
                        <div class="col-xl-12 col-md-12">
                        	<span id="errEmail" style="color:white;"></span>
                            <input type="email" placeholder="Enter email: xxx@gmail.com" id = "txtEmail" name = "email">
                        </div>
                        <div class="col-xl-12 col-md-12">
                        	<span id="errPass" style="color:white;"></span>
                            <input type="password" placeholder="Password" id = "txtPass" name = "password">
                        </div>
                        <div class="col-xl-12 col-md-12">
                        	<span id="errPass2" style="color:white;"></span>
                            <input type="Password" placeholder="Confirm password" id="txtPass2">
                            
                        </div>
                        <div class="col-xl-12">
                            <button type="submit" class="boxed_btn_orange" onclick="registerValidate()">Đăng ký</button>
                        </div>
                    </div>
            </div>
        </div>
    </form>
    <!-- form itself end -->
    
    
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
    <script src="https://kit.fontawesome.com/f038d30f8a.js"></script>
    
</body>
</html>