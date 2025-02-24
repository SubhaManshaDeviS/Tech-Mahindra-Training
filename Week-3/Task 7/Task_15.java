import java.util.LinkedList;

class InsertAtPosition {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(List.of("Apple", "Banana"));
        list.add(1, "Cherry");
        System.out.println(list);
    }
}
