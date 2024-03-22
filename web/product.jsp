<%-- 
    Document   : index.jsp
    Created on : Feb 22, 2024, 9:18:13 PM
    Author     : THevY
--%>
<%@page import="model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
    lang="en"
    class="light-style layout-menu-fixed"
    dir="ltr"
    data-theme="theme-default"
    data-assets-path=".assets/"
    data-template="vertical-menu-template-free"
    >
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
            />

        <title>Supplier Manage</title>
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="img/favicon.ico" rel="icon">
        <link rel="icon" type="image/x-icon" href="assets/img/favicon/favicon.ico" >
        <link rel="stylesheet" href="assets/vendor/fonts/boxicons.css" >
        
        <link rel="stylesheet" href="assets/vendor/css/theme-default.css" class="template-customizer-theme-css" >
        <link rel="stylesheet" href="assets/css/demo.css" >
        <link rel="stylesheet" href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" >
        <script src="assets/vendor/js/helpers.js"></script>
        <script src="assets/js/config.js"></script>
        <link rel="stylesheet" href="assets/vendor/css/core.css" class="template-customizer-core-css" >
        <link rel="stylesheet" href="css/newcss.css" type="text/css" >
    </head>
    
    <body>
        <!-- Layout wrapper -->
        <div class="layout-wrapper layout-content-navbar">
            <div class="layout-container">
                <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
                    <div class="app-brand demo">
                        <a href="index.html" class="app-brand-link">
                            <span class="app-brand-logo demo">
                                <svg
                                    width="25"
                                    viewBox="0 0 25 42"
                                    version="1.1"
                                    xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink"
                                    >
                                <defs>
                                <path
                                    d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                                    id="path-1"
                                    ></path>
                                <path
                                    d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                                    id="path-3"
                                    ></path>
                                <path
                                    d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                                    id="path-4"
                                    ></path>
                                <path
                                    d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                                    id="path-5"
                                    ></path>
                                </defs>
                                <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                                <g id="Icon" transform="translate(27.000000, 15.000000)">
                                <g id="Mask" transform="translate(0.000000, 8.000000)">
                                <mask id="mask-2" fill="white">
                                    <use xlink:href="#path-1"></use>
                                </mask>
                                <use fill="#696cff" xlink:href="#path-1"></use>
                                <g id="Path-3" mask="url(#mask-2)">
                                <use fill="#696cff" xlink:href="#path-3"></use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                                </g>
                                <g id="Path-4" mask="url(#mask-2)">
                                <use fill="#696cff" xlink:href="#path-4"></use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                                </g>
                                </g>
                                <g
                                    id="Triangle"
                                    transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) "
                                    >
                                <use fill="#696cff" xlink:href="#path-5"></use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                                </g>
                                </g>
                                </g>
                                </g>
                                </svg>
                            </span>
                            <span class="app-brand-text demo menu-text fw-bolder ms-2">Sneat</span>
                        </a>

                        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
                            <i class="bx bx-chevron-left bx-sm align-middle"></i>
                        </a>
                    </div>

                    <div class="menu-inner-shadow"></div>

                    <ul class="menu-inner py-1">
                        <!-- Dashboard -->
                        <li class="menu-item">
                            <a href="index.html" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                                <div data-i18n="Analytics">Dashboard</div>
                            </a>
                        </li>


                        <!-- Account  -->
                        <li class="menu-header small text-uppercase">
                            <span class="menu-header-text">Pages</span>
                        </li>
                        <%

                            Object obj = session.getAttribute("user");
                            User user = null;
                            if (obj != null) {
                                user = (User) obj;
                            }
                            if (user == null) {
                        %>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                                <div data-i18n="Authentications">Authentications</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="login.jsp" class="menu-link" target="_blank">
                                        <div data-i18n="Basic">Login</div>
                                    </a>
                                </li>
                                
                                <li class="menu-item">
                                    <a href="auth-forgot-password-basic.html" class="menu-link" target="_blank">
                                        <div data-i18n="Basic">Forgot Password</div>
                                    </a>
                                </li>
                            </ul>
                        </li><%
                        } else {
                        %>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                                <div data-i18n="Authentications"> Hello <b><%=user.getUsername()%></b></div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="showcart" class="menu-link" target="_blank">
                                        <div data-i18n="Basic">Cart</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="changeinformation.jsp" class="menu-link" target="_blank">
                                        <div data-i18n="Basic">Change Information</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="changepassword.jsp" class="menu-link" target="_blank">
                                        <div data-i18n="Basic">Change Password</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="logout" class="menu-link" target="_blank">
                                        <div data-i18n="Basic">Log out</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                <!--       <button type="button" class="btn btn-outline-primary ">Hello <b><%=user.getUsername()%></b></button> 
                        <a class="btn btn-primary ml-3"  href="logout" >
                            Logout
                        </a> 
                         <a class="btn btn-success btn-sm ml-3" href="show">
                                            <i class="fa fa-shopping-cart"></i> Cart
                                            <span class="badge badge-light">3</span>
                                        </a>-->
                        <%}%>



                        <!-- Forms & Tables -->
                        <li class="menu-header small text-uppercase"><span class="menu-header-text">Manage &amp; Tables</span></li>
                        <!-- Forms -->

                        <!-- Tables -->
                        <li class="menu-item ">
                            <a href="./" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-table"></i>
                                <div data-i18n="Tables">Supplier</div>
                            </a>
                        </li>
                        <li class="menu-item active">
                            <a href="./listproduct" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-table"></i>
                                <div data-i18n="Tables">Product</div>
                            </a>
                        </li>
                        <c:if test="${sessionScope.user.isAdmin==1}">
                        <li class="menu-item ">
                            <a href="./manageaccount" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-table"></i>
                                <div data-i18n="Tables">Employee</div>
                            </a>
                        </li>
                        </c:if>
                        <li class="menu-item ">
                            <a href="./order" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-table"></i>
                                <div data-i18n="Tables">Order</div>
                            </a>
                        </li>

                    </ul>
                </aside>
                <!-- / Menu -->

                <!-- Layout container -->
                <div class="layout-page">
                    <!-- Navbar -->
                    <nav
                        class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
                        id="layout-navbar"
                        >
                        <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
                            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                                <i class="bx bx-menu bx-sm"></i>
                            </a>
                        </div>

                        <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                            <!-- Search -->
                            <form action="searchproduct">
                            <div class="navbar-nav align-items-center">
                                <div class="nav-item d-flex align-items-center">
                                    <i class="bx bx-search fs-4 lh-0"></i>
                                    <input
                                        type="search" name="search" value="${search}"
                                        class="form-control border-0 shadow-none"
                                        placeholder="Search..."
                                        aria-label="Search..."
                                        />
                                </div>
                                        <div class="nav-item d-flex align-items-center" style="margin-left: 500px">
                                            <button style="height: 55px; width: 70px;border-radius: 50%;"><i class="bx bx-search fs-4 lh-0"></i></button>
                                        </div>
                            </div>
                                        </form>
                            <!-- /Search -->

                            
                        </div>
                    </nav>
                    <!-- / Navbar -->

                    <!-- Content wrapper -->
                    <div class="content-wrapper">
                        <div class="container-xxl flex-grow-1 container-p-y">
                            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Products /</span> Manage Products Tables</h4>
                            <div class="card">
                                <h5 class="card-header">Product Management</h5>
                                <a data-bs-target="#addEmployeeModal"  class="btn btn-success " data-bs-toggle="modal" ><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                                <div class="table-responsive text-nowrap">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Id</th>
                                                        <th scope="col">Product Name</th>
                                                        <th scope="col">Price</th>
                                                        <th scope="col">Quantity</th>
                                                        <th scope="col"></th>
                                                        <th scope="col">Action</th>
                                                        <th scope="col"></th>
                                            </tr>
                                        </thead>
                                        <tbody class="table-border-bottom-0">

                                            <c:forEach items="${sessionScope.list}" var="item">
                                                <tr>
                                                    <td>${item.getProductID()}</td>
                                                            <td>${item.getProductName()}</td>
                                                            <td>${item.getPrice()}</td>
                                                            <td>${item.getQuantity()}</td>
                                                            <td><a href="./loadproduct?id=${item.productID}" class="edit" data-bs-toggle="modal"><i class="material-icons" data-bs-toggle="tooltip" title="Edit">&#xE254;</i></a></td  >
                                                            <td><a href="./deleteproduct?id=${item.productID}" class="delete" data-bs-toggle="modal"><i class="material-icons" data-bs-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
                                                            <td><a onclick="addToCart(${item.productID})" class="cart" data-bs-toggle="modal"><i class="material-icons " data-bs-toggle="tooltip" title="Add">&#xe547;</i></a></td>
                                                </tr>
                                            </c:forEach>




                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="content-backdrop fade"></div>
                    </div>
                </div>
            </div>
            <div class="layout-overlay layout-menu-toggle"></div>
        </div>
                                         <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addproduct" >
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input name="quantity" type="text" class="form-control" required>
                            </div>
                           
                            
                           

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>



        <!-- Core JS -->
        <!-- build:js assets/vendor/js/core.js -->
        <script src="assets/vendor/libs/jquery/jquery.js"></script>
        <script src="assets/vendor/libs/popper/popper.js"></script>
        <script src="assets/vendor/js/bootstrap.js"></script>
        <script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

        <script src="assets/vendor/js/menu.js"></script>
        <!-- endbuild -->

        <!-- Vendors JS -->

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>

        <!-- Page JS -->

        <!-- Place this tag in your head or just before your close body tag. -->
        <div class="modal fade zoom formModal" id="successModal" style="z-index: 1500;" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content card">
                        <div class="modal-header alert-success">
                            <h5 class="m-0">Success</h5>
                        </div>
                        <div class="modal-body messageModal" id="addCartStatus">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade zoom formModal" style="z-index: 1500;" id="errorModal" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content card">
                        <div class="modal-header alert-danger">
                            <h5 class="m-0">Error</h5>
                        </div>
                        <div class="modal-body messageModal" id="errorMessage">
                        </div>
                    </div>
                </div>
            </div>
            <!-- End footer -->
            <!-- End footer -->
            <script src="js/AddToCart.js"></script>
        <script async defer src="https://buttons.github.io/buttons.js"></script>
    </body>
</html>

