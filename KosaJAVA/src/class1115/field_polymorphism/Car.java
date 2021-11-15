package class1115.field_polymorphism;

public class Car {
    Tire frontLeftTire = new KumhoTire();
    Tire frontRightTire = new KumhoTire();
    Tire backLeftTire = new HankookTire();
    Tire backRightTire = new HankookTire();

    void run(){
        frontLeftTire.roll();
        frontRightTire.roll();
        backLeftTire.roll();
        backRightTire.roll();
    }


}
