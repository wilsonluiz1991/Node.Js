import React from "react";
import SelectProducts from './SelectProducts';
import ProductList from './ProductsList';


const PageProducts = () => {
  return (
    <>
      <main className="container row m-auto">
        <div className="col-sm-12 col-lg-3 mt-1">
          <SelectProducts/>
        </div>
        <div className="col-lg-9 mt-1">
            <div className="row">
            <ProductList/>
            </div>
            </div>
      </main>
    </>
  );
};

export default PageProducts;
