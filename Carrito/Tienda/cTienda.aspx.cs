﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using BLL;

namespace Carrito.Tienda
{
    public partial class cTienda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Producto p = new Producto();
                TiendaDataList.DataSource = p.Listado("*", "1=1", "");
                TiendaDataList.DataBind();

            }

            Cart Carrito = new Cart();

            if (Session["carrito"] == null)
                Session["carrito"] = Carrito;
            else
                Carrito = (Cart)Session["carrito"];

            CantidadLabel.Text = Carrito.Items.Count.ToString();
        }
        private void LlenarCarrito(Cart cart)
        {


        }

        protected void ADDButton_Click(object sender, EventArgs e)
        {
            //Cart cart = new Cart();
            //cart.Insertar();
        }

        protected void TiendaDataList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataListItem Item = TiendaDataList.Items[TiendaDataList.SelectedIndex];
            Label IdLabel = (Label)Item.FindControl("IdLabel");
                         TextBox Objetocantidad = (TextBox)Item.FindControl("CantidadTextBox");

            int cantidad = Utils.ConvertirEntero(Objetocantidad.Text);

            Producto p = new Producto();

            if (p.Buscar(Utils.ConvertirEntero(IdLabel.Text)))
            {
                if (cantidad > p.Cantidad)
                { //Informar que no tenemos suficiente inventario
                    Page.ClientScript.RegisterStartupScript(this.GetType(),
    "toastr_message", "toastr.error('There was an error', 'no hay inventario')", true);
                }
                else
                {
                    Cart Carrito = new Cart();

                    if (Session["carrito"] == null)
                        Session["carrito"] = Carrito;                    
                    else
                        Carrito = (Cart)Session["carrito"];

                    Carrito.Agregar(p, cantidad);

                    Page.ClientScript.RegisterStartupScript(this.GetType(),
   "toastr_message", "toastr.success('Agregado', 'su articulo fue agregado')", true);

                }

            }
            
        }


        protected void TiendaDataList_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            //Cart cart = new Cart();
            //if (e.Item.ItemType == ListItemType.Item ||
            // e.Item.ItemType == ListItemType.AlternatingItem)
            //{

            //    // Retrieve the Label control in the current DataListItem.
            //    Label PriceLabel = (Label)e.Item.FindControl("PrecioLabel");
            //Label DescrLabel = (Label)e.Item.FindControl("DLabel");
            //    Image imagen = (Image)e.Item.FindControl("ImagenP");
            //    // Retrieve the text of the CurrencyColumn from the DataListItem
            //    // and convert the value to a Double.
            //    //Double Price = Convert.ToDouble(
            //    //    ((DataRowView)e.Item.DataItem).Row.ItemArray[2].ToString());

            //    // Format the value as currency and redisplay it in the DataList.

            //    // PriceLabel.Text = Price.ToString("c");
            //    Label cantidadlabel = (Label)e.Item.FindControl("CantidadLabel");
            //    cart.Cantidad = Utils.ConvertirEntero(cantidadlabel.Text);
            //    cart.Producto = DescrLabel.Text;
            //    cart.Precio = Utils.ConvertiFloat(PriceLabel.Text);
            //    cart.Imagen = imagen.ImageUrl;
            //    cart.Insertar();
            //}

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {


        }

        protected void TiendaDataList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //Cart cart = new Cart();
            //if (e.CommandName == "select")
            //{
            //    cart.CarritoId = e.Item.ItemIndex;


            //    cart.Insertar();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(),
 "toastr_message", "toastr.success('There was an error', 'Error')", true);
        }
    }
}