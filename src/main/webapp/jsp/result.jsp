<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="ru">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="<%= request.getContextPath() %>/img/target.jpeg" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/header.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/table.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/result.css">
    <title>Aim target</title>
</head>

<body>
<header>
      <span id="icon">
        <a href="https://vk.com/k4rtowka" id="vk">
          <img src="<%= request.getContextPath() %>/img/vk.png" alt="vk" />
        </a>
        <a
                href="https://instagram.com/d4ne.k?igshid=OGQ5ZDc2ODk2ZA=="
                id="inst"
        >
          <img src="<%= request.getContextPath() %>/img/instagram.png" alt="instagram" />
        </a>
        <a href="https://github.com/k4rtowka" id="git">
          <img src="<%= request.getContextPath() %>/img/github.png" alt="github" />
        </a>
      </span>
    <span id="lab">Лабораторная работа 2</span>
    <span id="info">
        Дубук Даниил
        <br />
        Группа: Р3219
        <br />
        Вариант 29789
      </span>
</header>

<section class="main">

    <div class="special-button">
        <a href="<%= request.getContextPath() %>/index.jsp">
            <button id="submit-button">Страница с формой</button>
        </a>
    </div>

    <div class="container-table">
        <jsp:include page="table.jsp"/>
    </div>
</section>


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>