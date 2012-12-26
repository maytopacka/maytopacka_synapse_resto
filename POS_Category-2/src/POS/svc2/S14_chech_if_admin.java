/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.svc2;

import POS.Main.MyDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import overallPOS.modules.share.utils.Lg;
import overallPOS.modules.share.utils.PoolConnection;
import overallPOS.modules.share.utils.SqlStringUtil;

/**
 *
 * @author u2
 */
public class S14_chech_if_admin {

    //<editor-fold defaultstate="collapsed" desc="do_check_if_adming">
    public static int do_check_if_adming(String name) {


        try {
            String s0 = "select u.user_level "
                        + "from "+MyDB.getNames()+".users u "
                        + "where u.user_name = :user_name; ";

            s0 = SqlStringUtil.parse(s0).setString("user_name", name).ok();

            Lg.$.severe(s0);

            Connection conn = PoolConnection.connect();

            PreparedStatement stmt = conn.prepareStatement(s0);
            ResultSet rs = stmt.executeQuery(s0);
            if (!rs.next()) {
                return 0;
            }

            return rs.getInt("user_level");
        } catch (Exception e) {
//            JOptionPane.showMessageDialog(null, "Err" + e);
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }
    //</editor-fold>

    public static void main(String[] args) {
        System.out.println(do_check_if_adming("cashier"));
    }
}
