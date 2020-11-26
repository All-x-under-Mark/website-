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
        String error = req.getParameter("error");

          req.setAttribute("error", error);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/Table.jsp");
        requestDispatcher.forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        String error = null;
        boolean isValid = false;
        String name = "";
        int game = 0;
        int win = 0;
        int draw = 0;
        int lost = 0;
        int goalsScored = 0;
        int goalsConceded = 0;
        int difference = 0;
        int points = 0;

        try {
            name = req.getParameter("name");
            game = Integer.parseInt(req.getParameter("game"));
            win = Integer.parseInt(req.getParameter("win"));
            draw = Integer.parseInt(req.getParameter("draw"));
            lost = Integer.parseInt(req.getParameter("lost"));
            goalsScored = Integer.parseInt(req.getParameter("goalsScored"));
            goalsConceded = Integer.parseInt(req.getParameter("goalsConceded"));
            difference = Integer.parseInt(req.getParameter("difference"));
            points = Integer.parseInt(req.getParameter("points"));
            isValid = true;

        } catch (NumberFormatException e) {
            error = "ne vse polya zapolneny";


        }


        if (isValid) {
            int n = database.getCommandList().getAllCommands().size();
            n++;
            int num = n++;


            Command command = new Command(num, name, game, win, draw, lost, goalsScored, goalsConceded,
                    difference, points);
            database.getCommandList().addCommand(command);

        }

        if (isValid) {
            resp.sendRedirect("/Table");
        } else {

            resp.sendRedirect("/Table?error=" + error);
        }
    }
}
