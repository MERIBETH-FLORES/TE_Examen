<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href ="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet" >
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <center>
            <table border="1" align="center" cellspacing="5">
            <tr style="background-color: #E3E4E5;">
                <td><h5><center><u>SEGUNDO PARCIAL TEM-742</u></center></h5>
                    <h5>NOMBRE: MERIBETH KAREN FLORES BAUTISTA</h5>
                    <h5>CARNET: 10078054 LP</h5></td>
            </tr>
        </table>
            </center>
            <h1><center><p style="color:#CD5C5C";>REGISTRO DE SEMINARIOS</p></center></h1>
            <ul class="nav nav-tabs">
                <li class="nav-item">
                   
                    <a class="nav-link active" href="SeminarioControlador">SEMINARIOS</a>
                    <br>
                </li>

            </ul>
            
            <a class="btn btn-primary" href="SeminarioControlador?action=add" role="button"><i class="fas fa-plus-circle"></i> NUEVO SEMINARIO </a>
            <br>
            
            <table class="table table-hover">
                <tr>
                    <th>ID</th>
                    <th>TITULO</th>
                    <th>EXPOSITOR</th>
                    <th>FECHA</th>
                    <th>HORA</th>
                    <th>CUPO</th>
                    <th>EDITAR</th>
                    <th>ELIMINAR</th>
                </tr>
                <c:forEach var="item" items="${seminarios}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.expositor}</td>
                        <td>${item.fecha}</td>
                        <td>${item.hora}</td>
                        <td>${item.cupo}</td>
                        <td><a href="SeminarioControlador?action=edit&id=${item.id}"><i class="fas fa-edit"></i></a></td>
                        <td><a href="SeminarioControlador?action=delete&id=${item.id}"onclick="return (confirm('ESTA SEGURO DE ELIMINAR ESTE SEMINARIO??'))"><i class="fas fa-edit"></i></a></td>
                    </tr>
                </c:forEach>

            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>
