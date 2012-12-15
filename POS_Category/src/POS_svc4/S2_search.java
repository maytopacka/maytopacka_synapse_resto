/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS_svc4;

import POS.Main.MyDB;
import POS_to4.to_search_prod;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import overallPOS.modules.share.utils.PoolConnection;
import test.Dlg_check;
import test.Dlg_check.to_guests;

/**
 *
 * @author Dummy
 */
public class S2_search {

    public static List<to_search_prod> ret_product(String name) {

        List<to_search_prod> datas = new ArrayList();
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select product_name,description,price,product_qty from "+MyDB.getNames()+".inventory2_stocks_left where description like '%" + name + "%' or lookup_code like '%" + name + "%' or product_name like '" + name + "%' ";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                String names = rs.getString(1);
                String desc = rs.getString(2);
                String price = rs.getString(3);
                double qty = rs.getDouble(4);
                to_search_prod to = new to_search_prod(names, "pcs", desc, price, qty);
                datas.add(to);
            }
            return datas;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static class to_items {

        public String name;
        public String uom;
        public String desc;
        public double price;
        public double qty;
        public String img_path;
        public double qty2;
        public final String guest_id;
        public final String cat_id;

        public to_items(String name, String uom, String desc, double price, double qty, String img_path, double qty2, String guest_id, String cat_id) {
            this.name = name;
            this.uom = uom;
            this.desc = desc;
            this.price = price;
            this.qty = qty;
            this.img_path = img_path;
            this.qty2 = qty2;
            this.guest_id = guest_id;
            this.cat_id = cat_id;
        }

        public String getDesc() {
            return desc;
        }

        public void setDesc(String desc) {
            this.desc = desc;
        }

        public String getImg_path() {
            return img_path;
        }

        public void setImg_path(String img_path) {
            this.img_path = img_path;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }

        public double getQty() {
            return qty;
        }

        public void setQty(double qty) {
            this.qty = qty;
        }

        public String getUom() {
            return uom;
        }

        public void setUom(String uom) {
            this.uom = uom;
        }
    }

    public static class to_items_status {

        public double qty;
        public String name;
        public String uom;
        public String desc;
        public double price;
        public String img_path;
        public double qty2;
        public boolean status;

        public to_items_status(double qty, String name, String uom, String desc, double price, String img_path, double qty2, boolean status) {
            this.qty = qty;
            this.name = name;
            this.uom = uom;
            this.desc = desc;
            this.price = price;
            this.img_path = img_path;
            this.qty2 = qty2;
            this.status = status;
        }

        public String getDesc() {
            return desc;
        }

        public void setDesc(String desc) {
            this.desc = desc;
        }

        public String getImg_path() {
            return img_path;
        }

        public void setImg_path(String img_path) {
            this.img_path = img_path;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }

        public double getQty() {
            return qty;
        }

        public void setQty(double qty) {
            this.qty = qty;
        }

        public String getUom() {
            return uom;
        }

        public void setUom(String uom) {
            this.uom = uom;
        }

        public double getQty2() {
            return qty2;
        }

        public void setQty2(double qty2) {
            this.qty2 = qty2;
        }

        public boolean isStatus() {
            return status;
        }

        public void setStatus(boolean status) {
            this.status = status;
        }
    }

    public static class to_orders {

        public String name;
        public String uom;
        public String desc;
        public double price;
        public double qty;
        public String img_path;
        public double qty2;
        public List<S2_search.to_items_status> to_sub;
        public double amount_to_pay;
        public String cat_id;

        public to_orders(String name, String uom, String desc, double price, double qty, String img_path, double qty2, List<to_items_status> to_sub, double amount_to_pay, String cat_id) {
            this.name = name;
            this.uom = uom;
            this.desc = desc;
            this.price = price;
            this.qty = qty;
            this.img_path = img_path;
            this.qty2 = qty2;
            this.to_sub = to_sub;
            this.amount_to_pay = amount_to_pay;
            this.cat_id = cat_id;
        }

        public double getAmount_to_pay() {
            return amount_to_pay;
        }

        public void setAmount_to_pay(double amount_to_pay) {
            this.amount_to_pay = amount_to_pay;
        }

        public List<to_items_status> getTo_sub() {
            return to_sub;
        }

        public void setTo_sub(List<to_items_status> to_sub) {
            this.to_sub = to_sub;
        }

        public String getDesc() {
            return desc;
        }

        public void setDesc(String desc) {
            this.desc = desc;
        }

        public String getImg_path() {
            return img_path;
        }

        public void setImg_path(String img_path) {
            this.img_path = img_path;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }

        public double getQty() {
            return qty;
        }

        public void setQty(double qty) {
            this.qty = qty;
        }

        public String getUom() {
            return uom;
        }

        public void setUom(String uom) {
            this.uom = uom;
        }

        public double getQty2() {
            return qty2;
        }

        public void setQty2(double qty2) {
            this.qty2 = qty2;
        }
    }

    public static class to_rooms {

        public final String id;
        public final String name;
        public final String num;
        public final String status;
        public final double topay;
        public final String guest_id;
        public final String guest_name;
        public final String date_added;
        public final String room;
        public final double room_rate;
        public final List<Dlg_check.to_guests> to_guest;
        public final String type;
        public final double percentage;

