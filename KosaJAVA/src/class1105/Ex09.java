package class1105;

public class Ex09 {
    public static void main(String[] args) {
        for(int i = 0;i<10;i++){
            if(i %2 == 0)
                continue;
            System.out.println("5 * " + i + "= " + 5 * i);
        }
        int i = 0;
        while(i<=10){
            i++;
            if(i%2==0)
                continue;
            System.out.println("5 * " + i + "= " + 5 * i);
        }
        i = 0;
        while(true){
            i++;
            if (i==10)
                break;
            if(i%2==0)
                continue;
            System.out.println("5 * " + i + "= " + 5 * i);

        }

    }
}
