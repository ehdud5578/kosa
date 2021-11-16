package class1116.collectionFramework;

import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;

public class FileWrite {
    public static void main(String[] args) throws Exception{
        FileOutputStream fileOutputStream = new FileOutputStream("/out.txt");
        fileOutputStream.write("asdf".getBytes(StandardCharsets.UTF_8));
        for(int i = 0;i<10;i++){
            String data = i +"번째 입니다.";
            fileOutputStream.write(data.getBytes(StandardCharsets.UTF_8));
        }
        fileOutputStream.close();
    }
}
