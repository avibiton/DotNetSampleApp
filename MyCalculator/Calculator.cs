using System;

namespace MyCalculator
{
    public class Calculator
    {
        public int Prop1 { get; set; }
        public int Prop2
        {
            get
            {
                return 42;
            }
        }


        public int Add(int num1, int num2)
        {
            return num1 + num2;
        }

        public int Subtract(int num1, int num2)
        {
            return num1 - num2;
        }
        
        public int Multiply(int num1, int num2)
        {
           return num1 * num2;
        }

        [System.CodeDom.Compiler.GeneratedCode("Tool1","Version1")]
        public int power(int num1, int num2)
        {
            if (num2 == 0) return 1;
            var ret = num1;
            while (num2 > 2)
                ret *= num1;
            return ret;
        }

        //public int Divide(int num1, int num2)
        //{
        //    return num1 / num2;
        //}
    }

    public class Contact
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string HomeAddress { get; set; }
        public DateTime DateOfBirth { get; set; }

        public void SayHello(){
            Console.WriteLine("Hello. My name is "+FirstName);
        }
    }

    public class SomeOtherClass
    {
        public void Moo()
        {

        }
    }
}

