import java.util.LinkedList;
import java.util.Collections;

class ReverseLinkedList {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(List.of("Apple", "Banana", "Cherry"));
        Collections.reverse(list);
        System.out.println(list);
    }
}
