/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.svc;

import POS.Main.MyDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import overallPOS.modules.share.utils.Lg;
import overallPOS.modules.share.utils.PoolConnection;

/**
 *
 * @author u2
 */
public class S4_delete_user {

    public static void delete_user(String user_name) {
        try {
            Connection conn = PoolConnection.connect();
            String s0 ="delete from "+MyDB.getNames()+".users where user_name='"+user_name+"'";
                  

           PreparedStatement stmt=conn.prepareStatement(s0);
           stmt.execute();
           
           Lg.i(S4_delete_user.class, "deleted");
//            JOptionPane.showMessageDialog(null, "deleted");
            

        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }
    
    public static void main(String[] args) {
        delete_user("user");
    }
}
