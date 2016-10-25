using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Carrito.Carrito
{
    public partial class cCarrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cart c = new Cart();
            if (!IsPostBack)
            {
                CarritoGridView.DataSource = c.Listado("*", "1=1", "");
                CarritoGridView.DataBind();
            }
        }
    }
}