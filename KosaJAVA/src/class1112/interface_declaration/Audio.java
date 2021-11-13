package class1112.interface_declaration;

public class Audio implements RemoteControl{
    private int volume;
    @Override
    public void turnOn() {
        System.out.println("turn on audio");
    }

    @Override
    public void turnOff() {
        System.out.println("turn off aodio");
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
