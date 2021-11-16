package class1116.StringClass;

import java.util.ArrayList;
import java.util.List;

public class StringMethod {
    public static void main(String[] args) {
        List list = new ArrayList<>();
        list.add("asdf");
        list.add("aaa");
        list.add(1);
        for (Object s : list){
            System.out.println("list.get(i) = " + s);
        }
    }
}
