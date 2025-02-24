public class Task_2 {
    static void checkEven(int number) throws Exception {
        if (number % 2 != 0) {
            throw new Exception("Odd number detected: " + number);
        }
        System.out.println("Even number: " + number);
    }

    public static void main(String[] args) {
        try {
            checkEven(5);
        } catch (Exception e) {
            System.out.println("Exception caught: " + e.getMessage());
        }
    }
}
