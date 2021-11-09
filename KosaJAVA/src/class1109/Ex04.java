package class1109;

public class Ex04 {
    int age;
    double height;
    boolean gender;
    String name;

    public Ex04(int age, double height, boolean gender, String name) {
        this.age = age;
        this.height = height;
        this.gender = gender;
        this.name = name;
    }

    public Ex04() {
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

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
