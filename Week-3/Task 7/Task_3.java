import java.util.ArrayList;

class Task_3 {
    public static void main(String[] args) {
        ArrayList<String> colors = new ArrayList<>(List.of("Blue", "Green"));
        colors.add(0, "Red");
        System.out.println(colors);
    }
}
