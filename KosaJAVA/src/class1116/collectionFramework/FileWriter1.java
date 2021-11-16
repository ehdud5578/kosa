package class1116.collectionFramework;

import java.io.FileWriter;
import java.io.IOException;

public class FileWriter1 {
    public static void main(String[] args) throws IOException {
        FileWriter fileWriter = new FileWriter("out.txt");
        fileWriter.write("asdf");
        fileWriter.write("dasfsafadfa");
        for(int i = 0;i<10;i++){
            fileWriter.write(i + " 번째입니다\n");
        }
        fileWriter.close();
    }
}
