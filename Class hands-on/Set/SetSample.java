import java.util.*;

class SetSample {
    public static void main(String args[]) {

        HashSet<Integer> hs = new HashSet<>(Arrays.asList(7, 14, 21, 28, 35, 42, 49, 56));
        LinkedHashSet<String> lhs = new LinkedHashSet<>(Arrays.asList("Apple", "Mango", "Peach", "Grape", "Plum", "Lemon", "Kiwi", "Berry"));
        TreeSet<Float> ts = new TreeSet<>(Arrays.asList(10.5f, 5.2f, 20.3f, 15.8f, 18.1f, 2.4f, 7.6f, 22.0f));


        setSample(hs);
        setSample(lhs);
        setSample(ts);
    }

    public static void setSample(HashSet<Integer> hs) {
        System.out.println("HS: " + hs);
        hs.remove(7);
        System.out.println("After removal: " + hs);
        System.out.print("divisible by 7: ");
        for (int num : hs) {
            if (num % 7 == 0) System.out.print(num + " ");
        }
        System.out.println();
    }

    public static void setSample(LinkedHashSet<String> hs) {
        System.out.println("LHS: " + hs);
        hs.remove("Apple");
        System.out.println("After removal: " + hs);
        System.out.print("Strings with max 5 chars: ");
        for (String str : hs) {
            if (str.length() >= 5) System.out.print(str + " ");
        }
        System.out.println();
    }

    public static void setSample(TreeSet<Float> hs) {
        System.out.println("TS: " + hs);
        hs.remove(5.2f);
        System.out.println("After removal: " + hs);
        System.out.print(" max of 20: ");
        for (float num : hs) {
            if (num >= 20) System.out.print(num + " ");
        }
        System.out.println();
    }
}
