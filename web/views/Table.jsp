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
    <meta charset="UTF-8">
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

                    <c:forEach var="com" items="${commands}">
                        <tr>
                            <td>${com.num}</td>
                            <td>${com.name}</td>
                            <td>${com.game}</td>
                            <td>${com.win}</td>
                            <td>${com.draw}</td>
                            <td>${com.lost}</td>
                            <td>${com.goalsScored}</td>
                            <td>${com.goalsConceded}</td>
                            <td>${com.difference}</td>
                            <td>${com.points}</td>
                        </tr>
                    </c:forEach>


                    </tbody>
                </table>
            </article>

            <%--<article>
                <div class="dropdown">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                        Dropdown button
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" value = "${.[1].num}"> Link 1</a>
                        <a class="dropdown-item" href="#">Link 2</a>
                        <a class="dropdown-item" href="#">Link 3</a>
                    </div>
                </div>

            </article>--%>
            <div>
                <h1>${error}</h1>

            </div>

            <form method="post" action="/Table">

                <input type="text" placeholder="Имя" id="text1" name="name" size="10">

                <input type="text" placeholder="игры" id="text3" name="game" size="10">
                <input type="text" placeholder="выиграш" id="text4" name="win" size="10">

                <input type="text" placeholder="ничья" id="text5" name="draw" size="10">
                <p><input type="text" placeholder="проиграш" id="text6" name="lost" size="10">
                    <input type="text" placeholder="голи забитые" id="text7" name="goalsScored" size="10">
                    <input type="text" placeholder="голы пропущенные" id="text8" name="goalsConceded" size="10">

                    <input type="text" placeholder="разница" id="text9" name="difference" size="10">
                </p>
                <p><input type="text" placeholder="очки" id="text10" name="points" size="10">
                </p>


                <input type="submit" id="but" name=" but" value="Button">


            </form>


            <form method="post" action="/Car">
                <label for="cars">Что то выбрать :</label>
                <select name="cars" id="cars">
                    <option id="volvo" name="volvo" value="volvo">Volvo</option>
                    <option id="saab" name="saab" value="saab">Saab</option>
                    <option id="opel" name="opel" value="opel">Opel</option>
                    <option id="audi" name="audi" value="audi">Audi</option>
                </select>
                <br><br>
                <input type="submit" id="but1" name="but1" value="Submit">
            </form>

            <br><br>

            <form method="post" action="/CommandUpdate">
                <select name="command1" id="command1">
                    <c:forEach var="command" items="${commands}">
                        <option>${command.name}</option>
                    </c:forEach>
                </select>
                <input class="textScorer" type="text" size="2" name="score1">
                <b>:</b>
                <input class="textScorer" type="text" size="2" name="score2">


                <select name="command2" id="command2">
                    <c:forEach var="command" items="${commands}">
                        <option>${command.name}</option>
                    </c:forEach>
                </select>
                <br><br>
                <input type="submit" id="but2" name="but2" value="Submit">

            </form>

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
