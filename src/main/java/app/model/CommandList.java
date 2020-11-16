package app.model;

import app.entities.Comand;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class CommandList implements Serializable {

    public List<Comand> comaList = new ArrayList();
    Comand comand = new Comand();


    public CommandList() {


        comaList.add(new Comand(1, "Славутич Драбів", 14, 12, 2,
                0, 70, 9, 61, 38));
        comaList.add(new Comand(2, "Лідер Драб-Барят", 14, 10, 1,
                3, 44, 18, 26, 31));
        comaList.add(new Comand(3, "ФК Білоусівка", 14, 6, 5,
                3, 33, 22, 11, 23));
        comaList.add(new Comand(4, "Штурм Перервинці", 14, 6, 2,
                6, 35, 32, 3, 20));
        comaList.add(new Comand(5, "ФК Кононівка", 14, 6, 1,
                7, 27, 38, -11, 19));
        comaList.add(new Comand(6, "Нива Ковалівка", 14, 4, 3,
                7, 31, 35, -4, 15));
        comaList.add(new Comand(7, "Вимпел Степанівка", 14, 3, 4,
                7, 19, 32, -13, 13));
        comaList.add(new Comand(7, "Сокол Свічківка", 14, 0, 0,
                14, 3, 75, -72, 0));


    }




    public void setComaList(List<Comand> comaList) {
        this.comaList = comaList;
    }

    public List<Comand> getComaList() {
        return comaList;
    }


}
