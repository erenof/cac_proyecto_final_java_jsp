<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Conf Bs As</title>
  <link rel="icon" type="image/x-icon" href="./img/icon-html-15.jpg">
  <!--Bootstrap CSS-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <!--CSS Custom-->
  <link rel="stylesheet" href="./css/style.css">
</head>
<body>
  <!-- Header -->
  <nav class="navbar navbar-expand-sm navbar-dark navbarHeader fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="./img/codoacodo.png" alt="Logo" width="110" height="55" class="d-inline-block align-text-center">
        Conf Bs As
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">La conferencia</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#oradores">Los oradores</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#lugarFecha">El lugar y la fecha</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#txtArea">Conviértete en orador</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ticketsLink" href="./pages/tickets.html">Comprar tickets</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container-fluid">
    <!-- Contenido principal -->
    <!--Seccion 1, con la foto de fondo y texto-->
    <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-3 carouselPad">
        <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="./img/ba1.jpg" class="d-block w-100 carouselImg" alt="Imágen Bs As">
              <div class="carousel-caption top-0 mt-5 d-none d-md-block">
                <h1 class="mt-5 text-end">Conf Bs As</h1>
                <p class="text-end">Bs As llega por primera vez a Argentina. Un evento para compartir con</br>
                   nuestra comunidad, el conocimiento y experiencia de los expertos que<br>
                   están creando el futuro de Internet. Ven a conocer a miembros del<br>
                   evento, a otros estudiantes de Codo a Codo y a los oradores de primer<br>
                   nivel que tenemos para ti. Te esperamos!
                </p>
                <a href="./pages/tickets.html" class="btn btn-primary float-end mx-1 btnGreen">Comprar tickets</button> <a href="#txtArea" class="btn btn-outline-light float-end mx-2">Quiero ser orador</a>
              </div>
            </div>
            <div class="carousel-item">
              <img src="./img/ba2.jpg" class="d-block w-100 carouselImg" alt="Imágen Bs As">
              <div class="carousel-caption top-0 mt-5 d-none d-md-block">
                <h1 class="mt-5 text-end">Conf Bs As</h1>
                <p class="text-end">Bs As llega por primera vez a Argentina. Un evento para compartir con</br>
                   nuestra comunidad, el conocimiento y experiencia de los expertos que<br>
                   están creando el futuro de Internet. Ven a conocer a miembros del<br>
                   evento, a otros estudiantes de Codo a Codo y a los oradores de primer<br>
                   nivel que tenemos para ti. Te esperamos!
                </p>
                <a href="./pages/tickets.html" class="btn btn-primary float-end mx-1 btnGreen">Comprar tickets</button> <a href="#txtArea" class="btn btn-outline-light float-end mx-2">Quiero ser orador</a>
              </div>
            </div>
            <div class="carousel-item">
              <img src="./img/ba3.jpg" class="d-block w-100 carouselImg" alt="Imágen Bs As">
              <div class="carousel-caption top-0 mt-5 d-none d-md-block">
                <h1 class="mt-5 text-end">Conf Bs As</h1>
                <p class="text-end">Bs As llega por primera vez a Argentina. Un evento para compartir con</br>
                   nuestra comunidad, el conocimiento y experiencia de los expertos que<br>
                   están creando el futuro de Internet. Ven a conocer a miembros del<br>
                   evento, a otros estudiantes de Codo a Codo y a los oradores de primer<br>
                   nivel que tenemos para ti. Te esperamos!
                </p>
                <a href="./pages/tickets.html" class="btn btn-primary float-end mx-1 btnGreen">Comprar tickets</button> <a href="#txtArea" class="btn btn-outline-light float-end mx-2">Quiero ser orador</a>
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
    </div>
    <!--Seccion 2, Card con los oradores-->
    <div id="oradores" class="row mx-5">
      <!--Card orador 1-->
      <div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 mb-3 ">
        <div class="card h-100">
          <img src="./img/steve.jpg" class="card-img-top" alt="Foto Steve Jobs">
          <div class="card-body">
            <span class="badge text-bg-warning">Javascript</span>
            <span class="badge text-bg-info">React</span>
            <h5 class="card-title">Steve Jobs</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque itaque eveniet soluta 
              deserunt voluptas incidunt praesentium molestiae cupiditate a, corporis, aut ex laboriosam, doloribus consequuntur.
            </p>
          </div>
        </div>
      </div>
      <!--Card orador 2-->
      <div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 mb-3">
        <div class="card h-100">
          <img src="./img/bill.jpg" class="card-img-top" alt="Foto Bill Gates">
          <div class="card-body">
            <span class="badge text-bg-warning">Javascript</span>
            <span class="badge text-bg-info">React</span>
            <h5 class="card-title">Bill Gates</h5>
            <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Odit animi qui veritatis modi voluptatum at!
              Similique eaque animi perspiciatis minus reiciendis esse maxime possimus hic delectus accusantium. Nihil, dolore quibusdam?
            </p>
          </div>
        </div>
      </div>
      <!--Card orador 3-->
      <div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 mb-3">
        <div class="card h-100">
          <img src="./img/ada.jpeg" class="card-img-top" alt="Foto Ada Lovelace">
          <div class="card-body">
            <span class="badge text-bg-secondary">Negocio</span>
            <span class="badge text-bg-danger">Startups</span>
            <h5 class="card-title">Ada Lovelace</h5>
            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum, architecto officiis rerum voluptas aut
               maiores sed modi voluptatibus accusantium nam aliquam corporis optio voluptatem repellat, officia est, a consectetur corrupti
                minima omnis? Soluta, quis. Blanditiis.
            </p>
          </div>
        </div>
      </div>
    </div>
    <!--Seccion 3, Imágen del lugar y texto descriptivo-->
    <div id="lugarFecha" class="row align-items-center mb-2 textBox">
      <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 carouselPad">
        <img src="./img/honolulu.jpg" class="img-fluid" alt="Imágen playa" srcset="">
      </div>
      <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 " >
        <h1>Bs As - Octubre</h1>
        <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos. Honolulu
          es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área
          urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada
          que cubre toda la ciudad (aproximadamente 600 km2 de superficie).
        </p>
        <button type="button" class="btn btn-outline-light">Conocé mas</button>
      </div>
    </div>
    <!--Seccion 4, Texto convertite en orador-->
    <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 " >
        <p class="text-center smallText mb-1">CONVIÉRTETE EN UN</p>
        <h4 class="text-center mb-1">ORADOR</h4>
        <p class="text-center">Anótate como orador para dar una charla ignite. Cuéntanos de qué quieres hablar!</p>
      </div>
    </div>
    <!--Seccion 4 cont, formulario enviar datos orador-->
    <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12" >
        <form>
          <div class="row ">
            <div class="col mb-2 justify-content-center">
              <input type="text" class="form-control" placeholder="First name" aria-label="First name">
            </div>
            <div class="col mb-2 justify-content-center">
              <input type="text" class="form-control" placeholder="Last name" aria-label="Last name">
            </div>
            <div class="input-group mb-2">
              <textarea id="txtArea" class="form-control w-50" placeholder="Sobre qué quieres hablar?" rows="5"></textarea>
            </div>
          </div>
          <p class="smallText">Recuerda incluir un título para tu charla</p>
          <button type="submit" class="btn btn-primary w-100 btnGreen mb-3">Enviar</button>
        </form>
      </div>
    </div>
  </div>
  <!-- Footer -->
  <nav class="navbar navbar-expand-sm navbar-dark navbarFooter">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item mx-3">
            <a class="nav-link" href="./pages/faq.html">Preguntas<br>frecuentes</a>
          </li>
          <li class="nav-item mx-3">
            <a class="nav-link" href="./pages/contacto.html">Contáctanos</a>
          </li>
          <li class="nav-item mx-3">
            <a class="nav-link" href="./pages/prensa.html">Prensa</a>
          </li>
          <li class="nav-item mx-3">
            <a class="nav-link" href="./pages/conferencias.html">Conferencias</a>
          </li>
          <li class="nav-item mx-3">
            <a class="nav-link" href="./pages/tyc.html">Términos y<br>condiciones</a>
          </li>
          <li class="nav-item mx-3">
            <a class="nav-link" href="./pages/privacidad.html">Privacidad</a>
          </li>
          <li class="nav-item mx-3">
            <a class="nav-link" href="./pages/estudiantes.html">Estudiantes</a>
          </li>
          <li class="nav-item mx-3">
            <a class="nav-link" href="admin.jsp">Admin</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!--Bootstrap JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>