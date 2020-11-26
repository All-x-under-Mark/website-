package app.model;

import app.entities.Command;

public class CommandCRUD {
    private static final CommandCRUD instance = new CommandCRUD();

    public static CommandCRUD getInstance() {
        return instance;

    }

    private CommandCRUD() {
    }

    private final Database database = Database.getInstance();

    public void matchUpdate(String commandName1, int score1, String commandName2, int score2) {
        Command command1 = database.getCommandList().getCommand(commandName1);
        Command command2 = database.getCommandList().getCommand(commandName2);
        command2.setName("ывап");

    }
}
