<%@page import="java.util.List"%>
<%@page import="Model.Orador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Conf Bs As - Panel administrador.</title>
  <link rel="icon" type="image/x-icon" href="../img/icon-html-15.jpg">
  <!--Bootstrap CSS-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <!--CSS Custom-->
  <link rel="stylesheet" href="./css/style.css">
  <!-- Custom fonts for this template-->
  <link href="./vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="./css/sb-admin-2.min.css" rel="stylesheet">
  
</head>
<body id="page-top">
    <!-- Header -->
  <nav class="navbar navbar-expand-sm navbar-dark navbarHeader fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="../index.jsp">
        <img src="./img/codoacodo.png" alt="Logo" width="110" height="55" class="d-inline-block align-text-center">
        Conf Bs As
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">La conferencia</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.jsp#oradores">Los oradores</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.jsp#lugarFecha">El lugar y la fecha</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.jsp#txtArea">Conviértete en orador</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ticketsLink active" aria-current="page" href="./pages/tickets.html">Comprar tickets</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
    <!-- Fin header -->
    <!-- Contenido ppal -->
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 mt-5">
            <!-- Page Wrapper -->
            <div class="mt-3 pt-3"  id="wrapper">

                <!-- Sidebar -->
                <ul class="navbar-nav bg-secondary sidebar sidebar-dark accordion" id="accordionSidebar">

                    <!-- Divider -->
                    <hr class="sidebar-divider">

                    <!-- Heading -->
                    <div class="sidebar-heading">
                        Panel administrador
                    </div>

                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                           aria-expanded="true" aria-controls="collapseTwo">
                            <i class="fas fa-fw fa-cog"></i>
                            <span>Oradores</span>
                        </a>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Operaciones:</h6>
                                <a class="collapse-item" href="Controlador?access=listarOradores">Listar Oradores</a>
                                <a class="collapse-item" href="cards.html">Otra opcion</a>
                            </div>
                        </div>
                    </li>

                    <!-- Nav Item - Utilities Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                           aria-expanded="true" aria-controls="collapseUtilities">
                            <i class="fas fa-fw fa-wrench"></i>
                            <span>Tickets</span>
                        </a>
                        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                             data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Operaciones:</h6>
                                <a class="collapse-item" href="listar_tickets.html">Listar tickets</a>
                            </div>
                        </div>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider d-none d-md-block">

                    <!-- Sidebar Toggler (Sidebar) -->
                    <div class="text-center d-none d-md-inline">
                        <button class="rounded-circle border-0" id="sidebarToggle"></button>
                    </div>
                </ul>
                <!-- End of Sidebar -->
                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                        <!-- Begin Page Content -->
                        <div class="container-fluid">

                            <!-- Page Heading -->
                            <div class="d-sm-flex align-items-center justify-content-between mt-4 mb-4">
                                <h1 class="h3 mb-0 text-gray-800">Listado de Oradores</h1>
                            </div>

                            <!-- Content Row -->
                            <div class="row">

                                <table class="table table-bordered table-hover">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th class="text-center">ID</th>
                                            <th class="text-center">Nombre</th>
                                            <th class="text-center">Apellido</th>
                                            <th class="text-center">Dni</th>
                                            <th class="text-center">email</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <!-- Obtener la coleccion de objetos sede y lo recorremos con un foreach -->
                                        <%
                                            List<Orador> listaOrador = (List<Orador>) request.getAttribute("listaOradores");
                                            for (Orador orador : listaOrador) {
                                        %>
                                        <tr>
                                            <td class="text-center"><%= orador.getIdOrador()%></td>
                                            <td class="text-center"><%= orador.getNombre()%></td>
                                            <td class="text-center"><%= orador.getApellido()%></td>
                                            <td class="text-center"><%= orador.getDni()%></td>
                                            <td class="text-center"><%= orador.getEmail()%></td>

                                        </tr>
                                        <%
                                            }
                                        %>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.container-fluid -->

                    </div>
                    <!-- End of Main Content -->        

                </div>
                <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->

        </div>
    </div>

    
    
  <!--Bootstrap JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  <!-- Bootstrap core JavaScript-->
    <script src="./vendor/jquery/jquery.min.js"></script>
    <script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="./vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="./js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="./vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="./js/demo/chart-area-demo.js"></script>
    <script src="./js/demo/chart-pie-demo.js"></script>
</body>
</html>
