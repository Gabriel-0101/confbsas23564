<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trabajo Integrador</title>

    <!-- Link Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!-- Link Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <!-- Link CSS propio -->
    <link rel="stylesheet" href="css/inte.css">
</head>

<body>
	<% 
	String id=request.getParameter("id");
	String foto=new String();
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	ResultSet rs;
	if(id!=null){
		rs=st.executeQuery("SELECT * FROM usuarios WHERE id="+id);
		rs.next();
		foto=rs.getString("fotoPerfil");
		//con.destruir();
	}
	%>

    <!-- barra de navegacion -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top" data-bs-theme="dark">
        <div class="container-fluid">
            <div class="col-5">
                <a class="navbar-brand" href="#">
                    <img src="imagenes/logoCACsinbloque1.png" alt="Codo a Codo" class="tamanioLogo">
                    Conf Bs As
                </a>
            </div>
            <div class="col-7 text-center">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active text-white bgHover" aria-current="page" href="#idConferencias">La
                                conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link bgHover" href="#idOradores">Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link bgHover" href="#idLugar">El lugar y la fecha</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link bgHover" href="#idOradorPost">Conviértete en Orador</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-success bg2Hover" href="tickets/comprarTickets.html">Comprar Tickets</a>
                        </li>
                        <li class="nav-item">
							<!-- Poner foto de perfil -->
                            <img alt="" src="<%out.print(foto);%>" class="img-fluid rounded-4 mx-4" width="40px">
                        </li>
                    </ul>
                </div>

            </div>
            <!--  -->
        </div>
    </nav>

    <!-- Carousel -->
    <div>
        <div id="carouselExampleCaptions" class="carousel slide">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div id="idConferencias" class="carousel-inner">
                <!-- Primera imagen -->
                <div class="carousel-item active">
                    <img src="imagenes/ba1.jpg" class="d-block w-100 oscureceImagen" alt="Imagen 1">
                    <div class="carousel-caption d-block">
                        <div class="row mb-1">
                            <div class="col-0 col-lg-4">
                                
                            </div>

                            <div class="col-12 text-center col-lg-8 text-lg-end">
                                <h5 class="fs-3">Conf Bs As</h5>
                                <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra
                                    comunidad el conocimiento y experiencia de los expertos que están creando el futuro
                                    de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo
                                    y los oradores de primer nivel que tenemos para tí. Te esperamos!</p>
                                <div class="mb-4">
                                    <a href="#idOradorPost" class="btn btn-outline-light">Quiero ser orador</a>
                                    <a href="tickets/comprarTickets.html" class="btn btn-success">Comprar tickets</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Segunda imagen -->
                <div class="carousel-item">
                    <img src="imagenes/ba2.jpg" class="d-block w-100 oscureceImagen" alt="Imagen 2">
                    <div class="carousel-caption d-block">
                        <div class="row mb-1">
                            <div class="col-0 col-lg-4">
                               
                            </div>

                            <div class="col-12 text-center col-lg-8 text-lg-end">
                                <h5 class="fs-3">Conf Bs As</h5>
                                <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra
                                    comunidad el conocimiento y experiencia de los expertos que están creando el futuro
                                    de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo
                                    y los oradores de primer nivel que tenemos para tí. Te esperamos!</p>
                                <div class="mb-4">
                                    <a href="#idOradorPost" class="btn btn-outline-light">Quiero ser orador</a>
                                    <a href="tickets/comprarTickets.html" class="btn btn-success">Comprar tickets</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Tercera imagen -->
                <div class="carousel-item">
                    <img src="imagenes/ba3.jpg" class="d-block w-100 oscureceImagen" alt="imagen 3">
                    <div class="carousel-caption d-block">
                        <div class="row mb-1">
                            <div class="col-0 col-lg-4">
                             
                            </div>

                            <div class="col-12 text-center col-lg-8 text-lg-end">
                                <h5 class="fs-3">Conf Bs As</h5>
                                <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra
                                    comunidad el conocimiento y experiencia de los expertos que están creando el futuro
                                    de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo
                                    y los oradores de primer nivel que tenemos para tí. Te esperamos!</p>
                                <div class="mb-4">
                                    <a href="#idOradorPost" class="btn btn-outline-light">Quiero ser orador</a>
                                    <a href="tickets/comprarTickets.html" class="btn btn-success">Comprar tickets</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <!-- Oradores -->
    <div id="idOradores" class="text-center m-1">
        <div class="textoChico">
            CONOCE A LOS
        </div>
        <div class="fs-3 fw-medium">
            ORADORES
        </div>
    </div>
    
    <!-- Inicio Listado de Oradores desde la BD -->

     <div class="d-flex justify-content-center flex-wrap">
		<%
		rs=st.executeQuery("SELECT * FROM oradores");
		while(rs.next()) {
			out.println("<div class='card m-2 animate__animated animate__zoomIn animate__delay-1s' style='width: 18rem';>");
			out.println("<img src='"+rs.getString("fotoPerfil")+"' class='card-img-top' alt='"+rs.getString("nombre")+"'>");
			out.println("<div class='card-body'>");
			out.println("<h5 class='card-title bg-success-subtle'>"+rs.getString("nombre") + " " +rs.getString("apellido") +"</h5>");
			out.println("<h6 class='card-title text-success'><strong>"+rs.getString("temas")+"</strong></h6>");
			out.println("<p class='card-text'><em>"+rs.getString("resenia")+"</em></p>");
			out.println("</div>");
			out.println("</div>");
		}
		%>
    </div>
    
    <!-- Fin Listado de Oradores desde la BD -->

    <div class="Container-fluid">
        <div class="row">
            <div class="col-lg p-0">
                <img id="idLugar" src="imagenes/honolulu.jpg" alt="Honolulu" class="img-fluid">
            </div>
            <div class="col-lg px-4 bgGrisOscuro text-white">
                <div class="fs-4 fw-medium mt-1 mb-1">
                    Bs As - Octubre
                </div>
                <div class="textoMed lh-lg mb-3">
                    Buenos Aires es la capital y ciudad más poblada de la República Argentina. Está situada en la región centro-este del país, sobre la orilla sur del Río de la Plata, en la región pampeana. Buenos Aires es una ciudad cosmopolita y un importante destino turístico. Su compleja infraestructura la convierte en una de las metrópolis de mayor importancia de América, dadas sus influencias en el comercio, finanzas, moda, arte, gastronomía, educación, entretenimiento y principalmente en su marcada cultura.
                </div>
                <div>
                    <a href="#" class="btn btn-outline-light btn-sm">Conocé más</a>
                </div>
            </div>

        </div>

    </div>

        <!-- Oradores Postulantes -->
        <div id="idOradorPost" class="text-center mt-3 mb-2">
            <div class="textoChico">
                CONVIÉRTETE EN UN
            </div>
            <div class="fs-3 fw-medium">
                ORADOR
            </div>
            <div class="textoMed">
                Anótate como orador para dar una 
                <a href="#" class="textoLink">charla ignite</a>
                . Cuéntanos de qué quieres hablar!
            </div>
        </div>

        <div class="container my-4">
            <form action="index.html">
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col">
                        <input type="text" id="nombreOrador" name="nombreOrador" placeholder="Nombre" class="datosOrador">
                        <input type="text" id="apellOrador" name="apellOrador" placeholder="Apellido" class="datosOrador">
                    </div>
                </div>
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col">
                        <label for="Textarea1"></label>
                        <textarea class="temaOrador" id="temaOrador" rows="3"
                            placeholder="Sobre qué tema quieres exponer?"></textarea>
                        <div class="small m-4 mt-0">
                                Recuerda incluir un título para tu exposición.
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4"></div>
                    <div class="col align-items-center">
                        <button type="submit" class="btn btn-success w-50">Enviar</button>
                    </div>
                </div>
            </form>
        </div>
    
    <!-- Menu inferior -->
    <div class="p-3 mb-2 mt-2 bg-menuInf">
        <ul class="nav justify-content-center">
            <li class="nav-item">
              <a class="nav-link active text-white bgHover" aria-current="page" href="#">Preguntas Frecuentes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white bgHover" href="#">Contáctenos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white bgHover" href="#">Prensa</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white bgHover" href="#">Conferencias</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white bgHover" href="#">Términos y Condiciones</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white bgHover" href="#">Privacidad</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white bgHover" href="#">Estudiantes</a>
              </li>    
          </ul>
    
    </div>
    
    <!--  -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
        </script>
</body>

</html>