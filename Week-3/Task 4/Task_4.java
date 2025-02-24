import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Task_4 {
    public static void checkNumbers(String filePath) throws Exception {
        File file = new File(filePath);
        Scanner scanner = new Scanner(file);

        while (scanner.hasNext()) {
            int num = scanner.nextInt();
            if (num > 0) {
                scanner.close();
                throw new Exception("Positive number found: " + num);
            }
        }
        scanner.close();
        System.out.println("All numbers are non-positive.");
    }

    public static void main(String[] args) {
        try {
            checkNumbers("numbers.txt"); 
        } catch (Exception e) {
            System.out.println("Exception caught: " + e.getMessage());
        }
    }
}
