package class1109;

public class Test1 {
	public static void main(String[] args) {
		Car car = new Car();
		car.setCompany(args[0]);
		car.setModel(args[1]);
		System.out.println(car.getCompany());
		System.out.println(car.getModel());
	}
}
