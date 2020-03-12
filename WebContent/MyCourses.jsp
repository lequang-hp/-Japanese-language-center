<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Khóa học cua tui</title>
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
	function checkDelete(){
		var course = document.getElementsByName("course");
		var count = 0;
		for(var i = 0; i < course.length;i++){
			if(course[i].checked)
				count++;
		}
		if(count == 0){
			alert("Bạn chưa chọn khóa học nào");
			return false;
		}
			
		else
			return true;
	}
	
</script>
</head>
<body>
	<!-- header-start -->
	<%@ include file="header.jsp"%>
	<!-- header-end -->

	<!-- bradcam_area_start -->
	<div class="bradcam_area breadcam_bg overlay2">
		<h3>Khóa học của tôi</h3>
	</div>

	<br />
	<br />

	<div class="container">
		<h2>Khóa học đã đăng ký</h2>
		<h2 style="color:red;"><%= request.getAttribute("TB") != null? request.getAttribute("TB"):" "%></h2>
		<form action="DeleteCourseController" onsubmit="return checkDelete()">
			<table class="table table-striped">
				<tbody>
					<c:forEach items="${list}" var="r">
						<tr>
							<td><span>Khóa học: </span> ${r}</td>
							<td><input type="checkbox" name = "course" value = "${r}"></td>
						</tr>	
					</c:forEach>
				</tbody>
			</table>
			<button type="submit" class="btn btn-outline-danger">Xóa các lựa chọn</button>
		</form>
	</div>
	


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
	<script src="https://kit.fontawesome.com/f038d30f8a.js"
		crossorigin="anonymous"></script>
</body>
</html>