using System;

namespace StringApplication
{
    public class Program
    {
        static void Main(string[] args)
        {
            string fname, lname;
            fname = "ravi";
            lname = "tejpal";

            char[] letters = { 'H', 'E', 'L', 'L', 'O' };
            string[] sarray = { "Hello", "From", "Ravi", "Tejpal" };
            string fullname = fname + lname;
            Console.WriteLine("Full Name:{0}", fullname);

            string greetings = new string(letters);
            Console.WriteLine("Greetings: {0}", greetings);

            string message = String.Join(" ", sarray);
            Console.WriteLine("Message: {0}", message);

            DateTime waiting = new DateTime(2012, 10, 10, 17, 58, 1);
            string chat = String.Format("Message sent at {0:t} on {0:D}", waiting);
            Console.WriteLine("Message: {0}", chat);
        }
    }
}
    