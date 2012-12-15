/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.svc;

import POS.Main.MyDB;
import POS.svc2.S10_select_products;
import POS.svc2.S12_cashier_sessions;
import POS.svc4.S2_customers;
import POS.svc4.S4_charge_invoice;
import POS.to.to_order;
import POS.to.to_pay;
import POS.to.to_users;
import POS.to2.to_credit;
import POS.to2.to_disc;
import POS.utl.DateType;
import POS.utl.NumType;
import POS_svc4.S1_categories;
import birsession.svc.svc_bir;
import birsession.to.to_receipt;
import java.awt.Component;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import overallPOS.modules.share.utils.*;
import overallPOS.modules.share.utils.DBConnectionPool.DBOutlet;



import test.Dlg_check;

/**
 *
 * @author u2
 */
public class Svc_1 {

    public static int p_receipts_add(int a_cashier_session_id,
            double a_tendered, String a_or_number, Date a_receipt_date, String discount, to_credit to2) {
        try {

            String s0 = "insert into " + MyDB.getNames() + ".receipts(cashier_session_id,tendered,or_number,receipt_date,discount )"
                        + "values(:a_cashier_session_id,:a_tendered,:a_or_number,:a_receipt_date ,:a_discount)";

            s0 = SqlStringUtil.parse(s0).setNumber("a_cashier_session_id", a_cashier_session_id).setNumber("a_tendered", a_tendered).setString("a_or_number", a_or_number).setDate("a_receipt_date", a_receipt_date).setString("a_discount", discount).ok();

            Connection conn = PoolConnection.connect();
            PreparedStatement pstmt = conn.prepareStatement(s0);
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) {
////                JOptionPane.showMessageDialog(null, rs.getInt("or_number"));
//                return rs.getInt("or_number");
//
//            }
            return FitIn.toInt(a_or_number) + 1;

//            return 0;
        } catch (Exception e) {
//            JOptionPane.showMessageDialog(null, "adadad");
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }


    }

    public static int p_receipts_add2(int a_cashier_session_id,
            double a_tendered, String a_or_number, Date a_receipt_date, String discount, to_credit to2, int bb, String member_id) {

        String app_code = "";
        String payed = "";
        double credit = 0;
        if (bb == 0) {
            app_code = "";
            credit = 0;
            payed = "yes";
        } else {
            app_code = to2.author_code;
            credit = to2.amount;
            payed = "no";

        }
        if (bb == 3) {
            credit = 0;
            payed = "yes";
        }

//        JOptionPane.showMessageDialog(null, a_tendered + " "+a_or_number + " "+a_receipt_date + " "+discount);
        try {
            Connection conn = PoolConnection.connect();

            String s0 = "insert into " + MyDB.getNames() + ".receipts(cashier_session_id,tendered,or_number,receipt_date,discount,credit,approval_code,member_id,is_payed)"
                        + "values(:a_cashier_session_id,:a_tendered,:a_or_number,:a_receipt_date,:a_discount,:a_credit,:a_approval_code,:a_member_id,:a_is_payed)  ";

            s0 = SqlStringUtil.parse(s0).setNumber("a_cashier_session_id", a_cashier_session_id).setNumber("a_tendered", a_tendered).setString("a_or_number", a_or_number).setDate("a_receipt_date", a_receipt_date).setString("a_discount", discount).setNumber("a_credit", credit).setString("a_approval_code", app_code).setString("a_member_id", member_id).setString("a_is_payed", payed).ok();

            PreparedStatement stmt = conn.prepareStatement(s0);
            stmt.execute();
            Lg.s(Svc_1.class, "Successfully Added");
            return FitIn.toInt(a_or_number);

        } catch (Exception e) {
//            JOptionPane.showMessageDialog(null, "adadad");
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }


    }

    public static void p_receipt_items_add(int a_receipt_id,
            String a_product_name, double a_unit_price, double a_qty, String num, String tot_disc, String prod_name) {

        String[] cat = new String[5];
        cat = S1_categories.product_category(a_product_name);
        try {
            String s0 = "call pb_pos_restaurant.p_receipt_items_add( "
                        + "  :a_receipt_id "
                        + " ,:a_product_name "
                        + " ,:a_unit_price "
                        + " ,:a_qty "
                        + " ,:a_category "
                        + " ,:a_type "
                        + " ,:a_desc "
                        + "); ";

            s0 = SqlStringUtil.parse(s0).setString("a_receipt_id", num).setString("a_product_name", a_product_name).setNumber("a_unit_price", a_unit_price).setNumber("a_qty", a_qty).setString("a_category", cat[1]).setString("a_type", cat[0]).setString("a_desc", prod_name).ok();

            Connection conn = PoolConnection.connect();
            PreparedStatement pstmt = conn.prepareStatement(s0);
            pstmt.execute();


        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }


    }

