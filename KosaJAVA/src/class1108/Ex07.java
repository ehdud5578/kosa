package class1108;

public class Ex07 {
    public static void main(String[] args) {
        int result = 0;
        if(args[0].equals("asdf")){
            System.out.println("help");
        }else if(args[0].equals("+")){
            result = Integer.parseInt(args[1]) + Integer.parseInt(args[2]);
            System.out.println("result = " + result);
        }else if (args[0].equals("-")){
            result = Integer.parseInt(args[1]) - Integer.parseInt(args[2]);
            System.out.println("result = " + result);
        }
    }
}
