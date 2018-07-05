<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>${context.title} | АИС Национальная система сертификации</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="/static/gerb.png" rel="icon">
    <link href="/static/gerb.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="/static/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="/static/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="/static/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/static/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="/static/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/static/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
    <link href="/static/lib/ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- Datatables -->
    <link href="/static/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="/static/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="/static/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="/static/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="/static/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">



    <!-- Main Stylesheet File -->
    <link href="/static/css/style.css" rel="stylesheet">
    ${context.style}

</head>

<body id="body">

<!--==========================
  Top Bar
============================-->
<Style>
    body {
        background: url(/static/img/search-bg-d.svg);
    }


    .main-banner {
        width: 100%;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: justify;
        -ms-flex-pack: justify;
        justify-content: space-between;
        padding: 0px 0px 10px 0px;
    }





    .main-banner .logo {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }

    .main-banner .logo:hover,
    .main-banner .logo:focus {
        text-decoration: none;
    }

    .main-banner .logo--wrap {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 357px;
        flex: 0 0 357px;
    }
    .main-banner .logo--wrap1 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 487px;
        flex: 0 0 487px;
    }

    .main-banner .logo__image {
        margin-right: 15px;
    }

    .main-banner .logo__title {
        text-transform: uppercase;
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 3px;
        color: black;
    }

    .main-banner .logo__description {
        font-size: 14px;
        line-height: 1.25;
        color: black;
    }
    #topbar {
        padding: 10px 0 0 0;
    }

    #header {
        padding: 0px 0;
    }

    .nav-menu1{
        background-color: #2c3756;
    }
    .nav-menu1 li  a {
        color: #ffffff;
    }
    @media (max-width: 768px) {
        .main-banner .logo--wrap {
            -ms-flex-preferred-size: auto;
            flex-basis: auto;
            flex: 0 0 0px;
        }
        #services {
            padding: 30px 0 0 0;
            background: url(/static/service-bg.jpg) no-repeat top center;
            background-size: cover;
            min-height: 200px;
        }
        #header-sticky-wrapper{
            display: none;
        }

        #vmap{
            height: 220px;
            width: 410px;
        }
        #txtStatWorkerTotal {
            display: block;
            position: inherit;

            font-family: "PT Sans",sans-serif;

            text-transform: uppercase;
            line-height: 25px;
            color: #1f6bb0;
            font-size: 12px; font-weight: bold;
            text-align: center;
        }
        #txtStatProductionTotal {
            display: block;
            position: inherit;

            font-family: "PT Sans",sans-serif;

            text-transform: uppercase;
            line-height: 25px;
            color: #1f6bb0;
            font-size: 12px; font-weight: bold;
            text-align: center;
        }
        .txt-stat-value{
            font-size: 12px; font-weight: bold;
            vertical-align: middle;
        }



        #footer {
             position: static;
             left: 0;
             bottom: 0;
             width: 100%;
             height: 80px;
        }

    }





    @media (max-width: 768px) {


        .main-banner .logo__image {
            margin-right: 10px;
            width: 24px;
            height: 24px;
        }
        #znakrst{
           visibility: hidden;
        }
        .main-banner .logo__title {
            font-size: 12px;
        }

        .main-banner .logo__description {
            display: none;
        }
        .main-banner .logo--wrap1 {
            display: none;
        }


    }








</Style>

