import java.util.*;
class Arraylist1 extends Thread{
public void run() {
    ArrayList<Integer> list1 = new ArrayList<>();
    //System.out.println("Is list1 empty? "+list1.isEmpty());
    list1.add(35);
    list1.add(23);
    list1.add(67);
    list1.add(82);
    list1.add(56);
    list1.add(49);
    list1.add(49);
    list1.add(49);
    //System.out.println("Is list1 empty? "+list1.isEmpty());
    //  System.out.println("The given list is:"+list1);
    System.out.println("Number of elements in the list: " + list1.size());
    //Adding one element
    list1.add(12);
    System.out.println("After adding one element:");
    System.out.println("The given list is :" + list1);
    System.out.println("The number of elements in the list: " + list1.size());
//Checking for an element
    System.out.println("Is 566 available in the Arraylist:" + list1.contains(566));
    System.out.println("The given Arraylist before removing elements is :" + list1);
    list1.remove(2);//Removing element by its index
    list1.remove(3);//Removing element by its index
    System.out.println("After removing elements:");
    System.out.println("The given Arraylist is :" + list1);
    System.out.println("The number of elements in the Arraylist: " + list1.size());
}}
class LinkedList1 extends Thread{
    public void run(){
        LinkedList<Integer> list1 = new LinkedList<>();

        list1.add(35);
        list1.add(23);
        list1.add(67);
        list1.add(82);
        list1.add(56);
        list1.add(49);
        list1.add(49);
        list1.add(49);

        System.out.println("Number of elements in the Linkedlist: " + list1.size());


        list1.add(12);
        System.out.println("After adding one element:");
        System.out.println("The given linkedlist is: " + list1);
        System.out.println("The number of elements in the linkedlist: " + list1.size());

        System.out.println("Is 566 available in the list: " + list1.contains(566));
        System.out.println("The given list before removing elements is: " + list1);


        list1.remove(2);
        list1.remove(3);

        System.out.println("After removing elements:");
        System.out.println("The given linkedlist is: " + list1);
        System.out.println("The number of elements in the linkedlist: " + list1.size());
    }
}
public class ListSample{
public static void main(String args[]){
Arraylist1 list1 = new Arraylist1();
list1.start();
LinkedList1 list2 = new LinkedList1();
list2.start();
}}
