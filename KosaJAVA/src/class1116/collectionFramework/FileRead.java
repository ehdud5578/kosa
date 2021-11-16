package class1116.collectionFramework;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class FileRead {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new FileReader("out.txt"));
        while (true){
            String line = br.readLine();
            if(line == null) break;
            System.out.println(line);
        }
    }
}
