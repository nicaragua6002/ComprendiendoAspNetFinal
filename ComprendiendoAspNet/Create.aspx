<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="ComprendiendoAspNet.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Create</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container">
       
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Inicio</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Regiones</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Departamentos</a>
        </li>
        
       
      </ul>
     
    </div>
  </div>
</nav>
        <form id="form1" method="post" runat="server">
            <div>
                <input type="text" id="Nombre" name="Nombre" />
                <input class="btn btn-success" type="submit" value="Agregar" />
            </div>
        </form>
       

        <table class="table">
            <%foreach (var item in ComprendiendoAspNet.Global.Regiones)
                {%>
                   <tr>
                       <td><%=item.Id %></td>
                       <td><%=item.Nombre %></td>
                       <td><%=ComprendiendoAspNet.Global.Departamentos.Where(x=>x.IdRegion==item.Id).Count() %></td>
                       <td><a class="btn btn-info" href="Index?id=<%=item.Id %>">Detalle</a></td>
                   </tr> 
                <% } %>
        </table>
    </div>
</body>
</html>