        public to_rooms(String id, String name, String num, String status, double topay, String guest_id, String guest_name, String date_added, String room, double room_rate, List<to_guests> to_guest, String type, double percentage) {
            this.id = id;
            this.name = name;
            this.num = num;
            this.status = status;
            this.topay = topay;
            this.guest_id = guest_id;
            this.guest_name = guest_name;
            this.date_added = date_added;
            this.room = room;
            this.room_rate = room_rate;
            this.to_guest = to_guest;
            this.type = type;
            this.percentage = percentage;
        }
        
       
    }

    public static List<to_items> ret_items(String cat_id, String name) {

        List<to_items> datas = new ArrayList();
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select "
                        + "product_name"
                        + ",description"
                        + ",price"
                        + ",product_qty"
                        + ",img_path "
                        + ",cat_id "
                        + "from "+MyDB.getNames()+".inventory2_stocks_left "
                        + "where "
                        + "description like '%" + name + "%' and cat_id like '%" + cat_id + "%' or "
                        + "lookup_code like '%" + name + "%' and cat_id like '%" + cat_id + "%' or "
                        + "product_name like '" + name + "%' and cat_id like '%" + cat_id + "%'";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                String names = rs.getString(1);
                String desc = rs.getString(2);
                double price = rs.getDouble(3);
                double qty = rs.getDouble(4);
                String img_path = rs.getString(5);
                String cat_ids = rs.getString(6);
                if (img_path.equals("empty")) {
                    img_path = "siopao.jpeg";
                }
                to_items to = new to_items(names, "pcs", desc, price, qty, img_path, qty, "-1", cat_ids);
                datas.add(to);
            }
            return datas;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static List<to_items> ret_items_room(String room_no) {

        List<to_items> datas = new ArrayList();
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select "
                        + "product_name"
                        + ",description"
                        + ",price"
                        + ",qty"
                        + ",img_path "
                        + ",guest_id "
                        + ",cat_id "
                        + "from "+MyDB.getNames()+".customer_tables_details "
                        + "where "
                        + "table_no_id = '" + room_no + "' and status ='" + "0" + "'";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                String names = rs.getString(1);
                String desc = rs.getString(2);
                double price = rs.getDouble(3);
                double qty = rs.getDouble(4);
                String img_path = rs.getString(5);
                String guest_id = rs.getString(6);
                String cat_id = rs.getString(7);
                if (img_path.equals("empty")) {
                    img_path = "siopao.jpeg";
                }
                to_items to = new to_items(names, "pcs", desc, price, qty, img_path, qty, guest_id, cat_id);
                datas.add(to);
            }
            return datas;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static List<to_items> ret_guest_orders(String room_no, String guest_name) {

        List<to_items> datas = new ArrayList();
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select "
                        + "product_name"
                        + ",description"
                        + ",price"
                        + ",qty"
                        + ",img_path "
                        + ",guest_id "
                        + ",cat_id "
                        + "from "+MyDB.getNames()+".customer_tables_details "
                        + "where "
                        + "table_no_id = '" + room_no + "' and status<>'" + "1" + "' and guest_name like '%" + guest_name + "%'";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                String names = rs.getString(1);
                String desc = rs.getString(2);
                double price = rs.getDouble(3);
                double qty = rs.getDouble(4);
                String img_path = rs.getString(5);
                String guest_id = rs.getString(6);
                String cat_id = rs.getString(7);
//                System.out.println(desc + " 0asdasd");
                if (img_path.equals("empty")) {
                    img_path = "siopao.jpeg";
                }
                to_items to = new to_items(names, "pcs", desc, price, qty, img_path, qty, guest_id, cat_id);
                datas.add(to);
            }
            return datas;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static List<to_items> ret_guest_orders_where(String room_no, String where) {

        List<to_items> datas = new ArrayList();
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select "
                        + "product_name"
                        + ",description"
                        + ",price"
                        + ",qty"
                        + ",img_path "
                        + ",guest_id "
                        + ",cat_id "
                        + "from "+MyDB.getNames()+".customer_tables_details "
                        + " " + where;
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                String names = rs.getString(1);
                String desc = rs.getString(2);
                double price = rs.getDouble(3);
                double qty = rs.getDouble(4);
                String img_path = rs.getString(5);
                String guest_id = rs.getString(6);
                String cat_id = rs.getString(7);
                System.out.println(guest_id + " - sss");
                if (img_path.equals("empty")) {
                    img_path = "siopao.jpeg";
                }
                to_items to = new to_items(names, "pcs", desc, price, qty, img_path, qty, guest_id, cat_id);
                datas.add(to);
            }
            return datas;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static double ret_guest_chargers_where(String room_no, String where) {

        double charge = 0;
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select "
                        + "sum(amount)"
                        + "from "+MyDB.getNames()+".guest_charges "
                        + " " + where;
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                charge = rs.getDouble(1);
            }
            return charge;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }
     public static int ret_guest_charge_count(String room_no, String where) {

        int charge = 0;
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select "
                        + "count(amount)"
                        + "from "+MyDB.getNames()+".guest_charges "
                        + " " + where;
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            if (rs.next()) {
                charge = rs.getInt(1);
            }
            return charge;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static double ret_guest_chargers_where_all(String room_no) {

        double charge = 0;
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select "
                        + "sum(amount)"
                        + "from "+MyDB.getNames()+".guest_charges "
                        + " where status='" + "0" + "' and table_no = '" + room_no + "'";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                charge = rs.getDouble(1);
            }
            return charge;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }
}
