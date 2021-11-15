package class1115;

public class Ex02 extends Ex01{
    public Ex02(int first) { // 생성자
        super(first);
    }

    protected void method2(){
        // 추상 매소드가 있는 클래스는 객체 생성을 할 수 없다.

    }
    // 추상 메소드 꼭 override
    @Override
    void method1() {

    }
}
