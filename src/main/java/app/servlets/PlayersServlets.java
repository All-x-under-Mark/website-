package app.servlets;


import app.entities.Players;
import app.model.PlayersList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class PlayersServlets extends HttpServlet {

 private  PlayersList playersList ;

    public void init(ServletConfig config) throws ServletException {
        super.init();

        playersList = new PlayersList();




    }

    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

        req.setAttribute("player", playersList);



        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/Command.jsp");
        requestDispatcher.forward(req, resp);
    }




}

