import java.util.ArrayList;
import java.util.Collections;

class Task_8 {
    public static void main(String[] args) {
        ArrayList<String> colors = new ArrayList<>(List.of("Red", "Blue", "Green"));
        Collections.sort(colors);
        System.out.println(colors);
    }
}
