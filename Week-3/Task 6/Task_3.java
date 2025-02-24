import java.util.List;

class Task_3 {
    public static <T> int findFirstIndex(List<T> list, T target) {
        return list.indexOf(target);
    }

    public static void main(String[] args) {
        List<String> names = List.of("Alice", "Bob", "Charlie", "Bob");
        System.out.println(findFirstIndex(names, "Bob")); // 1
        System.out.println(findFirstIndex(names, "David")); // -1
    }
}
