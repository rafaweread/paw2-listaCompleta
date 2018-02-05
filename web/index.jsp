<%-- 
    Document   : index
    Created on : 30/01/2018, 02:35:49
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/logo.png" />
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script src="js/preloader.js" type="text/javascript"></script>
        <!-- PRELOADER -->
        <script type="text/javascript">
            // makes sure the whole site is loaded
            $(window).load(function () {
                // will first fade out the loading animation
                $("#status").delay(1000).fadeOut("slow");
                // will fade out the whole DIV that covers the website.
                $("#preloader").delay(1000).fadeOut("slow");
            })
        </script>

        <style type="text/css">
            #preloader{position:fixed;
                       top:0; 
                       left:0;
                       right:0;
                       bottom:0;
                       background:#ECF0F1;
                       z-index:9999;
                       height:100%;
                       width:100%;
            }
            #status{width:920px;
                    height:532px;
                    position:absolute;
                    left:50%;
                    top:50%;
                    margin:-266px 0 0 -460px;
                    background:url(img/loading.gif) center no-repeat;
            }

        </style>
    </head>

    <body>
        <div id="preloader">
            <div id="status">

            </div>
        </div>

        <nav id="mainNav">
            <img src="img/logo.png" style="float: left; height: 128px; width: 138px; margin: 15px 0px 0px 15px;"/>
            
            <ul>                              
                <li><a href="index.jsp">Início</a></li>

                <li><a href="#">Cliente</a>
                    <ul class="sub-menu">
                        <li><a href="user.jsp">Cadastrar</a></li>
                        <li><a href="listUser.jsp">Listar</a></li>
                        <!--                        <li><a href="edit.jsp">Alterar</a></li>-->
                    </ul>
                </li>

                <!--                <li><a href="#"><i class="icon-desktop"></i><br />Portfolio</a>
                                    <ul class="sub-menu">
                                        <li><a href="#"><i class="icon-plane"></i> Web</a></li>
                                        <li><a href="#"><i class="icon-book"></i> Print</a></li>
                                        <li><a href="#"><i class="icon-facetime-video"></i> Video</a></li>
                                    </ul>
                                </li>-->

                <li><a href="#"><i class="icon-user"></i><br />Sobre</a>
                    <!--                    <ul class="sub-menu">
                                            <li><a href="#"><i class="icon-plane"></i> Web</a></li>
                                            <li><a href="#"><i class="icon-book"></i> Print</a></li>
                                            <li><a href="#"><i class="icon-facetime-video"></i> Video</a></li>
                                        </ul>-->
                </li>

                <li><a href="login.jsp"><br />Sair</a></li>

            </ul><div class="clr"></div>
        </nav>
        <!--Final Menu-->
        <div class="container">
            <div class="row">
            <h1>Visite Orlando em seu próximo intervalo</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In bibendum, ipsum ac porttitor accumsan.Maecenas rhoncus augue ex, sit amet placerat sem dapibus eu. Phasellus tincidunt nec mi nec consequat. In ornare, velit et faucibus tempus, libero nunc consectetur tellus, ut maximus augue justo ut purus. Pellentesque fringilla justo sit amet euismod tempor. </p>
            <div class="row" style="background:#eee;padding-bottom:10px">
                <div class="col-md-4 text-center" >
                    <h3>Things to do</h3>
                    <img src="img/coaster.jpg" class="img-responsive" style="border:5px solid #fff;min-height:212px">
                    <button class="btn btn-default btn-block">Veja coisas para fazer</button>
                </div>
                <div class="col-md-4 text-center">
                    <h3>Tickets</h3>
                    <img src="img/tickets.png" class="img-responsive" style="border:5px solid #fff;min-height:212px">
                    <button class="btn btn-default btn-block">Bilhetes</button>

                </div>
                <div class="col-md-4 text-center" style="min-height:212px">
                    <h3>Flights</h3>
                    <img src="img/aircraft.jpg" class="img-responsive" style="border:5px solid #fff;min-height:212px">
                    <button class="btn btn-default btn-block">Veja os melhores detalhes do vôo</button>

                </div>
            </div>
            <hr>
            <h1 >Mapa de Orlando</h1>
            <div class="row"  style="background:#eee;padding-bottom:10px;margin-top:15px">


                <div class="col-md-12">
                    <iframe style="padding:10px" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d224322.9614295285!2d-81.3627728357422!3d28.53832885616686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2suk!4v1435612345285" width="100%" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
        </div>
        
    </body>
</html>
