using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Producto : ClaseMaestra
    {
        public int ProductoId { get; set; }
        public string Descripcion { get; set; }
        public int Cantidad { get; set; }

        public decimal Precio { get; set; }

        public override bool Insertar()
        {
            throw new NotImplementedException();
        }
       
   
        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }
        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();

            dt = conexion.ObtenerDatos("Select * from Productos Where ProductosId=" + IdBuscado.ToString());

            if (dt.Rows.Count>0)
            {
                this.ProductoId = (int)dt.Rows[0]["ProductosId"];
                this.Descripcion =  dt.Rows[0]["Descripcion"].ToString();
                this.Cantidad = (int)dt.Rows[0]["Cantidad"];
                this.Precio = Decimal.Parse( dt.Rows[0]["Precio"].ToString());
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();
            string ordenFinal = "";
            if (!Orden.Equals(""))
            {
                ordenFinal = "order by " + Orden;
            }
            return dt = conexion.ObtenerDatos(string.Format("select " + Campos + " from Productos where " + Condicion + ordenFinal));
        }
    }
}
