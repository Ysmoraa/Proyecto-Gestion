
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="estilo.css" rel="stylesheet" type="text/css"/>
        <script src="juego.js"></script>
        <meta http-equiv="X-UA-Compatible">
        <title>HUNTER CHROMA</title>

    </head>
    <body>

        <div class="contenedor" id = "contenedor">

            <div class="suelo"></div>

            <div class="avion avion-volando"></div>

            <div class="score">0</div>

        </div>

        <div class="game-over">GAME OVER<div><a href="Juego.jsp"><button id="btrnc">Reiniciar</button></a></div></div>

        <form action="Controlador?accion"id="scoreForm" style="display: none;">
            <label for="playerName">Nombre del Jugador:</label>
            <input type="text" id="playerName" name="playerName" readonly>
            <br>
            <label for="score">Puntuación:</label>
            <input type="text" id="score" name="score" readonly>
            <input type="submit" name="accion" value="Agregar">
        </form>
    </body>
</html>
