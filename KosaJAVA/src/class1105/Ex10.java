package class1105;

public class Ex10 {
    public static void main(String[] args) {
        int sum = 0;
        for(int i = 0;i<=100;i++){
            if( i % 2 != 0) continue;
            sum +=i;
        }
        System.out.println("sum = " + sum);
        sum = 0;
        int i = 1;
        while(i<=100){
            i++;
            if(i%2!=0)
                continue;
            sum+=i;

        }
        System.out.println("sum = " + sum);
        sum = 0;
        i = 1;
        while(true){
            i++;
            if(i%2 != 0)
                continue;
            sum+=i;
            if(i>=100) break;
        }
        System.out.println("sum = " + sum);
    }
}
