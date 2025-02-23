import java.util.Scanner;

public class Task_5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String input = sc.next();
        sc.close();

        StringBuilder result = new StringBuilder();

        for (int i = 0; i < input.length(); i++) {
            if (i % 2 == 0) {
                result.append(Character.toUpperCase(input.charAt(i)));
            } else {
                result.append(Character.toLowerCase(input.charAt(i)));
            }
        }

        System.out.println("Capitalized alternative characters: " + result.toString());
    }
}
