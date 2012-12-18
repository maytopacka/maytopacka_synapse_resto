/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.inventory;

import POS.Main.MyDB;
import POS.to2.to_add_product;
import POS.utl.DateType;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import java.util.List;
import overallPOS.modules.share.utils.FitIn;
import overallPOS.modules.share.utils.Lg;
import overallPOS.modules.share.utils.PoolConnection;
import overallPOS.modules.share.utils.ReceiptIncrementor;

/**
 *
 * @author Dummy
 */
public class S1_stock_out {

    public static void stock_out(List<to_add_product> datas, String remarks, String branch, String branch_id, to_stock_out_main t_main) {

        String date = DateType.datetime.format(new Date());
        try {
            Connection conn = PoolConnection.connect();


            for (to_add_product t : datas) {
                String s0 = "insert into " + MyDB.getNames() + ".stock_out(prod_num,prod_name,qty,amount,date_added,cashier_name,cashier_id,remarks,status,branch,branch_id)values(?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement stmt = conn.prepareStatement(s0);
                stmt.setString(1, t.name);
                stmt.setString(2, t.desc);
                stmt.setDouble(3, FitIn.toDouble(t.qty));
                stmt.setDouble(4, FitIn.toDouble(t.price));
                stmt.setString(5, date);
                stmt.setString(6, t_main.user_name);
                stmt.setString(7, t_main.user_id);
                stmt.setString(8, remarks);
                stmt.setString(9, "0");
                stmt.setString(10, t_main.branch);
                stmt.setString(11, t_main.branch_id);
                stmt.execute();


                double new_qty = 0;
                String s2 = "select product_qty from " + MyDB.getNames() + ".inventory2_stocks_left where product_name='" + t.name + "' ";
                Statement stmt2 = conn.createStatement();
                ResultSet rs = stmt2.executeQuery(s2);
                if (rs.next()) {
                    new_qty = rs.getDouble(1);
                }
                new_qty -= FitIn.toDouble(t.qty);
                String s1 = "update " + MyDB.getNames() + ".inventory2_stocks_left set product_qty='" + new_qty + "' where product_name='" + t.name + "' ";
                PreparedStatement stmt1 = conn.prepareStatement(s1);
                stmt1.execute();
            }
            String s0 = "insert into " + MyDB.getNames() + ".stock_out_main("
                        + "ref_no"
                        + ",item_count"
                        + ",total_cost"
                        + ",date_added"
                        + ",branch"
                        + ",branch_id"
                        + ",user_name"
                        + ",user_id"
                        + ",status)values(?,?,?,?,?,?,?,?,?)";

            PreparedStatement stmt = conn.prepareStatement(s0);
            stmt.setString(1, t_main.ref_no);
            stmt.setInt(2, t_main.item_count);
            stmt.setDouble(3, t_main.total_cost);
            stmt.setString(4, t_main.date_added);
            stmt.setString(5, t_main.branch);
            stmt.setString(6, t_main.branch_id);
            stmt.setString(7, t_main.user_name);
            stmt.setString(8, t_main.user_id);
            stmt.setString(9, t_main.status);
            stmt.execute();


//            Prompt.call("Successfully Updated");
            Lg.s(S1_stock_out.class, "Successfully Added");
//            JOptionPane.showMessageDialog(null, "Updated Successfully");
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static void stock_in(List<to_add_product> datas, String remarks, String branch, String branch_id, to_stock_out_main t_main) {

        String date = DateType.datetime.format(new Date());
        try {
            Connection conn = PoolConnection.connect();


            for (to_add_product t : datas) {
                String s0 = "insert into " + MyDB.getNames() + ".stock_in(prod_num,prod_name,qty,amount,date_added,cashier_name,cashier_id,remarks,status,branch,branch_id)values(?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement stmt = conn.prepareStatement(s0);
                stmt.setString(1, t.name);
                stmt.setString(2, t.desc);
                stmt.setDouble(3, FitIn.toDouble(t.qty));
                stmt.setDouble(4, FitIn.toDouble(t.price));
                stmt.setString(5, date);
                stmt.setString(6, t_main.user_name);
                stmt.setString(7, t_main.user_id);
                stmt.setString(8, remarks);
                stmt.setString(9, "0");
                stmt.setString(10, t_main.branch);
                stmt.setString(11, t_main.branch_id);
                stmt.execute();


                double new_qty = 0;
                String s2 = "select product_qty from " + MyDB.getNames() + ".inventory2_stocks_left where product_name='" + t.name + "' ";
                Statement stmt2 = conn.createStatement();
                ResultSet rs = stmt2.executeQuery(s2);
                if (rs.next()) {
                    new_qty = rs.getDouble(1);
                }
                new_qty += FitIn.toDouble(t.qty);
                String s1 = "update " + MyDB.getNames() + ".inventory2_stocks_left set product_qty='" + new_qty + "' where product_name='" + t.name + "' ";
                PreparedStatement stmt1 = conn.prepareStatement(s1);
                stmt1.execute();
            }

            String s0 = "insert into " + MyDB.getNames() + ".stock_in_main("
                        + "ref_no"
                        + ",item_count"
                        + ",total_cost"
                        + ",date_added"
                        + ",branch"
                        + ",branch_id"
                        + ",user_name"
                        + ",user_id"
                        + ",status)values(?,?,?,?,?,?,?,?,?)";

            PreparedStatement stmt = conn.prepareStatement(s0);
            stmt.setString(1, t_main.ref_no);
            stmt.setInt(2, t_main.item_count);
            stmt.setDouble(3, t_main.total_cost);
            stmt.setString(4, t_main.date_added);
            stmt.setString(5, t_main.branch);
            stmt.setString(6, t_main.branch_id);
            stmt.setString(7, t_main.user_name);
            stmt.setString(8, t_main.user_id);
            stmt.setString(9, t_main.status);
            stmt.execute();


//            Prompt.call("Successfully Updated");
            Lg.s(S1_stock_out.class, "Successfully Added");
//            JOptionPane.showMessageDialog(null, "Updated Successfully");
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static class to_stock_out_main {

        public final String ref_no;
        public final int item_count;
        public final double total_cost;
        public final String date_added;
        public final String branch;
        public final String branch_id;
        public final String user_name;
        public final String user_id;
        public final String status;

        public to_stock_out_main(String ref_no, int item_count, double total_cost, String date_added, String branch, String branch_id, String user_name, String user_id, String status) {
            this.ref_no = ref_no;
            this.item_count = item_count;
            this.total_cost = total_cost;
            this.date_added = date_added;
            this.branch = branch;
            this.branch_id = branch_id;
            this.user_name = user_name;
            this.user_id = user_id;
            this.status = status;
        }
    }

    public static String ret_stock_main_no() {

        String no = "0000000000";
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select ref_no from " + MyDB.getNames() + ".stock_out_main order by id desc limit 1";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            if (rs.next()) {
                no = rs.getString(1);
            }
            no = ReceiptIncrementor.increment(no);
            return no;
        } catch (Exception e) {
            PoolConnection.close();
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }
//    public static void main(String[] args) {
////        System.out.println(ret_stock_main_no());
//    }
}
