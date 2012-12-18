/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.rooms;

import POS.Main.MyDB;
import POS.guests.S1_guest;
import POS.guests.S2_guest_charges;
import POS.utl.DateType;
import POS.utl.NumberFormat;
import POS_svc4.S2_search;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import java.util.List;
import javax.swing.JOptionPane;
import overallPOS.modules.share.utils.Lg;
import overallPOS.modules.share.utils.PoolConnection;
import overallPOS.modules.share.utils.SqlStringUtil;

import test.Dlg_check.to_guests;

/**
 *
 * @author Dummy
 */
public class S1_check_in {

    public static class to_customer_tables {

        public final String id;
        public final String table_no;
        public final String date_added;
        public final double amount;
        public final String or_no;
        public final String status;

        public to_customer_tables(String id, String table_no, String date_added, double amount, String or_no, String status) {
            this.id = id;
            this.table_no = table_no;
            this.date_added = date_added;
            this.amount = amount;
            this.or_no = or_no;
            this.status = status;
        }
    }

    public static class to_room_guests {

        public final int id;
        public final int rooom_id;
        public final String guest_id;
        public final String guest_name;
        public final String checkin_date;
        public final String checkout_date;
        public final int status;
        public final double to_pay;
        public final double paid;

        public to_room_guests(int id, int rooom_id, String guest_id, String guest_name, String checkin_date, String checkout_date, int status, double to_pay, double paid) {
            this.id = id;
            this.rooom_id = rooom_id;
            this.guest_id = guest_id;
            this.guest_name = guest_name;
            this.checkin_date = checkin_date;
            this.checkout_date = checkout_date;
            this.status = status;
            this.to_pay = to_pay;
            this.paid = paid;
        }
    }

