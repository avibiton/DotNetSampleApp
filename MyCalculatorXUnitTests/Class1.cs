using MyCalculator;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;


namespace MyCalculatorXUnitTests
{
    public class Class1
    {
        [Fact(DisplayName = "Customized.Test.Name! ")]
        public void Add_1_1_Should_Return_2()
        {
            var env = Environment.GetEnvironmentVariables();
            var keys = env.Keys.Cast<String>().ToList();
            keys.Sort();
            var sb = new StringBuilder();
            sb.AppendLine("Is64BitProcess: " + Environment.Is64BitProcess);
            sb.AppendLine("Session: " + Process.GetCurrentProcess().SessionId);
            sb.AppendLine("PID: " + Process.GetCurrentProcess().Id);
            foreach (var k in keys) {
                sb.AppendLine(k + "=" + env[k]);
            }

            Assert.Equal(2, new Calculator().Add(1, 1));
            throw new Exception(sb.ToString());
        }

        [Fact]
        public void Add_3_4_Should_Return_7()
        {
            Assert.Equal(7, new Calculator().Add(3, 4));
        }

        [Fact]
        public void Subtract_3_4_Should_Return_Minus1()
        {
            Assert.Equal(-1, new Calculator().Subtract(3, 4));
        }

        [Fact]
        public void Subtract_4_3_Should_Return_7()
        {
            Assert.Equal(7, new Calculator().Add(3, 4));
        }

        [Fact]
        public void Add_4_5_Should_Return_9()
        {
            Assert.Equal(7, new Calculator().Add(4, 5));
        }

        [Fact(Skip = "Some skip reason")]
        public void SkippedTest()
        {
            throw new Exception();
        }
    }
}
