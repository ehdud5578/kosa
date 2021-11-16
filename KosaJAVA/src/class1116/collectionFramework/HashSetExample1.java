package class1116.collectionFramework;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class HashSetExample1 {
    public static void main(String[] args) {
        Set<String> set = new HashSet<String>();
        set.add("asdf");
        set.add("1111");
        set.add("2222");
        set.add("3333");
        int size = set.size();
        System.out.println("size = " + size);
        Iterator iterator = set.iterator();
        while (iterator.hasNext()){

        }

    }
}
