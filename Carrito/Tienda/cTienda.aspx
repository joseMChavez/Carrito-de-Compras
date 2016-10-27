<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cTienda.aspx.cs" Inherits="Carrito.Tienda.cTienda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 22%;
            height: 51px;
        }

        .auto-style3 {
            width: 193px;
            height: 98px;
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
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="ButtonBuscar" runat="server" Width="36px"><span class="glyphicon glyphicon-search"></span> </asp:LinkButton>
                        </div>
                    </div>

                </div>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <div class=" row">
                    <div class="col-sm-4">
                        <asp:DataList ID="TiendaDataList" RepeatColumns="2" runat="server" BorderColor="#E7E7FF" BorderWidth="1px" OnItemDataBound="TiendaDataList_ItemDataBound" OnSelectedIndexChanged="TiendaDataList_SelectedIndexChanged" OnItemCommand="TiendaDataList_ItemCommand" BackColor="White" BorderStyle="None" CellPadding="3" GridLines="Vertical" RepeatDirection="Horizontal">

                            <AlternatingItemStyle BackColor="#F7F7F7" />

                            <FooterStyle BackColor="#B5C7DE" Font-Names="Arial Black" ForeColor="#4A3C8C" HorizontalAlign="Left" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" Font-Names="Arial Black" Font-Size="Smaller" ForeColor="#F7F7F7" HorizontalAlign="Left" />

                            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />

                            <ItemTemplate>
                                <table class="auto-style2">
                                    <tr>
                                        <td><asp:Label ID="IdLabel" runat="server" Text='<%# Eval("ProductosId") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td><%# Eval("Descripcion") %></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img alt="" class="auto-style3" src='<%# Eval("Imagen") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td><h3> <%# Eval("Precio")  %></h3></td>
                                    </tr>
                                    <tr>
                                        <td> <asp:TextBox ID="CantidadTextBox" Text="1" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-success" Text ="Buy" CommandName="Select" ></asp:LinkButton> 
                                    </tr>
                                </table>

                                <%--                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductosId") %>'></asp:Label><br />
                                 
                                <asp:Label ID="DLabel" runat="server" Text='<%# Eval("Descripcion") %>'></asp:Label>
                              
                                
                                <asp:Image ID="ImagenP" runat="server" ImageUrl='<%# Eval("Imagen") %>' />
                                <br /><b>Precio:</b>
                                <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>'></asp:Label>
                                <br /><b>Cantidad</b>
                                <asp:Label ID="CantidadLabel" runat="server" Text='<%# Eval("Cantidad") %>'></asp:Label>
                                <br />
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument=" select " CssClass=" btn btn-info" Text="Add" OnClick="LinkButton1_Click"></asp:LinkButton>
                                --%>
                            </ItemTemplate>

                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />

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

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <table class="auto-style2">
                </table>

            <hr />
            <div class="panel-footer">
                <a href="../Carrito/cCarrito.aspx" class="badge label label-primary text-center">
                    <asp:Label ID="CantidadLabel" runat="server" Text="Label"></asp:Label> <span class="glyphicon glyphicon-shopping-cart"></span></a>
            </div>
        </div>


    </div>
</asp:Content>
