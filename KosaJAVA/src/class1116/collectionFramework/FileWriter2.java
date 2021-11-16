package class1116.collectionFramework;

import java.io.FileWriter;
import java.io.IOException;

public class FileWriter2 {
    public static void main(String[] args) throws IOException {
        FileWriter fileWriter = new FileWriter("out2.txt",true);
        for(int i = 0;i<20;i++){
            fileWriter.write(i + "번째입니다.\n");
        }
        fileWriter.close();
    }
}
