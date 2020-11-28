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

        //добавляем командам по сыграной игре
        int game1 = command1.getGame() + 1;
        command1.setGame(game1);
        int game2 = command2.getGame() + 1;
        command2.setGame(game2);


        // считаем победы ничьи поражения и очки

        //при выиграше первой команды добавляем ей победу и три очка
        if (score1 > score2) {
            //добавляем первой команде победу
            int win = command1.getWin() + 1;
            command1.setWin(win);
            //добавляем первой команде 3 очка
            int points = command1.getPoints() +3;
            command1.setPoints(points);

        // добавляем поражение проигравшей второй команде
            int lost = command2.getLost() + 1;
            command2.setLost(lost);


        //при выиграше второй команды добавляем ей победу и три очка
        } else if (score1 < score2) {
            //добавляем второй команде победу
            int win = command2.getWin() + 1;
            command2.setWin(win);
            //добавляем второй команде 3 очка
            int points = command2.getPoints() +3;
            command2.setPoints(points);

        // добавляем проиграш первой команде
            int lost = command1.getLost() + 1;
            command1.setLost(lost);

        //при ничейном результате добавляем командам по ничье и по одному очку
        } else if (score1 == score2) {
            //добавляем первой команде ничью
            int draw1 = command1.getDraw() + 1;
            command1.setDraw(draw1);
            //добавляем первой команде 1 очко
            int points1 = command1.getPoints() +1;
            command1.setPoints(points1);

            //добавляем второй команде ничью
            int draw2 = command2.getDraw() + 1;
            command2.setDraw(draw2);
            //добавляем второй команде 1 очко
            int points2 = command2.getPoints() +1;
            command2.setPoints(points2);

        }
         //считаем мячи для первой команды
        //считаем забитые мячи
        int goalsScored1 = command1.getGoalsScored();
        command1.setGoalsScored(goalsScored1 + score1);
        //считаем пропущеные мячи
        int goalsConceded1 = command1.getGoalsConceded();
        command1.setGoalsConceded(goalsConceded1 + score2);
        //считаем разницу
        int difference1 = (goalsScored1 + score1) - (goalsConceded1+score2);
        command1.setDifference(difference1);

        //считаем мячи для второй команды
        //считаем забитые мячи
        int goalsScored2 = command2.getGoalsScored();
        command2.setGoalsScored(goalsScored2 + score2);
        //считаем пропущеные мячи
        int goalsConceded2 = command2.getGoalsConceded();
        command2.setGoalsConceded(goalsConceded2 + score1);
        //считаем разницу
        int difference2 = (goalsScored2 + score2) - (goalsConceded2 + score1);
        command2.setGoalsConceded(difference2);


    }
}
