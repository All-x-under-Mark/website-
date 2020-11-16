package app.servlets;

import app.entities.Comand;
import app.model.CommandList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandServlet extends HttpServlet {

    private CommandList sList;
    Comand comand;


    public void init(ServletConfig config) throws ServletException {
        super.init();

        sList = new CommandList();


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("som", sList);


        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/Table.jsp");
        requestDispatcher.forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("text");
        comand = sList.comaList.get(1);
        comand.setName(name);

        sList.comaList.set(1, comand);
        req.setAttribute("userName", name);
        doGet(req, resp);

    }
}