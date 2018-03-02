using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Excerise2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter 10 values between 1-100 and i will add them all together");
            Console.WriteLine("Enter first value");
            double a = double.Parse(Console.ReadLine());
            Console.WriteLine("Enter second value value");
            double b = double.Parse(Console.ReadLine());
            Console.WriteLine("Enter third value");
            double c = double.Parse(Console.ReadLine());
            Console.WriteLine("Enter fourth value");
            double d = double.Parse(Console.ReadLine());
            Console.WriteLine("Enter fifth value");
            double e = double.Parse(Console.ReadLine());
            Console.WriteLine("Enter sixth value");
            double f = double.Parse(Console.ReadLine());
            Console.WriteLine("Enter seventh value");
            double g = double.Parse(Console.ReadLine());
            Console.WriteLine("Enter eigth value");
            double h = double.Parse(Console.ReadLine());
            Console.WriteLine("Enter ninth value");
            double i = double.Parse(Console.ReadLine());
            Console.WriteLine("Enter tenth value");
            double j = double.Parse(Console.ReadLine());
            double sum = a + b + c + d + e + f + g + h + i + j;
            Console.Write("The sum of all your values: ");
            Console.WriteLine(sum);
        }
    }
    }