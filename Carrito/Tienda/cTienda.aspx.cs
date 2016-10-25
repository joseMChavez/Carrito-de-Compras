using System;
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
            Producto p = new Producto();
            TiendaDataList.DataSource = p.Listado("*","1=1","");
            TiendaDataList.DataBind();
        }
        private void LlenarCarrito(Cart cart) {
        

        }

        protected void ADDButton_Click(object sender, EventArgs e)
        {
            Cart cart = new Cart();
            cart.Insertar();
        }

        protected void TiendaDataList_SelectedIndexChanged(object sender, EventArgs e)
        {
            TiendaDataList.DataBind();
        }

        protected void TiendaDataList_ItemDataBound(object sender, DataListItemEventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           

        }

        protected void TiendaDataList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Cart cart = new Cart();
            if (e.CommandName=="select")
            {
                cart.CarritoId= e.Item.ItemIndex;
                cart.Insertar();             
            }
        }
    }
}