package class1112.interface_declaration;

public class RemoteControlExample {
    public static void main(String[] args) {
        Audio audio = new Audio();
        RemoteControl remoteControl = new Audio();
        remoteControl.turnOn();
        remoteControl.turnOff();

        remoteControl = new Television();
        remoteControl.turnOn();
        remoteControl.turnOff();
    }
}
