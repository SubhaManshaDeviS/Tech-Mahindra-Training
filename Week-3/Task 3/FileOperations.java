import java.io.; 
import java.nio.file.; 
import java.util.Scanner; 
import java.util.Date;

public class FileOperations { public static void main(String[] args) { 
  String directoryPath = "./"; 
  String filePath = "sample.txt";

// 1. List all files/directories in a directory
    File dir = new File(directoryPath);
    if (dir.exists() && dir.isDirectory()) {
        String[] files = dir.list();
        System.out.println("Files in directory:");
        for (String file : files) {
            System.out.println(file);
        }
    }

    // 2. Get specific files with extensions
    FilenameFilter filter = (d, name) -> name.endsWith(".txt");
    String[] txtFiles = dir.list(filter);
    System.out.println("\nText files in directory:");
    for (String file : txtFiles) {
        System.out.println(file);
    }

    // 3. Check if a file or directory exists
    File file = new File(filePath);
    System.out.println("\nFile exists: " + file.exists());

    // 4. Check read/write permissions
    System.out.println("Readable: " + file.canRead());
    System.out.println("Writable: " + file.canWrite());

    // 5. Check if pathname is file or directory
    System.out.println("\nIs Directory: " + file.isDirectory());
    System.out.println("Is File: " + file.isFile());

    // 6. Last modified date
    System.out.println("\nLast Modified: " + new Date(file.lastModified()));

    // 7. Read input from console
    Scanner scanner = new Scanner(System.in);
    System.out.print("Enter text: ");
    String userInput = scanner.nextLine();
    System.out.println("You entered: " + userInput);
    
    // 8. Get file size
    System.out.println("\nFile size in bytes: " + file.length());
    System.out.println("File size in KB: " + file.length() / 1024.0);
    System.out.println("File size in MB: " + file.length() / (1024.0 * 1024.0));

    // 9. Read file into byte array
    try {
        byte[] fileContent = Files.readAllBytes(Paths.get(filePath));
        System.out.println("\nFile read into byte array, size: " + fileContent.length);
    } catch (IOException e) {
        System.out.println("Error reading file into byte array: " + e.getMessage());
    }

    // 10. Read file line by line
    try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
        String line;
        System.out.println("\nFile content:");
        while ((line = br.readLine()) != null) {
            System.out.println(line);
        }
    } catch (IOException e) {
        System.out.println("Error reading file line by line: " + e.getMessage());
    }
}

}

