import React from 'react';

const Home = () => {
    return (
    <>

<body class="d-flex flex-column" /*style={"minHeight: 100vh; minWidth: 100vw"}*/>

  <header class="container text-black  border-bottom border-black mb-3" /*style={"paddingTop: 60px;"}*/>
    <br/>
    <h2>Seja bem vindo(a)!!!</h2>
    <p class="lead">Aqui em nossa loja, <em>programadores</em> tem desconto para sua casa!</p>
  </header>

  <main class="container flex-fill d-flex flex-column text-center text-black justify-content-around">

  <h3> Toda nossa loja em promoção!!! </h3>
    <br />
    <div class="container text-center text-black font-weight-bold ">
    <img src={"./imagens/10off.jpg"} alt="Dez porcento de desconto em toda a loja!" height="400px" />
    </div>
    <br />
    <h3></h3>
    <br />
  </main>

</body>

    </>
    );
}

export default Home;