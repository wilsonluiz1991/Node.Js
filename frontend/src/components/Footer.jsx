import React from "react";
import formaspagamento from "../assets/formas-pagamento.png";

const Footer = () => {
  return (
    <>
      <footer className="footer bg-danger mt-1">
        <div className="text-center text-white font-weight-bold ">
          <p>Formas de pagamento:</p>
          <img src={formaspagamento} alt="Formas de pagamento" height="70px" />
          <p>&copy; Recode Pro</p>
        </div>
      </footer>
    </>
  );
};

export default Footer;
