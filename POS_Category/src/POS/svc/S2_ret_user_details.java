/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.svc;

import POS.Main.MyDB;
import POS.to.to_users;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import overallPOS.modules.share.utils.PoolConnection;

/**
 *
 * @author u2
 */
public class S2_ret_user_details {

    public static List<to_users.u> get_user_data() {

        List<to_users.u> datas = new ArrayList();

        String s0 = "select user_name,user_level,user_code from " + MyDB.getNames() + ".users ";

        try {
            Connection conn = PoolConnection.connect();

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);

            while (rs.next()) {
                String username = rs.getString(1);
                String user_level = rs.getString(2);
                String name = rs.getString(3);
                System.out.println(username);
                to_users.u to = new to_users.u(username, user_level, name);
                datas.add(to);
            }


        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }

        return datas;
    }
    public static int userlevel = 0;
    public static String password = "";

    public static void get_user_data2(String user_name) {



//        String s0 =
//                "call pb_pos_restaurant.select_user_details2( "
//                + "  :a_user_name "
//                + "  ); ";
//        s0=SqlStringUtil.parse(s0)
//                .setString("a_user_name", user_name)
//                .ok();
        String s1 = "select  "
                    + "p.user_code"
                    + ",p.user_name"
                    + ",p.password"
                    + ",p.user_level from " + MyDB.getNames() + ".users p where user_name='" + user_name + "'";
        try {
            Connection conn = PoolConnection.connect();

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s1);

            while (rs.next()) {
                password = rs.getString(3);
                userlevel = rs.getInt(4);

            }



        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static List<String> get_cashiers() {

        List<String> datas = new ArrayList();
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select user_name from " + MyDB.getNames() + ".users where user_level=0";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                String num = rs.getString(1);
                datas.add(num);
            }

            return datas;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }

    public static void main(String[] args) {
        System.out.println(get_cashiers());
    }
}
