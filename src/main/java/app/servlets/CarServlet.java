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


        String cars = req.getParameter("cars");
        String items = req.getParameter("item");


        resp.sendRedirect("/Table");


    }
}
