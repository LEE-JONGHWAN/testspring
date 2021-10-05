<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - 로그인입니다</title>

<!-- Custom fonts for this template-->
<link
	href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@include file="include/navMenu.jsp"%>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content 전체본문이 있는 곳-->
			<div id="content">

				<!-- Topbar -->
				<%@include file="include/head.jsp"%>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Dashboard- 로그인</h1>
						<a href="#"
							class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
							class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
					</div>

					<!--  Content Row : 본문의 내용을 작성하는 곳입니다. -->
					<div class="row">
						<div class="container">

							<!-- Outer Row -->
							<div class="row justify-content-center">

								<div class="col-xl-10 col-lg-12 col-md-9">

									<div class="card o-hidden border-0 shadow-lg my-5">
										<div class="card-body p-0">
											<!-- Nested Row within Card Body -->
											<div class="row">
												<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
												<div class="col-lg-6">
													<div class="p-5">
														<div class="text-center">
															<h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
														</div>
														<form class="user">
															<div class="form-group">
																<input type="email"
																	class="form-control form-control-user"
																	id="exampleInputEmail" aria-describedby="emailHelp"
																	placeholder="Enter Email Address...">
															</div>
															<div class="form-group">
																<input type="password"
																	class="form-control form-control-user"
																	id="exampleInputPassword" placeholder="Password">
															</div>
															<div class="form-group">
																<div class="custom-control custom-checkbox small">
																	<input type="checkbox" class="custom-control-input"
																		id="customCheck"> <label
																		class="custom-control-label" for="customCheck">Remember
																		Me</label>
																</div>
															</div>
															<a href="index.html"
																class="btn btn-primary btn-user btn-block"> Login </a>
															<hr>
															<a href="index.html"
																class="btn btn-google btn-user btn-block"> <i
																class="fab fa-google fa-fw"></i> Login with Google
															</a> <a href="index.html"
																class="btn btn-facebook btn-user btn-block"> <i
																class="fab fa-facebook-f fa-fw"></i> Login with Facebook
															</a>
														</form>
														<hr>
														<div class="text-center">
															<a class="small" href="forgot-password.html">Forgot
																Password?</a>
														</div>
														<div class="text-center">
															<a class="small" href="register.html">Create an
																Account!</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>



							</div>

						</div>
						<!-- /.container-fluid -->

					</div>
					<!-- End of Main Content -->

					<!-- Footer -->
					<%@include file="include/foot.jsp"%>
					<!-- End of Footer -->

				</div>
				<!-- End of Content Wrapper -->

			</div>
			<!-- End of Page Wrapper -->

			<!-- Scroll to Top Button-->
			<a class="scroll-to-top rounded" href="#page-top"> <i
				class="fas fa-angle-up"></i>
			</a>

			<!-- Logout Modal-->
			<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Ready to
								Leave?</h5>
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">Select "Logout" below if you are
							ready to end your current session.</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" type="button"
								data-dismiss="modal">Cancel</button>
							<a class="btn btn-primary" href="login.html">Logout</a>
						</div>
					</div>
				</div>
			</div>

			<!-- Bootstrap core JavaScript-->
			<%@include file="include/plug.jsp"%>
</body>

</html>