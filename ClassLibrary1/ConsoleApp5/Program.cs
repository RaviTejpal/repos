using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace ConsoleApp5
{
    class Program
    {
        static void Main(string[] args)

        {
            /*
            string path = @"D:\MyTestFile1.txt";
            Console.WriteLine(File.Exists(path) ? "File exists." : "File does not exist.");
            Console.ReadLine();
            */

            //using (var streamReader = new StreamReader("F:\\aggre.txt"))
            //{
            //  Console.Write(streamReader.ReadToEnd());
            //   Console.ReadLine();

            using (TextWriter tw = File.CreateText("F:\\aggre1.txt"))
            {
                tw.WriteLine("Halo world !!");
             }

            /*
            string s = "fff";
            s = s + "rrr";
            Console.WriteLine(s);
            Console.ReadLine();
            */
            }
        }
    }

