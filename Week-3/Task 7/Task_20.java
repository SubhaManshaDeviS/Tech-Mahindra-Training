import java.util.LinkedList;

class FirstLastOccurrence {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(List.of("Apple", "Banana", "Cherry", "Apple"));
        System.out.println("First: " + list.getFirst());
        System.out.println("Last: " + list.getLast());
    }
}
