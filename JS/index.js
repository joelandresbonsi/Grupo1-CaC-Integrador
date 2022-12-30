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
const addToCart = 0;
const productosCarro = document.querySelector("productos-carro");
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
  addToPage(mostrarTodo);

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
          <button type="button" id=${element.id} class="btn btn-dark">Agregar al carrito</button>
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
