package class1105;

public class Homework1 {
    public static void main(String[] args) {
        // 1
        for (int i = 1; i <= 10; i++) {
            System.out.println("i = " + i);
        }
        System.out.println();

        // 2
        int y = 0;
        for (int i = 1; i <= 10; i++) {
            System.out.println("y = " + y++);
        }
        System.out.println("y = " + y);
        System.out.println();

        // 3
        int y1 = 0;
        for (int i = 0; i < 5; i++) {
            if (i == 1)
                y1 = y1 + 1;
        }
        System.out.println("y1 = " + y1);

        // 4
        for (int i = 0; i < 10; i++) {
            System.out.println("이쓰앰님을 전적으로 믿으셔야합니다.");
        }

        // 5
        for (int i = 10; i < 20; i++) {
            if (i % 2 == 0)
                System.out.println("i = " + i);
        }

        //6
        for (int i = 10; i < 20; i++) {
            if (i % 2 != 0)
                System.out.println("i = " + i);
        }

        //7
        for (int i = 10; i < 36; i += 4) {
            System.out.println("i = " + i);
        }

        //8
        for (int i = 12; i < 12 + 21; i++) {
            if (i % 5 == 0)
                System.out.println("개발을 잘하려면 자바를 들이셔야합니다");
        }

        // 9
        for (int i = 1; i < 10; i++) {
            System.out.println("4 * " + i + " = " + 4 * i);
        }

        // 10
        int result10 = 1;
        for (int i = 1; i < 10; i++) {
            if(i % 2 !=0)
                result10 *=i;
        }
        System.out.println("result10 = " + result10);
        //11
        //반복변수?
        //12
        //10번과 같음

        //13
        int sum = 0;

    }
}
