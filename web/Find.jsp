<%-- 
    Document   : Find
    Created on : 23-02-2020, 09:02:38
    Author     : nhat anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find us</title>
    
        <link rel="shortcut icon" href="data:image/x-icon;,">
        <link rel="stylesheet"  href="./CSS/text.css">
        <style type="text/css">.fancybox-margin{margin-right:17px;}</style></head>
    <body data-pid="118937146" data-iid="">
        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <%@include file="Header.jsp" %>
            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper ">
                                <div class="content">
                                    <div class="section article">

                                        <div class="content">
                                            <div class="img-simple span3 pull-left">
                                                <div class="content">
                                                    ${shop.info.openTime}
                                                </div>
                                            </div>
                                            <p><span style="font-family: georgia, palatino; font-size: 24px;"><span style="font-family: georgia, palatino;"></span></span></p> <p></p> <p><span data-mce-mark="1">
                                                </span></p>    
                                        </div>  
                                    </div>

                                    <div class="section article">

                                        <div class="content">
                                            <p><span style="font-family: times; font-size: 24px;"> Map</span></p>  
                                            <iframe
                                                width="900"
                                                height="600"
                                                frameborder="0" style="border:0"
                                                src="https://www.google.com/maps/embed/v1/place?key=AIzaSyAC2uThlvCB-D9gnL8HN4D3DJSAM5x104M
                                                &q=Coffee+OKE" allowfullscreen>
                                            </iframe>
                                        </div>
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



    </div></body></html>
