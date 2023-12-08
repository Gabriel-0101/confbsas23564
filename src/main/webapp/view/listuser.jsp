<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.ConexionDB"%>
<%@page import="java.sql.Statement"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
    <div class="container">
	    <h1 class="text-center m-3 fs-3">Listado de Usuarios</h1>
	    
	    <button class="btn btn-primary my-2">Agregar Usuario</button>
	    
	    <table class="table text-center">
	    	<thead>
	    		<tr>
	    			<th>#ID</th>
	    			<th>User</th>
	    			<th>Password</th>
	    		</tr>
	    	</thead>
	    	
	    	<tbody>
	    	<% 
	    	ConexionDB con=new ConexionDB();
	    	Statement st=con.conectar();
	    	ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
	    	
	    	while(rs.next()){
	    		out.println("<tr>");
	    		
	    		out.println("<td>");
	    		out.println(rs.getInt("id"));
	    		out.println("</td>");
	    		
	    		out.println("<td>");
	    		out.println(rs.getString("user"));
	    		out.println("</td>");
	    		
	    		out.println("<td>");
	    		out.println(rs.getString("pass"));
	    		out.println("</td>");
	    		
	    		out.println("</tr>");
	    		
	    	}
	    	
	    	
	    	%>
	    	
	    	</tbody>
	    	
	    </table>
    
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>