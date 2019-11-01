<%--
  Created by IntelliJ IDEA.
  User: z-one
  Date: 11/1/19
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Discount Calculator</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/discount">
    <fieldset style="width: fit-content">
        <legend><h2>Discount Price Calculator</h2></legend>
        <p>Product Description:&nbsp; <input type="text" name="description"></p>
        <p>Listed Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="listedPrice"></p>
        <p>Discount Percent:&nbsp;&nbsp;&nbsp; <input type="text" name="discountPercent"> &nbsp;%</p>
        <p><input type="submit" value="Calculate Discount"></p>
    </fieldset>
</form>
</body>
</html>
