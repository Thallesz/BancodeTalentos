<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="LoginEmpresa.aspx.cs" Inherits="TccBancoTalentos.TelaLogin.LoginEmpresa" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - Banco de Talentos</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>
<body style="background-image: url('../img/fundoempresa.png');padding:50px">
    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

        <link rel="stylesheet" href="../Estilo/LoginCandidato.css" />
        <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div style="border: solid; border-color: cornflowerblue; padding: 30px; margin-top: 140px; border-radius: 0px; box-shadow: 5px 5px 10px; margin-left: -280px; margin-right: 400px">
                    <h2 style="font-size: 16px; font-family: 'Franklin Gothic Book'; color: #212529">E-mail:</h2>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" placeholder="Email" Style="border-color: black; text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                    <br />
                    <h2 style="font-size: 16px; font-family: 'Franklin Gothic Book'; color: #212529">Senha:</h2>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtSenha" TextMode="Password" placeholder="Senha" Style="border-color: black; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button runat="server" CssClass="button" OnClick="btnLogin_Click" ID="btnLogin" Text="Entrar" Style="border-radius: 50px; margin-left: -1px" Font-Size="20px" Width="280px" Height="40px" />
                </div>
            </div>
            <div class="col-sm-4">               
            </div>
        </div>
        <div class="row" style="margin-top:50px">
            <a href="#" style="margin-left:350px">Esqueceu a senha?</a>                       
        </div>       
        <div class="row" style="margin-top:10px">
            <a href="#" style="margin-left:350px">Não possui uma conta?</a> 
        </div>
    </form>
</body>
</html>

