<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- format dd/mm/yyyy -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sinh viên - Xem chi tiết đề tài nghiên cứu </title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <style><%@include file="css/sb-admin-2.min.css"%></style>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
			
			<br><div class="sidebar-heading">
                Student
            </div>
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="<%= request.getContextPath() %>/ThongBao/list_ThongBaoSinhVienController">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Thông báo</span></a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="<%= request.getContextPath() %>/sinhvien/ThongTinSinhVien">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Thông tin cá nhân</span></a>
            </li>
            
            <br><div class="sidebar-heading">
                Đề tài sinh viên
            </div>
            
            <li class="nav-item">
                <a class="nav-link" href="<%= request.getContextPath() %>/DETAI/list_DeTaiController">
			        <i class="fas fa-fw fa-chart-area"></i>
			        <span>Danh sách đề tài</span>
			    </a>
			</li>
            
            <li  class="nav-item">
                <a class="nav-link" href="<%= request.getContextPath() %>/DETAI/list_DeTaiCuaToi">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Đề tài của tôi</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="<%= request.getContextPath() %>/DETAI/ShowDangky_detai">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Đăng ký đề tài</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="<%= request.getContextPath() %>/DETAI/Detai_ShowFormHuy">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Hủy đề tài</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="SV_BaoCao.jsp">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Nộp báo cáo đề tài</span></a>
            </li>
            

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter"></span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Thông báo mới
                                </h6>
                                
                                <a class="dropdown-item text-center small text-gray-500" href="#">Hiển thị toàn bộ</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter"></span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Tin nhắn mới
                                </h6>
                                
                                <a class="dropdown-item text-center small text-gray-500" href="#">Hiển thị toàn bộ</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->
                <!-- nội dung  -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Thông tin đề tài</h1>

                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <!-- Textbox 4 -->
                                <div class="form-group">
                                    <label for="MaDT">Mã số đề tài:</label>
                                    <input type="text" value = "<c:out value = '${exdetai.maDT}' />" class="form-control" id="MaDT" name = "MaDT">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <!-- Textbox 1 -->
                                <div class="form-group">
                                    <label for="TenDeTai">Tên đề tài:</label>
                                    <input type="text" value = "<c:out value = '${exdetai.tenDeTai}' />" class="form-control" id="TenDeTai" name = "TenDeTai">
                                </div>
                            </div>

                        </div>
                        <div class= "row">
                            <div class="col-md-6">
                                <!-- Textbox 2 -->
                                <div class="form-group">
                                    <label for="MSGV">Mã số giảng viên hướng dẫn:</label>
                                    <input type="text" value = "<c:out value = '${exdetai.msgv}' />" class="form-control" id="MSGV" name = "MSGV">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <!-- Textbox 2 -->
                                <div class="form-group">
                                    <label for="tenGV">tên giảng viên hướng dẫn:</label>
                                    <input type="text" value = "<c:out value = '${exdetai.giangvien.tenGV}' />" class="form-control" id="tenGV" name = "tenGV">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <!-- Textbox 3 -->
                                <div class="form-group">
                                    <label for="MaNganh" >Mã Ngành:</label>
                                    <input type="text" value = "<c:out value = '${exdetai.maNganh}' />" class="form-control" id="MaNganh" name = "MaNganh" >
                                </div>
                            </div>
                            <div class="col-md-6">
                                <!-- Textbox 2 -->
                                <div class="form-group">
                                    <label for="TenNganh">Ngành :</label>
                                    <input type="text" value = "<c:out value = '${exdetai.nganh.tenNganh}' />" class="form-control" id="TenNganh" name = "TenNganh">
                                </div>
                            </div>
                        </div>
                        <div class= "row">
                            <div class="col-md-6">
                                <!-- Textbox 2 -->
                                <div class="form-group">
                                    <label for="MaTrangThai">Mã số trạng thái:</label>
                                    <input type="text" value = "<c:out value = '${exdetai.maTrangThai}' />" class="form-control" id="MaTrangThai" name = "MaTrangThai">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <!-- Textbox 2 -->
                                <div class="form-group">
                                    <label for="TenTrangThai">Tên trạng thái:</label>
                                    <input type="text" value = "<c:out value = '${exdetai.trangthai.tenTrangThai}' />" class="form-control" id="TenTrangThai" name = "TenTrangThai">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <!-- Table -->
                                <label >Sinh viên thực hiện:</label>
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>Số thứ tự</th>
                                        <th>Mã đăng kí</th>
                                        <th>Mã nhóm</th>
                                        <th>Mã số sinh viên</th>
                                        <th>Họ tên sinh viên</th>
                                        <th>Giới tính</th>
                                        <th>Mã khoa</th>
                                        <th>Khoa</th>
                                        <th>Ngày sinh</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="nhom" items="${listthanhviennhom}" varStatus="status">
                                        <tr>
                                            <td>${status.index + 1}</td>
                                            <td name="MaDK" value="${nhom.maDK}">${nhom.maDK}</td>
                                            <td>${nhom.maNhom}</td>
                                            <td>${nhom.sinhvien.mssv}</td>
                                            <td>${nhom.sinhvien.hoTen}</td>
                                            <td>${nhom.sinhvien.gioiTinh}</td>
                                            <td>${nhom.sinhvien.maKhoa}</td>
                                            <td>${nhom.sinhvien.khoa.tenKhoa}</td>
                                            <td>
                                                <fmt:formatDate value="${nhom.sinhvien.ngaySinh}" pattern="dd/MM/yyyy" />
                                            </td>
                                            <!-- cẩn thận ở đây biến đều nằm trong models , ko phải dao -->
                                        </tr>
                                    </c:forEach>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- end here --->
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span></span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>
    </div>
</body>

</html>