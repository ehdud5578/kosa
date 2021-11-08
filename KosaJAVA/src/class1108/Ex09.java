package class1108;

public class Ex09 {
    public static void main(String[] args) {
        int[] i0 = {1, 2, 3, 4};
        int[] i1 = {5, 6, 7};
        int[] i2 = {8, 9, 10, 11, 12};

        int[][] i = new int[3][];
        i[0] = i0;
        i[1] = i1;
        i[2] = i2;
        for(int a = 0;a<3;a++){
            for(int k = 0;k<i[a].length;k++){
                System.out.print(i[a][k] + " ");
            }
            System.out.println();
        }
        int[][] array = new int[3][];
        array[0] = new int[4];
        array[1] = new int[3];
        array[2] = new int[5];
        int[][] iii = {{1,2,3,4},{5,6,7},{8,9,10,11,12}};
    }
}
