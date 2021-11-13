package class1111;

public class Ex03Test {
    public static void main(String[] args) {
        System.out.println("Ex03.name = " + Ex03.name);
        Ex03.name = "asdf";
        System.out.println("Ex03.name = " + Ex03.name);
        Ex03 ex03 = new Ex03(20,30);
        Ex03 ex031 = new Ex03(50,20);
        System.out.println("ex03.getVal1() = " + ex03.getVal1());
        System.out.println("ex031.getVal1() = " + ex031.getVal1());
        System.out.println("ex03.first = " + Ex03.first);
        System.out.println("ex03.second = " + Ex03.second);
        System.out.println("ex031.first = " + Ex03.first);
        System.out.println("ex031.second = " + Ex03.second);
    }
}
