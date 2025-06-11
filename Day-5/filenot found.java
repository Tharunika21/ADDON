package Program;
import java.io.*;
public class Main{
    public static void main(String[] args){
        String filename="C://Users//TEMP.KGISLEDU//Documents//Demo.txt";
        try(BufferedReader br=new Bufferedreader(new FileReader(filename))){
            String Line;
            if(Line = br.readLine()) !=null{
            System.out.println(line);
             }
    }
    catch(Exception e){
        System.out.println("Filenotfound");
        
    }
}