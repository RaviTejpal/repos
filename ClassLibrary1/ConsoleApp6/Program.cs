using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace InheritenceAppication
{
    class Shape
    {
        public void SetWidth(int w)
        {
            width = w;
        }

        public void Setheight(int h)
        {
            height = h;
        }

        protected int width;
        protected int height;
    }


    class Rectangle : Shape
    {
        public int getarea()
        {
            return (width * height);
        }
    }

    class RectangleTester
    {
        static void Main(string[] args)
        {
            Rectangle rect = new Rectangle();
            rect.Setheight(5);
            rect.SetWidth(6);
            Console.WriteLine("Total Area:", rect.getarea());
            Console.ReadKey();

            string connetionString = null;
            SqlConnection cnn;
            connetionString = "Data Source=DESKTOP-331SR1R\\SQL2012;Initial Catalog=AdventureWorks2012;Integrated Security=SSPI;";
            cnn = new SqlConnection(connetionString);
            
                cnn.Open();
                Console.WriteLine("Connection Open ! ");
                cnn.Close();
            
             
        }
    }
}
