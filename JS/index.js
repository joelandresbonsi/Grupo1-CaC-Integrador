"use strict";

/* selectors */
const productosSec = document.querySelector(".row");
const btnTinto = document.querySelector("#Tinto");
const btnRosado = document.querySelector("#Rosado");
const btnBlanco = document.querySelector("#Blanco");
const btnAll = document.querySelector("#all");
const agregar = document.querySelector("#agregar");
const productosCard = document.querySelector("#productos-card");
const sortUp = document.querySelector("#sort-up");
const sortDown = document.querySelector("#sort-down");
const carrito = [];
let total = 0;

window.addEventListener("DOMContentLoaded", () => {
  loadData();
});

/* bringing json */
const url = "data1.json";
function loadData() {
  fetch(url)
    .then((response) => response.json())
    .then((data) => filtrar(data));
}
//filtro el tipo de vino dependiendo del botón apretado
function filtrar(arr) {
  let mostrarTinto = arr.filter((prod) => prod.category === "tinto");
  let mostrarBlanco = arr.filter((prod) => prod.category === "blanco");
  let mostrarRosado = arr.filter((prod) => prod.category === "rosado");
  let mostrarTodo = arr;
  let seleccionado = arr.find((prod) => prod.id);
  let producto = arr.find((prod) => prod.id == seleccionado);
  addToPage(mostrarTodo);

  sortUp.addEventListener("click", () => {});

  btnAll.addEventListener("click", () => {
    limpiarHtml();
    addToPage(mostrarTodo);
  });

  btnTinto.addEventListener("click", () => {
    limpiarHtml();
    addToPage(mostrarTinto);
  });

  btnBlanco.addEventListener("click", () => {
    limpiarHtml();
    addToPage(mostrarBlanco);
  });

  btnRosado.addEventListener("click", () => {
    limpiarHtml();
    addToPage(mostrarRosado);
  });

  function manejadorCompra() {
    carrito.push(producto);
    salida(carrito);
  }
}

//agrego los productos de forma dinámica haciendo uso de la info obtenida del json
function addToPage(arr) {
  arr.forEach((element) => {
    const card = document.createElement("div");
    card.className = "card-bts col col-md-4 col-lg-4 mt-4 mb-2";
    card.innerHTML = `
      <div class="card text-center ">
        <img src="${element.img}">
        <div class="card-body">
          <h5 class="card-title">${element.name}</h5>
          <p class="card-text">${element.description}</p>
          <p class="card-text">Precio:$${element.price}</p>
          <p class="card-text">Tipo de vino: ${element.category}</p>
          <button type="button" onclick="manejadorCompra" id=${element.id} class="btn btn-dark">Agregar al carrito</button>
        </div>
      </div>
  
    `;
    productosSec.append(card);
  });
}

//funcion encargada de limpiar las cards de los productos para filtrar bien
function limpiarHtml() {
  while (productosCard.firstChild) {
    productosCard.removeChild(productosCard.firstChild);
  }
}

//funcion encargada de sortear por precio de menor a mayor
function sortUpFunc(a, b) {
  return parseFloat(a) - parseFloat(b);
}

//agregamos los productos al local storage cuando se pone agregar al carrito
function salida(carrito) {
  let myInner = "";
  //USAMOS LA VARIABLE AUXILIAR J PARA COLOCARLE AL PADRE, AL BOTON Y AL INPUT.
  let j = 0;
  for (const producto of carrito) {
    //LE PONEMOS UN ID AL PRODUCTO, PARA DESPUES PODER BORRARLO EN EL ARRAY
    //AL BUTTON TAMBIEN LE PONEMOS UN ID CORRESPONDIENTE.
    myInner += `<div id = producto${j} class="card mb-3" style="max-width: 540px;"> 
    <div class="row no-gutters">
      <div class="col-md-4">
      <div class="card-image">
        <img src=${producto.img} class="img-fluid w-100" alt="...">
        </div>
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title title">Product name: ${producto.name}</h5>
          <p class="card-text card-price cards-price">Product price:$${producto.price}</p>
          <p class="card-text card-price-total">Total price:$${total}</p>
          <button type="button" id="btnRemove${j}" class="btn btn-danger">Remove product</button>
        </div>
      </div>
    </div>
  </div> `;
    j++;
  }
}
