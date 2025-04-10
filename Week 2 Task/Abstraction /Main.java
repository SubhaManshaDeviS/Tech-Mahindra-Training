abstract class Animal {

    abstract void makeSound();
}

class Dog extends Animal{
    @Override
    void makeSound() {
        System.out.println("Dog is barking");
    }
}

class Main{
    public static void main(String[] args){
        Dog dog = new Dog();
        dog.makeSound();
    }
}
