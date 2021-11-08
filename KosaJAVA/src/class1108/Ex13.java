package class1108;

public class Ex13 {
    public static void main(String[] args) {
        WEEK1 today = WEEK1.토요일;
        System.out.println("today = " + today);
        String name = today.name();
        System.out.println("name = " + name);

        int ordinal = today.ordinal();
        System.out.println("ordinal = " + ordinal);

        WEEK1 day1 = WEEK1.목요일;
        WEEK1 day2 = WEEK1.화요일;

        int result = day1.compareTo(day2);
        System.out.println("result = " + result);
        int result2 = day2.compareTo(day1);
        System.out.println("result2 = " + result2);

        // 문자열을 열거형으로 변환

        String day = "SATURDAY";
        WEEK weekday = WEEK.valueOf(day);
        System.out.println("weekday = " + weekday);

        WEEK[] weeks = WEEK.values();

    }
}
