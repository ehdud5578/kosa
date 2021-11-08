package class1108;

public class Ex11 {
    public static void main(String[] args) {
//        int[] i = {1,2,3,4,5};
//        int sum = 0;
//        for(int j = 0;j<i.length;j++){
//            sum +=i[j];
//        }
//        System.out.println("sum = " + sum);
        int[][] array = {{1,2,3,4},{5,6},{7,8,9,10,11}};
        int sum = 0;
        for(int i = 0;i<array.length;i++){
            for(int j = 0;j<array[i].length;j++){
                sum += array[i][j];
            }
        }
        System.out.println("sum = " + sum);
        sum = 0;
        for(int[] row:array){
            for(int col:row){
                sum +=col;
            }
        }
        System.out.println("sum = " + sum);
        int[][] array2 = new int[3][4];
        sum = 0;
        for(int i = 0;i<3;i++){
            for(int j = 0;j<4;j++){
                array2[i][j] = (int)(Math.random()*100) + 1;
                sum += array2[i][j];
                System.out.print(array2[i][j] +" ");
            }
            System.out.println();
        }
        System.out.println("sum = " + sum);

    }
}
