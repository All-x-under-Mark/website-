<%--
  Created by IntelliJ IDEA.
  User: Александр
  Date: 23.03.2020
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" href="/style/style.css">
    <title>Таблиця</title>
</head>
<body>
<header>
    <div class="header-bg">
        <h1>ФК Юность</h1>
    </div>
</header>

<div class="content-gradient">
    <div class="content-bg">
        <div class="content-white">

            <aside>

                <div class="interest">
                    <div class="conteiner-text-registrbloc">
                        <div><input class="textreg" type="text" name="textLogin" placeholder="Логін"></div>
                        <div><input class="textreg" type="text" name="textParol" placeholder="Пароль"></div>

                    </div>
                    <div class="container-submit">
                                        <span>
                                        <input type="submit" class="btn btn-info" value="Регістрація">
                                            <input type="submit" class="btn btn-info" value="Логін">
                                    </span>
                    </div>
                </div>

                <ul class="menu">


                    <li><a href="/index.jsp">Головна</a></li>
                    <li><a href="/views/Command.jsp">Команда</a> <br></li>
                    <li class="current"><span>Таблиця</span></li>
                    <li><a href="/views/History.jsp">Історія</a> <br></li>
                    <li><a href="/views/PhotoGallery.jsp">Фотогалерея</a> <br></li>
                    <li><a href="/views/Achievements.jsp">Досягнення</a></li>


                </ul>


            </aside>

            <article>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>№</th>
                        <th>Команда</th>
                        <th>І</th>
                        <th>В</th>
                        <th>Н</th>
                        <th>П</th>
                        <th>ГЗ</th>
                        <th>ГП</th>
                        <th>РГ</th>
                        <th>О</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>

                        <td>${som.comaList[0].num}</td>
                        <td>${som.comaList[0].name}</td>
                        <td>${som.comaList[0].game}</td>
                        <td>${som.comaList[0].win}</td>
                        <td>${som.comaList[0].draw}</td>
                        <td>${som.comaList[0].lost}</td>
                        <td>${som.comaList[0].goalsScored}</td>
                        <td>${som.comaList[0].goalsConceded}</td>
                        <td>${som.comaList[0].difference}</td>
                        <td>${som.comaList[0].points}</td>

                    </tr>
                    <td>${som.comaList[1].num}</td>
                    <td>${som.comaList[1].name}</td>
                    <td>${som.comaList[1].game}</td>
                    <td>${som.comaList[1].win}</td>
                    <td>${som.comaList[1].draw}</td>
                    <td>${som.comaList[1].lost}</td>
                    <td>${som.comaList[1].goalsScored}</td>
                    <td>${som.comaList[1].goalsConceded}</td>
                    <td>${som.comaList[1].difference}</td>
                    <td>${som.comaList[1].points}</td>

                    </tr>
                    <tr>
                        <td>${som.comaList[2].num}</td>
                        <td>${som.comaList[2].name}</td>
                        <td>${som.comaList[2].game}</td>
                        <td>${som.comaList[2].win}</td>
                        <td>${som.comaList[2].draw}</td>
                        <td>${som.comaList[2].lost}</td>
                        <td>${som.comaList[2].goalsScored}</td>
                        <td>${som.comaList[2].goalsConceded}</td>
                        <td>${som.comaList[2].difference}</td>
                        <td>${som.comaList[2].points}</td>
                    </tr>
                    <td>${som.comaList[3].num}</td>
                    <td>${som.comaList[3].name}</td>
                    <td>${som.comaList[3].game}</td>
                    <td>${som.comaList[3].win}</td>
                    <td>${som.comaList[3].draw}</td>
                    <td>${som.comaList[3].lost}</td>
                    <td>${som.comaList[3].goalsScored}</td>
                    <td>${som.comaList[3].goalsConceded}</td>
                    <td>${som.comaList[3].difference}</td>
                    <td>${som.comaList[3].points}</td>
                    <tr>
                        <td>${som.comaList[4].num}</td>
                        <td>${som.comaList[4].name}</td>
                        <td>${som.comaList[4].game}</td>
                        <td>${som.comaList[4].win}</td>
                        <td>${som.comaList[4].draw}</td>
                        <td>${som.comaList[4].lost}</td>
                        <td>${som.comaList[4].goalsScored}</td>
                        <td>${som.comaList[4].goalsConceded}</td>
                        <td>${som.comaList[4].difference}</td>
                        <td>${som.comaList[4].points}</td>
                    </tr>
                    <tr>
                        <td>${som.comaList[5].num}</td>
                        <td>${som.comaList[5].name}</td>
                        <td>${som.comaList[5].game}</td>
                        <td>${som.comaList[5].win}</td>
                        <td>${som.comaList[5].draw}</td>
                        <td>${som.comaList[5].lost}</td>
                        <td>${som.comaList[5].goalsScored}</td>
                        <td>${som.comaList[5].goalsConceded}</td>
                        <td>${som.comaList[5].difference}</td>
                        <td>${som.comaList[5].points}</td>
                    </tr>
                    <tr>
                        <td>${som.comaList[6].num}</td>
                        <td>${som.comaList[6].name}</td>
                        <td>${som.comaList[6].game}</td>
                        <td>${som.comaList[6].win}</td>
                        <td>${som.comaList[6].draw}</td>
                        <td>${som.comaList[6].lost}</td>
                        <td>${som.comaList[6].goalsScored}</td>
                        <td>${som.comaList[6].goalsConceded}</td>
                        <td>${som.comaList[6].difference}</td>
                        <td>${som.comaList[6].points}</td>
                    </tr>
                    <tr>
                        <td>${som.comaList[7].num}</td>
                        <td>${som.comaList[7].name}</td>
                        <td>${som.comaList[7].game}</td>
                        <td>${som.comaList[7].win}</td>
                        <td>${som.comaList[7].draw}</td>
                        <td>${som.comaList[7].lost}</td>
                        <td>${som.comaList[7].goalsScored}</td>
                        <td>${som.comaList[7].goalsConceded}</td>
                        <td>${som.comaList[7].difference}</td>
                        <td>${som.comaList[7].points}</td>

                    </tr>

                    </tbody>
                </table>
            </article>

            <%--<article>
                <div class="dropdown">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                        Dropdown button
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" value = "${som.[1].num}"> Link 1</a>
                        <a class="dropdown-item" href="#">Link 2</a>
                        <a class="dropdown-item" href="#">Link 3</a>
                    </div>
                </div>

            </article>--%>

            <form method="post">

                <input type="text" id="text" name="text" size="10">

                <input type="submit" id="but" name=" but" value="Button">


            </form>

            <div>
                <%
                    if (request.getAttribute("userName") != null) {
                        out.println(request.getAttribute("userName") + " Добавлено</p>");
                    }
                %>
                <p> ${userName} </p>
                <div>


                </div>
            </div>
        </div>

        <footer>

            <div class="footer-bg">
                <div class="copyright">
                    <p><strong>Информаційний сайт ФК "Юність" с. Мойсівка</strong></p>
                    <p>&copy; Олександр Маркович</p>
                </div>
            </div>
        </footer>


        <%--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                crossorigin="anonymous"></script>--%>
</body>
</html>
