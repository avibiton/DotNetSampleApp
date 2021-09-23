Public Class HomeController
    Inherits System.Web.Mvc.Controller

    Function Index() As ActionResult
        Dim myCalc As New MyCalculator.Calculator
        myCalc.Add(1,2)
        myCalc.Subtract(5,6)
        myCalc.Multiply(3,4)
        Return View()
    End Function

    Function About() As ActionResult
        ViewData("Message") = "Your application description page."

        Return View()
    End Function

    Function Contact() As ActionResult
        ViewData("Message") = "Your contact page."

        Return View()
    End Function
End Class
