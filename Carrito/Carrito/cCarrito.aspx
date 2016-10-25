<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cCarrito.aspx.cs" Inherits="Carrito.Carrito.cCarrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h2 class="center-block text-center">Carrito<span  class="glyphicon glyphicon-shopping-cart"></span></h2>
            </div>
            <div class="panel-body">

                <div class="form-horizontal col-md-12" role="form">
                    

                </div>
                <asp:GridView cssClass=" table table-responsive table-bordered table-hover" ID="CarritoGridView" runat="server">
                    <Columns>
                        <asp:HyperLinkField
                                        DataNavigateUrlFields="ID"
                                        DataNavigateUrlFormatString="rPersonas.aspx?ID={0}"
                                        Text="Ver"
                                         ControlStyle-CssClass="label  label-info" />
                        <%--<asp:HyperLinkField 
                             DataNavigateUrlFields="Id"
                             DataNavigateUrlFormatString="nombredeRegistro?Id{0}"
                             HeaderText="ver"
                             ControlStyle-CssClass=""
                            />--%>

                    </Columns>
                </asp:GridView>
               
            </div>

            <hr />
            <div class="panel-footer">
                <a href="../Tienda/cTienda.aspx" class="label  label-info">Retornar a Tienda</a>
            </div>
        </div>
    </div>
</asp:Content>
