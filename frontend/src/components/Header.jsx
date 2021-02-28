import React from "react";
import logo from "../assets/logotipo2.jpeg";
import { Link } from 'react-router-dom';

const Header = () => {
  return (
    <>
      <div className="bg-warning">
        <nav className="navbar navbar-expand-lg navbar-dark bg-danger">
          <Link to="/" className="navbar-brand">
            <img
              src={logo}
              height="50"
              className="d-inline-block align-top"
              alt="Logo FullStack"
            />
          </Link>

          <button
            type="button"
            className="navbar-toggler"
            data-toggle="collapse"
            data-target="#collapseNavbar"
          >
            <span className="navbar-toggler-icon"></span>
          </button>

          <div className="collapse navbar-collapse" id="collapseNavbar">
            <ul className="nav font-weight-bold">
              <li className="nav-item">
                <Link className="nav-link text-white" to="/">
                  Home
                </Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link text-white" to="/produtos">
                  Produtos
                </Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link text-white" to="/nossaslojas">
                  Nossas Lojas
                </Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link text-white" to="/contato">
                  Contato
                </Link>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </>
  );
};

export default Header;
