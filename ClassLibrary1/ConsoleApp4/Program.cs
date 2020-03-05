using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BoxApplication
{
    class Box
    {
        public double length;
        public double breadth;
        public double height;
    }
    class Boxtester {
        static void Main(string[] args)
        {
            Box Box1 = new Box();
            Box Box2 = new Box();
            double volume = 0.0;

            Box1.height = 1.0;
            Box1.length = 2.0;
            Box1.breadth =3.0;

            Box2.height = 3.0;
            Box2.length = 4.0;
            Box2.breadth = 6.0;

            volume = Box1.height * Box1.length * Box1.breadth;
            Console.WriteLine("Volume of Box1 is :", volume);

            volume = Box2.height * Box2.length * Box2.breadth;
            Console.WriteLine("Volume of Box2 : {0}", volume);
            Console.ReadKey();
        }
    }
}
