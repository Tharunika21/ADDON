package program;
class sbiAcc{
    private String Accholder;
    private int Balance;
    sbiAcc(String Accholder , int Balance) {
        this.Accholder=Accholder;
        this.Balance=Balance;
        
    }
    public String getAccholder() {
        return Accholder;
    }
    public int getBalamce() {
        return Balance;
    }
public void Deposit(int dep) {
    if(Balance>0) {
        Balance += dep;
       System.out.println("DepositeAmount:"+dep);
        System.out.println("Now Current Balance:"+Balance);
    }
}
public void setAccholder(String Accholder) {
    this.Accholder=Accholder;
}
public void setAccholder(int withdraw){
Balance -= withdraw ;
 }

}
public class BankDetails {
    public static void main(String[] args) {
        sbiAcc ac=new sbiAcc("tharu",2000);
        System.out.println("Account holder name:"+ ac.getAccholder());
        ac.setAccholder("harini");
        System.out.println("update account holder:"+ ac.getAccholder());
        System.out.println("Balance:"+ ac.getBalance());
        ac.Deposit(3000);
        ac.setWithdraw(20000);
        System.out.println("Avail Balance:"+ ac.getBalance());
    }
}

    

