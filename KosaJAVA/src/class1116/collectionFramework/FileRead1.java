package class1116.collectionFramework;

import java.io.FileInputStream;
import java.io.IOException;

public class FileRead1 {
    public static void main(String[] args) throws IOException {
        byte[] b = new byte[1024];
        FileInputStream fileInputStream = new FileInputStream("out.txt");
        fileInputStream.read(b);
        System.out.println("new String(b) = " + new String(b));
        fileInputStream.close();
    }
}
