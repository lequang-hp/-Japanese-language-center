<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home page</title>
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
</head>
<body>

	<!-- header-start -->
	<%@ include file = "header.jsp" %>
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
                            <a href="course.jsp" class="boxed_btn">Khóa học của chúng tôi</a>
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
                                                <a href="#">
                                                    <img src="img/kaiwa.jpg" alt="" style="width: 400px;height: 240px;">
                                                </a>
                                            </div>
                                            <div class="courses_info">
                                                <span>Học giao tiếp</span>
                                                <h3><a href="#">Kaiwa trực tuyến</a></h3>
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
                                                <a href="#">
                                                    <img src="img/course2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="courses_info">
                                                <span>Luyện JLPT</span>
                                                <h3><a href="course_N2.jsp">Ôn thi JLPT N2</a></h3>
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
                                                <a href="#">
                                                    <img src="img/course3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="courses_info">
                                                <span>Luyện JLPT</span>
                                                <h3><a href="course_N3.jsp">Ôn thi JLPT N3</a></h3>
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
                                            <a href="course.jsp" class="boxed_btn_rev">Xem thêm</a>
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
    <%@ include file = "footer.jsp" %>
    <!-- footer -->

    
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