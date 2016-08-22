<%--
Query String: ?operand1=11&operand2=222&operation=ADD
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calc 2.0</title>
</head>
<body>
<h1>Calculator 2.0</h1>
Please send your parameters in URL:
operand1=__&operand2=__&operation=__(ADD/MULTIPLY/SUBTRACT/DIVIDE)
<br>
<br>
<h2>Your result: </h2>

<%
    double operand1 = 0.0;
    double operand2 = 0.0;
    String operation = null;

    if (request.getParameter("operand1") != null){
        operand1 = Double.parseDouble(request.getParameter("operand1"));
    } else operand1 = 0.0;

    if (request.getParameter("operand2") != null){
        operand2 = Double.parseDouble(request.getParameter("operand2"));
    } else operand2 = 0.0;

    if (request.getParameter("operation") != null){
        operation = request.getParameter("operation");
    } else operation = "No Operation";

    double result = 0.0;

    out.println(operand1);
    out.println(operation);
    out.println(operand2);
    out.println(" = ");

    switch (operation){
        case "ADD": result = operand1 + operand2; break;
        case "MULTIPLY": result = operand1 * operand2; break;
        case "SUBTRACT": result = operand1 - operand2; break;
        case "DIVIDE": result = (operand1 / operand2); break;
    }

    out.println(result);
%>
<br>
<br>
-----
<br>
<%
    out.println("Server response code: ");
    out.println(response.getStatus());
%>

</body>
</html>
