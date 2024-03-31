import java.util.*;





public class Main {

    class Animal{
        public void walk();
    }
    class Horse extends Animal{
        public void walk(){
            System.out.println("Horse walks on 4 legs");
        }
    }
    class Chicken extends Animal{
        public void walk(){
            System.out.println("Chicken walks on 2 legs");
        }
    }
    
    public static void main(String args[]){
        Horse h = new Horse();
        Chicken c = new Chicken();
        h.walk();
        c.walk();
    }
}
