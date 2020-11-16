<%--
  Created by IntelliJ IDEA.
  User: Александр
  Date: 23.03.2020
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" href="/style/style.css">
    <title>Команда</title>
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
                    <li class="current"><span>Команда</span></li>
                    <li><a href="/views/Table.jsp">Таблиця</a> <br></li>
                    <li><a href="/views/History.jsp">Історія</a> <br></li>
                    <li><a href="/views/PhotoGallery.jsp">Фотогалерея</a> <br></li>
                    <li><a href="/views/Achievements.jsp">Досягнення</a></li>


                </ul>


            </aside>

            <article>

                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>Імя</th>
                        <th>Прізвище</th>
                        <th>Рік народження</th>
                        <th>Позиція</th>
                        <th>Проживає</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${player.playersList[0].name}</td>
                        <td>${player.playersList[0].surname}</td>
                        <td>${player.playersList[0].age}</td>
                        <td>${player.playersList[0].position}</td>
                        <td>${player.playersList[0].command}</td>
                    </tr>
                    <tr>
                        <td>${player.playersList[1].name}</td>
                        <td>${player.playersList[1].surname}</td>
                        <td>${player.playersList[1].age}</td>
                        <td>${player.playersList[1].position}</td>
                        <td>${player.playersList[1].command}</td>

                    </tr>
                    <tr>
                        <td>${player.playersList[2].name}</td>
                        <td>${player.playersList[2].surname}</td>
                        <td>${player.playersList[2].age}</td>
                        <td>${player.playersList[2].position}</td>
                        <td>${player.playersList[2].command}</td>
                    </tr>
                    <td>${player.playersList[3].name}</td>
                    <td>${player.playersList[3].surname}</td>
                    <td>${player.playersList[3].age}</td>
                    <td>${player.playersList[3].position}</td>
                    <td>${player.playersList[3].command}</td>
                    <tr>
                        <td>${player.playersList[4].name}</td>
                        <td>${player.playersList[4].surname}</td>
                        <td>${player.playersList[4].age}</td>
                        <td>${player.playersList[4].position}</td>
                        <td>${player.playersList[4].command}</td>
                    </tr>
                    <tr>
                        <td>${player.playersList[5].name}</td>
                        <td>${player.playersList[5].surname}</td>
                        <td>${player.playersList[5].age}</td>
                        <td>${player.playersList[5].position}</td>
                        <td>${player.playersList[5].command}</td>
                    </tr>
                    <tr>
                        <td>${player.playersList[6].name}</td>
                        <td>${player.playersList[6].surname}</td>
                        <td>${player.playersList[6].age}</td>
                        <td>${player.playersList[6].position}</td>
                        <td>${player.playersList[6].command}</td>
                    </tr>
                    <tr>
                        <td>${player.playersList[7].name}</td>
                        <td>${player.playersList[7].surname}</td>
                        <td>${player.playersList[7].age}</td>
                        <td>${player.playersList[7].position}</td>
                        <td>${player.playersList[7].command}</td>
                    </tr>
                    <tr>
                        <td>${player.playersList[8].name}</td>
                        <td>${player.playersList[8].surname}</td>
                        <td>${player.playersList[8].age}</td>
                        <td>${player.playersList[8].position}</td>
                        <td>${player.playersList[8].command}</td>
                    </tr>
                    <tr>
                        <td>${player.playersList[9].name}</td>
                        <td>${player.playersList[9].surname}</td>
                        <td>${player.playersList[9].age}</td>
                        <td>${player.playersList[9].position}</td>
                        <td>${player.playersList[9].command}</td>
                    </tr>

                    <tr>
                        <td>${player.playersList[10].name}</td>
                        <td>${player.playersList[10].surname}</td>
                        <td>${player.playersList[10].age}</td>
                        <td>${player.playersList[10].position}</td>
                        <td>${player.playersList[10].command}</td>
                    </tr>


                    </tbody>
                </table>

            </article>
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



</body>
</html>
