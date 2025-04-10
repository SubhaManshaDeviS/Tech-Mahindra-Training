import java.util.*;

class Student { String name; int[] marks; int total; double avg;

Student(String name, int[] marks) {
    this.name = name;
    this.marks = marks;
    this.total = Arrays.stream(marks).sum();
    this.avg = (double) total / marks.length;
}

}

public class Task_2 { 
  public static void main(String[] args) { 
    Scanner sc = new Scanner(System.in); 
    System.out.print("Enter number of students: "); 
    int n = sc.nextInt(); 
    List<Student> students = new ArrayList<>();

for (int i = 0; i < n; i++) {
        System.out.print("Enter student name: ");
        String name = sc.next();
        System.out.print("Enter number of subjects: ");
        int subjects = sc.nextInt();
        int[] marks = new int[subjects];
        
        System.out.println("Enter marks for " + name + ":");
        for (int j = 0; j < subjects; j++) {
            marks[j] = sc.nextInt();
        }
        
        students.add(new Student(name, marks));
    }
    
    students.sort((s1, s2) -> Integer.compare(s2.total, s1.total));
    
    System.out.println("\nSorted Student List (by Total Marks):");
    for (Student s : students) {
        System.out.println(s.name + " - Total: " + s.total + ", Average: " + s.avg);
    }
}

}

