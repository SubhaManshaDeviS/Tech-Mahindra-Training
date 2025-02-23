import java.util.Objects;

public class Task_3 { 
  public static void main(String[] args) { 
    Integer[] arr1 = {1, 2, 3}; 
    Integer[] arr2 = {1, 2, 3}; 
    Integer[] arr3 = arr1;

System.out.println("Using equals():");
    System.out.println("arr1.equals(arr2): " + arr1.equals(arr2)); 
    System.out.println("arr1.equals(arr3): " + arr1.equals(arr3)); 
    
    System.out.println("\nUsing deepEquals():");
    System.out.println("Objects.deepEquals(arr1, arr2): " + Objects.deepEquals(arr1, arr2));
    System.out.println("Objects.deepEquals(arr1, arr3): " + Objects.deepEquals(arr1, arr3)); 
}

}

