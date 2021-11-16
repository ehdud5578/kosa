package class1116.collectionFramework;

import java.util.HashSet;
import java.util.Set;

public class HashSetEx {
    public static void main(String[] args) {
        Set<Member> memberSet = new HashSet<>();
        memberSet.add(new Member("asdf",11));
        memberSet.add(new Member("qqqq",12));
        memberSet.add(new Member("qqqq",12));
        memberSet.removeIf(member -> member.getAge() == 10);
        boolean qqqq = memberSet.removeIf(member -> member.getName().equals("qqqq"));
    }
}
