import java.util.ArrayList;

class Task_5 {
    public static void main(String[] args) {
        ArrayList<String> colors = new ArrayList<>(List.of("Red", "Blue", "Green"));
        colors.set(1, "Yellow");
        System.out.println(colors);
    }
}
