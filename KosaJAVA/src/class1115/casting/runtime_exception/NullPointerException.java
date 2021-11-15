package class1115.casting.runtime_exception;

public class NullPointerException {
    public static void main(String[] args) {
        try {
            Class class1 = Class.forName("java.util.List");
            System.out.println("class exist");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}

class Point {
    int y;
    int x;

    public void point() {
        System.out.println("print");
    }

    public Point() {
    }

    public Point(int y, int x) {
        this.y = y;
        this.x = x;
    }
}