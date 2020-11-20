package app.servlets;

import app.entities.Comand;
import app.model.Database;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandServlet extends HttpServlet {

    private Database database;


    public void init(ServletConfig config) throws ServletException {
        super.init();
        database = Database.getInstance();


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Comand comand = database.getCommandList().getCommand(1);
        req.setAttribute("com", comand);


        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/Table.jsp");
        requestDispatcher.forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("text");
        Comand comand = database.getCommandList().getCommand(1);
        comand.setName(name);


        resp.sendRedirect("/Table");

    }
}
