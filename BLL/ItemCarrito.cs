using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class ItemCarrito
    {
        public int ProductoId { get; set; }
        public int Cantidad { get; set; }
        public decimal Precio { get; set; }

        public ItemCarrito()
        {

        }
        public ItemCarrito(int productoId, int cantidad, decimal precio)
        {
            this.ProductoId = productoId;
            this.Cantidad = cantidad;
            this.Precio = precio;
        }
    }
}
