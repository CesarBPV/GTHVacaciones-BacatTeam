<%-- 
    Document   : modules
    Created on : 03/12/2016, 09:51:58 PM
    Author     : CESAR
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Talento Humano</title>
        <meta name="description" content="Responsive Retina-Friendly Menu with different, size-dependent layouts" />
        <meta name="keywords" content="responsive menu, retina-ready, icon font, media queries, css3, transition, mobile" />
        <link rel="stylesheet" type="text/css" href="<c:url value="resources/css/Css_Modulos/component.css"/>" />
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="resources/css/bootstrap.min.css"/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="resources/css/font-awesome.min.css"/>">
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="resources/css/smartadmin-production.min.css"/>">
    </head>
    <body>
        <!-- HEADER -->
        <header id="header">
            <div id="logo-group" >
                <!-- PLACE YOUR LOGO HERE -->
                <span id="logo"> <img src="resources/img/logoRRHH.png" style=" position: absolute;top: 8px; width:100px; height:36px " alt="Talento Humano"> </span>
                <!-- END LOGO PLACEHOLDER -->
                <!-- END AJAX-DROPDOWN -->
            </div>
            <!-- pulled right: nav area -->
            <div class="pull-right">
                <!-- logout button -->
                <div id="logout" class="btn-header transparent pull-right">
                    <span> 
                        <a href="login?opc=logout" title="Sign Out" data-action="userLogout" data-logout-msg="¿Está complemetamente seguro de cerrar sesión?">
                            <i class="fa fa-sign-out"></i>
                            Salir
                        </a> 
                    </span>
                </div>
                <!-- end logout button -->
                <!-- fullscreen button -->
            </div>
            <!-- end pulled right: nav area -->

        </header>
        <!-- END HEADER -->
        <br>
        <br>
        <div class="text-center">
             <h1><span class="semi-bold">Solicitudes Pendientes</span> <sup class="badge bg-color-red bounceIn animated"> v 0.1</sup> <br>
                <!--     <small class="text-primary slideInRight fast animated"><strong>¡Bienvenido!</strong></small>-->
            </h1>
        </div>
        <br>
        <div class="container">
        <table class="table-bordered col-md-12">
            <tr class="">
                <th>Nombre</th>
                <th>Puesto</th>
                <th>Departamento</th>
                <th>Area</th> 
                <th>Seccion</th>
                <th>Fecha de inicio</th>
                <th>Fecha de expiración</th>
                <th>Estado</th>
            </tr>
            <c:forEach items="${lista}" var="solicitud">
                    <tbody> 
                        <tr>
                            <td><c:out value="${solicitud.nombres}" /></td>
                            <td><c:out value="${solicitud.puesto}" /></td>
                            <td><c:out value="${solicitud.departamento}" /></td>
                            <td><c:out value="${solicitud.area}" /></td>
                            <td><c:out value="${solicitud.seccion}" /></td>
                            <td><c:out value="${solicitud.fecha_inicio}" /></td>
                            <td><c:out value="${solicitud.fecha_final}" /></td>
                            <td><c:out value="${solicitud.estado}" /></td>
                            
                        </tr>
                    </tbody>
            </c:forEach>
        </table>
        </div>
        <div class="center-block text-center">
            <a href="javascript:void(0);" class="btn btn-danger btn-sm padding-10">REVOCAR SOLICITUD</a>
            <a href="javascript:void(0);" class="btn btn-success btn-sm padding-10">AUTORIZAR SOLICITUD</a>
        </div>
        <!-- /container -->
        <script src="<c:url value="resources/js/Js_Modulos/modernizr.custom.js"/>"></script>
        <script>
                                //  The function to change the class
                                var changeClass = function (r, className1, className2) {
                                    var regex = new RegExp("(?:^|\\s+)" + className1 + "(?:\\s+|$)");
                                    if (regex.test(r.className)) {
                                        r.className = r.className.replace(regex, ' ' + className2 + ' ');
                                    } else {
                                        r.className = r.className.replace(new RegExp("(?:^|\\s+)" + className2 + "(?:\\s+|$)"), ' ' + className1 + ' ');
                                    }
                                    return r.className;
                                };

                                //  Creating our button in JS for smaller screens
                                var menuElements = document.getElementById('menu');
                                menuElements.insertAdjacentHTML('afterBegin', '<button type="button" id="menutoggle" class="navtoogle" aria-hidden="true"><i aria-hidden="true" class="icon-menu"> </i> Menu</button>');

                                //  Toggle the class on click to show / hide the menu
                                document.getElementById('menutoggle').onclick = function () {
                                    changeClass(this, 'navtoogle active', 'navtoogle');
                                }

                                // http://tympanus.net/codrops/2013/05/08/responsive-retina-ready-menu/comment-page-2/#comment-438918
                                document.onclick = function (e) {
                                    var mobileButton = document.getElementById('menutoggle'),
                                            buttonStyle = mobileButton.currentStyle ? mobileButton.currentStyle.display : getComputedStyle(mobileButton, null).display;

                                    if (buttonStyle === 'block' && e.target !== mobileButton && new RegExp(' ' + 'active' + ' ').test(' ' + mobileButton.className + ' ')) {
                                        changeClass(mobileButton, 'navtoogle active', 'navtoogle');
                                    }
                                }
        </script>
    </body>
</html>
