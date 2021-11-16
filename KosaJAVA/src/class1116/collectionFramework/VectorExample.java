package class1116.collectionFramework;

import java.util.List;
import java.util.Vector;

public class VectorExample {
    public static void main(String[] args) {
        List<Board> list = new Vector<>();
        list.add(new Board("subject1", "title1", "writer1"));
        list.add(new Board("subject2", "title2", "writer2"));
        list.add(new Board("subject3", "title3", "writer3"));
        list.add(new Board("subject4", "title4", "writer4"));
        for (Board board : list) {
            System.out.println("list.get(i) = " + board);
        }
    }
}
