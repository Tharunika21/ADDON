package program;
public class Multithread extends Thread{
    private String Name;
    Multithread (String Name){
        this.Name=Name;
    }
    public void run(){
        for(int i=1;i<=5;i++){
            System.out.println(Name);
            try{
                Thread.sleep(500);
            }catch(InterruptedException e){
                e.printStackTrace();
            }
            }
        }
    }
    class Execute{
        public static void main(String[]args){
            Multithread m1=new Multithread("thread2");
            Multithread m2=new Multithread("thread2");
            m1.start();
            m2.start();
        }
    }
    