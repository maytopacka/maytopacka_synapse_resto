/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.transfer_table;

import POS.Main.MyDB;
import POS.dlg2.S1_charge_to_room.to_room_guests;
import POS.utl.MyConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import mijzcx.synapse.desk.utils.Lg;
import test.Dlg_check_liquid;

/**
 *
 * @author i1
 */
public class S1_table_transfer {

    public static class to_tables {

        public final int id;
        public final String table_name;
        public final String status;
        public final int no_of_guest;

        public to_tables(int id, String table_name, String status, int no_of_guest) {
            this.id = id;
            this.table_name = table_name;
            this.status = status;
            this.no_of_guest = no_of_guest;
        }
    }

    public static List<to_tables> ret_data(String search, String location_id, String table_id) {
        List<to_tables> datas = new ArrayList();

        System.out.println(table_id + " = " + location_id + " = " + search);
        try {
            Connection conn = MyConnection.connect();
            String s0 = "select "
                        + "id"
                        + ",table_name"
                        + " from " + MyDB.getNames() + ".tables where "
                        + " table_name  like '%" + search + "%' "
                        + " and table_location_id ='" + location_id + "' and id<>'" + table_id + "'"
                        + " ";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                int id = rs.getInt(1);
                String table_name = rs.getString(2);
                System.out.println(table_name);
                String s1 = "select count(id) from " + MyDB.getNames() + ".room_guests where rooom_id='" + id + "' and status<>'" + "1" + "'";
                Statement stmt2 = conn.createStatement();
                ResultSet rs2 = stmt2.executeQuery(s1);
                int count = 0;
                if (rs2.next()) {
                    count = rs2.getInt(1);
                }
                String status = "OCCUPIED";
                if (count == 0) {
                    status = "AVAILABLE";
                }
                to_tables to = new to_tables(id, table_name, status, count);
                datas.add(to);
            }
            return datas;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            MyConnection.close();
        }
    }

    public static void edit_data(List< Dlg_check_liquid.to_guests> guest, String table_id, String table_id_from) {
        try {
            Connection conn = MyConnection.connect();

            for (Dlg_check_liquid.to_guests to : guest) {
                String s0 = "update " + MyDB.getNames() + ".room_guests set "
                            + "rooom_id= '" + table_id + "'"
                            + "where "
                            + " rooom_id ='" + table_id_from + "' "
                            + " and status ='" + "0" + "' "
                            + " and guest_id ='" + to.id + "' "
                            + " ";
                PreparedStatement stmt = conn.prepareStatement(s0);
                stmt.execute();
                Lg.s(S1_table_transfer.class, "Successfully Updated room_guests ");
                
                String s2= "update " + MyDB.getNames() + ".guest_charges set "
                            + "table_no= '" + table_id + "'"
                            + "where "
                            + " table_no ='" + table_id_from + "' "
                            + " and status ='" + "0" + "' "
                            + " and guest_id ='" + to.id + "' "
                            + " ";
                PreparedStatement stmt2 = conn.prepareStatement(s2);
                stmt2.execute();
                Lg.s(S1_table_transfer.class, "Successfully Updated guest_charges");
                
                String s3= "update " + MyDB.getNames() + ".guest_advance_payment set "
                            + "room_id= '" + table_id + "'"
                            + "where "
                            + " room_id ='" + table_id_from + "' "
                            + " and status ='" + "0" + "' "
                            + " and guest_id ='" + to.id + "' "
                            + " ";
                PreparedStatement stmt3 = conn.prepareStatement(s3);
                stmt3.execute();
                Lg.s(S1_table_transfer.class, "Successfully Updated guest_advance_payment");
                
                
                String s4= "update " + MyDB.getNames() + ".customer_tables_details set "
                            + "table_no_id= '" + table_id + "'"
                            + "where "
                            + " table_no_id ='" + table_id_from + "' "
                            + " and status ='" + "0" + "' "
                            + " and guest_id ='" + to.id + "' "
                            + " ";
                PreparedStatement stmt4 = conn.prepareStatement(s4);
                stmt4.execute();
                Lg.s(S1_table_transfer.class, "Successfully Updated customer_tables_details");
                
                
                String s5= "update " + MyDB.getNames() + ".bill_discounts set "
                            + "table_id= '" + table_id + "'"
                            + "where "
                            + " table_id ='" + table_id_from + "' "
                            + " and status ='" + "0" + "' "
                            + " ";
                PreparedStatement stmt5 = conn.prepareStatement(s5);
                stmt5.execute();
                Lg.s(S1_table_transfer.class, "Successfully Updated customer_tables_details");
                
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            MyConnection.close();
        }
    }
}
