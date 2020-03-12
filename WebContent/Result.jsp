<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>     
<%@page import="BEAN.Question"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Kết quả</title>
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
    
    <!-- bradcam_area_start -->
    <div class="bradcam_area breadcam_bg overlay2">
        <h3>Kết quả</h3>
    </div>
    <!-- bradcam_area_end -->
    
    
    <div class="container" style="margin-top: 150px;">
        <div class="row">
            <div class="col-lg-9" >
                <div class="contant" style="width: 95%;height: 100%;padding: 10px;background-color: white;">
                    <h3>Kết quả bài kiểm tra: <%=request.getAttribute("result") %>/10</h3>
                   
                    <h3>Các câu sai: 
                    	<c:forEach items="${IDWrong}" var="r">
                    		${r} <span>, </span>
                    	</c:forEach>
                    </h3>	
                    
                    <h3>Đáp án: 
	                    <c:forEach items="${list_da}" var="r">
	                    	${r} <span>, </span>
	                    </c:forEach>
                    </h3>
                </div>
            </div>

            <div class="col-lg-3" style="margin: 0;padding: 0;">
                <div class="blog_right_sidebar">
                    <aside class="single_sidebar_widget search_widget">
                        <form action="#">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder='Search Keyword'
                                           onfocus="this.placeholder = ''"
                                           onblur="this.placeholder = 'Search Keyword'">
                                    <div class="input-group-append">
                                        <button class="btn" type="button"><i class="ti-search"></i></button>
                                    </div>
                                </div>
                            </div>
                            <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">Search</button>
                        </form>
                    </aside>

                    <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title">Bài viết mới nhất</h4>
                        <ul class="list cat-list">
                            <li><form action="GoiController"><button type="submit" value="goin51" name ="goi" class="btn btn-outline-primary">Bài kiểm tra từ vựng N5 số 1</button></form></li>
                            <li><form action="GoiController"><button type="submit" value="goin41" name ="goi" class="btn btn-outline-primary">Bài kiểm tra từ vựng N4 số 1</button></form></li>
                            <li><form action="GoiController"><button type="submit" value="goin21" name ="goi" class="btn btn-outline-primary">Bài kiểm tra từ vựng N2 số 1</button></form></li>
                            <li><form action="GoiController"><button type="submit" value="goin22" name ="goi" class="btn btn-outline-primary">Bài kiểm tra từ vựng N2 số 2</button></form></li>
                            <li><form action="GoiController"><button type="submit" value="goin23" name ="goi" class="btn btn-outline-primary">Bài kiểm tra từ vựng N2 số 3</button></form></li>
                        </ul>
                    </aside>

                </div>
            </div>
        </div>
    </div>
    
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
    <script src="https://kit.fontawesome.com/f038d30f8a.js" crossorigin="anonymous"></script>
</body>
</html>