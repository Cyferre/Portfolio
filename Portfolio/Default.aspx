<%@ Page Title="Aplicacion" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Portfolio._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Insert a la tabla</h1>


        <br />
        <table class="nav-justified">
            <tr>
               <td style="width: 275px"><strong>ID:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" TextMode="Number" min="0" runat="server" Width="110px" ></asp:TextBox>
                &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 275px; height: 20px;"><strong>Nombre:</strong></td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="224px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 275px"><strong>DNI:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" textmode="Number" runat="server" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 275px; height: 20px;"><strong>Edad:</strong></td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="68px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 275px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 275px">
                   
                   
                    <asp:Button ID="btnGuardar" runat="server" CssClass="btn-primary active" Height="37px" OnClick="btnGuardar_Click" Text="Guardar" ToolTip="Guardar el registro" Width="114px" />
                   
                   
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
      </div>

    <div>


        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="alert-info" ErrorMessage="ID requerido." Font-Bold="True"></asp:RequiredFieldValidator>
        <br />
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" CssClass="alert-info" ErrorMessage="ID no es un numero valido. Elija un ID desde 0 a 5000." Font-Bold="True" MaximumValue="5000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="alert-info" ErrorMessage="Nombre requerido." Font-Bold="True"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" CssClass="alert-info" ErrorMessage="Nombre contiene un caracter no valido. Ingrese solo letras." Font-Bold="True" Font-Italic="False" ValidationExpression="^[a-zA-Z_áéíóúñ\s]*$"></asp:RegularExpressionValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="alert-info" ErrorMessage="DNI requerido." Font-Bold="True"></asp:RequiredFieldValidator>
        <br />
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3" CssClass="alert-info" ErrorMessage="DNI no es un DNI valido, ingrese un DNI de 8 digitos." Font-Bold="True" MaximumValue="99999999" MinimumValue="10000000" Type="Integer"></asp:RangeValidator>
        <br />
        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox4" CssClass="alert-info" ErrorMessage="Edad no es valida. Ingrese una edad posible." Font-Bold="True" MaximumValue="120" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <br />


    </div>


</asp:Content>
