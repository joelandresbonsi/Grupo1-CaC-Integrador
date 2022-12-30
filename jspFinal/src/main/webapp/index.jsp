<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="./CSS/Styles.css" />
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
      <!-- favicon icons -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />

    <!-- fontawesome cdm -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
      integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!-- family font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
      rel="stylesheet"
    />

    <!-- CSS only -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous"
    />
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>

  <title>VinotecaG1</title>
</head>
<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark bg-gradient">
      <div class="container-fluid">
        <a class="navbar-brand ms-4" href="./index.jsp">
          <img src="./img/logoF.png" alt="Logo" width="250" height="110" class="d-inline-block align-text-top" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end fs-4" id="navbarSupportedContent">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="./index.jsp">Inicio</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="./Contacto.jsp">Contacto</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Nosotros
              </a>
            </li>
			<li class="nav-item">
              <a class="nav-link" href="./register.jsp">Ingresar</a>
            </li>
			           

            <li class="nav-item me-4">
              <a class="nav-link" href="./carrito.jsp"><img src="./img/carrito-de-compras-blanco.png"
                  alt="Carrito de compras" width="35" height="35" /></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
    <main>
      <section class="winery col-12">
        <img
          class="pic img-fluid"
          src="./img/sven-wilhelm-2cRXSWyMHA8-unsplash.jpg"
          alt="winery image"
        />
        <h1 class="tit-primario">G1-CAC</h1>
        <h2 class="tit-secundario">DESDE 2022</h2>
      </section>

      <section class="productos-header col-md-12 mt-3">
        <div class="container-fluid col-md-8">
          <h1 class="d-flex justify-content-center">Nuestros vinos</h1>

          <div class="d-flex justify-content-center">
            <button type="button" id="all" class="btn btn-dark btn-vinos me-2">
              Todos nuestros vinos
            </button>
            <button
              type="button"
              id="Tinto"
              class="btn btn-dark btn-vinos me-2"
            >
              Tinto
            </button>
            <button
              type="button"
              id="Rosado"
              class="btn btn-dark btn-vinos me-2"
            >
              Rosado
            </button>
            <button
              type="button"
              id="Blanco"
              class="btn btn-dark btn-vinos me-2"
            >
              Blanco
            </button>
          </div>
        </div>
      </section>

      <section class="container">
        <div id="productos-card" class="row mt-4 mb-3"></div>
      </section>

      <!-- ////////////////////////////////////////////////////////////////////////////////// -->
      <section class="about">
        <div class="row">
          <div class="col-sm-12 col-lg-7">
            <img
              src="./img/VinoFondo.jpg"
              class="img-fluid"
              alt="imagen de bodega"
            />
          </div>
          <div class="col-sm-12 col-lg-5">
            <h2 id="nosotros">Conozca nuestra historia:</h2>
            <p>
              Bodega G1-CAC es un establecimiento vitivinícola ubicado en el
              departamento de Tupungato, en las altas tierras de Mendoza. En
              esta región, conocida como Valle de Uco y reconocida como uno de
              los mejores terruños vitícolas del mundo, es un lugar privilegiado
              para el cultivo de viñedos y la elaboración de vinos de alta gama.
              Ubicado a 1.100 msnm, cuenta con suelos pedregosos de buen
              drenaje, donde los cultivos son rústicos por el crudo verano y los
              nevados inviernos, y reciben el riego del agua mineralizada de
              deshielo de la gran cordillera de Los Andes. Los días calurosos y
              las noches frescas crean las condiciones para que la amplitud
              térmica llegue hasta los 20ºC en una jornada, la que combinada con
              la irradiación solar constante en la primavera y verano austral,
              aportan las condiciones ideales para el logro de excelentes uvas,
              madres indiscutibles de un gran vino.
            </p>
          </div>
        </div>
      </section>
    </main>
    <footer class="justify-content-center">
      <div class="row justify-content-center favi">
        <div class="col-lg-1">
          <i class="fa-brands fa-instagram"></i>
        </div>
        <div class="col-lg-1">
          <i class="fa-brands fa-whatsapp"></i>
        </div>
        <div class="col-lg-1">
          <i class="fa-brands fa-facebook"></i>
        </div>
      </div>
      <iframe 
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d107122.38185809464!2d-68.75747770144187!3d-32.96224342965601!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967e09452c65a90b%3A0x9c458f7ff07ddbb4!2sEstancia%20Mendoza!5e0!3m2!1ses-419!2sar!4v1666360072336!5m2!1ses-419!2sar"
        width="400"
        height="250"
        style="border: 0"
        allowfullscreen=""
        loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"
      ></iframe>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
      crossorigin="anonymous"
    ></script>
  <script src="./JS/registro.js"></script>
</body>
</html>