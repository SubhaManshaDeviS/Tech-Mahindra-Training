import java.util.List;
import java.util.ArrayList;

class Task_5 {
    public static <T> List<T> mergeAlternating(List<T> list1, List<T> list2) {
        List<T> mergedList = new ArrayList<>();
        int size = Math.max(list1.size(), list2.size());

        for (int i = 0; i < size; i++) {
            if (i < list1.size()) mergedList.add(list1.get(i));
            if (i < list2.size()) mergedList.add(list2.get(i));
        }
        return mergedList;
    }

    public static void main(String[] args) {
        List<Integer> list1 = List.of(1, 3, 5);
        List<Integer> list2 = List.of(2, 4, 6, 8);
        System.out.println(mergeAlternating(list1, list2)); // [1, 2, 3, 4, 5, 6, 8]
    }
}
