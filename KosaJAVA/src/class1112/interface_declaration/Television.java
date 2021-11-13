package class1112.interface_declaration;

public class Television implements RemoteControl{
    private int volume;
    @Override
    public void turnOn() {
        System.out.println("turn on Television");
    }

    @Override
    public void turnOff() {
        System.out.println("turn off Television");
    }

    @Override
    public void setVolume(int volume) {
        this.volume = volume;
    }

    @Override
    public void setMute(boolean mute) {
        if (mute){
            this.volume = 0;
        }
    }
}
