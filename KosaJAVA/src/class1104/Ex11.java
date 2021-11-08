package class1104;

public class Ex11 {
    public static void main(String[] args) {
        //
        int rand = (int)(Math.random() * 6) + 1;
        if(rand == 1){
            System.out.println("1");
        }else if(rand == 2){
            System.out.println("2");
        }else if (rand == 3){
            System.out.println("3");
        }else if (rand == 4 ){
            System.out.println("4");
        }else if( rand == 5){
            System.out.println("5");
        }else{
            System.out.println("6");
        }
        int score = 75;
        if (score >=90){
            if(score >=95){
                System.out.println("A+");
            }else{
                System.out.println("A");
            }
        }else if(score >=80){
            if(score >=85){
                System.out.println("B+");
            }else{
                System.out.println("B");
            }
        }else if(score >=70){
            if(score >=75){
                System.out.println("C+");
            }else{
                System.out.println("C");
            }
        }else if(score >=60){
            if(score >=65){
                System.out.println("D+");
            }else{
                System.out.println("D");
            }
        }else{
            System.out.println("F");
        }
    }
}
