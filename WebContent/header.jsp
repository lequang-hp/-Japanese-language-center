<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- header-start -->
<header>
	<div class="header-area ">
		<div id="sticky-header" class="main-header-area">
			<div class="container-fluid p-0">
				<div class="row align-items-center no-gutters">
					<!--Logo header-->
					<div class="col-xl-2 col-lg-2">
						<div class="logo-img">
							<a href="index.jsp"> <img src="img/MQ.png" alt=""
								style="height: 100px;">
							</a>
						</div>
					</div>

					<!--Thanh menu-->
					<div class="col-xl-7 col-lg-7">
						<div class="main-menu  d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a class="active" href="home.jsp">Trang chủ</a></li>
									<li><a href="course.jsp">Khóa học</a></li>
									<li><a href="#">Test<i class="ti-angle-down"></i></a>
										<ul class="submenu">
											<li><a href="NguPhap.jsp">Ngữ Pháp</a></li>
											<li><a href="TuVung.jsp">Từ vựng</a>
										</ul></li>

									<li><a href="CommentForward">Chia sẻ học viên</a></li>
								</ul>
							</nav>
						</div>
					</div>


					<!--Login-->
					<div class="col-xl-3 col-lg-3 d-none d-lg-block">
						<div class="log_chat_area d-flex align-items-center">
							<div class="dropdown">
								<button type="button" class="btn btn-primary dropdown-toggle"
									data-toggle="dropdown">
									<i class="flaticon-user" style="color: white;"></i> <span
										style="color: white; font-size: 120%;">: <%=session.getAttribute("name")%></span>
								</button>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="LogoutController">Đăng xuất</a>
									<a class="dropdown-item" href="Account.jsp">Thông tin tài
										khoản</a>
									<a class="dropdown-item" href="MyCoursesForward">Khóa học của tôi</a>	
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- header-end -->