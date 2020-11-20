package app.model;

import app.entities.Comand;


import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

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
