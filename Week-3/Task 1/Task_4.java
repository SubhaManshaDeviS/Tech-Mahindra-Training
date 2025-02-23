import java.util.Arrays;

public class Task_4{
    public static void main(String[] args) {
        Integer[] arr1 = {1, 2, 3, 4, 5, 6};
        Integer[] arr2 = Arrays.copyOfRange(arr1, 1, 4); 

        System.out.println("Copied range using copyOfRange(): " + Arrays.toString(arr2));
    }
}
