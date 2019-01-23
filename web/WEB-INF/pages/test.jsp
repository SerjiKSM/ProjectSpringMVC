

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Test</title>--%>

    <%--<a href="../html-link.htm"><img src="flower.jpg" width="82" height="86" title="White flower" alt="Flower"></a>--%>

    <%--<a href="../html-link.htm"><img src="flower.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>

    <%--<a href="../../resources/img"><img src="superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href="../resources/img"><img src="superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href="/resources/img"><img src="superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href=""><img src="/resources/img/superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href=""><img src="../resources/img/superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href=""><img src="../../resources/img/superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href=""><img src="../../../resources/img/superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>

    <%--<a href="././resources/img"><img src="superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href="./resources/img"><img src="superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>

    <%--<a href=""><img src="./resources/img/superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href=""><img src="././resources/img/superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href=""><img src="./././resources/img/superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>

    <%--<a href=""><img src="../superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href=""><img src="./superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href=""><img src="/superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>
    <%--<a href="superkid_promo.jp"><img src="superkid_promo.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>--%>

<%--</head>--%>
<%--<body>--%>

<%--<h1>Serji let's go!!!</h1>--%>

<%--</body>--%>
<%--</html>--%>


<!DOCTYPE html>
<html lang="en">
<head>
    <style type="text/css">
        a:link,a:visited {
            color: #0000A0;
            background-color: #FFFFFF;
            text-decoration: none;
            target-new: none;
        }
        a:hover {
            color: #0000FF;
            background-color: #FFFFC0;
            text-decoration: underline;
            target-new: none;
        }
    </style>
</head>
<body>
<!-- Text link tag - by www.rapidtables.com -->
<a href="http://www.rapidtables.com/web/tools/linked-page.htm">The Link Text</a>
<a href="/image/${3}">The Link Text</a>

<img src="<%=request.getContextPath()%>/resources/img/pictures/superkid_promo.jpg">
<img src="/resources/img/pictures/superkid_promo.jpg">

<%--<!-- Bootstrap -->--%>

<%--<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet">--%>
<%--<link href="/resources/bootstrap/css/style.css" rel="stylesheet">--%>
<%--<link href="/resources/bootstrap/css/font-awesome.css" rel="stylesheet">--%>
<%--<link href="/resources/superkid_promo.jpg" rel="stylesheet">--%>

<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet">

<a href="http://site-do.ru"><img src="http://site-do.ru/images/sitedo1.gif" alt="Как создать свой сайт"></a>

<link href="<c:url value="/resources/bootstrap/css/animate.css" />" rel="stylesheet">

<script src="<c:url value="/resources/bootstrap/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/main.js" />"></script>

<spring:url value="/resources/bootstrap/js/jquery-1.11.1.min.js" var="jqueryJs" />
<spring:url value="/resources/bootstrap/js/main.js" var="mainJs" />
<spring:url value="/resources/bootstrap/css/animate.css" var="animateCss" />

<%--<spring:url value="<%=request.getContextPath()%>/resources/bootstrap/css/animate.css" var="animateCss" />--%>

<link href="${animateCss}" rel="stylesheet" />
<script src="${jqueryJs}"></script>
<script src="${mainJs}"></script>




</body>
</html>