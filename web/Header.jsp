<%-- 
    Document   : Header
    Created on : Feb 24, 2020, 1:54:39 PM
    Author     : PLH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<jsp:useBean id="hitcount" class="Model.Count" scope="session"/>
<!DOCTYPE html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<div class="container-fluid header-wrapper " id="header"> <!-- this is the Header Wrapper -->
    <div class="container">
        <div class="title-wrapper">
            <div class="title-wrapper-inner">
                <a rel="nofollow" class="logo " href="#">
                </a>
                <div class="title ">
                    Okela Café
                </div>
                <div class="subtitle">
                    Paradise of coffee...
                </div>
            </div>
        </div>  <!-- these are the titles -->
        <div class="navbar navbar-compact">
            <div class="navbar-inner">
                <div class="container">
                    <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                    <a rel="nofollow" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse" title="Toggle menu">
                        <span class="menu-name">Menu</span>
                        <span class="menu-bars">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </span>
                    </a>
                    <!-- Everything you want hidden at 940px or less, place within here -->
                    <div class="nav-collapse collapse">
                        <ul class="nav" id="topMenu" data-submenu="horizontal">
                            <li class=" active " style="" id="abc">
                                <a rel="nofollow" href="Home" >Home</a>
                            </li>
                            <li class="  " style="" id="drink">
                                <a rel="nofollow" href="Drink" >Drinks</a>
                            </li>
                            <li class="  " style="" id="cake">
                                <a rel="nofollow" href="Cake" >Cakes</a>
                            </li>
                            <li class="  " style="" id="find">
                                <a rel="nofollow" href="Find" >Find Maria's Cafe</a>
                            </li>                
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- this is the Menu content -->
    </div>
</div>  <!-- this is the Header content -->
<script>
    $(document).ready(function () {
        var pathname = window.location.pathname;
        var current = pathname.substring(pathname.lastIndexOf("/") + 1, pathname.length);
        if (current != 'Home.jsp') {
            $('#abc').removeClass('active');
            if (current == 'Drink') {
                $('#drink').addClass('active');
            } else if (current == 'Cake') {
                $('#cake').addClass('active');
            } else if (current == 'Find.jsp') {
                $('#find').addClass('active');
            }
        }
    });
</script>