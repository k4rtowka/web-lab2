<%@ page contentType="text/html; charset=UTF-8"  language="java" %>

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
<!-- Шапка сайта -->
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

<!-- Основная часть -->
<table class="main-table">
      <tr>
            <td>
                  <canvas id="graph"></canvas>
            </td>
      </tr>
      <tr>
            <td>
                  <form id="coordinates-form"  method="post">
                        <div class="X-text" id="X">
                              <label class="field">
                                    X:
                                    <input
                                            id="X-text"
                                            class="X-text-input"
                                            type="text"
                                            name="X"
                                            placeholder="num in range (-5; 3)"
                                            maxlength="14"
                                            required
                                    />
                              </label>
                        </div>
                        <div class="y-radios">
                              Y:
                              <label>
                                    -4
                                    <input class="y-radio" type="radio" name="y" value="-3" />
                              </label>
                              <label>
                                    -3
                                    <input class="y-radio" type="radio" name="y" value="-3" />
                              </label>
                              <label>
                                    -2
                                    <input class="y-radio" type="radio" name="y" value="-2" />
                              </label>
                              <label>
                                    -1
                                    <input class="y-radio" type="radio" name="y" value="-1" />
                              </label>
                              <label>
                                    0
                                    <input class="y-radio" type="radio" name="y" value="0" checked/>
                              </label>
                              <label>
                                    1
                                    <input class="y-radio" type="radio" name="y" value="1" />
                              </label>
                              <label>
                                    2
                                    <input class="y-radio" type="radio" name="y" value="2" />
                              </label>
                              <label>
                                    3
                                    <input class="y-radio" type="radio" name="y" value="3" />
                              </label>
                              <label>
                                    4
                                    <input class="y-radio" type="radio" name="y" value="4" />
                              </label>
                        </div>

                        <div class="R-checkbox">
                              R:
                              <label>
                                    1
                                    <input class="r-checkbox" type="checkbox" name="R" value="1" />
                              </label>
                              <label>
                                    1.5
                                    <input class="r-checkbox" type="checkbox" name="R" value="1.5" />
                              </label>
                              <label>
                                    2
                                    <input class="r-checkbox" type="checkbox" name="R" value="2" />
                              </label>
                              <label>
                                    2.5
                                    <input class="r-checkbox" type="checkbox" name="R" value="2.5" />
                              </label>
                              <label>
                                    3
                                    <input class="r-checkbox" type="checkbox" name="R" value="3" />
                              </label>
                        </div>
                        <button id="submit-button" type="submit">Отправить</button>
                  </form>
            </td>
      </tr>
</table>

<div class="table">
       <jsp:include page="jsp/table.jsp"/>
</div>



<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/canvas.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/script.js"></script>
</body>
</html>
