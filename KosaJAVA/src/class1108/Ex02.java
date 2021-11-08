package class1108;

public class Ex02 {
    public static void main(String[] args) {
        /*
        * int score1 = 1;
        * int score2 = 2;
        * int score3 = 3;
        * ...
        *
        * int score100 = 100;
        * 배열로 간단히 표현가능.
        * int[] score = {1,2,3, ... 100};
        * */
        int[] score = {1,2,3,4,5,6,7,8,9,10};
        for(int i = 0;i<4;i++){
            System.out.println("score = " + score[i]);
        }
        int sum = 0;
        for(int i= 0;i< score.length;i++){
            sum += score[i];
        }
        System.out.println("sum = " + sum);

    }
}
