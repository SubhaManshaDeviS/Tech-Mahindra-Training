import java.util.LinkedList;

class InsertAtEnd {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(List.of("Apple", "Banana"));
        list.addLast("Cherry");
        System.out.println(list);
    }
}
