import java.util.LinkedList;

class Task_13 {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(List.of("Apple", "Banana", "Cherry", "Date"));
        list.subList(2, list.size()).forEach(System.out::println);
    }
}
