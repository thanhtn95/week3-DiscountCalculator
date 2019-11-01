<%--
  Created by IntelliJ IDEA.
  User: z-one
  Date: 11/1/19
  Time: 4:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dispplay Discount</title>
</head>
<body>
<fieldset style="width: fit-content">
    <legend><h2>Discount</h2></legend>
    <p>Product description:&nbsp;<input disabled type="text" value="<%=request.getAttribute("description")%>"></p>
    <p>Discount Amount:&nbsp;<input disabled type="text" value="<%=request.getAttribute("discountAmount")%>"></p>
    <p>Discount Price:&nbsp;<input disabled type="text" value="<%=request.getAttribute("discountPrice")%>"></p>
</fieldset>
</body>
</html>
