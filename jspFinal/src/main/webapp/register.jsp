<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./CSS/Styles.css" />
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>
   

    <title>Vinoteca G1</title>
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
<main class="container-xxl align-middle bg-secondary">
    <h2 class=" mt-4  align-middle">Bienvenidos al registro</h2>
    <section class="registro-forma mt-2  align-middle">
        <div class="row">
          <div class="col-md-12 col-sm-12 ">
          <form method="post" action="./usuarios" class="back mb-4  mt-4" >
            <input  type="text"  name="username" placeholder="Nombre" class="form-control mb-3" />
            <input  type="text" name="Apellido" placeholder="Apellido" class="form-control mb-3" />
            <input  type="email" name="email"    placeholder="Usuario, Registrate con tu mail" class="form-control mb-3"   onchange="none"/>
            <input  type="password" name="password" class="form-control mb-3"  placeholder="Contraseña"/>
            <input  type="password" class="form-control mb-3" name="repeatPass" placeholder="Repite tu Contraseña"/>
            <small id="confirmPassword-feedback" style="color: yellow;"></small>
            <button type="submit" value="Enviar" class="btn btn-dark enviar" >Enviar</button>
          </form>
        </div>
       </div>
      </section>
</main>
    <script src="./JS/registro.js"></script>
  </body>
</html>