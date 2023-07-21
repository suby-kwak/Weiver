<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin - Actor</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="../css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="http://localhost:8081/admin/main">Main</a>
            
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">안녕하세요 ${SessionScope.user.id }님  <i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="/admin/logout">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">데이터 관리</div>
                            <a class="nav-link" href="http://localhost:8081/admin/getAllActors">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                배우
                            </a>
                            <a class="nav-link" href="http://localhost:8081/admin/getAllMusicals">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                뮤지컬
                            </a>
                            <a class="nav-link" href="http://localhost:8081/admin/getAllUsers">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                               유저
                            </a>
                            <a class="nav-link" href="http://localhost:8081/admin/getAllAdmins">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                관리자
                            </a>
                            <a class="nav-link" href="http://localhost:8081/admin/getAllPosts">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                               게시글
                            </a>
                            <a class="nav-link" href="http://localhost:8081/admin/getAllInquirys">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                문의
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        ${SessionScope.user.id }
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                	<div style="height:10px"></div>
                    <div class="container-fluid px-4">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                	배우 정보
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>이미지</th>
                                            <th>ID</th>
                                            <th>이름</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>이미지</th>
                                            <th>ID</th>
                                            <th>이름</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="actor" items="${actors}">
                                    		<tr>
                                    			<td><a href="http://localhost:8081/admin/getAllMusicals"><img src="${actor.profileImage }" height="150" width="120"></a></td>
                                    			<td>${actor.id}</td>
                                    			<td>${actor.name }</td>
                                    		</tr>
                                    	</c:forEach>                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2023</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="../js/datatables-simple-demo.js"></script>
    </body>
</html>
