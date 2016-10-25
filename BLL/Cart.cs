using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Cart : ClaseMaestra
    {
        public int CarritoId { get; set; }
        public string Producto { get; set; }
        public string Imagen { get; set; }
        public float Precio { get; set; }
        public int Cantidad { get; set; }

        public Cart() {
            this.Cantidad = 0;
            this.Precio = 0;
            this.Cantidad = 0;
            this.Producto = string.Empty;
            this.Imagen = string.Empty;
        }

        public override bool Buscar(int IdBuscado)
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

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorna = false;
            try
            {
                retorna = conexion.Ejecutar(string.Format("insert into Carrito(CarritoId,Producto,Precio,Cantidad,Imagen) values({0},'{1}',{2},{3},'{4}')", this.CarritoId,this.Producto,this.Precio,this.Cantidad,this.Imagen));
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return retorna;
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
            return dt = conexion.ObtenerDatos(string.Format("select "+Campos+" from Carrito where " + Condicion + ordenFinal));

        }
    }
}
