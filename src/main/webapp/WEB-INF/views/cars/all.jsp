<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Cars</title>
</head>
<body>
<h1>List of Cars</h1>
<table>
  <tr>
    <td>car id</td>
    <td>model</td>
    <td>manufacturer name</td>
    <td>drivers</td>
    <td>delete</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.name}"/></td>
      <td>
        <c:forEach items="${car.drivers}" var="driver">
          <c:out value="${driver.name}"/><br>
        </c:forEach>
      </td>
      <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this Car</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>