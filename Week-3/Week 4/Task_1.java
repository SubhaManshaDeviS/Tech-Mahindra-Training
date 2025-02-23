public class ExceptionHandling {
    public static void main(String[] args) {
        try {
            int res = 10 / 0;
        } catch (ArithmeticException e) {
            System.out.println("Exception caught: " + e.getMessage());
        }
    }
}
