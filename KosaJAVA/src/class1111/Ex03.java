package class1111;

public class Ex03 {
    static String name;
    static final int first;
    static final int second;

    static {
        name = "박도영";
        first = 10;
        second = 5;
    }

    final int val1;
    final int val2;

    public Ex03(int val1, int val2) {
        this.val1 = val1;
        this.val2 = val2;
    }

    public static String getName() {
        return name;
    }

    public int getVal1() {
        return val1;
    }

    public int getVal2() {
        return val2;
    }

    public static void setName(String name) {
        Ex03.name = name;
    }
}
