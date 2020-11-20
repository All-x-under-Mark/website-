package app.model;

public class Database {
    private static Database instance = new Database();



    private CommandList commandList;

    public static Database getInstance() {
        return instance;
    }

    private Database() {
        commandList = new CommandList();
    }

    public CommandList getCommandList() {
        return commandList;
    }

    public void setCommandList(CommandList commandList) {
        this.commandList = commandList;
    }



}
