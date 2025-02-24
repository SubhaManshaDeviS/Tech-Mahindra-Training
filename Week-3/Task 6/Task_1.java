import java.util.Arrays;

class Task_1 {
    public static <T> boolean areArraysEqual(T[] arr1, T[] arr2) {
        return Arrays.equals(arr1, arr2);
    }

    public static void main(String[] args) {
        Integer[] array1 = {1, 2, 3, 4};
        Integer[] array2 = {1, 2, 3, 4};
        Integer[] array3 = {1, 2, 4, 3};

        System.out.println(areArraysEqual(array1, array2)); // true
        System.out.println(areArraysEqual(array1, array3)); // false
    }
}
