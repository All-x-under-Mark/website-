package app.servlets;

import app.model.CommandCRUD;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandUpdateServlet extends HttpServlet {
    private CommandCRUD commandCRUD;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        commandCRUD = CommandCRUD.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");


        String command1 = req.getParameter("command1");
        String command2 = req.getParameter("command2");
        commandCRUD.matchUpdate(command1, 0, command2, 0);

        resp.sendRedirect("/Table");


    }
}
