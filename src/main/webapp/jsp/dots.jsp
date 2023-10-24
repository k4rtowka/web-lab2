<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="records" scope="session" class="models.Records"/>
<c:forEach var="entry" items="${records.records}">
    <circle r="3.5"
            cx=${((300 / 2 + (entry.x + 0.02) / entry.r * 100))}
                    cy=${((300 / 2 + (entry.y - 0.02) / entry.r * -100))}
            id="target-dot"
            fill=${entry.result ? "green" : "red"}>
    </circle>
</c:forEach>
