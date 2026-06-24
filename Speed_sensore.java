public class Example {

    public static int addNumbers(int a, int b) {
        return a + b;
    }

    public static void main(String[] args) {
        int sum = addNumbers(5, 3);
        System.out.println("Sum: " + sum);
    }

    public static boolean isEven(int number) {
    return number % 2 == 0;
}
}

public class Student {
    private String name;
    private int age;

    public Student(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public void introduce() {
        System.out.println("Hi, my name is " + name + " and I am " + age + " years old.");
    }
}
