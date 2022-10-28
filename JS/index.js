"use strict";

/* selectors */
const productosSec = document.querySelector(".row");
const btnTinto = document.querySelector("#Tinto");
const btnRosado = document.querySelector("#Rosado");
const btnBlanco = document.querySelector("#Blanco");
const div = document.createElement("div");

window.addEventListener("DOMContentLoaded", () => {
  // btnBlanco.addEventListener("click", loadData);
  loadData();
});

/* bringing json */
const url = "data1.json";
function loadData() {
  fetch(url)
    .then((response) => response.json())
    .then((data) => addToPage(data));
}

//filtro el tipo de vino dependiendo del boton apretado

//agrego los productos de forma dinamica haciendo uso de la info obtenida del json
function addToPage(arr) {
  arr.forEach((element) => {
    /*  console.log(element, "sdasds"); */
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
          <button type="button" class="btn btn-primary">Agregar al carrito</button>
        </div>
      </div>
  
    `;
    productosSec.append(card);
  });
}
