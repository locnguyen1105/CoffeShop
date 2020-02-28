<%-- 
    Document   : About
    Created on : 23-02-2020, 09:16:07
    Author     : nhat anh
--%>    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class="">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link rel="shortcut icon" href="data:image/x-icon;,">
        <link rel="stylesheet"  href="./CSS/text.css">

        <style type="text/css">
            .cakeimage{
                width: 48%;
                height: 100px;
                display: inline-block;
                padding: 5px
            }
        </style>

    </head>
    <body data-pid="118937146" data-iid="">
        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <%@include file="Header.jsp" %> 

            <div class="container-fluid content-wrapper" id="content" style="height: 120em;"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper ">
                                <div class="content">
                                    <div class="section article">
                                        <div class="content">
                                            <div class="img-simple span3 pull-left">
                                                <div class="content" style="height:100%">
                                                    <c:forEach var="cake" items="${cakeList}">
                                                        <div style="cursor: pointer; margin-bottom: 50px; height: 100%" type="button" class="cakeimage badge badge-white" data-toggle="modal" data-target="#${cake.id}">
                                                            <a class="fancybox" rel="gallery1" href="./Images/${cake.image}"><img src="./Images/${cake.image}" alt=""/></a>
                                                            <div>
                                                                <p style="margin:0; font-family: cursive; font-size: 20px;">${cake.name}</p>
                                                                <p style="font-family: monospace; font-size: 19px;"><fmt:formatNumber type="number" value="${cake.price}"/>&nbsp;VND</p>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <p><span style="font-family: georgia, palatino; font-size: 24px;"><span style="font-family: georgia, palatino;"></span></span></p> <p></p> <p><span data-mce-mark="1">
                                                </span></p>    </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%@include file="Footer.jsp" %> 

                        <!-- this is the Footer content -->
                    </div>


                </div></body></html>
