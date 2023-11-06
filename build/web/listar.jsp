
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link href="index.css" rel="stylesheet" type="text/css" />
        <title>Tabla de puntaciones</title>
    </head>
    <body>
        <div class="container bg-opacity-25 bg-white">
            <h1>Tabla de Puntuaciones</<h1>
                    <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">NOMBRE</th>
                        <th class="text-center">SCORE</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%

                    PersonaDAO dao = new PersonaDAO();
                    List<Persona> list = dao.listar();
                    Iterator<Persona> iter = list.iterator();
                    Persona per = null;
                    while (iter.hasNext()) {

                        per = iter.next();
                    

                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= per.getId()%></td>
                        <td class="text-center"><%= per.getNombre()%></td>
                        <td class="text-center"><%= per.getScore()%></td>
                        <td class="text-center">
                            <a class="btn btn-danger text-center" href="Controlador?accion=eliminar&id=<%= per.getId()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
                <div class="container">
                    <a class="btn btn-success" href="index.html">Regresar al inicio</a>
                </div>
    </body>
</html>