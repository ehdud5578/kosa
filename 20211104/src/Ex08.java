
public class Ex08 {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        int i1 = 1;
        System.out.println(-i1);
        i1 = i1 + 1;
        System.out.println("i1= " + i1);
        ++i1;
        System.out.println("i1= " + i1);
        i1++;
        System.out.println("i1= " + i1);
        int y = ++i1;
        System.out.println("y = " + y);
        int i2 = 10;
        i2 = i2 - 1;
        System.out.println("i2 = " + i2);
        i2 = i2 - 1;
        System.out.println("i2 = " + i2);
        --i2;
        System.out.println("i2 = " + i2);
        --i2;
        System.out.println("i2 = " + i2);
        y = --i2;
        System.out.println("i2 = " + i2);
        System.out.println(i2);
        i1 = 10;
        System.out.println("i1 = " + ++i1);
        System.out.println("i1 = " + i1);

        i1 = 10;
        System.out.println("i1 = " + i1++);
        System.out.println("i1 = " + i1);

        System.out.println("i1 = " + i1);
        // 선행 연산자 후행 연산자.

        int i3 = 10;
        int j = 20;
        int z = ++i3 + j++;
        System.out.println("z = " + z);
        System.out.println("i3 = " + i3);
        System.out.println("j = " + j);
    }
}
