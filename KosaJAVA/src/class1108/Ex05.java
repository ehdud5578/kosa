package class1108;

public class Ex05 {
    public static void main(String[] args) {
        // 배열의 크기 가져오기
        int i []= new int[]{1,2,3,4,5};
        System.out.println("i.length = " + i.length);
        int sum = 0;
        for(int j = 0;j<i.length;j++){
            sum +=i[j];
        }
        System.out.println("sum = " + sum);
    }
}
