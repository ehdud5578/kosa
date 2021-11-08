package class1108;

public class Ex03 {
    public static void main(String[] args) {
        // 배열 선언법
        // [] 연산자 : 배열로 선언하기 위한 연산자.

        int j = 10 + 15;
        int i [] = {10,20,30};
        int i1 [];
        i1 = new int[]{10,20,30};
        int i2 [] = new int[3];
        int i3[];
        i3 = new int[3];
        i3[0] = 19;
        i3[1] = 20;
        i3[2] = 30;
        /**
         * int i4[];
         * i4 = {10,20,30};
         * 사용 불가능
         */
        int i5[];
        i5 = new int[3];
        System.out.println(i5[0]);
    }
}
