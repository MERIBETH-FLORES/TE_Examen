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
        </center>
        <h1><center><p style="color:#CD5C5C";>SEMINARIOS</p></center></h1>
        <ul class="nav nav-tabs">
            <li class="nav-item">

                <a class="nav-link active" href="SeminarioControlador">SEMINARIOS</a>
                <br>
            </li>

        </ul>

        <h1> 
            <c:if test="${seminario.id == 0}"> NUEVO SEMINARIO </c:if>
            <c:if test="${seminario.id != 0}"> EDITAR SEMINARIO</c:if>
            </h1>
            <form action="SeminarioControlador" method="POST">
                <input type ="hidden" name="id" value="${seminario.id}"/>

                <div class="mb-3">
                    <label for="" class="form-label">TITULO:</label>
                    <input type="texto" class="form-control" name="titulo" value="${seminario.titulo}" placeholder="ESCRIBA EL TITULO DEL SEMINARIO">
                    
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">EXPOSITOR:</label>
                    <input type="texto" class="form-control" name="expositor" value="${seminario.expositor}" placeholder="ESCRIBA NOMBRE DEL EXPOSITOR">
                    
                </div>
                
               <div class="mb-3">
                    <label for="" class="form-label">FECHA DE SEMINARIO:</label>
                    <input type="date" class="form-control" name="fecha" value="${seminario.fecha}" >
                    
                </div>
                    <div class="mb-3">
                    <label for="" class="form-label">HORA:</label>
                    <input type="texto"  class="form-control" name="hora" value="${seminario.hora}" placeholder="RANGO DE HORA DE SEMINARIO">
                    
                </div>
                    <div class="mb-3">
                    <label for="" class="form-label">CUPO:</label>
                    <input type="number" class="form-control" name="cupo" value="${seminario.cupo}" >
                    
                </div>
            
            <br>
            <input type="submit" value="ENVIAR" />



        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