<style>
    @font-face{
        font-family:'Glyphicons Halflings';
        src:url('/static/vendors/bootstrap//fonts/glyphicons-halflings-regular.eot');
        src:url('/static/vendors/bootstrap//fonts/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'),
        url('/static/vendors/bootstrap//fonts/glyphicons-halflings-regular.woff') format('woff'),
        url('/static/vendors/bootstrap//fonts/glyphicons-halflings-regular.ttf') format('truetype'),
        url('/static/vendors/bootstrap//fonts/glyphicons-halflings-regular.svg#glyphicons-halflingsregular') format('svg')
    }


    .dataTables_info{
        width: 100%;
    }
    .datatable_filter{
        left: 540px;
        position: absolute;
        top: 0px;
    }


    .dataTables_length select {
        padding: 5px 10px;
        margin: 1px 10px 1px 10px;
    }
    .html5buttons{
        position: absolute;
        top: 0px;
        left: 85%;
    }

    .dataTables_filter{
    position: absolute;
    top: 0px;
    left: 690px;
    }
    .dataTable{
        border: 1px solid #d4d4d6;
    }
    .dataTable td{
        border: 1px solid #d4d4d6;
    }


    .dataTable th {
        color: #055a1a;
        font-size: 14px;
    }

    .dataTables_filter label {
        margin-right: 5px;
    }

    div.dataTables_wrapper div.dataTables_filter input {
        margin-left: 0.5em;
        display: inline-block;
        width: 202px;



    }
</style>

<style>
    .btn {
        border-radius: 3px;
    }
    .btn-group-vertical .btn, .btn-group .btn {
        margin-bottom: 0;
        margin-right: 0;
    }

    .btn-default {
        color: #333;
        background-color: #fff;
        border-color: #ccc;
    }
    .btn-default:active:hover{
        color: #333;
        background-color: #d4d4d4;
        border-color: #8c8c8c;
    }


    .btn-default span :active:hover:focus{
        color: #333;

    }

    .btn.btn-app {
        position: relative;
        padding: 15px 5px;
        margin: 0 0 10px 10px;
        min-width: 80px;
        height: 60px;
        box-shadow: none;
        border-radius: 0;
        text-align: center;
        color: #666;
        border: 1px solid #ddd;
        background-color: #fafafa;
        font-size: 12px
    }
    .btn.btn-app>.fa,
    .btn.btn-app>.glyphicon,
    .btn.btn-app>.ion {
        font-size: 20px;
        display: block
    }
    .btn.btn-app:hover {
        background: #f4f4f4;
        color: #444;
        border-color: #aaa
    }
    .btn.btn-app:active,
    .btn.btn-app:focus {
        box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125)
    }
    .btn.btn-app>.badge {
        position: absolute;
        top: -3px;
        right: -10px;
        font-size: 10px;
        font-weight: 400
    }
    .dataTables_paginate {
        float: right;
        text-align: right;
        width: 100%;
    }

    .dataTables_paginate a {
        padding: 6px 9px !important;
        background: #ddd !important;
        border-color: #ddd !important;
        color: #055a1a;
    }
    .paging_full_numbers a.paginate_active {
        background-color: rgba(38, 185, 154, 0.59) !important;
        border-color: rgba(38, 185, 154, 0.59) !important
    }
    .pagination {
        float: right;
    }
    .pagination>li:first-child>a, .pagination>li:first-child>span {
        margin-left: 0;
        border-top-left-radius: 4px;
        border-bottom-left-radius: 4px;
    }
    .btn-group .buttons-html5{
        margin: 0 5px 0 5px;
    }


    @media (max-width: 799px) {
        .dataTables_wrapper
        {
            margin-top: 50px;
        }

        .dataTables_length{
            display: none;
        }
        .html5buttons {
            display: none;
        }

        .dataTables_filter {
            /*position: absolute;*/
            top: 0px;
            left: 10px;
        }
        .dataTables_info{
            display: none;
        }

        div.dataTables_wrapper div.dataTables_filter input {
            margin-left: 0.5em;
            display: inline-block;
            width: 280px;
        }

    }
    @media (min-width: 992px){
        #znakrst{
            width: 140px;
            height: 73px;

        }

        .dataTables_filter {
            /*position: absolute;*/
            top: 0px;
            left: 300px;
        }

        div.dataTables_wrapper div.dataTables_filter input {
            margin-left: 0.5em;
            display: inline-block;
            width: 280px;
        }
    }

    @media (min-width: 1200px){

        #znakrst{
            width: 140px;
            height: 73px;

        }

        .dataTables_filter {
            /*position: absolute;*/
            top: 0px;
            left: 590px;
        }


        div.dataTables_wrapper div.dataTables_filter input {
            margin-left: 0.5em;
            display: inline-block;
            width: 280px;
        }
    }


