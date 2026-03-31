using System;

namespace Calc_Class_Library
{
    public static class Class1
    {
        public static int sum(int a, int b)
        {
            return checked(a + b);
        }

        public static int sub(int a, int b)
        {
            return checked(a - b);
        }

        public static int mul(int a, int b)
        {
            return checked(a * b);
        }

        public static int div(int a, int b)
        {
            if (b == 0)
            {
                throw new DivideByZeroException("Cannot divide by zero.");
            }

            return a / b;
        }
    }
}
