package class1116.collectionFramework;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class HashMapExample {
    public static void main(String[] args) {
        Map<String, Integer> map = new HashMap<>();
        map.put("asdf", 1);
        map.put("asdf1", 2);
        map.put("asdf2", 3);
        map.put("asdf3", 4);
        map.put("asdf4", 5);
        map.getOrDefault("asdf", 1);
        Set<String> mapKeys = map.keySet();
        for (String key : mapKeys) {
            System.out.println("key = " + key + ", value = " + map.get(key));
        }
        System.out.println(1);

        Iterator<String> iterator = mapKeys.iterator();
        while (iterator.hasNext()) {
            String key = iterator.next();
            System.out.println("key = " + key);
        }
        map.remove("asdf");
        map.clear();
        System.out.println("map.isEmpty() = " + map.isEmpty());
        System.out.println("map.size() = " + map.size());
    }
}
