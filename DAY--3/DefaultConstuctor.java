package programs;
public class DefaultConstructor {
    String language;
    String name;
    int year;
    Default(String name,int year,String lang){
        this.name=name;
        this.year=year;
        this.language=lang;
        System.out.peintln("userdefine constructor"+" "+year);
    }

DefaultConstructor(DefaultConstuctor copy){
    this.name=copy.name;
    this.year=copy.year;
    this.language=copy.language;
    }
void Display() {
    System.out.println("userdefine Constuctor"+" " +name+" "+year);
}
public static void main(String[] args) {
    System.out.println("Original Constuctor");
    DefaultConstuctor ref=new DefaultConstuctor("java".1995)
}
}
