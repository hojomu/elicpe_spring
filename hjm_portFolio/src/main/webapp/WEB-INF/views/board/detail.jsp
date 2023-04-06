<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>상세보기</title>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="/resources/css/listCss.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <script src="/resources/js/reply.js"></script>
    </head>
<body>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">Start Bootstrap</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Layouts
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tables
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
            	<main>
            		<form method="post">
	                    <div class="container-fluid px-4">
	                        <h1 class="mt-4"><span class="tohidden">${detail.title}</span><input id="titleinput" type="hidden" name="title" value="${detail.title}"></h1>
	                        <div class="card mb-4">
	                            <div>
	                            	<div>
	                            		<p style="margin-bottom:2px">${detail.id}<input type="hidden" name="id" value="${detail.id}"></p>
	                            		<span>${detail.updated_time}<input type="hidden" name="update_time" value="${detail.updated_time}"></span>
	                            		<span>조회 ${detail.counts}<input type="hidden" name="counts" value="${detail.counts}"></span>
	                            		<input type="hidden" name="board_no" value="${detail.board_no }">
	                            	</div>
	                            	
	                            	<div></div>
	                            </div>
	                        </div>
	                        <div class="card mb-4">
	                            <div class="card-header" style="height:5px">
	                            </div>
	                            <div class="card-body">
	             					<div class="tohidden">${detail.contents}</div>
	             					<textarea id="contentsinput" rows="30" cols="80" style="display:none" name="contents">${detail.contents}</textarea>
	                            </div>
	                        </div>
	                               
	                    </div>
				<c:set var="article_id" value="${detail.id}" />
				<c:if test="${article_id eq sessionScope.login}">
                   	 <input id="modifybtn" type="button" value="수정">
                   	 <input id="removebtn" type="submit" value="삭제" formaction="/board/remove">
				</c:if>
					<input type="hidden" id="modifycomplete" value="수정 완료" formaction="/board/modify">
                    </form> 
                <div id="uploadResult">
                	<ul>
                	</ul>
                </div>
                
                <div>
               		 <div id="chat">
                		<ul id="replyUL">
                		</ul>
                	</div>
                	<div id="replyPage"></div>
                	
                	<div><label>댓글 쓰기</label></div>
                	<div>
                		<textarea rows="3" cols="50" id="content"></textarea>
                	</div>
                	<div>
                		<input type="button" value="댓글쓰기" id="add">
                	</div>
                	
                </div>
                
                </main>
               
                
         <script>
         	const modifybtn = document.getElementById("modifybtn");
         	const titleinput = document.getElementById("titleinput");
         	const contentsinput = document.getElementById("contentsinput");
         	const modifycomplete = document.getElementById("modifycomplete");      	
         	const tohidden = document.querySelectorAll(".tohidden");
         	const removebtn = document.getElementById("removebtn");
         	
         	modifybtn.addEventListener("click", function() {
         		
         		titleinput.setAttribute("type","text");
         		contentsinput.style.display = "block";
         		modifybtn.style.display = "none";
         		modifycomplete.setAttribute("type", "submit");
         		removebtn.setAttribute("type","hidden");
         		
         		for (let i = 0; i < tohidden.length; i++){
         			tohidden[i].style.display = "none";
         		}
         	});
         </script>
</body>
</html>