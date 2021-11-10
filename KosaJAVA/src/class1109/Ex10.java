package class1109;

public class Ex10 {
    private int result;
    private int first;
    private int second;

    public Ex10() {
    }

    public Ex10(int first, int second) {
        this.first = first;
        this.second = second;
    }

    public void mul() {
        result = first * second;
    }

    public int add(int first, int second) {
        result = first + second;
        return result;
    }

    public int div(int first,int second){
        result = first/second;
        return result;
    }
    public void div(){
        result = first/second;
    }

    public int sub(int first,int second){
        result = first - second;
        return result;
    }
}
