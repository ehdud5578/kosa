package class1109;

public class LoginMain {
    public static void main(String[] args) {
        LoginMember loginMember = new LoginMember("myid","mypw");
        int login = loginMember.login(args[0], args[1]);
        if (login == 1){
            System.out.println("login!!");
            loginMember.logout(args[0]);
        }else if( login == 0){
            System.out.println("password is wrong");
        }else{
            System.out.println("id is not exist");
        }
    }
}
