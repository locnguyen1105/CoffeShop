<%-- 
    Document   : Home
    Created on : 22-02-2020, 20:18:23
    Author     : nhat anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <%@include file="Header.jsp" %> <!-- this is the Header content -->

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
                                                    <b>Contact: </b><br/>
                                                    <c:set var="shopInfo" value="${shop.info}"/>
                                                    ${shopInfo.shopName}<br/>
                                                    ${shopInfo.address}<br/>
                                                    <b>Phone: </b>${shopInfo.phone}<br/>
                                                    <b>Email: </b>${shopInfo.email}
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
                        <%@include file="Footer.jsp" %>        
                        <!-- this is the Footer content -->
                    </div>
                </div>
                </body>
                </html>
