
public class Ex06 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		short i1 = 32767;
		short i2 = 32767;
		int sh3 = i1 + i2; // 연산시에 short 는 자동으로 int 형으로 변환 됨.
		short sh4 = 10;
		short sh5 = 20;
		int sh6 = sh4 + sh5;
		System.out.println();
		String binary1 = Integer.toBinaryString(120);
		System.out.println(binary1);
		String bi1 = "0101010101010101";
		String bi2 = "0101010101010101";
		String bi3 = "1010101010101010";
		short shex = (short) Integer.parseInt(bi2,2);
		int next = shex + shex;
		short shnext = (short) next;
		System.out.println(shex);              
		System.out.println(next);
		System.out.println(shnext);
		System.out.println(bi3);
		String bi123 = Integer.toBinaryString(shex);
		String bi1234 = Integer.toBinaryString(next);
		String sshnext = Integer.toBinaryString(shnext);
		System.out.println(bi123);
		System.out.println(bi1234);
		System.out.println(sshnext);
}

}
