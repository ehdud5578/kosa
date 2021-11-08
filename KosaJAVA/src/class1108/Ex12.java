package class1108;

import java.util.Calendar;

public class Ex12 {
    public static void main(String[] args) {
        WEEK today;
        today = WEEK.MONDAY;
        System.out.println("today = " + today);
        Calendar cal = Calendar.getInstance();
        int week = cal.get(Calendar.DAY_OF_WEEK);
        System.out.println("week = " + week);
        switch(week){
            case 1: today = WEEK.SUNDAY;break;
            case 2: today = WEEK.MONDAY;break;
            case 3: today = WEEK.TUESDAY;break;
            case 4: today = WEEK.WENDSDAY;break;
            case 5: today = WEEK.THURSDAY;break;
            case 6: today = WEEK.FRIDAY;break;
            case 7: today = WEEK.SATURDAY;break;
        }
        System.out.println("today = " + today);
        if (week == 1) {
            today = WEEK.SUNDAY;
        } else if (week == 2) {
            today = WEEK.MONDAY;
        } else if (week == 3) {
            today = WEEK.TUESDAY;
        } else if (week == 4) {
            today = WEEK.WENDSDAY;
        } else if (week == 5) {
            today = WEEK.THURSDAY;
        } else if (week == 6) {
            today = WEEK.FRIDAY;
        } else if (week == 7) {
            today = WEEK.SATURDAY;
        }

    }
}
