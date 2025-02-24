import java.util.LinkedList;
import java.util.List;

class InsertElements {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(List.of("Apple", "Banana"));
        list.addAll(1, List.of("Cherry", "Date"));
        System.out.println(list);
    }
}
