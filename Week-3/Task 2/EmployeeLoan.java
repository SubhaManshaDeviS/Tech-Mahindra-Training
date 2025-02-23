import java.util.Scanner;

class Employee { private int empId; private String empName; private double sal; private int yearsWorked;
public void setEmployeeDetails(int empId, String empName, double sal, int yearsWorked) {
    this.empId = empId;
    this.empName = empName;
    this.sal = sal;
    this.yearsWorked = yearsWorked;
}
public void getEmployeeDetails() {
    System.out.println("Employee ID: " + empId);
    System.out.println("Employee Name: " + empName);
    System.out.println("Monthly Salary: " + sal);
    System.out.println("Years Worked: " + yearsWorked);
}
public void getLoanEligibility() {
    if (yearsWorked > 5) {
        double annualSalary = sal * 12;
        double loanAmount = 0;
        
        if (annualSalary >= 15_00_000) {
            loanAmount = 7_00_000;
        } else if (annualSalary >= 10_00_000) {
            loanAmount = 5_00_000;
        } else if (annualSalary >= 6_00_000) {
            loanAmount = 2_00_000;
        }
        
        if (loanAmount > 0) {
            System.out.println("Eligible for loan: " + loanAmount);
        } else {
            System.out.println("Not eligible for loan.");
        }
    } else {
        System.out.println("Employee must have worked for more than 5 years to be eligible for a loan.");
    }
}

}

public class EmployeeLoan { 
  public static void main(String[] args) { 
    Scanner sc = new Scanner(System.in); 
    Employee emp = new Employee();

System.out.print("Enter Employee ID: ");
    int id = sc.nextInt();
    sc.nextLine();
    System.out.print("Enter Employee Name: ");
    String name = sc.nextLine();
    System.out.print("Enter Monthly Salary: ");
    double salary = sc.nextDouble();
    System.out.print("Enter Years Worked: ");
    int years = sc.nextInt();

    emp.setEmployeeDetails(id, name, salary, years);
    System.out.println("\nEmployee Details:");
    emp.getEmployeeDetails();
    
    System.out.println("\nLoan Eligibility Check:");
    emp.getLoanEligibility();
}

}

