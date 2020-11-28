package app.servlets;

import app.model.CommandCRUD;
import app.model.Database;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandUpdateServlet extends HttpServlet {
    private CommandCRUD commandCRUD;
    private final Database database = Database.getInstance();

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        commandCRUD = CommandCRUD.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String error = null;
        boolean isValid = false;
        String command1 = "";
        String command2 = "";
        int score1 = 0;
        int score2 = 0;
        try {

            command1 = req.getParameter("command1");
            command2 = req.getParameter("command2");
            score1 = Integer.parseInt(req.getParameter("score1"));
            score2 = Integer.parseInt(req.getParameter("score2"));
            isValid = true;
        } catch (NumberFormatException e) {
            error = "ne vse polya zapolneny";

        }
        if (isValid) {
            commandCRUD.matchUpdate(command1, score1, command2, score2);
            database.getCommandList().sortedCommandList();

        }
        if (isValid) {
            resp.sendRedirect("/Table");
        } else {

            resp.sendRedirect("/Table?error=" + error);
        }


    }
}
