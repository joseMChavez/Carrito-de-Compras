<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cTienda.aspx.cs" Inherits="Carrito.Tienda.cTienda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h2 class="text-center">Tienda<span class="glyphicon glyphicon-align-justify"></span></h2>
            </div>
            <div class="panel-body">

                <div class="form-horizontal col-md-12" role="form">
                    <div class="form-group">
                        <label class="col-md-2 col-sm-4 col-xs-12 control-label input-sm" for="DropDLFiltro">Filtrar por:</label>
                        <div class="col-md-4 col-md-4 col-xs-12">
                            <asp:DropDownList ID="DropDLFiltro" CssClass="form-control input-sm" readOnly="true" runat="server">
                                <asp:ListItem Value="ProductoId">Id</asp:ListItem>
                                <asp:ListItem Value="Descripcion">Nombre</asp:ListItem>
                                <asp:ListItem Value="Precio">Precio</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-4 col-xs-12">
                            <asp:TextBox ID="TextBoxFiltro" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                           
                        </div>
                        <div class="col-md-2  col-md-2 col-xs-8">
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="ButtonBuscar" runat="server"  Width="36px" ><span class="glyphicon glyphicon-search"></span> </asp:LinkButton>
                        </div>
                    </div>

                </div>
                <div class=" row">
                    <div class="col-sm-4">
                        <asp:DataList ID="TiendaDataList" runat="server" BorderColor="Gray" BorderWidth="1px"  OnItemDataBound="TiendaDataList_ItemDataBound" OnSelectedIndexChanged="TiendaDataList_SelectedIndexChanged" OnItemCommand="TiendaDataList_ItemCommand">
                    
                    <FooterStyle BackColor="Gray" Font-Bold="True" Font-Italic="False" Font-Names="Arial Black" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Gray" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="Gray" Font-Bold="True" Font-Italic="False" Font-Names="Arial Black" Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" HorizontalAlign="Left" />
                    
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductosId") %>'></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Descripcion") %>'></asp:Label>
                              
                                
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagen") %>' />
                                <br />
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Precio") %>'></asp:Label>
                                <br />
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Cantidad") %>'></asp:Label>
                                <br />
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument=" select " CssClass=" btn btn-info" Text="Add" OnClick="LinkButton1_Click"></asp:LinkButton>
                            </ItemTemplate>
                    
                            <SeparatorStyle BackColor="Blue" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Left" />
                    
                </asp:DataList>
                    </div>
                </div>
               <%-- <asp:GridView cssClass=" table table-responsive table-bordered table-hover" ID="GridView1" runat="server">
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
                            />

                    </Columns>
                </asp:GridView>--%>
               
            </div>

            <hr />
            <div class="panel-footer">
                <a href="../Carrito/cCarrito.aspx" class="badge label label-primary text-center">0<span  class="glyphicon glyphicon-shopping-cart"></span></a>
            </div>
        </div>
    </div>
</asp:Content>
