import java.util.ArrayList;
import java.util.Collections;

class Task_9 {
    public static void main(String[] args) {
        ArrayList<String> list1 = new ArrayList<>(List.of("Red", "Blue", "Green"));
        ArrayList<String> list2 = new ArrayList<>(list1);
        System.out.println(list2);
    }
}
