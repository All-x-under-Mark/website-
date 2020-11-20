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

public class CommandServlet extends HttpServlet {

    private Database database;


    public void init(ServletConfig config) throws ServletException {
        super.init();
        database = Database.getInstance();


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Command> allCommands = database.getCommandList().getAllCommands();
        req.setAttribute("commands", allCommands);


        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/Table.jsp");
        requestDispatcher.forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("text");
        Command command = new Command(name);
        database.getCommandList().addCommand(command);


        resp.sendRedirect("/Table");


    }
}
