/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.to;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 *
 * @author u2
 */
public class to_pay implements Serializable {

    public final double tendered;
    public final Date date;
    public final String cashier;
    public final List<to_order> orders;
    public final String or;

    public to_pay(double tendered, Date date, String cashier, List<to_order> orders, String or) {
        this.tendered = tendered;
        this.date = date;
        this.cashier = cashier;
        this.orders = orders;
        this.or = or;
    }

    @Override
    public String toString() {
        return "to_pay{" + "tendered=" + tendered + ", date=" + date + ", cashier=" + cashier + ", orders=" + orders + ", or=" + or + '}';
    }
}
