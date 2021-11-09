package class1109;

public class Ex07 {
    private int first;
    private int second;
    private int result;
    public void add(){
        result = first + second;
    }
    public Ex07() {
    }

    public Ex07(int first, int second) {
        this.first = first;
        this.second = second;
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