</style>

<section id="topbar" class="d-lg-block">
    <div class="container  clearfix">
        <div class="main-banner">
            <div class="logo--wrap">
                <a href="/" class="logo">
                    <img src="/static/gerb.png" alt="Логотип Росстандарта" class="logo__image">
                    <div class="logo__text">
                        <div class="logo__description">Росстандарт</div>
                        <div class="logo__title">Национальная система сертификации</div>
                    </div>
                </a>
            </div>
            <div class="logo--wrap" >
                <a href="/" class="logo">
                    <img id="znakrst" src="/static/znak_green.svg" alt="Знак НСС" class="logo__image" style="width: 140px; height: 73px;" >
                </a>
            </div>
            <div class="logo--wrap1">
                <div class="logo__text">
                    <div class="logo__title">Горячая линия <i class="fa fa-phone"></i> 8(495)531-26-40</div>
                    <div class="logo__description">
                        По вопросам работы системы обращаться на адрес <i class="fa fa-envelope-o"></i> <a href="mailto:ncs@gostinfo.ru">ncs@gostinfo.ru</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--==========================
  Header
============================-->

<header id="header">
    <div class="container">
        <div id="logo" class="pull-left">
            <h1><a href="#body" class="scrollto"><span></span></a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
        </div>
        <nav id="nav-menu-container">
            <ul class="nav-menu">
                <li><a href="/">Главная</a></li>
                <li><a href="/about">О системе</a></li>
                <li><a href="/documents">Документы</a></li>

                <li class="menu-has-children"><a href="/registry">Реестры</a>
                    <ul class="nav-menu1" >
                        <li><a href="/registry/sert">Реестр объектов оценки соответствия, маркированных <br> знаком национальной системы стандартизации</a></li>
                        <li><a href="/registry/certificationbodies">Реестр органов по сертификации</a></li>
                        <li><a href="/registry/testinglaboratories"> Реестр испытательных лабораторий</a></li>
                        <li><a href="/registry/technicalexperts"> Реестр технических экспертов</a></li>
                        <li><a href="/registry/inspectionbodies"> Реестр органов инспекции</a></li>
                        <li><a href="/registry/blacklistmanufacturers">Реестр продукции, соответствие которой требованиям нац. стандартов не подтверждено</a></li>
                    </ul>
                </li>
                <li><a href="/contact">Контакты</a></li>
            </ul>
        </nav>
        <!-- #nav-menu-container -->
    </div>
</header>
<!-- #header -->

<main id="main">
    <#include context.bodycontent>
</main>

<!--==========================
  Footer
============================-->
<footer id="footer">
    <div class="container">
        <div class="copyright">
            &copy; <strong>ФГУП СТАНДАРТИНФОРМ</strong>. Все права защищены
        </div>
        <div class="credits">


        </div>
    </div>
</footer>
<!-- #footer -->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

<!-- JavaScript Libraries -->
<script src="/static/lib/jquery/jquery.min.js"></script>
<script src="/static/lib/jquery/jquery-migrate.min.js"></script>
<script src="/static/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/static/lib/easing/easing.min.js"></script>
<script src="/static/lib/superfish/hoverIntent.js"></script>
<script src="/static/lib/superfish/superfish.min.js"></script>
<script src="/static/lib/wow/wow.min.js"></script>
<script src="/static/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="/static/lib/magnific-popup/magnific-popup.min.js"></script>
<script src="/static/lib/sticky/sticky.js"></script>
<!--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>-->

<!-- Datatables -->
<script src="/static/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="/static/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="/static/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="/static/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="/static/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="/static/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="/static/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="/static/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="/static/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="/static/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="/static/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="/static/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="/static/vendors/jszip/dist/jszip.min.js"></script>
<script src="/static/vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="/static/vendors/pdfmake/build/vfs_fonts.js"></script>


<!-- Contact Form JavaScript File -->
<script src="/static/contactform/contactform.js"></script>

<!-- Template Main Javascript File -->
<script src="/static/js/main.js"></script>

${context.script}

</body>
</html>
