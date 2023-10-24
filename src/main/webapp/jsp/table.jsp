<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table-check">
  <thead class="thead">
  <tr class="table-header">
    <th scope="col">X</th>
    <th scope="col">Y</th>
    <th scope="col">R</th>
    <th scope="col">Текущее время</th>
    <th scope="col">Результат попадания</th>
  </tr>
  </thead>
  <tbody>
  <jsp:useBean id="records" scope="session" class="models.Records"/>
  <c:forEach var="entry" items="${records.records}">
    <tr class="table-row">
      <td>${entry.x}</td>
      <td>${entry.y}</td>
      <td>${entry.r}</td>
      <td>${records.simpleDateFormat.format(entry.queryTime)}</td>
      <td>${entry.result ? "<div style=\"color: green\">Попадание</div>" :
              "<div style=\"color: red\">Промах</div>"}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
