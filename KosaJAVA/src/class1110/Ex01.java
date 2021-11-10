package class1110;

public class Ex01 {
    private int first;
    private int second;
    private int result;
    
    public int add(){
        return first + second;
    }
    public int add(int num1, int num2){
        return num1 + num2;
    }
    public void add(int num1){
        System.out.println("num1 + first = " + num1 + first);
    }

    public Ex01() {
    }

    public Ex01(int first) {
        this.first = first;
        this.second = 20;
    }

    public Ex01(int first, int second) {
        this.first = first;
        this.second = second;
        result = first + second;
    }

    public int getFirst() {
        return first;
    }

    public void setFirst(int first) {
        this.first = first;
    }

    public int getSecond() {
        return second;
    }

    public void setSecond(int second) {
        this.second = second;
    }

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }
}
