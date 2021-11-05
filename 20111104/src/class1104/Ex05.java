package class1104;

public class Ex05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 형변환
		// 자동형변환 : 작은 자료형이 큰 자료형으로 변환
		// 강제형변환 : 큰 자료형을 작은 자료형으로 변환 하는 것.
		double d1 = 175.5;
		float f1 = 174.5f;
		int i1 = (int)f1;
		System.out.println(f1);
		i1 = (int)d1;
		System.out.println(i1);
		int i2 = (int) (Math.pow(2, 32));
		System.out.println(i2);
		short sh1 = (short)i2;
		System.out.println(sh1);
		}

}
