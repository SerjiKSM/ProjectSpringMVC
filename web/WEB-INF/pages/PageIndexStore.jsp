<%--<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>--%>
<html>

<head>

    <meta charset="utf-8">
    <meta lang="ru">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Shoe store</title>

    <%--<script src="${pageContext.request.contextPath}/resources/bootstrap/js/jquery-1.11.1.min.js"></script>--%>
    <%--<script src="${pageContext.request.contextPath}/resources/bootstrap/js/jquery.appear.js"></script>--%>
    <%--<script src="<c:url value="/resources/bootstrap/js/jquery-1.11.1.min.js" />"></script>--%>
    <%--<script src="<c:url value="/resources/bootstrap/js/main.js" />"></script>--%>

    <%--<spring:url value="/resources/bootstrap/js/jquery-1.11.1.min.js" var="jqueryJs" />--%>
    <%--<spring:url value="/resources/bootstrap/js/main.js" var="mainJs" />--%>



    <%--<script src="http://code.jquery.com/jquery-1.9.0.js"></script>--%>
    <%--<script src="http://code.jquery.com/jquery-migrate-1.0.0.js"></script>--%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>--%>

    <%--<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="/resources/bootstrap/css/animate.css">--%>
    <%--<link href="<c:url value="/resources/bootstrap/css/animate.css" />" rel="stylesheet">--%>
    <%--<spring:url value="/resources/bootstrap/css/animate.css" var="animateCss" />--%>

    <%--<link href="${animateCss}" rel="stylesheet" />--%>
    <%--<script src="${jqueryJs}"></script>--%>
    <%--<script src="${mainJs}"></script>--%>


    <%--<link rel="stylesheet" href="/resources/bootstrap/css/style.css">--%>

    <%--<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Arial+Black&effect=emboss">--%>
    <%--<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Roboto">--%>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">--%>
    <%--<script src="/resources/img/bootstrap/js/bootstrap.min.js"></script>--%>
    <%--<script src="http://maps.google.com/maps/api/js?sensor=false"></script>--%>
    <%--<script src="/resources/img/bootstrap/js/main.js"></script>--%>
    <%--<script src="/resources/img/bootstrap/js/google_maps.js"></script>--%>


    <!-- Bootstrap -->

    <%--<link href="/resources/img/bootstrap/css/bootstrap.css" rel="stylesheet">--%>
    <%--<link href="/resources/img/bootstrap/css/style.css" rel="stylesheet">--%>
    <%--<link href="/resources/img/bootstrap/css/font-awesome.css" rel="stylesheet">--%>

</head>

<body>

<div class="navbar navbar-inverse">


    <!--            <div class="container">-->
    <!--                <h3>Ukraine shoes store</h3>-->
    <!--            </div>-->


    <div class="container">

        <div class="navbar-header navbar-left">

        <a class="navbar-brand" href="#">Логотип</a>

        </div>

        <div class="collapse navbar-collapse" id="responsive-menu">
            <form action="" class="navbar-form navbar-right hidden-sm">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="E-mail" value="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Пароль" value="">
                </div>
                <button type="submit" class="btn btn-primary">
                    <i class="fa fa-sign-in"></i> ВОЙТИ
                </button>
            </form>
        </div>

    </div>

</div>

