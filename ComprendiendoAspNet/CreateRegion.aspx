<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateRegion.aspx.cs" Inherits="ComprendiendoAspNet.CreateRegion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agregar una región</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
     <div class="container">
       
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="~/Index.cshtml">Inicio</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Regiones.cshtml">Regiones</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Departamentos.cshtml">Departamentos</a>
                        </li>


                    </ul>

                </div>
            </div>
        </nav>
         <h2>Datos de la nueva región</h2>
    <form class="form" id="form1" runat="server">
         <div>
               <p>Id:  <input type="text" id="Id" name="Id" /></p>
                <p>Nombre <input type="text" id="Nombre" name="Nombre" /></p>
                <input class="btn btn-success" type="submit" value="Agregar" />
           </div>
    </form>
   </div>
</body>
</html>
