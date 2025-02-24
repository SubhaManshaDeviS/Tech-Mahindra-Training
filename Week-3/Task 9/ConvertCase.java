import java.util.List;
import java.util.stream.Collectors;

public class ConvertCase {
    public static void main(String[] args) {
        List<String> words = List.of("lion", "tiger", "elephant");

        List<String> uppercaseWords = words.stream().map(String::toUpperCase).collect(Collectors.toList());

        List<String> lowercaseWords = words.stream().map(String::toLowerCase).collect(Collectors.toList());

        System.out.println("Uppercase: " + uppercaseWords);
        System.out.println("Lowercase: " + lowercaseWords);
    }
}
