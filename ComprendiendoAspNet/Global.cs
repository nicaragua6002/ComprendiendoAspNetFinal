using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ComprendiendoAspNet
{
    public class Global
    {
        public static List<Region> Regiones = new List<Region>()
        {
            new Region(1,"Pacífico", "Esta zona está formada por una planicie ancha y llena de volcanes, y se caracteriza por un clima caluroso. E")
            ,new Region(2,"Norte y centro", "Esta región se caracteriza por tener unas altas montañas y frondosos valles. ")
            ,new Region(3,"Pacífico", "Esta es la zona menos poblada de Nicaragua y todavía es difícil acceder a ella, a pesar de que ocupa más de la mitad del territorio del país. ")

        };

        public static List<Departamento> Departamentos = new List<Departamento>()
        {
            new Departamento(1,"Boaco",1)
            ,new Departamento(2,"Chinandega",1)
             ,new Departamento(3,"Estelí",2)
             ,new Departamento(4,"Jinotega",1)
             ,new Departamento(5,"León",3)

        };


        public class Region
        {
            int id;
            string nombre;
            string descripcion;

            public Region(int id, string nombre, string descripcion)
            {
                this.id = id;
                this.nombre = nombre;
                this.descripcion = descripcion;
            }

            public int Id { get => id; set => id = value; }
            public string Nombre { get => nombre; set => nombre = value; }
            public string Descripcion { get => descripcion; set => descripcion = value; }
        }

        public class Departamento
        {
            int id;
            string nombre;
            int idRegion;

            public Departamento(int id, string nombre, int idRegion)
            {
                this.id = id;
                this.nombre = nombre;
                this.idRegion = idRegion;
            }

            public int Id { get => id; set => id = value; }
            public string Nombre { get => nombre; set => nombre = value; }
            public int IdRegion { get => idRegion; set => idRegion = value; }
        }
    }
}