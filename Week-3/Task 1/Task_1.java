import java.util.Arrays;

public class AlternativeElementsCopy {
    public static void main(String[] args) {
        int[] arr = {1, 2, 3, 4, 5, 6, 7, 8, 9};
        int newsize = (arr.length + 1) / 2;
        int[] res = new int[newsize];

        for (int i = 0, j = 0; i < arr.length; i += 2, j++) {
            res[j] = arr[i];
        }

        System.out.println("Original Array: " + Arrays.toString(arr));
        System.out.println("New Array: " + Arrays.toString(result));
    }
}
