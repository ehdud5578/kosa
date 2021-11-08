package class1108;

public class Ex01 {
    public static void main(String[] args) {
        // 1
        for (int i = 1; i <= 10; i++) {
            System.out.println(i);
        }

        //2
        int y = 1;
        for (int i = 1; i <= 10; i++) {
            System.out.println("y = " + y);
            y++;
        }

        // 3
        for (int i = 1; i <= 10; i++) {
            int y1 = 0;
            y1++;
            System.out.println("y1 = " + y1);
        }

        //4
        for (int i = 11; i < 20; i++) {
            System.out.println("i = " + i);
        }

        //5
        for (int i = 10; i <= 19; i++) {
            if (i % 2 == 0) continue;
            System.out.println("i = " + i);
        }

        //6
        int y2 = 1;
        for (int i = 10; i < 109; i++) {
            System.out.println("y2 = " + y2);
            y2++;
        }

        // 7
        for (int i = 12; i <= 31; i += 5) {
            System.out.println("개발자는 들여쓰기를 잘해야합니다.");
        }

        //8
        int y3 = 1;
        for (int i = 1; i < 10; i++) {
            System.out.println("7 * " + y3 + "=" +  7 * y3);
            y3++;
        }

        // 9
        // Math.rand() 함수를 이요해서1 ~ 45 중 하나를만들어 그 값만큼 반복
        int num = (int)(Math.random() * 45) + 1;
        for(int i = 0;i<num;i++){
            System.out.println("i = " + i);
        }
        for (int i = 1;i<11;i++){
            int num1 = (int)(Math.random() * 45) + 1;
            if(num1 % 2 == 0){
                System.out.println("num1 * 3 = " + num1 * 3);
            }else i--;
        }
    }
}
