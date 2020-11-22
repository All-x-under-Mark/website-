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
        String name = req.getParameter("name");

        //  int num = Integer.parseInt(req.getParameter("num"));
        int n = database.getCommandList().getAllCommands().size();
        n++;
        int num = n++;

        int game = Integer.parseInt(req.getParameter("game"));
        int win = Integer.parseInt(req.getParameter("win"));
        int draw = Integer.parseInt(req.getParameter("draw"));
        int lost = Integer.parseInt(req.getParameter("lost"));
        int goalsScored = Integer.parseInt(req.getParameter("goalsScored"));
        int goalsConceded = Integer.parseInt(req.getParameter("goalsConceded"));
        int difference = Integer.parseInt(req.getParameter("difference"));
        int points = Integer.parseInt(req.getParameter("points"));

        Command command = new Command(num, name, game, win, draw, lost, goalsScored, goalsConceded,
                difference, points);
        database.getCommandList().addCommand(command);


        resp.sendRedirect("/Table");


    }
}
