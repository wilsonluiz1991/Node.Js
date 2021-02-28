import React, { useState, useEffect } from "react";
//import API from './API_Products';

const SelectProducts = () => {
  const [prods, setProds] = useState([]);

  useEffect(async () => {
    const res = await fetch(
      "http://localhost:5000/produto"
    );
    setProds(await res.json());
  }, []);

  const categoria = prods.map(element => {
    const obj = {}
    obj["id"] = element.id_categoria;
    obj["categoria"] = element.categoria;
    return obj;
  })
  const categoriaLimpa = [...new Set(categoria.map(JSON.stringify))].map(JSON.parse);
 
  let filtro = document.getElementsByClassName("box-item"); 

  function filtroProd(event) {
    let item = event.target.id;
    console.log(item);
    for (let i = 0; i < filtro.length; i++) {
      if(item == filtro[i].id){
        filtro[i].style.display="block";
      }
      else {
        filtro[i].style.display="none";
      }
    }
  }

  function todasCategorias () {
    for (let i = 0; i < filtro.length; i++) {
        filtro[i].style.display="block";
      }
  }

  return (

    <>
      <div class="dropdown">
        <h2>Produtos</h2> 
        <button
          class="btn btn-secondary dropdown-toggle"
          type="button"
          id="dropdownMenu2"
          data-toggle="dropdown"
          aria-haspopup="true"
          aria-expanded="false"
        >
          Categorias
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
        <button onClick={todasCategorias} className="dropdown-item" type="button">
              Todos os produtos
            </button>
        
          {categoriaLimpa.map(element => {
            return(
              <button onClick={filtroProd} className="dropdown-item" type="button" key={element.id} id={element.id}>
              {element.categoria}
            </button>
            )
          })}

        </div>
      </div>
    </>
  );
};

export default SelectProducts;
