

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Matricula"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.MatriculaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Matriculas</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <h1>Listado de Matriculas</h1>
            <a class="btn btn-success" href="Controlador?f_accion=agregarmatricula01">Agregar Nuevo Matricula</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Semestre</th>
                        <th class="text-center">Ciclo</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">idcurso</th>
                        <th class="text-center">idestudiante</th>
                        <th class="text-center">idcarrera</th>
                        <th class="text-center">idcurso</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        MatriculaDAO matriculaDAO = new MatriculaDAO();
                        List<Matricula> matriculas = matriculaDAO.listarmatricula();
                        Iterator<Matricula> iterator = matriculas.iterator();
                        Matricula matricula = null;
                        while (iterator.hasNext()) {
                            matricula = iterator.next();


                    %>
                    <tr>
                        <td><% out.print(matricula.getIdmatricula()); %></td>
                        <td><% out.print(matricula.getSemestre()); %></td>
                        <td><% out.print(matricula.getCiclo()); %></td> 
                        <td><% out.print(matricula.getEstado()); %></td>
                        <td><% out.print(matricula.getId_curso()); %></td>
                        <td><% out.print(matricula.getId_estudiante()); %></td>
                        <td><% out.print(matricula.getId_carrera()); %></td>
                        <td>
                            <a class="btn btn-warning" href="Controlador?f_accion=editarmatricula01&f_idmatricula=<% out.print(matricula.getIdmatricula()); %>">
                                Editar
                            </a>
                            <a class="btn btn-danger" href="Controlador?f_accion=eliminarmatricula&f_idmatricula=<% out.print(matricula.getIdmatricula()); %>">
                                Eliminar
                            </a>
                        </td>
                    </tr>
                    <%    }
                    %>                    
                </tbody>
            </table>
        </div>
    </body>
</html>
