import java.util.ArrayList;

class Task_6 {
    public static void main(String[] args) {
        ArrayList<String> colors = new ArrayList<>(List.of("Red", "Blue", "Green", "Yellow"));
        colors.remove(2);
        System.out.println(colors);
    }
}
