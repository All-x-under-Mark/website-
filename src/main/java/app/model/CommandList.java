package app.model;

import app.entities.Command;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class CommandList implements Serializable {

    private List<Command> commandList = new ArrayList();


    public CommandList() {


        commandList.add(new Command(1, "Славутич Драбів", 14, 12, 2,
                0, 70, 9, 61, 38));
        commandList.add(new Command(2, "Лідер Драб-Барят", 14, 10, 1,
                3, 44, 18, 26, 31));
        commandList.add(new Command(3, "ФК Білоусівка", 14, 6, 5,
                3, 33, 22, 11, 23));
        commandList.add(new Command(4, "Штурм Перервинці", 14, 6, 2,
                6, 35, 32, 3, 20));
        commandList.add(new Command(5, "ФК Кононівка", 14, 6, 1,
                7, 27, 38, -11, 19));
        commandList.add(new Command(6, "Нива Ковалівка", 14, 4, 3,
                7, 31, 35, -4, 15));
        commandList.add(new Command(7, "Вимпел Степанівка", 14, 3, 4,
                7, 19, 32, -13, 13));
        commandList.add(new Command(7, "Сокол Свічківка", 14, 0, 0,
                14, 3, 75, -72, 0));


    }

   public List<Command> getAllCommands() {
        return commandList;
   }

   public void addCommand(Command command) {
        commandList.add(command);
   }



    public Command getCommand(int index) {
        return commandList.get(index);
    }

}
