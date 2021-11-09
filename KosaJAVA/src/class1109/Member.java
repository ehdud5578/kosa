package class1109;

public class Member {
	private String name;
	private int age;
	private double height;

	public Member() {
	}

	public Member(String name) {
		this.name = name;
	}

	public Member(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public Member(String name, int age, double height) {
		this.name = name;
		this.age = age;
		this.height = height;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}
}