<!--    <div class="navbar navbar-inverse navbar-static-top">-->
<!--                    <div class="navbar navbar-inverse navbar-fixed-bottom">-->
<!--                    <div class="navbar navbar-inverse navbar-fixed-top">    -->
<div class="container">

    <%--<div class="navbar-header navbar-left">--%>

        <%--<a class="navbar-brand" href="#">Логотип</a>--%>

    <%--</div>--%>


    <%--<div class="navbar-header">--%>

        <%--<form class="form-inline" role="form" action="/search" method="post">--%>
            <%--<input type="text" class="form-control" name="pattern" placeholder="Search">--%>
            <%--<input type="submit" class="btn btn-default" value="Пошук">--%>
        <%--</form>--%>

    <%--</div>--%>

    <form class="navbar-form navbar-left" role="search" action="/search" method="post">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
    </form>


    <!--
                <div class="navbar-header">

                    <form class="form-inline" role="form" action="/search" method="post">
                        <input type="text" class="form-control" name="pattern" placeholder="Search">
                        <input type="submit" class="btn btn-default" value="Search">
                    </form>

                </div>
    -->
    <div class="collapse navbar-collapse" id="responsive-menu">

        <ul class="nav navbar-nav">

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Жіноче взуття<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="/getWoomenSneakers?category=womenboots" >Красовки</a></li>
                    <li><a href="#">Туфлі</a></li>
                    <li><a href="#">Чоботи</a></li>
                    <li><a href="#">Кеди</a></li>
                    <li class="divider"></li>
                    <li><a href="get_product">Весь асортимент</a></li>
                </ul>
            </li>

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Чоловіче взуття<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Красовки</a></li>
                    <li><a href="#">Туфлі</a></li>
                    <li><a href="#">Чоботи</a></li>
                    <li><a href="#">Кеди</a></li>
                </ul>
            </li>

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Дитяче взуття<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Красовки</a></li>
                    <li><a href="#">Туфлі</a></li>
                    <li><a href="#">Чоботи</a></li>
                    <li><a href="#">Кеди</a></li>
                </ul>
            </li>

            <li><a href="#">Про нас</a></li>
            <li><a href="#">Доставка</a></li>
            <li><a href="#">Оплата</a></li>
            <li><a href="#">Акції</a></li>

        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="/cart">
                    <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Корзина (${cartCount})
                </a>
            </li>
        </ul>

    </div>
</div>
<!--    </div>-->

<div id="carousel" class="carousel slide">

    <!--        Индикаторы слайдов-->
    <ol class="carousel-indicators">
        <li class="active" data-target="#carousel" data-slide-to="0"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
    </ol>

    <!--        Слайды-->
    <div class="carousel-inner">

        <div class="item active">

            <%--<img src="/image/${3}" alt="">--%>
                <img src="/resources/img/pictures/superkid_promo.jpg" alt="">


            <div class="carousel-caption">
                <h3>Первый слайд</h3>

                <p>Описание первого слайда</p>
            </div>
        </div>

        <div class="item">
        <%--<img src="/image/${2}" alt="">--%>
            <img src="/resources/img/pictures/superkid_promo_xs.jpg" alt="">


        <div class="carousel-caption">
        <h3>Второй слайд</h3>

        <p>Описание второго слайда</p>
        </div>
        </div>

        <div class="item">
        <%--<img src="/image/${1}" alt="">--%>
            <img src="/resources/img/pictures/unnamed.jpg" alt="">

        <div class="carousel-caption">
        <h3>Третий слайд</h3>

        <p>Описание третего слайда</p>
        </div>
        </div>

    </div>

    <!--        Стрелки переключения слайдов-->
    <a href="#carousel" class="left carousel-control" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a href="#carousel" class="right carousel-control" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    </a>

</div>

<!-- FOOTER -->
<div class="container-fluid footer">
    <footer>
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 text-center">
                <h5>Магазин взуття</h5>
                <h5>02140, г.Киев, пр. Бажана 10</h5>
                <h5><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> 067-1495456</h5>
                <h5><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> 050-1417393</h5>
                <h5><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> 044-3615154</h5>
                <!--
                                <h5><img src="/resources/img/superkid_kid.png" alt="Superkid || Детский магазин модных товаров"
                                         title="Superkid || Детский магазин модных товаров"></h5>
                -->
                <!--
                                <h5>
                                    <a href="#main"><i class="fa fa-facebook-official fa-2x social"></i></a>
                                    <a href="#main"><i class="fa fa-twitter fa-2x social"></i></a>
                                    <a href="#main"><i class="fa fa-youtube fa-2x social"></i></a>
                                </h5>
                -->
                <h5><span class="glyphicon glyphicon-copyright-mark" aria-hidden="true"></span> 2015</h5>
            </div>
        </div>
    </footer>
</div>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<%--<script src="/resources/bootstrap/js/bootstrap.js"></script>--%>

<%--<script src="/resources/img/js/bootstrap.js"></script>--%>

<script src="/resources/img/bootstrap/js/bootstrap.js"></script>

</body>

</html>
