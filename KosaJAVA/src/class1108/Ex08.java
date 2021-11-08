package class1108;

public class Ex08 {
    public static void main(String[] args) {
        int[] i1 = {1, 2, 3, 4};
        int[] i2 = {10, 20, 30, 40};
        int[] i3 = {11, 22, 33, 44};
        int[][] i = new int[3][4];
        i[0] = i1;
        i[1] = i2;
        i[2] = i3;
        System.out.println("i[0][0] = " + i[0][0]);

        int[][] ii = new int[3][4];
        ii[0][0] = 1;
        System.out.println("ii = " + ii[0][0]);
    }
}
