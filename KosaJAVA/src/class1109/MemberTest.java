package class1109;

public class MemberTest {
	public static void main(String[] args) {
		Member member1 = new Member();
		Member member2 = new Member("박도영");
		Member member3 = new Member("박도영",26);
		Member member4 = new Member("박도영",26,171.1);

		member1.setName("doyoung");
		member1.setAge(30);
		member1.setHeight(171.1);

		String member2Name = member2.getName();
		System.out.println("member2Name = " + member2Name);

		String m3name = member3.getName();
		double height = member3.getHeight();

		System.out.println("member3.getName() = " + member3.getName());
		System.out.println("member3.getAge() = " + member3.getAge());
		System.out.println("member3.getHeight() = " + member3.getHeight());



	}
}
