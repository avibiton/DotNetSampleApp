using MyCalculator;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyCalculatorNUnitTests
{
    [TestFixture]
    public class Class1
    {
        [TestCase]
        public void Add_1_1_Should_Return_2()
        {
            Assert.AreEqual(new Calculator().Add(1, 1), 2);
        }

        [TestCase]
        public void Add_3_4_Should_Return_7()
        {
            Assert.AreEqual(new Calculator().Add(3, 4), 7);
        }

        [TestCase]
        public void Subtract_3_4_Should_Return_Minus1()
        {
            Assert.AreEqual(new Calculator().Subtract(3, 4), -1);
        }

        [TestCase, Ignore("Reason")]
        public void Subtract_4_3_Should_Return_()
        {
            Assert.AreEqual(new Calculator().Subtract(4, 3), 1);
        }
    }
}
