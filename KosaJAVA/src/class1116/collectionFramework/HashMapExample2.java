package class1116.collectionFramework;

import java.util.HashMap;
import java.util.Map;

public class HashMapExample2 {
    public static void main(String[] args) {
        Map<String,Member> map = new HashMap<String,Member>();
        map.put("박도영",new Member("박도영",26));
        map.put("박도영1",new Member("박도영1",26));
        map.put("박도영2",new Member("박도영2",26));
        map.put("박도영3",new Member("박도영3",26));
        map.put("박도영3",new Member("박도영3",26));

        for (String key: map.keySet()){
            System.out.println("key = " + key);
            System.out.println("map.get(key) = " + map.get(key));
        }
    }
}
