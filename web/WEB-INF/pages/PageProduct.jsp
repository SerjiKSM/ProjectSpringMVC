<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Shoe store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>


<%--<nav class="navbar navbar-default">--%>
    <%--<div class="container-fluid">--%>
        <%--<!-- Brand and toggle get grouped for better mobile display -->--%>
        <%--<div class="navbar-header">--%>
            <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"--%>
                    <%--data-target="#bs-example-navbar-collapse-1" aria-expanded="false">--%>
                <%--<span class="sr-only">Toggle navigation</span>--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>
                <%--<span class="icon-bar"></span>--%>
            <%--</button>--%>
            <%--<a class="navbar-brand" href="#">Brand</a>--%>
        <%--</div>--%>

        <%--<!-- Collect the nav links, forms, and other content for toggling -->--%>
        <%--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">--%>
            <%--<ul class="nav navbar-nav">--%>
                <%--<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>--%>
                <%--<li><a href="#">Link</a></li>--%>
                <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"--%>
                       <%--aria-expanded="false">Dropdown <span class="caret"></span></a>--%>
                    <%--<ul class="dropdown-menu">--%>
                        <%--<li><a href="#">Action</a></li>--%>
                        <%--<li><a href="#">Another action</a></li>--%>
                        <%--<li><a href="#">Something else here</a></li>--%>
                        <%--<li role="separator" class="divider"></li>--%>
                        <%--<li><a href="#">Separated link</a></li>--%>
                        <%--<li role="separator" class="divider"></li>--%>
                        <%--<li><a href="#">One more separated link</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<form class="navbar-form navbar-left" role="search">--%>
                <%--<div class="form-group">--%>
                    <%--<input type="text" class="form-control" placeholder="Search">--%>
                <%--</div>--%>
                <%--<button type="submit" class="btn btn-default">Submit</button>--%>
            <%--</form>--%>
            <%--<ul class="nav navbar-nav navbar-right">--%>
                <%--<li><a href="#">Link</a></li>--%>
                <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"--%>
                       <%--aria-expanded="false">Dropdown <span class="caret"></span></a>--%>
                    <%--<ul class="dropdown-menu">--%>
                        <%--<li><a href="#">Action</a></li>--%>
                        <%--<li><a href="#">Another action</a></li>--%>
                        <%--<li><a href="#">Something else here</a></li>--%>
                        <%--<li role="separator" class="divider"></li>--%>
                        <%--<li><a href="#">Separated link</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
            <%--</ul>--%>

            <%--<ul class="nav navbar-nav navbar-right">--%>
                <%--<li>--%>
                    <%--<a href="/cart">--%>
                        <%--<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Корзина (${cartCount})--%>
                    <%--</a>--%>
                <%--</li>--%>
            <%--</ul>--%>

        <%--</div>--%>
        <%--<!-- /.navbar-collapse -->--%>
    <%--</div>--%>
    <%--<!-- /.container-fluid -->--%>
<%--</nav>--%>


<%--<div class="container">--%>
    <%--<h3>List product</h3>--%>

    <%--<table class="table table-striped">--%>
        <%--<thead>--%>
        <%--<tr>--%>
            <%--<td><b>Photo</b></td>--%>
            <%--<td><b>Id</b></td>--%>
            <%--<td><b>Article</b></td>--%>
            <%--<td><b>Name</b></td>--%>
            <%--<td><b>Full name</b></td>--%>
            <%--<td><b>Comment</b></td>--%>
            <%--<td><b>Action</b></td>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<c:forEach items="${products}" var="product">--%>
            <%--<tr>--%>
                <%--&lt;%&ndash;<td><img height="40" width="40" src="/image/${product.photo.id}" /></td>&ndash;%&gt;--%>

                    <%--<td><img height="40" width="40" src="/image/${product.photo.id}" /></td>--%>
                    <%--&lt;%&ndash;<td><img height="40" width="40" src="/image/${3}" /></td>&ndash;%&gt;--%>

                <%--<td>${product.id}</td>--%>
                <%--<td>${product.article}</td>--%>
                <%--<td>${product.name}</td>--%>
                <%--<td>${product.fullName}</td>--%>
                <%--<td>${product.comment}</td>--%>

                <%--<td><a href="/deleteProduct?id=${product.id}">Delete</a></td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
    <%--</table>--%>

<%--</div>--%>



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



<div class="container">
    <h4>Pictures</h4>

    <div class="container">
        <div class="row masonry" data-columns>



            <c:forEach items="${products}" var="product">

                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">

                    <div class="thumbnail">



                        <%--<img src="http://placehold.it/200x140" alt="img-responsive">--%>
                            <%--<img src="http://placehold.it/200x140" alt="img-responsive">--%>
                            <img height="200" width="160" src="/image/${product.photo.id}" >

                        <div class="caption">

                            <form action="/cart" method=post>
                                <%--<input type=hidden name="id" value="${product.id}">--%>
                                <input type=hidden name="article" value="${product.article}">
                                <%--<input type=hidden name="category" value="${product.productCategory}">--%>
                                <input type=hidden name="photo" value="${product.photo.id}">
                                <input type=hidden name="name" value="${product.name}">
                                <input type=hidden name="price" value="${product.price}">


                            <%--<h5>Название обуви</h5>--%>
                            <h4>${product.name}</h4>
                            <h4>Ціна ${product.price}</h4>
                            <p>
                                <a href="#" class="btn btn-primary" role="button">Описание</a>
                                <h4></h4>
                                <%--<a href="/cart" class="btn btn-default" role="button">Добавить в корзину</a>--%>


                                <button class="btn btn-md btn-info" type="submit">Добавить в корзину</button>


                            </p>

                            </form>

                        </div>



                    </div>
                </div>
            </c:forEach>



        </div>

    </div>

</div>

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