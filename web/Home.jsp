<%-- 
    Document   : Home
    Created on : 22-02-2020, 20:18:23
    Author     : nhat anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<jsp:useBean id="shop" class="Model.ShopInfo" scope="session"/>
<!DOCTYPE html>

<!DOCTYPE html>
<!-- saved from url=(0036)http://www.simplesite.com/us-123cafe -->
<html lang="en-US" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Okela Cafe</title>
        <link rel="shortcut icon" href="data:image/x-icon;,">
        <link rel="stylesheet"  href="./CSS/text.css">
        <style type="text/css">.fancybox-margin{margin-right:17px;}</style></head>
    <body data-pid="118937146" data-iid="">
        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
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
                                        <li class=" active " style="">
                                            <a rel="nofollow" href="Home.jsp">Home</a>
                                        </li>
                                        <li class="  " style="">
                                            <a rel="nofollow" href="Drink">Drinks</a>
                                        </li>
                                        <li class="  " style="">
                                            <a rel="nofollow" href="Cake">Cakes</a>
                                        </li>
                                        <li class="  " style="">
                                            <a rel="nofollow" href="Find.jsp">Find Okela Café</a>
                                        </li>               </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- this is the Menu content -->
                </div>
            </div>  <!-- this is the Header content -->

            <div class="container-fluid content-wrapper"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper ">
                                <div class="content">
                                    <div class="section article">

                                        <div class="content">
                                            <div class="img-simple span3 pull-left">
                                                <div class="image">
                                                    <a rel="nofollow" data-ss="imagemodal" data-href="http://cdn.simplesite.com/i/63/0a/282319406567983715/i282319414584937113._szw1280h1280_.jpg"><img src="./Images/coffeeshop.png"></a>
                                                </div>
                                            </div>
                                            <p><span style="font-family: georgia, palatino; font-size: 24px;"><span style="font-family: georgia, palatino;"></span></span></p> <p></p> <p><span data-mce-mark="1">
                                                </span></p>    </div>  
                                    </div>
                                    <%----<div class="section">
                                        <div class="content">
                                            <ul class="thumbnails column-article-section">
                                                <li class="span6">
                                                    <div class="img-simple span12 ">
                                                        <div class="image">
                                                            <a rel="nofollow" data-ss="imagemodal" data-href="http://cdn.simplesite.com/i/63/0a/282319406567983715/i282319414620354139._szw1280h1280_.jpg"><img src="./Home_files/i282319414620354139._rsw480h360_szw480h360_.jpg"></a>
                                                        </div>
                                                    </div>
                                                    //content
                                                </li>
                                                <li class="span6">
                                                    <div class="img-simple span12 ">
                                                        <div class="image">
                                                            <a rel="nofollow" data-ss="imagemodal" data-href="http://cdn.simplesite.com/i/63/0a/282319406567983715/i282319414620354374._szw1280h1280_.jpg"><img src="./Home_files/i282319414620354374._rsw480h360_szw480h360_.jpg"></a>
                                                        </div>
                                                    </div>
                                                    //content
                                                </li>
                                            </ul>
                                        </div>
                                    </div>--%>
                                    <div class="section article">
                                        <div class="content">
                                            <p><span style="font-family: times; font-size: 24px; line-height: 1.5em;"> 
                                                    Contact: <br/>
                                                    <c:set var="shopInfo" value="${shop.info}"/>
                                                    ${shopInfo.shopName}<br/>
                                                    ${shopInfo.address}<br/>
                                                    Phone: ${shopInfo.phone}<br/>
                                                    Email: ${shopInfo.email}
                                                </span></p></div>
                                    </div>
                                    <div class="section signature">
                                        <div class="content">
                                            <div class="signature-text-noimg">
                                                Kind regards <br/>
                                                <div style="margin-top: 5%;">
                                                    <p style="font-family: cursive;font-size: 3em"> Okela Team </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <div id="right" class="span3">
                            <div class="sidebar">
                                <div class="wrapper share-box">
                                    <style>    .wordwrapfix {
                                            word-wrap:break-word;
                                        }
                                    </style>
                                    <div class="heading wordwrapfix">
                                        <h4>Share this page</h4>
                                    </div>

                                    <div class="content"><span><ul>
                                                <li><a id="share-facebook" href="https://www.facebook.com/"><i class="icon-facebook-sign"></i><span>Share on Facebook</span></a></li>
                                                <li><a id="share-twitter" href="https://twitter.com/"><i class="icon-twitter-sign"></i><span>Share on Twitter</span></a></li>    
                                            </ul></span></div>
                                </div>
                            </div>
                        </div>
                    </div>        
                </div>
            </div>  <!-- the controller has determined which view to be shown in the content -->

            <div class="container-fluid footer-wrapper" id="footer"> <!-- this is the Footer Wrapper -->
                <div class="container">
                    <div class="footer-page-counter" style="display: block;">
                        <span class="footer-page-counter-item">1</span>

                        <span class="footer-page-counter-item">1</span>

                        <span class="footer-page-counter-item">1</span>

                        <span class="footer-page-counter-item">9</span>

                        <span class="footer-page-counter-item">9</span>

                        <span class="footer-page-counter-item">9</span>
                    </div>
                    <div id="css_simplesite_com_fallback" class="hide"></div>
                </div>
            </div>

            <!-- this is the Footer content -->
        </div>



    </div></body></html>
