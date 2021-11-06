package class1105;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Homework2 {
    public static void main(String[] args) throws Exception{
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        //1
        for (int i = 0; i < 26; i++) {
            char c = (char) (65 + i);
            System.out.print(c);
            char reversec = (char) (90 - i);
            System.out.print(reversec);
        }
        //2
        System.out.println("  1  2  3  4  5  6  7  8  9  ");
        System.out.println("*******************************");
        for (int i = 1; i < 10; i++) {
            System.out.printf("%3d*",i);
            for (int j = 1; j < 10; j++) {
                System.out.printf("%3d",j*i);
            }
            System.out.println();
        }
        double num = 0.0,sum = 0.0;
        sum = (double)(1/2) + (double)(3/4) + (double) (5/6) + (double) 6/7 + (double) 7/8 + (double) 8/9 + (double) 9/10;
        System.out.println("sum = " + sum);

        //weight
        float max = 0;
        float min = Float.MAX_VALUE;
        float weightSum = 0;
        for(int i = 0;i<4;i++){
            System.out.println("몸무게를 입력하시오 :");
            float input = Float.parseFloat(br.readLine());
            weightSum += input;
            max = Math.max(max,input);
            min = Math.min(min,input);
        }
        System.out.println("max = " + max);
        System.out.println("min = " + min);
        System.out.println("weightSum = " + weightSum);
        System.out.println("average" + weightSum/4);

        for(int i = 1;i<10;i++){
            for(int j = 2;j<10;j++){
                System.out.printf(j+"*"+i+"="+"%2d"+" ",i*j);
            }
            System.out.println();
        }

        // 상품
        int[] price = new int[]{0,50000,30000,35000,40000,80000};
        while (true){
            System.out.println("code : ");
            int price_code = Integer.parseInt(br.readLine());
            if (price_code<=0 || price_code>5)
                break;
            System.out.println("cnt : ");
            int price_cnt = Integer.parseInt(br.readLine());
            int price_result = price_cnt * price[price_code];
            System.out.println("price_result = " + price_result);
        }
    }
}
