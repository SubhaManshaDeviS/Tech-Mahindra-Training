import java.io.File;
import java.io.FileNotFoundException;

public class Task_5 {
    public static void checkEmptyFile(String filePath) throws Exception {
        File file = new File(filePath);
        if (!file.exists() || file.length() == 0) {
            throw new Exception("File is empty or does not exist.");
        }
        System.out.println("File is not empty.");
    }

    public static void main(String[] args) {
        try {
            checkEmptyFile("data.txt"); 
        } catch (Exception e) {
            System.out.println("Exception caught: " + e.getMessage());
        }
    }
}
