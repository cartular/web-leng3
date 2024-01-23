<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gráficos.aspx.cs" Inherits="PortfolioVaras.Gráficos" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Grafico</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/css/graph.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"/>
      <link rel="shortcut icon" href="\assets\img\flor.png" type="image/x-icon">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawCharts);
        function drawCharts() {
            // Gráfico de solicitudes
            var dataSolicitudes = google.visualization.arrayToDataTable([
        <%= datos %> // Aquí se insertarán los datos para el gráfico de solicitudes
    ]);

    var optionsSolicitudes = {
        title: 'Listado de Solicitudes',
        backgroundColor: 'transparent', // Hacer el fondo del gráfico de solicitudes transparente
        legend: { textStyle: { color: 'white', fontName: 'Montserrat, sans-serif' } }, // Establecer la fuente y color del texto de la leyenda
        titleTextStyle: { color: 'white', fontName: 'Montserrat, sans-serif' }, // Establecer la fuente y color del texto del título
        slices: { textStyle: { color: 'white', fontName: 'Montserrat, sans-serif' } }, // Establecer la fuente y color del texto dentro de los sectores

    };

    var chartSolicitudes = new google.visualization.PieChart(document.getElementById('piechart'));
    chartSolicitudes.draw(dataSolicitudes, optionsSolicitudes);

    // Gráfico de edades
    var dataEdades = google.visualization.arrayToDataTable([
        <%= datosEdades %> // Aquí se insertarán los datos para el gráfico de edades
    ]);

            var optionsEdades = {
                title: 'Distribución de Edades',
                backgroundColor: 'transparent', // Hacer el fondo del gráfico de edades transparente
                titleTextStyle: { color: 'white', fontName: 'Montserrat, sans-serif' }, // Establecer la fuente y color del texto del título
                legend: { textStyle: { color: 'white', fontName: 'Montserrat, sans-serif' } }, // Establecer la fuente y color del texto de la leyenda
                hAxis: { textStyle: { color: 'white', fontName: 'Montserrat, sans-serif' } }, // Establecer la fuente y color del texto del eje horizontal
                vAxis: { textStyle: { color: 'white', fontName: 'Montserrat, sans-serif' } }, // Establecer la fuente y color del texto del eje vertical

            };

            var chartEdades = new google.visualization.ColumnChart(document.getElementById('columnchart'));
            chartEdades.draw(dataEdades, optionsEdades);
        }

    </script>
     
</head>
<body>
    <form id="form1" runat="server">
        <div class="chart-container" id="contenedor1">
            <div id="piechart-container" style="background-color:transparent;">
                <div id="piechart" style="width: 100%; height: 300px;"></div>
            </div>
        </div>
        <div class="chart-container" id="contenedor2">
            <div id="columnchart-container">
                <div id="columnchart"style="width: 100%; height: 300px;"></div>
            </div>
        </div>
        <a href="#" class="back-button" runat="server" onServerClick="bckBtn_Click">
    <i class="material-icons-round">arrow_back</i>
</a>

    </form>
</body>
</html>