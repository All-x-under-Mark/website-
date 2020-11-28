package app.servlets;

import app.entities.Command;
import app.model.Database;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CarServlet extends HttpServlet {

    private Database database;


    public void init(ServletConfig config) throws ServletException {
        super.init();
        database = Database.getInstance();


    }




    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");


        String command1 = req.getParameter("command1");
        String command2 = req.getParameter("command2");
        int score1 = Integer.parseInt(req.getParameter("score1"));
        int score2 = Integer.parseInt(req.getParameter("score2"));


        resp.sendRedirect("/Table");


    }
}
