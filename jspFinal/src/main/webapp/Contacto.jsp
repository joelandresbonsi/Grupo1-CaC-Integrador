<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./CSS/Styles.css" />
<!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>
<script src="./index.js"></script>
<title>Insert title here</title>
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
              <a class="nav-link" href="./register.jsp">Ingresar</a>
            </li>
			           

            <li class="nav-item me-4">
              <a class="nav-link" href="carrito.html"><img src="./img/carrito-de-compras-blanco.png"
                  alt="Carrito de compras" width="35" height="35" /></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
<main>

     <section id="body-contacto" class="contacto mb-4 ">
        <div class="row">
          <div class="col-md-12 col-sm-12">
          <form action="#" class="back">
            <input
              type="text"
              class="form-control mb-2"
              name=""
              id=""
              placeholder="Nombre"
              onchange="none"
            />
            <input
              type="text"
              class="form-control mb-2"
              name=""
              id=""
              placeholder="Apellido"
            />
            <input
              type="email"
              class="form-control mb-2"
              name=""
              id=""
              placeholder="email@ejemplo.com"
            />
            <input
              type="tel"
              class="form-control mb-2"
              name=""
              id=""
              placeholder="Telefono"
            />
            <textarea
              class="form-control mb-2"
              name=""
              id=""
              cols="30"
              rows="10"
              placeholder="Hacenos una consulta..."
            ></textarea>
            <button type="button" class="btn btn-dark enviar">
              Enviar consulta
            </button>
            </form>
        </div>
          
        </div>
      </section>
      
      <script src="./JS/registro.js"></script>
</main>
</body>
</html>