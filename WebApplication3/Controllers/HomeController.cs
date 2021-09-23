using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication3.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var myCalc = new MyCalculator.Calculator();
            Trace.WriteLine(myCalc.Add(1, 2));
            Trace.WriteLine(myCalc.Subtract(5, 6));
            Trace.WriteLine(myCalc.Multiply(3, 4));            
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            new ns1.Class1().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class2().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class3().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class4().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class5().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class6().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class7().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class8().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class9().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class10().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class11().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class12().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class13().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class14().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class15().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class16().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class17().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class18().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class19().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class20().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class21().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class22().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class23().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class24().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class25().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class26().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class27().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class28().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class29().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class30().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class31().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class32().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class33().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class34().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class35().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class36().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class37().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class38().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class39().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class40().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class41().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class42().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class43().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class44().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class45().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class46().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class47().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class48().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class49().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class50().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class51().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class52().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class53().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class54().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class55().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class56().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class57().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class58().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class59().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class61().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class61().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class62().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class63().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class64().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class65().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class66().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class67().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class68().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class69().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class70().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class71().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class72().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class73().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class74().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class75().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class76().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class77().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class78().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class79().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class80().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class81().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class82().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class83().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class84().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class85().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class86().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class87().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class88().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class89().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class90().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class91().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class92().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class93().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class94().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class95().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class96().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class97().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class98().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class99().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class1().Method1(1, "1", true, null);  //Will generate 61 method calls
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            new ns1.Class3().Method1(1, "1", true, null); //Will generate 61 method calls
            new ns1.Class4().Method1(1, "1", true, null); //Will generate 61 method calls

            return View();
        }
    }
}