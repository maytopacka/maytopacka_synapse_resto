/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.to2;

/**
 *
 * @author Dummy
 */
public class to_credit {

        

    public  String credit_card_no;
    public  String card_holder;
    public  String author_code;
    public  String bank;
    public  String card_type;
    public  double amount;

    public to_credit(String credit_card_no, String card_holder, String author_code, String bank, String card_type, double amount) {
        this.credit_card_no = credit_card_no;
        this.card_holder = card_holder;
        this.author_code = author_code;
        this.bank = bank;
        this.card_type = card_type;
        this.amount = amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public void setAuthor_code(String author_code) {
        this.author_code = author_code;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public void setCard_holder(String card_holder) {
        this.card_holder = card_holder;
    }

    public void setCard_type(String card_type) {
        this.card_type = card_type;
    }

    public void setCredit_card_no(String credit_card_no) {
        this.credit_card_no = credit_card_no;
    }

    
    
    
}
