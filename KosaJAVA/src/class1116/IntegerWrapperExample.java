package class1116;

public class IntegerWrapperExample {
    public static void main(String[] args) {
        int i = 10;
        String s = "10";
        Integer i1 = 1;
        Integer i2 = Integer.valueOf("10");
        Integer i3 = Integer.parseInt("10");
        if(i2 == i3)
            System.out.println("i2 == i3");
        if(i2.equals(i3))
            System.out.println("i2.equals i3");
        System.out.println("i2 = " + i2);
        System.out.println("i3 = " + i3);
        Integer i4 = 300;
        Integer i5 = 300;
        System.out.println("i4.equals(i5) = " + i4.equals(i5));
    }
}
