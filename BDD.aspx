<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BDD.aspx.cs" Inherits="PortfolioVaras.BDD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="shortcut icon" href="\assets\img\flor.png" type="image/x-icon" />
    <title>Listado de Solicitudes</title>
        <link rel="stylesheet" type="text/css" href="/css/bdd.css"/>
    <style>
  
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600&display=swap');
    </style>
    <script src="https://unpkg.com/scrollreveal"></script>

    <script>
        ScrollReveal({ reset: true, cleanup: true });
    </script>
    <%--bootstrap--%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="marco_general">
            <div class="titulo" >
                <h1 class="lista" >Listado de Solicitudes</h1>

            </div>


            
            <%--tabla--%>
            <div class="prueba" style="position:static; width:70%; margin-top:20px;/* Ajusta la altura del contenedor para centrar verticalmente */">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Asunto</th>
                        <th>Email</th>
                        <th>Descripción</th>
                        <th>Fecha</th>
                        <th>Edad</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
                <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Asunto</th>
                        <th>Email</th>
                        <th>Descripción</th>
                        <th>Fecha</th>
                        <th>Edad</th>
                    </tr>
                </tfoot>
            </table>
            
            </div>
                <style>
                
.prueba {
    margin: 0 auto; /* Centra horizontalmente */
    text-align: center; /* Centra los elementos internos */
}

    /* Agrega este estilo para hacer la tabla y celdas transparentes */
    .prueba table {
        background-color: transparent;
        font-family:'Montserrat',sans-serif;
        border:transparent;
        width: 70%; /* Asegurarse de que la tabla ocupe todo el ancho disponible */
        margin-top: 20px; /* Ajusta el margen superior para separar el título de la tabla */
        overflow-x: auto; /* Agregar desplazamiento horizontal si es necesario */
    }

        .prueba table th,
        .prueba table td {
            background-color: transparent;
            border-color: transparent; /* También elimina los bordes */
            color:white;
        }
            </style>
        </div>

        <%--elementos que vienen en el codigo para la tabala--%>

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap4.min.js"></script>

        <%--inicia la tabala y botones--%>

        <script>
            function LoadData(jsonData) {
                var data = JSON.parse(jsonData);

                // Inicializar la tabla DataTables
                $('#example').DataTable({
                    data: data,
                    columns: [
                        { data: 'id' },
                        { data: 'nombre' },
                        { data: 'asunto' },
                        { data: 'email' },
                        { data: 'descripcion' },
                        { data: 'fecha' },
                        { data: 'edad'}
                    ],
                    responsive: true,
                    dom: 'Bfrtilp',
                    buttons: [
                        {
                            extend: 'excelHtml5',
                            text: '<i class="fa fa-file-excel-o"></i>',
                            titleAttr: 'Exportar a Excel',
                            className: 'btn btn-success'
                        },
                        {
                            extend: 'pdfHtml5',
                            text: '<i class="fa fa-file-pdf-o"></i>',
                            titleAttr: 'Exportar a PDF',
                            className: 'btn btn-danger'
                        },
                        {
                            extend: 'print',
                            text: '<i class="fa fa-print"></i>',
                            titleAttr: 'Imprimir',
                            className: 'btn btn-info'
                        },
                        {
                            text: 'Borrar',
                            className: 'btn btn-danger',
                            action: function (e, dt, node, config) {
                                mostrarFormularioBorrar();
                            }
                        }

                    ]
                });
            }
        </script>
        <div class="volver_pagina_principal">
    <a href="#" class="btn-volver" runat="server" OnServerClick="btnVolver_Click">
        <i class="material-icons">arrow_back</i> 
    </a>
</div>


        <div class="Grafica">
    <a href="#" class="btn-grafica" runat="server" OnServerClick="btnGrafica_Click">
        <i class="material-icons">pie_chart</i> 
    </a>
</div>


        <%--fuente--%>
        <link href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" rel="stylesheet"
            integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK10YPAYjqT085Qq/1cq5FLXAZQ7Ay"
            crossorigin="anonymous"/>
        <%--para usar los botones--%>

        <%--Links para poder cargar todo lo relacionado a la tabala--%>

        <script src="datatables/Buttons-2.3.6/js/dataTables.buttons.min.js"></script>
        <script src="datatables/JSZip-2.5.0/jszip.min.js"></script>
        <script src="datatables/pdfmake-0.2.7/pdfmake.min.js"></script>
        <script src="datatables/pdfmake-0.2.7/vfs_fonts.js"></script>
        <script src="datatables/Buttons-2.3.6/js/buttons.html5.min.js"></script>

        <%--script para ejecutar todo lo de los botones--%>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap4.min.css" rel="stylesheet"/>
        <link href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.bootstrap4.min.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.3.6/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.print.min.js"></script>

        <%--pantalla de borrado--%>

        <div id="modalBorrar" class="modal">
          <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Borrar persona</h2>
            <div>
              <p>Ingrese el ID de la persona que desea borrar:</p>
              <asp:TextBox ID="txtIdPersona" runat="server"></asp:TextBox>
              <br />
              <asp:Button ID="BtnConfirmarBorrar" runat="server" Text="Borrar" CssClass="btn btn-danger"  onClick="BtnConfirmarBorrar_Click"/>
              <asp:Button ID="BtnCancelarBorrar" runat="server" Text="Cancelar" CssClass="btn btn-secondary"  />
            </div>
          </div>
        </div>


        <script>
            var modal = document.getElementById("modalBorrar");
            var btnAbrirModal = document.getElementById("btnAbrirModalBorrar");
            var btnCerrarModal = document.getElementsByClassName("close")[0];

            btnAbrirModal.onclick = function () {
                modal.style.display = "block";
            }

            btnCerrarModal.onclick = function () {
                modal.style.display = "none";
            }

            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }

            function mostrarFormularioBorrar() {
                modal.style.display = "block";
            }
        </script>
       <script>
           // Espera a que el DOM esté listo
           document.addEventListener("DOMContentLoaded", function () {
               // Aplica el efecto ScrollReveal al elemento con la clase "lista"
               ScrollReveal().reveal('.lista', { delay: 200, duration: 2000, origin: 'left', distance: '50px' });
           });
       </script>
    </form> 
     
</body>
</html>