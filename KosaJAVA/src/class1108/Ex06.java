package class1108;

public class Ex06 {
    public static void main(String[] args) {
        int start = Integer.parseInt(args[0]);
        int end = Integer.parseInt(args[1]);
        for(int i = start;i<=end;i++){
            for(int j = 1;j<10;j++){
                System.out.println(i + "*" + j + " = " + i*j);
            }
        }
    }
}
