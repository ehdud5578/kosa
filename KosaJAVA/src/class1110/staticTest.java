package class1110;

public class staticTest {
    public static void main(String[] args) {
        Account ac1 = new Account();
        Account ac2 = new Account();
        ac1.val = 10;
        System.out.println(ac2.val);
    }
}
