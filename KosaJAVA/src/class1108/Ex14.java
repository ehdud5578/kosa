package class1108;

public class Ex14 {
    public static void main(String[] args) {
        int[] e = {1, 2, 3, 4, 5, 6};
        for (int i = 0; i < e.length; i++) {
            System.out.print("e[i] = " + e[i] + " ");
        }
        System.out.println();

        String[] str = {"aaa", "bbbb", "cccc", "dddd"};
        for (String a : str) {
            System.out.print("a = " + a + " ");
        }
        System.out.println();
        double[] d = {1.1, 2.2, 3.3, 4.4};
        for (double thisd : d) {
            System.out.print("thisd = " + thisd + " ");
        }
        System.out.println();
        WEEK[] days = WEEK.values();
        for (WEEK day : days) {
            System.out.print("day = " + day + " ");
        }
        System.out.println();
        String[][] locations = {{"aaa", "aaa", "aa"}, {"a", "b", "c"}, {"qq", "ww", "ee"}};
        for (String[] location : locations) {
            for (String loc : location) {
                System.out.print("loc = " + loc + " ");
            }
            System.out.println();
        }
        System.out.println();
        int[][] val = {{1, 2, 3,}, {4, 5}, {6, 7, 8, 9}};
        for (int[] valc : val) {
            for (int valss:valc){
                System.out.print(valss + " ");
            }
            System.out.println();
        }
    }
}
