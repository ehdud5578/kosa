package class1112.interface_declaration;

public interface RemoteControl {
    int MAX_VOLUME = 10;
    int MIN_VOLUME = 0;

    void turnOn();
    void turnOff();
    void setVolume(int volume);

    public default void setMute(boolean mute){
        if(mute){
            System.out.println("mute all");
        }else{
            System.out.println("not mute");
        }
    }
}
