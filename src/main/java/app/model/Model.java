package app.model;

import app.entities.Comand;


import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Model {
    private static Model instance = new Model();
    private List<CommandList> model;

    public static Model getInstance() {
        return instance;
    }

    private Model () {
        model = new ArrayList<>();
    }

    public void add (CommandList user){
        model.add(user);

    }

    public List<List<Comand>> list() {
        return model.stream().map(CommandList::getComaList).collect(Collectors.toList());

    }

}
