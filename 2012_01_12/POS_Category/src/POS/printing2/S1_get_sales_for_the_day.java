/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.printing2;

import POS.Main;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import POS.utl.MyConnection;

/**
 *
 * @author i1
 */
public class S1_get_sales_for_the_day {

    public static class to_reciept_sales {

        public final Date date_from;
        public final Date date_to;
        public final String busi_name;
        public final double dollar;
        public final double tendered;
        public final double discount;
        public final double credit;
        public final double foods;
        public final double beverages;
        public final double expences;
        public final double tot_bev;
        public final double net_total;

        public to_reciept_sales(Date date_from, Date date_to, String busi_name, double dollar, double tendered, double discount, double credit, double foods, double beverages, double expences, double tot_bev, double net_total) {
            this.date_from = date_from;
            this.date_to = date_to;
            this.busi_name = busi_name;
            this.dollar = dollar;
            this.tendered = tendered;
            this.discount = discount;
            this.credit = credit;
            this.foods = foods;
            this.beverages = beverages;
            this.expences = expences;
            this.tot_bev = tot_bev;
            this.net_total = net_total;
        }
    }

    public static to_reciept_sales ret_data(String date, Date date_from, Date date_to, String busi_name, double dollar) {
        to_reciept_sales to1 = new to_reciept_sales(new Date(), new Date(), "", 0, 0, 0, 0, 0, 0, 0, 0, 0);

        double tendered = 0;
        double discount = 0;
        double credit = 0;
        double foods = 0;
        double beverages = 0;
        double expences = 0;
        try {
            Connection conn = MyConnection.connect();
            String s0 = "select "
                        + "(tendered)"
                        + ",(discount)"
                        + ",(credit)"
                        + ",or_number"
                        + ",(credit_dollar)"
                        + " from " + Main.MyDB.getNames() + ".receipts where "
                        + " date(receipt_date) ='" + date + "' "
                        + " ";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                tendered += rs.getDouble(1);
                discount += rs.getDouble(2);
                credit += (rs.getDouble(3) + rs.getDouble(5));

                String receipt_id = rs.getString(4);
                String s2 = "select "
                            + "qty"
                            + ",unit_price"
                            + ",cat_name"
                            + " from " + Main.MyDB.getNames() + ".receipt_items where "
                            + " receipt_id ='" + receipt_id + "' "
                            + " ";

                Statement stmt2 = conn.createStatement();
                ResultSet rs2 = stmt2.executeQuery(s2);
                while (rs2.next()) {
                    double qty = rs2.getDouble(1);
                    double unit_price = rs2.getDouble(2);
                    String cat_name = rs2.getString(3);
//                    System.out.println(qty + " * " + unit_price + " = " + (qty * unit_price));
                    if (cat_name.equals("Mixed Drinks") || cat_name.equals("Coffee & Tea")
                        || cat_name.equals("Fruit Juices & Shakes")
                        || cat_name.equals("Softdrinks")
                        || cat_name.equals("Beers")
                        || cat_name.equals("Liquors")) {
                        beverages += (qty * unit_price);
                    } else {
                        foods += (qty * unit_price);
                    }
                }
            }
//            System.out.println(tendered + " " + discount + " " + credit + " " + foods + " " + beverages + " " + expences);
            double net = ((tendered + discount) - credit) - expences;
            to1 = new to_reciept_sales(date_from, date_to, busi_name, dollar, tendered, discount, credit, foods, beverages, expences, (foods + beverages), net);
            return to1;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            MyConnection.close();
        }
    }

    public static to_reciept_sales ret_data2(String date, Date date_from, Date date_to, String busi_name, double dollar) {
        to_reciept_sales to1 = new to_reciept_sales(new Date(), new Date(), "", 0, 0, 0, 0, 0, 0, 0, 0, 0);

        double tendered = 0;
        double discount = 0;
        double credit = 0;
        double foods = 0;
        double beverages = 0;
        double expences = 0;
        try {
            Connection conn = MyConnection.connect();
            String s0 = "select "
                        + "(tendered)"
                        + ",(discount)"
                        + ",(credit)"
                        + ",or_number"
                        + " from " + Main.MyDB.getNames() + ".receipts where "
                        + " date(receipt_date) ='" + date + "' "
                        + " ";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                tendered += rs.getDouble(1);
                discount += rs.getDouble(2);
                credit += rs.getDouble(3);

                String receipt_id = rs.getString(4);
                String s2 = "select "
                            + "qty"
                            + ",unit_price"
                            + ",cat_name"
                            + " from " + Main.MyDB.getNames() + ".receipt_items where "
                            + " receipt_id ='" + receipt_id + "' "
                            + " ";

                Statement stmt2 = conn.createStatement();
                ResultSet rs2 = stmt2.executeQuery(s2);
                while (rs2.next()) {
                    double qty = rs2.getDouble(1);
                    double unit_price = rs2.getDouble(2);
                    String cat_name = rs2.getString(3);
                    System.out.println(qty + " * " + unit_price + " = " + (qty * unit_price));
                    if (cat_name.equals("Mixed Drinks") || cat_name.equals("Coffee & Tea")
                        || cat_name.equals("Fruit Juices & Shakes")
                        || cat_name.equals("Softdrinks")
                        || cat_name.equals("Beers")
                        || cat_name.equals("Liquors")) {
                        beverages += (qty * unit_price);
                    } else {
                        foods += (qty * unit_price);
                    }
                }
            }
            foods = 0;
            beverages = 0;
            System.out.println(tendered + " " + discount + " " + credit + " " + foods + " " + beverages + " " + expences);
            double net = ((tendered + discount) - credit) - expences;
            to1 = new to_reciept_sales(date_from, date_to, busi_name, dollar, tendered, discount, credit, foods, beverages, expences, (foods + beverages), net);
            return to1;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            MyConnection.close();
        }
    }

    public static void main(String[] args) {
        double tendered = 0;
        double discount = 0;
        double credit = 0;
        double foods = 0;
        double beverages = 0;
        double expences = 0;
        try {
            Connection conn = MyConnection.connect();
            String s0 = "select "
                        + "(tendered)"
                        + ",(discount)"
                        + ",(credit)"
                        + ",or_number"
                        + " from " + "db_pos_casablanca" + ".receipts where "
                        + " date(receipt_date) ='" + "2013-01-01" + "' "
                        + " ";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                tendered += rs.getDouble(1);
                discount += rs.getDouble(2);
                credit += rs.getDouble(3);

                String receipt_id = rs.getString(4);
                String s2 = "select "
                            + "qty"
                            + ",unit_price"
                            + ",cat_name"
                            + " from " + "db_pos_casablanca" + ".receipt_items where "
                            + " receipt_id ='" + receipt_id + "' "
                            + " ";

                Statement stmt2 = conn.createStatement();
                ResultSet rs2 = stmt2.executeQuery(s2);
                while (rs2.next()) {
                    double qty = rs2.getDouble(1);
                    double unit_price = rs2.getDouble(2);
                    String cat_name = rs2.getString(3);
                    System.out.println(qty + " * " + unit_price + " = " + (qty * unit_price));
                    if (cat_name.equals("Mixed Drinks") || cat_name.equals("Coffee & Tea")
                        || cat_name.equals("Fruit Juices & Shakes")
                        || cat_name.equals("Softdrinks")
                        || cat_name.equals("Beers")
                        || cat_name.equals("Liquors")) {
                        beverages += (qty * unit_price);
                    } else {
                        foods += (qty * unit_price);
                    }
                }

            }
            System.out.println(tendered + " " + discount + " " + credit + " " + foods + " " + beverages + " " + expences);
//            return to1;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            MyConnection.close();
        }
    }
}