    public static void pay(to_pay to_pay, String name, to_disc to1, to_credit to2, int bb, String member_id, List<Dlg_check.to_guests> my_guest, String table_no) {

        to_disc to = to1;
        try {
            Connection conn = PoolConnection.connect();
            Date date = new Date();
            int id = 0;
            if (System.getProperty("version", "ordering").equals("ordering")) {
                id = S12_cashier_sessions.get_cashier_ses_id2(name);
            } else {
                id = S12_cashier_sessions.get_cashier_ses_id2(name);
            }

            double disc = 0;
            int receipt_id = 0;
            String cust_name = "";
            String cust_address = "";
            if (bb == 2) {
                receipt_id = p_receipts_add2(id, to_pay.tendered, to_pay.or, date, "0", to2, bb, member_id);
                String s5 = "insert into " + MyDB.getNames() + ".customer_charges("
                            + "cust_num"
                            + ",cust_name"
                            + ",or_num"
                            + ",ci_num"
                            + ",amount"
                            + ",date_added"
                            + ",is_payed"
                            + ",user_name"
                            + ",user_id,date_payed)values(?,?,?,?,?,?,?,?,?,?)";
                String num = S2_customers.get_cust_num(to2.card_holder);
                PreparedStatement stmt5 = conn.prepareStatement(s5);
                stmt5.setString(1, num);
                stmt5.setString(2, to2.card_holder);
                stmt5.setString(3, "" + receipt_id);
                stmt5.setString(4, to2.bank);
                stmt5.setDouble(5, to2.amount);
                stmt5.setString(6, DateType.datetime.format(date));
                stmt5.setString(7, "no");
                stmt5.setString(8, "cashier");
                stmt5.setString(9, "1");
                stmt5.setString(10, DateType.datetime.format(date));
                stmt5.execute();
                cust_name = to2.card_holder;
                cust_address = to2.credit_card_no;
                S4_charge_invoice.do_add(to2.bank);
            } else if (bb == 3) {
                cust_name = to2.card_holder;
                cust_address = to2.credit_card_no;
                double bal = S2_customers.get_balance(member_id);
                bal -= to_pay.tendered;
                String s3 = "update " + MyDB.getNames() + ".customers set balance='" + bal + "' where id='" + member_id + "'";
                PreparedStatement stmt1 = conn.prepareStatement(s3);
                stmt1.execute();

                receipt_id = p_receipts_add2(id, to_pay.tendered, to_pay.or, date, "0", to2, bb, member_id);
            } else {

                receipt_id = p_receipts_add2(id, to_pay.tendered, to_pay.or, date, "0", to2, bb, member_id);
            }
            List<to_order> tps = to_pay.orders;
            for (to_order too : tps) {
                p_receipt_items_add(receipt_id, too.code, too.unit_price, too.hd_uom, to_pay.or, to1.tot_disc, too.product_name);
            }

            for (to_order too : tps) {

                String s1 = "update " + MyDB.getNames() + ".inventory2_stocks_left p set p.product_qty = :total where p.product_name = :product_name; ";

                double qty = S10_select_products.get_qty(too.code);
                double total = qty - too.hd_uom;
                s1 = SqlStringUtil.parse(s1).setNumber("total", total).setString("product_name", too.code).ok();

                PreparedStatement psmt3 = conn.prepareStatement(s1);
                psmt3.execute();
            }

            for (Dlg_check.to_guests t_guest : my_guest) {
                String s3 = "update " + MyDB.getNames() + ".room_guests set status='" + "1" + "' where rooom_id='" + table_no + "' and guest_id='" + t_guest.id + "'";
                PreparedStatement stmt3 = conn.prepareStatement(s3);
                stmt3.execute();
                Lg.s(Svc_1.class, "Status Updated room guest" + t_guest);

                String s5 = "update " + MyDB.getNames() + ".guest_advance_payment set status='" + "1" + "' where room_id='" + table_no + "' and guest_id='" + t_guest.id + "'";
                PreparedStatement stmt5 = conn.prepareStatement(s5);
                stmt5.execute();
                Lg.s(Svc_1.class, "Status Updated guest advances " + t_guest.id);
            }

            if (to1.dis_name == null) {
            } else {
                String s2 = "insert into " + MyDB.getNames() + ".receipt_discount(or_number,disc_no,disc_name,disc_percent,disc_rate,cust_name,cust_no,cust_address)values(?,?,?,?,?,?,?,?)";
                PreparedStatement stmt = conn.prepareStatement(s2);
                stmt.setInt(1, receipt_id);
                stmt.setString(2, "1");
                stmt.setString(3, to1.dis_name);
                stmt.setString(4, to1.dis_rate);
                stmt.setString(5, to1.tot_disc);
                stmt.setString(6, to1.cust_name);
                stmt.setString(7, to1.cust_no);
                stmt.setString(8, to1.cus_add);
                stmt.execute();
            }

            // bir cashier

            DBOutlet dbo = DBConnectionPool.db_outlet(conn, false);

            int a_issuance_refid = 0;
            String a_orno = to_pay.or;
            String a_trn = to_pay.or;
            double a_tendered = to_pay.tendered;
            double a_disc_by_total = Double.parseDouble(NumType.no_comma(to1.tot_disc));
            String a_sc_id = "";
            int a_disc_type = -1;
            String a_customer_name = cust_name;
            String a_clerk_name = "";
            String a_paymt_type = "";
            String a_cust_addr = cust_address;
            String a_cust_tin = "";
            Date a_modified = new Date();

            String a_modified_by = "";
            String a_terminal = "";

            String a_cashier_name = S3_insert_new_user.get_name(to_users.get_user());
            Properties prop = new Properties();
            String a_entity_name = System.setProperty("entityName", prop.getProperty("entityName", "Synapse Software Technologies"));;
            String a_check_number = "";
            String tbl_no = "1";
            String order_no = "1";
            to_receipt to_receipt = new to_receipt(a_issuance_refid, a_orno,
                    a_trn, a_tendered, a_disc_by_total, a_sc_id, a_disc_type,
                    a_customer_name, a_clerk_name, a_paymt_type, a_cust_addr,
                    a_cust_tin, a_modified, a_modified_by, a_terminal,
                    a_cashier_name, a_entity_name, a_check_number, tbl_no, order_no);

            int jj = Integer.parseInt(to_pay.or);
            for (to_order too : tps) {
                int issuance_detail_refid = jj;
                String a_dscr = too.product_name;
                String a_lookup_code = too.code;

                String a_brand = "";
                String a_generic = "";
                String a_catalog = "";
                String a_category = "";

                double a_qty = too.hd_uom;
                double a_prc = too.unit_price;
                double a_disc = 0;

                boolean a_is_vat = true;
                to_receipt.particular particular = new to_receipt.particular(
                        issuance_detail_refid, a_dscr, a_lookup_code, a_brand,
                        a_generic, a_catalog, a_category, a_qty, a_prc,
                        a_disc, a_disc_type, a_is_vat);

                to_receipt.particulars.add(particular);
            }
            DBOutlet dbo1 = DBConnectionPool.db_outlet(conn, false);
            svc_bir.issue_receipt(dbo1, to_receipt);   //-kani

            // bir

        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    // bir
    public static void pay2(to_pay to_pay, String name, to_disc to1, to_credit to2, int bb, String member_id, List<Dlg_check.to_guests> my_guest, String table_no) {

        try {
            Connection conn = PoolConnection.connect();

            Date date = new Date();
            int id = 0;
            if (System.getProperty("version", "ordering").equals("ordering")) {
                id = S12_cashier_sessions.get_cashier_ses_id2(name);
            } else {
                id = S12_cashier_sessions.get_cashier_ses_id2(name);
            }
            double disc = 0;
            String cust_name = "";
            String cust_address = "";
            int receipt_id = 0;

            if (bb == 2) {
                receipt_id = p_receipts_add2(id, to_pay.tendered, to_pay.or, date, "0", to2, bb, member_id);
                cust_name = to2.card_holder;
                cust_address = to2.credit_card_no;
                String s5 = "insert into " + MyDB.getNames() + ".customer_charges("
                            + "cust_num"
                            + ",cust_name"
                            + ",or_num"
                            + ",ci_num"
                            + ",amount"
                            + ",date_added"
                            + ",is_payed"
                            + ",user_name"
                            + ",user_id,date_payed)values(?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement stmt5 = conn.prepareStatement(s5);
                String num = S2_customers.get_cust_num(to2.card_holder);
                stmt5.setString(1, num);
                stmt5.setString(2, to2.card_holder);
                stmt5.setString(3, "" + to_pay.or);
                stmt5.setString(4, to2.bank);
                stmt5.setDouble(5, to2.amount);
                stmt5.setString(6, DateType.datetime.format(date));
                stmt5.setString(7, "no");
                stmt5.setString(8, to_users.get_user());
                stmt5.setString(9, "1");
                stmt5.setString(10, DateType.datetime.format(date));
                stmt5.execute();
                S4_charge_invoice.do_add(to2.bank);
            } else if (bb == 3) {
                cust_name = to2.card_holder;
                cust_address = to2.credit_card_no;
                double bal = S2_customers.get_balance(member_id);
                bal -= to_pay.tendered;
                String s3 = "update " + MyDB.getNames() + ".customers set balance='" + bal + "' where id='" + member_id + "'";
                PreparedStatement stmt1 = conn.prepareStatement(s3);
                stmt1.execute();

                receipt_id = p_receipts_add2(id, to_pay.tendered, to_pay.or, date, "0", to2, bb, member_id);
            } else {
                receipt_id = p_receipts_add2(id, to_pay.tendered, to_pay.or, date, "0", to2, bb, member_id);
            }
            List<to_order> tps = to_pay.orders;
            for (to_order too : tps) {
                p_receipt_items_add(receipt_id, too.code, too.unit_price, too.hd_uom, to_pay.or, "0", too.product_name);
            }
            for (to_order too : tps) {
                String s1 = "update " + MyDB.getNames() + ".inventory2_stocks_left p set p.product_qty = :total where p.product_name = :product_name; ";
                double qty = S10_select_products.get_qty(too.code);
                double total = qty - too.hd_uom;
                s1 = SqlStringUtil.parse(s1).setNumber("total", total).setString("product_name", too.code).ok();

                PreparedStatement psmt3 = conn.prepareStatement(s1);
                psmt3.execute();

                String s4 = "update " + MyDB.getNames() + ".customer_tables_details set status='" + "1" + "' where "
                            + "table_no_id='" + table_no + "' "
                            + "and product_name='" + too.code + "' "
                            + "and status='" + "0" + "' "
                            + "and guest_id='" + too.guest_id + "'";

                PreparedStatement stmt4 = conn.prepareStatement(s4);
                stmt4.execute();
                Lg.s(Svc_1.class, "Status Updated customer_tables" + too.code + " = " + too.guest_id + " = " + table_no);

                String s5 = "update " + MyDB.getNames() + ".guest_charges set status='" + "1" + "' where "
                            + "guest_id='" + too.guest_id + "' and status='" + "0" + "' and table_no='" + table_no + "'";

                PreparedStatement stmt5 = conn.prepareStatement(s5);
                stmt5.execute();
                Lg.s(Svc_1.class, "Status Updated Guest Charges" + too.guest_id);
            }
            for (Dlg_check.to_guests t_guest : my_guest) {
                String s3 = "update " + MyDB.getNames() + ".room_guests set status='" + "1" + "' where rooom_id='" + table_no + "' and guest_id='" + t_guest.id + "'";
                PreparedStatement stmt3 = conn.prepareStatement(s3);
                stmt3.execute();
                Lg.s(Svc_1.class, "Status Updated room guest" + t_guest);

                String s5 = "update " + MyDB.getNames() + ".guest_advance_payment set status='" + "1" + "' where room_id='" + table_no + "' and guest_id='" + t_guest.id + "'";
                PreparedStatement stmt5 = conn.prepareStatement(s5);
                stmt5.execute();
                Lg.s(Svc_1.class, "Status Updated guest advances " + t_guest.id);
            }

            String dis = "0";
            DBOutlet dbo = DBConnectionPool.db_outlet(conn, false);
            Properties prop = new Properties();
            int a_issuance_refid = 0;
            String a_orno = to_pay.or;
            String a_trn = to_pay.or;
            double a_tendered = to_pay.tendered;

            double a_disc_by_total = Double.parseDouble(dis);
            String a_sc_id = "";
            int a_disc_type = -1;
            String a_customer_name = cust_name;

            String a_clerk_name = "";
            String a_paymt_type = "";
            String a_cust_addr = cust_address;
            String a_cust_tin = "";
            Date a_modified = new Date();
            String a_modified_by = "";
            String a_terminal = "";
            String tbl_no = "";
            String order_no = "";
            String a_cashier_name = S3_insert_new_user.get_name(to_users.get_user());
            String a_entity_name = System.setProperty("entityName", prop.getProperty("entityName", "Synapse Software Technologies"));;
            String a_check_number = "";

            birsession.to.to_receipt to_receipt = new birsession.to.to_receipt(a_issuance_refid, a_orno,
                    a_trn, a_tendered, a_disc_by_total, a_sc_id, a_disc_type,
                    a_customer_name, a_clerk_name, a_paymt_type, a_cust_addr,
                    a_cust_tin, a_modified, a_modified_by, a_terminal,
                    a_cashier_name, a_entity_name, a_check_number, tbl_no, order_no);

            int jj = Integer.parseInt(to_pay.or);
            for (to_order too : tps) {
                int issuance_detail_refid = jj;
                String a_dscr = too.product_name;
                String a_lookup_code = too.code;

                String a_brand = "";
                String a_generic = "";
                String a_catalog = "";
                String a_category = "";

                double a_qty = too.hd_uom;
                double a_prc = too.unit_price;
                double a_disc = 0;

                boolean a_is_vat = true;
                birsession.to.to_receipt.particular particular = new birsession.to.to_receipt.particular(
                        issuance_detail_refid, a_dscr, a_lookup_code, a_brand,
                        a_generic, a_catalog, a_category, a_qty, a_prc,
                        a_disc, a_disc_type, a_is_vat);

                to_receipt.particulars.add(particular);
            }
            birsession.svc.svc_bir.issue_receipt(dbo, to_receipt); //-kani
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    // bir
    public static void print_receipt(Component parent, String orno) {

        try {
            Connection conn = PoolConnection.connect();

            DBOutlet dbo = DBConnectionPool.db_outlet(conn, false);
//            birsession.rpt.rpt_receipt rr = svc_bir.print_receipt(dbo, orno); -kani
//            birsession.rpt.rpt_receipt.print(parent, rr);


        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }

    }

    private void bir_sessions(to_pay to_pay, String name, to_disc to1, to_credit to2) {
        try {
            Connection conn = PoolConnection.connect();
//            svc_1.issue_receipt(conn, null);

        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static void test_pay() {

        List<to_order> orders = new ArrayList();

        for (int i = 0; i < 10; i++) {
//            to_order to = new to_order("productx" + i, i + 1, 1, "","");
//            to.setQuantity(i * 10);
//            orders.add(to);
        }

        to_pay tp = new to_pay(100, new Date(), "cashiera2", orders, "123478");
//        pay(tp, "adad");

    }

    // many times or receipt
    public static int get_latest_or() {

        int or_number = 0;
        try {
            Connection conn = PoolConnection.connect();
            Statement stmt = conn.createStatement();

            String s0 = "select max(r.or_number) from " + MyDB.getNames() + ".receipts r ";
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                or_number = rs.getInt(1);
//                System.out.println(or_number);
            }
            or_number++;
            return or_number;
//            return Integer.parseInt(ReceiptIncrementor.increment(""+or_number));
        } catch (Exception e) {
//            return 0;
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

//    public static void main(String[] args) {
//        System.out.println(get_latest_or2());
//    }
    public static int get_latest_or2() {

        int or_number = 0;
        try {


            Connection conn = PoolConnection.connect();
            Statement stmt = conn.createStatement();

            String s0 = "select max(r.or_number) from " + MyDB.getNames() + ".receipts r ";
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                or_number = rs.getInt(1);
//                System.out.println(or_number);
            }
            or_number++;
            return or_number;
//            return Integer.parseInt(ReceiptIncrementor.increment(""+or_number));
        } catch (Exception e) {
//            return 0;
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static String increment_id() {
        String id = "0";
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select max(id) from db_bir.bir_sales_ors";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            if (rs.next()) {
                id = rs.getString(1);
            }
            if (id == null) {
                id = "000000000";
            }
            id = ReceiptIncrementor.increment(id);
            return id;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static void main(String[] args) {
        System.out.println(increment_id());
    }
}
