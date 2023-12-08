<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String nom=request.getParameter("nom");
	String ape=request.getParameter("ape");
	String email=request.getParameter("email");
	
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	
	try {
		Integer insertOk=st.executeUpdate("INSERT INTO oradores (nombre, apellido, email, resenia, temas) VALUES ('"+nom+"','"+ape+"','"+email+"','','') ");
		
		if(insertOk==1) {
			response.sendRedirect("../view/listaOradores.jsp?mensaje=Orador%20agregado%20exitosamente");			
		} else {
			response.sendRedirect("../view/listaOradores.jsp?mensaje=No%20se%20pudo%20agregar%20el%20orador");			
		}
	} catch(Exception e) {
		
		response.sendRedirect("../view/listaOradores.jsp?mensaje=No%20se%20pudo%20agregar%20el%20orador");
		e.printStackTrace();
	}
	


%>