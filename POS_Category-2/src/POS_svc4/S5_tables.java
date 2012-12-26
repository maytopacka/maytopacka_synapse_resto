/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS_svc4;

import POS.Main.MyDB;
import POS.utl.DateType;
import POS.utl.Prompt;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import overallPOS.modules.share.utils.PoolConnection;
import test.Dlg_check;
import test.Dlg_check.to_guests;

/**
 *
 * @author i1
 */
public class S5_tables {

    public static class to_tables {

        public String name;
        public String no;

        public to_tables(String name, String no) {
            this.name = name;
            this.no = no;
        }
    }

    public static class to_tables2 {

        public final String name;
        public final String no;
        public final String status;
        public final double amount;
        public final double rate;
        public final String guest_id;
        public final String guest_name;
        public final String date_added;
        public final List<Dlg_check.to_guests> to_guest;
        public final String rate_type;
        public final double percentage;

        public to_tables2(String name, String no, String status, double amount, double rate, String guest_id, String guest_name, String date_added, List<to_guests> to_guest, String rate_type, double percentage) {
            this.name = name;
            this.no = no;
            this.status = status;
            this.amount = amount;
            this.rate = rate;
            this.guest_id = guest_id;
            this.guest_name = guest_name;
            this.date_added = date_added;
            this.to_guest = to_guest;
            this.rate_type = rate_type;
            this.percentage = percentage;
        }
    }

    public static List<to_tables2> get_tables() {
        List<to_tables2> datas = new ArrayList();
        try {
            Connection conn = PoolConnection.connect();

            String s0 = "select table_name,id,rate,rate_type,percentage from " + MyDB.getNames() + ".tables";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                String name = rs.getString(1);
                String id = rs.getString(2);
                double rate = rs.getDouble(3);
                String ids = "0";
                String guest_id = "0";
                String guest_name = "";
                String date_added = DateType.datetime.format(new Date());
                String rate_type = rs.getString(4);
                double percentage = rs.getDouble(5);
//                
                String s1 = "select status,id,guest_id,guest_name,checkin_date,rooom_id from " + MyDB.getNames() + ".room_guests where rooom_id='" + id + "' and status='" + "0" + "'";
                Statement stmt2 = conn.createStatement();
                ResultSet rs2 = stmt2.executeQuery(s1);
                double amount = 0;
                String status = "1";
                List<Dlg_check.to_guests> guest = new ArrayList();
                while (rs2.next()) {
                    amount = 0;
                    status = rs2.getString(1);
                    ids = rs2.getString(6);
                    guest_id = rs2.getString(3);
                    guest_name = rs2.getString(4);
                    date_added = rs2.getString(5);

                    boolean status1 = false;
                    if (status.equals("0")) {
                        status1 = true;
                    }
//                    System.out.println(guest_name);
                    Dlg_check.to_guests t = new Dlg_check.to_guests(guest_id, guest_name, status1);
                    guest.add(t);
                }
//                System.out.println(id + " - " + status);
                if (status.equals("0")) {
                    amount = 0;
//                    status = "AVAILABLE";
                    status = "BUSY";
                    id = ids;
                } else {
//                    status = "BUSY";
                    status = "AVAILABLE";

                }

//                System.out.println(id + " - room id - " + guest.size());
//                System.out.println(amount);
                String version = System.getProperty("version", "ordering");
                if (version.equals("ordering")) {
                    rate = 0;
                } else {
                    rate = rs.getDouble(3);
                    double deduct = (percentage / 100) * rate;
                    rate = rate - deduct;
                }

                to_tables2 to = new to_tables2(name, id, status, amount, rate, guest_id, guest_name, date_added, guest, rate_type, percentage);
                datas.add(to);
            }
            return datas;


        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static List<to_tables2> get_tables2() {
        List<to_tables2> datas = new ArrayList();
        try {
            Connection conn = PoolConnection.connect();

            String s0 = "select table_name,id,rate,rate_type,percentage from " + MyDB.getNames() + ".tables";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                String name = rs.getString(1);
                String id = rs.getString(2);
                double rate = rs.getDouble(3);
                String ids = "0";
                String guest_id = "0";
                String guest_name = "";
                String date_added = DateType.datetime.format(new Date());
                String rate_type = rs.getString(4);
                double percentage = rs.getDouble(5);
//             

                to_tables2 to = new to_tables2(name, id, "0", rate, rate, guest_id, guest_name, date_added, new ArrayList(), rate_type, percentage);
                datas.add(to);
            }
            return datas;


        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static void add(String name, double rate, String type, double percent) {
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "insert into " + MyDB.getNames() + ".tables(table_name,rate,rate_type,percentage)values(?,?,?,?)";

            PreparedStatement stmt = conn.prepareStatement(s0);
            stmt.setString(1, name);
            stmt.setDouble(2, rate);
            stmt.setString(3, type);
            stmt.setDouble(4, percent);

            stmt.execute();

            Prompt.call("Added Successfully");
//             JOptionPane.showMessageDialog(null, "Added Successfully");
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static void edit(String name, String no, double rate, String type, double percent) {
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "update " + MyDB.getNames() + ".tables set "
                        + "table_name='" + name + "'"
                        + ",rate='" + rate + "' "
                        + ",rate_type='" + type + "'"
                        + ",percentage='" + percent + "' where id='" + no + "'";

            PreparedStatement stmt = conn.prepareStatement(s0);
            stmt.execute();

            Prompt.call("Successfully Updated");
//             JOptionPane.showMessageDialog(null, "Successfully Updated");
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static void delete(String no) {
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "delete from " + MyDB.getNames() + ".tables where id='" + no + "'";

            PreparedStatement stmt = conn.prepareStatement(s0);
            stmt.execute();

            Prompt.call("Successfully Deleted");
//             JOptionPane.showMessageDialog(null, "Successfully Deleted");
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }
}