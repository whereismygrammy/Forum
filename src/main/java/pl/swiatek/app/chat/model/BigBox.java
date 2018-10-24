package pl.swiatek.app.chat.model;


public class BigBox {

    private int health;

    public int getHealth() {
        return health;
    }

    public void setHealth(int health) {
        this.health = health;
    }

    @Override
    public String toString() {
        return "BigBox{" +
                "health=" + health +
                '}';
    }
}
