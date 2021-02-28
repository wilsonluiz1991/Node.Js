import React, { useState, useEffect } from "react";

const ProductList = () => {
  const [prods, setProds] = useState([]);

  useEffect(async () => {
    const res = await fetch("http://localhost:5000/produto");
    setProds(await res.json());
  }, []);

  function enterPointer(event) {
    const img = event.target;
    img.ClassName = "card-img-top rounded-circle border border-sucess";
  }

  function outPointer(event) {
    const img = event.target;
    img.ClassName = "card-img-top img-thumbnail";
  }

  const destaque = (event) => {
    if (event.target.style.width === "240px") {
      event.target.style.width = "120px";
    } else {
      event.target.style.width = "240px";
    }
  };
  const redimensiona = (event) => {
    if (event.target.style.width === "120px") {
      event.target.style.width = "240px";
    } else {
      event.target.style.width = "120px";
    }
  };

  return (
    <>
      {prods.map((item) => {
        const preco = item.preco.toFixed(2);
        const precofinal = item.precofinal.toFixed(2);
        return (
          <>
            <div
              id={item.id_categoria}
              key={item.idproduto}
              className="card bg-light m-4 box-item"
              style={{ width: "13rem", height: "25rem" }}
            >
              <img
                style={{ width: "120px" }}
                src={item.imagem}
                className="card-img-top mx-auto d-block img-thumbnail"
                onMouseOver={destaque}
                onMouseOut={redimensiona}
              />
              <div className="card-body text-center">
                <p
                  className="card-text font-weight-bold "
                  style={{ fontSize: "0.8rem" }}
                >
                  {item.descricao}
                </p>
                <h7
                  className="card-title"
                  style={{ textDecoration: "linethrough" }}
                >
                  <strike>R$ {preco}</strike>
                </h7>
                <h6 className="card-title text-primary font-weight-bold">
                  R$ {precofinal}
                </h6>
              </div>
            </div>
          </>
        );
      })}
    </>
  );
};
export default ProductList;
