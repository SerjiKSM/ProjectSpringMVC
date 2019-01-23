<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta lang="ru">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Shoe store</title>

    <script src="http://code.jquery.com/jquery-1.9.0.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Arial+Black&effect=emboss">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="/resources/img/bootstrap/js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script src="/resources/img/bootstrap/js/main.js"></script>
    <script src="/resources/img/bootstrap/js/google_maps.js"></script>

    <!-- Bootstrap -->

    <link href="/resources/img/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/img/bootstrap/css/style.css" rel="stylesheet">

    <script>
        jQuery(function ($) {
            $("#phone").mask("+38 (999) 999-99-99");
        });
    </script>

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
                    <li><a href="get_product">Красовки</a></li>
                    <li><a href="#">Туфлі</a></li>
                    <li><a href="#">Чоботи</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Кеди</a></li>
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


<!-- CART -->
<div class="container-fluid">
    <section id="cart">
        <div class="row cart">
            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
                <strong>Корзина:</strong>
            </div>
        </div>
        <!-- Empty cart -->
        <c:if test="${cartCount eq 0}">
            <div class="row cart">
                <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12 empty-cart">
                    <div class="alert alert-info" role="alert">
                        В корзине нет товаров
                    </div>
                </div>
            </div>
        </c:if>
        <!-- Full cart -->
        <c:if test="${cartCount gt 0}">
            <div class="row cart">
                <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12 full-cart">
                    <table class="table table-striped">
                        <tr>
                            <td class="hidden-xs">Артикул</td>
                            <td>Категория</td>
                            <td>Фото</td>
                            <td class="hidden-xs">Название</td>
                            <td>Размер</td>
                            <td>Стоимость</td>
                        </tr>
                        <c:forEach items="${cartProductList}" var="cp">
                            <tr>
                                <td class="hidden-xs">${cp.article}</td>
                                <%--<td class="hidden-xs">?</td>--%>
                                <%--<td class="hidden-xs">cp.productCategory</td>--%>
                                <td class="hidden-xs">?</td>
                                <td class="hidden-xs">?</td>
                                <%--<td><img width="50px" height="50px">${cp.photo.id}</td>--%>
                                <%--<td>${cp.productCategory}</td>--%>
                                <%--<td><img width="50px" height="50px" src="/resources/${cp.photoLinkPreview}"></td>--%>
                                <td class="hidden-xs">${cp.name}</td>
                                <%--<td>${cp.size}</td>--%>
                                <%--<td>${cp.price} ${cp.currency}</td>--%>

                                 <%--<td>${cp.price}</td>--%>

                            </tr>
                        </c:forEach>
                        <tr>
                            <td class="hidden-xs"></td>
                            <td></td>
                            <td class="hidden-xs"></td>
                            <td></td>
                            <td style="text-align: right;"><strong>Итого:</strong></td>
                            <td><strong>${amount} грн</strong></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row cart">
                <form method="post" action="/checkout/">
                    <div class="col-lg-2 col-lg-offset-2 col-md-2 col-md-offset-2 col-sm-2 col-sm-offset-2 col-xs-12 full-cart input-padding text-center">
                        <input class="input" type="text" name="name" placeholder=" Введите имя" required autofocus>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 full-cart input-padding text-center">
                        <input id="phone" class="input" type="text" name="phone" placeholder=" Введите телефон"
                               required>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 full-cart input-padding text-center">
                        <input class="input" type="email" name="email" placeholder=" Введите Email" required>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 full-cart input-padding text-center">
                        <input type="submit" value="Оформить заказ" class="btn btn-success btn-mg" width="80px">
                    </div>
                </form>
            </div>
            <div class="row cart">
                <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12 full-cart text-center">
                    <p><a href="/#kids" class="btn btn-danger btn-mg">Продолжить покупки</a></p>
                </div>
            </div>
            <div class="row cart">
                <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12 full-cart text-center">
                    <p><a href="/clearcart" class="btn btn-info btn-mg">Очистить корзину</a></p>
                </div>
            </div>
        </c:if>
    </section>
</div>
<%--<!-- GOOGLE ADS -->--%>
<%--<div class="container-fluid">--%>
    <%--<section id="google-ads">--%>
        <%--<div class="row google-ads">--%>
            <%--<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 text-center">--%>
                <%--<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>--%>
                <%--<ins class="adsbygoogle"--%>
                     <%--style="display:inline-block;width:300px;height:250px"--%>
                     <%--data-ad-client="ca-pub-1253674175341917"--%>
                     <%--data-ad-slot="9126572185"></ins>--%>
                <%--<script>--%>
                    <%--(adsbygoogle = window.adsbygoogle || []).push({});--%>
                <%--</script>--%>
            <%--</div>--%>
            <%--<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 text-center">--%>
                <%--<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>--%>
                <%--<ins class="adsbygoogle"--%>
                     <%--style="display:inline-block;width:300px;height:250px"--%>
                     <%--data-ad-client="ca-pub-1253674175341917"--%>
                     <%--data-ad-slot="9126572185"></ins>--%>
                <%--<script>--%>
                    <%--(adsbygoogle = window.adsbygoogle || []).push({});--%>
                <%--</script>--%>
            <%--</div>--%>
            <%--<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 text-center">--%>
                <%--<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>--%>
                <%--<ins class="adsbygoogle"--%>
                     <%--style="display:inline-block;width:300px;height:250px"--%>
                     <%--data-ad-client="ca-pub-1253674175341917"--%>
                     <%--data-ad-slot="9126572185"></ins>--%>
                <%--<script>--%>
                    <%--(adsbygoogle = window.adsbygoogle || []).push({});--%>
                <%--</script>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</section>--%>
<%--</div>--%>

</body>
</html>