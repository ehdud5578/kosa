package class1108;

public class Ex10 {
    public static void main(String[] args) {
        int[][] i = new int[4][5];
        int row = 0;
        while (row < i.length) {
            int col = 0;
            while (col < i[row].length) {
                i[row][col] = (int) (Math.random() * 100) + 1;
                col++;
            }
            row++;
        }
        for (int[] rowi : i) {
            for (int coli : rowi) {
                System.out.print(coli + " ");
            }
            System.out.println();
        }
    }
}
