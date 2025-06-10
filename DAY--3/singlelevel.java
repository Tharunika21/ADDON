package programs;
//superclass
public class singlelevel {
    public static void main(String[] args){
        
    }
    void Message(){
        System.out.println("sending!!!");
    }
}
class subclass extends singlelevel{
    void View(){
        System.out.println("Received....");
        }
}
class main{
    
        subclass ref=new subclass();
    ref.Message();
    ref.View();
        
    }
}