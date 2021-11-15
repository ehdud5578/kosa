package class1115.casting.runtime_exception;

public class ArrayException {
    public static void main(String[] args) {
        int[] j = {1,2,3,4};

        try {
            for(int i = 0;i<=4;i++){
                System.out.println(j[i]);
            }
        }catch (ArrayIndexOutOfBoundsException e){
            System.out.println(e);
        }
    }
}
