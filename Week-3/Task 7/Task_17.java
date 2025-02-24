import java.util.LinkedList;

class InsertAtFront {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(List.of("Banana", "Cherry"));
        list.addFirst("Apple");
        System.out.println(list);
    }
}
