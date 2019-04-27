<%@ Page Title="Acerca de" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Portfolio.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Que es esto?</h2>
    <h3>Esta es una pagina web realizada en ASP.Net utilizando Bootstrap, ADO.Net y Entity Framework en capas para realizar consultas a una tabla en una base de datos.
        Un proyecto sencillo para demostrar mi nivel de conocimientos en dichas tecnologias.
    </h3>
    <p>Ante cualquier consulta, dirigirse a la pagina de 
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Contact.aspx" runat="server">contacto</asp:HyperLink>.
    </p>
</asp:Content>