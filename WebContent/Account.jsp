<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tài khoản cá nhân</title>
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
    
    <style>
       
        .content{
            margin: auto;
            margin-top: 50px;
            width: 60%;
            height: 550px;
        }

        .repass{
            width: 100%;
            height: 300px;
        }
    </style>

    <script>
       function Validate() {
           var count = 0;
           var pass = document.getElementById("pass").value;
           var newPass = document.getElementById("newPass").value;
           var newPass2 = document.getElementById("newPass2").value;

           var errPass = document.getElementById("errPass");
           var errNewPass = document.getElementById("errNewPass");
           var errNewPass2 = document.getElementById("errNewPass2");

           if (pass.length == 0)
               errPass.innerHTML = "* Không để trống phần này";
           else{
               errPass.innerHTML = "";
               count++;
           }

           if(newPass.length == 0)
               errNewPass.innerHTML = "* Không để trống phần này";
           else if(newPass.length < 4)
               errNewPass.innerHTML = "* Mật khẩu không dưới 4 ký tự";
           else{
               errNewPass.innerHTML = "";
               count++;
           }

           if(newPass2.length == 0)
               errNewPass2.innerHTML = "* Không để trống phần này";
           else if (newPass != newPass2)
               errNewPass2.innerHTML = "* Mật khẩu không khớp";
           else{
               errNewPass2.innerHTML = "";
               count++;
           }

           if (count == 3) return true;
           else return false;
       }
    </script>
</head>
<body>
	<!-- header-start -->
    <%@ include file = "header.jsp" %>
    <!-- header-end -->
    
    <!-- bradcam_area_start -->
    <div class="bradcam_area breadcam_bg overlay2">
        <h3>Thông tin tài khoản</h3>
    </div>
    
    <br/><br/>
    <h3 style="color:red;text-align:center;"><%= request.getAttribute("TB") != null? request.getAttribute("TB"):" "%></h3>
    	
    <div class="content">
        <div class="repass">
            <form action="UpdateController" method = "post" onsubmit="return Validate()">
                <h2>Bảo mật</h2>
                <table class="table">
                    <tbody>
                    <tr>
                        <td>Email</td>
                        <td colspan="2"><input type="text" readonly="readonly" name = "name" value="<%= session.getAttribute("email") %>"></td>
                    </tr>
                    <tr>
                        <td><span style ="color:red;font-weight:bold;">Đổi mật khẩu</span></td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu hiện tại</td>
                        <td><input type="password" id="pass" name = "pass" ></td>
                        <td><span id="errPass"></span></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu mới</td>
                        <td><input type="password" id="newPass" name = "newPass"></td>
                        <td><span id="errNewPass"></span></td>
                    </tr>
                    <tr>
                        <td>Nhập lại mật khẩu mới</td>
                        <td><input type="password" id="newPass2"></td>
                        <td><span id="errNewPass2"></span></td>
                    </tr>
                    </tbody>
                </table>
                <button type="submit" class="btn btn-outline-primary" onclick="Validate()">Cập nhật</button>
            </form>
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
</body>
</html>