    public static void check_in(to_customer_tables to, List<S1_guest.to_guests> guest, double room_rate, int mode) {
        try {
            Connection conn = PoolConnection.connect();
            String checkin_date = DateType.datetime.format(new Date());

            double my_rate = 0;
            if (mode == 1) {
                double plus = 0;
                String s = "select count(id) from " + MyDB.getNames() + ".room_guests where rooom_id='" + to.table_no + "' and status='" + "0" + "'";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(s);
                if (rs.next()) {
                    plus = rs.getDouble(1);
                }
                my_rate = guest.size() + plus;
            } else {
                my_rate = guest.size();
            }
            my_rate = room_rate / my_rate;

            for (S1_guest.to_guests to1 : guest) {
                String s0 = "insert into " + MyDB.getNames() + ".room_guests("
                            + "rooom_id"
                            + ",guest_id"
                            + ",guest_name"
                            + ",checkin_date"
                            + ",checkout_date"
                            + ",status"
                            + ",to_pay"
                            + ",paid"
                            + ",room_rate"
                            + ")values("
                            + ":rooom_id"
                            + ",:guest_id"
                            + ",:guest_name"
                            + ",:checkin_date"
                            + ",:checkout_date"
                            + ",:status"
                            + ",:to_pay"
                            + ",:paid"
                            + ",:room_rate"
                            + ")";

                s0 = SqlStringUtil.parse(s0).setString("rooom_id", to.table_no).setString("guest_id", to1.guest_id).setString("guest_name", (to1.fname + " " + to1.mi + " " + to1.lname)).setString("checkin_date", checkin_date).setString("checkout_date", checkin_date).setNumber("status", 0).setNumber("to_pay", 0).setNumber("paid", 0).setNumber("room_rate", room_rate).ok();

                PreparedStatement stmt = conn.prepareStatement(s0);
                stmt.execute();
                Lg.s(S1_check_in.class, "Successfully Added");

                int id = 0;;
                String guest_id = "" + to1.guest_id;
                String guest_name = to1.fname + " " + to1.mi + " " + to1.lname;
                String date_added = DateType.datetime.format(new Date());
                double amount = my_rate;
                int status = 0;

                S2_guest_charges.to_guest_charges to_guest_charges = new S2_guest_charges.to_guest_charges(id, guest_id, guest_name, date_added, amount, status);
                String s2 = "insert into " + MyDB.getNames() + ".guest_charges("
                            + "guest_id"
                            + ",guest_name"
                            + ",date_added"
                            + ",amount"
                            + ",status"
                            + ",table_no"
                            + ")values("
                            + ":guest_id"
                            + ",:guest_name"
                            + ",:date_added"
                            + ",:amount"
                            + ",:status"
                            + ",:table_no"
                            + ")";
                s2 = SqlStringUtil.parse(s2).setString("guest_id", to_guest_charges.guest_id).setString("guest_name", to_guest_charges.guest_name).setString("date_added", to_guest_charges.date_added).setString("amount", NumberFormat.df.format(to_guest_charges.amount)).setNumber("status", to_guest_charges.status).setString("table_no", to.table_no).ok();

                PreparedStatement stmt2 = conn.prepareStatement(s2);
                stmt2.execute();
                Lg.s(S1_check_in.class, "Successfully Added");

            }
//            JOptionPane.showMessageDialog(null, "adadad");
            Lg.s(S1_check_in.class, "Successfully Added check in");
        } catch (Exception e) {
            PoolConnection.close();
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static String get_table_id(String table_name) {
        String room_id = "";
        try {
            Connection conn = PoolConnection.connect();

            String s3 = "select id from " + MyDB.getNames() + ".tables where table_name='" + table_name + "' ";
            Statement stmt2 = conn.createStatement();
            ResultSet rs2 = stmt2.executeQuery(s3);
            if (rs2.next()) {
                room_id = rs2.getString(1);
            }
            return room_id;
        } catch (Exception e) {
            PoolConnection.close();
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static void add_order_rooms(List<S2_search.to_orders> to, String table_no, List<to_guests> my_guest, List<S2_search.to_items_status> to_sub) {

        try {
            double my_amount = 0;
            Connection conn = PoolConnection.connect();
            String room_id = table_no;
            String now = DateType.datetime.format(new Date());
//            String s3 = "select id from " + MyDB.getNames() + ".tables where table_name='" + table_no + "' ";
//            Statement stmt2 = conn.createStatement();
////            JOptionPane.showMessageDialog(null, table_no);
//            ResultSet rs2 = stmt2.executeQuery(s3);
//            if (rs2.next()) {
//                room_id = rs2.getString(1);
//            }
            for (to_guests guest : my_guest) {
//                JOptionPane.showMessageDialog(null, guest.name);
                for (S2_search.to_orders t : to) {
                    double qty = 0;
                    String s2 = "select qty from " + MyDB.getNames() + ".customer_tables_details where product_name='" + t.name + "' and table_no_id='" + room_id + "' and guest_id='" + guest.id + "'";
                    Statement stmt1 = conn.createStatement();
                    ResultSet rs = stmt1.executeQuery(s2);
                    if (rs.next()) {
                        qty = rs.getDouble(1);
                    }
                    if (qty == 0) {

                        String s0 = "insert into " + MyDB.getNames() + ".customer_tables_details(table_no_id,qty,product_name,description,price,img_path,status"
                                    + ",guest_id,guest_name,cat_id,date_added)values(?,?,?,?,?,?,?,?,?,?,?)";
                        PreparedStatement stmt = conn.prepareStatement(s0);
                        stmt.setString(1, room_id);
                        stmt.setDouble(2, t.qty);
                        stmt.setString(3, t.name);
                        stmt.setString(4, t.desc);
                        stmt.setDouble(5, t.price);
                        stmt.setString(6, t.img_path);
                        stmt.setString(7, "0");
                        stmt.setString(8, guest.id);
                        stmt.setString(9, guest.name);
                        stmt.setString(10, t.cat_id);
                        stmt.setString(11, now);
                        stmt.execute();
                        my_amount += t.qty * t.price;
                        Lg.s(S1_check_in.class, "Successfully Added");

                        String ctd_id = "-1";
                        String s4 = "select max(id) from " + MyDB.getNames() + ".customer_tables_details";
                        Statement stmt4 = conn.createStatement();
                        ResultSet rs4 = stmt.executeQuery(s4);
                        while (rs4.next()) {
                            ctd_id = rs4.getString(1);
                        }
                        List<S2_search.to_items_status> subs = t.to_sub;
                        for (S2_search.to_items_status to_customer_table_details_assembly : subs) {
                            String s5 = "insert into " + MyDB.getNames() + ".customer_table_details_assembly("
                                        + "ctd_id"
                                        + ",prod_num"
                                        + ",description"
                                        + ",price"
                                        + ",product_qty"
                                        + ",ref_num"
                                        + ",status"
                                        + ",table_no"
                                        + ",is_selected"
                                        + ")values("
                                        + ":ctd_id"
                                        + ",:prod_num"
                                        + ",:description"
                                        + ",:price"
                                        + ",:product_qty"
                                        + ",:ref_num"
                                        + ",:status"
                                        + ",:table_no"
                                        + ",:is_selected"
                                        + ")";

                            s5 = SqlStringUtil.parse(s5).setString("ctd_id", ctd_id).setString("prod_num", to_customer_table_details_assembly.name).setString("description", to_customer_table_details_assembly.desc).setNumber("price", to_customer_table_details_assembly.price).setNumber("product_qty", to_customer_table_details_assembly.qty).setString("ref_num", t.name).setNumber("status", 0).setString("table_no", table_no).setBoolean("is_selected", to_customer_table_details_assembly.status).ok();
                            PreparedStatement stmt5 = conn.prepareStatement(s5);
                            stmt5.execute();
                            Lg.s(S1_check_in.class, "Successfully Added");
                        }
                    } else {
                        qty += t.qty;
                        double new_qty = qty - t.qty;
                        my_amount += new_qty * t.price;

                        String s0 = "update " + MyDB.getNames() + ".customer_tables_details set qty='" + qty + "' where product_name='" + t.name + "' and table_no_id='" + room_id + "'";
                        PreparedStatement stmt = conn.prepareStatement(s0);
                        stmt.execute();
                        Lg.s(S1_check_in.class, "Successfully Updated");
                    }
                }
                double to_pay = 0;
                String s2 = "select to_pay from " + MyDB.getNames() + ".room_guests where rooom_id='" + room_id + "' and guest_id='" + guest.id + "' and status='" + "0" + "'";
                Statement stmt1 = conn.createStatement();
                ResultSet rs = stmt1.executeQuery(s2);
                if (rs.next()) {
                    to_pay = rs.getDouble(1);
                }
                to_pay += my_amount;
                String s0 = "update " + MyDB.getNames() + ".room_guests set to_pay='" + to_pay + "' where rooom_id='" + room_id + "' and guest_id='" + guest.id + "' and status='" + "0" + "' ";
                PreparedStatement stmt = conn.prepareStatement(s0);
                stmt.execute();
                Lg.s(S1_check_in.class, "Successfully Updated");
            }
        } catch (Exception e) {
            PoolConnection.close();
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static void update_room_order(String table_no) {
        try {
            Connection conn = PoolConnection.connect();
            String id = "0";
//            String s1="select id from "+MyDB.getNames()+".customer_tables where status='" + "0" + "' and table_no='"+table_no+"'";
//            Statement stmt1 = conn.createStatement();
//            ResultSet rs = stmt1.executeQuery(s1);
//            if (rs.next()) {
//               id = rs.getString(1);
//            }

            String s0 = "update " + MyDB.getNames() + ".customer_tables set status='" + "1" + "' where status='" + "0" + "' and id='" + table_no + "' ";
            PreparedStatement stmt = conn.prepareStatement(s0);
            stmt.execute();

            String s1 = "update " + MyDB.getNames() + ".customer_tables_details set status='" + "1" + "' where table_no_id='" + table_no + "' ";
            PreparedStatement stmt1 = conn.prepareStatement(s1);
            stmt1.execute();
            Lg.s(S1_check_in.class, "ROOM PAYED");

        } catch (Exception e) {
            PoolConnection.close();
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }
}
