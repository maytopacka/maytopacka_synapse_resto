/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.svc;

import POS.Main.MyDB;
import POS.utl.Constants;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import overallPOS.modules.share.utils.PoolConnection;
import overallPOS.modules.share.utils.SqlStringUtil;

/**
 *
 * @author u2
 */
public class S12_retval_user_level {

    
    //<editor-fold defaultstate="collapsed" desc="get_user_level">
    public static int get_user_level(String username) {

        try {
            
            String s0 = "select u.user_level "
                    + "from "+MyDB.getNames()+".users u "
                    + "where u.user_name= :username ";
            
            s0 = SqlStringUtil.parse(s0)
                    .setString("username", username)
                    .ok();
            
            Connection conn = PoolConnection.connect();
           
            PreparedStatement pstmt = conn.prepareStatement(s0);
            ResultSet rs = pstmt.executeQuery();
           
            if (!rs.next()) {
                return Constants.DEFAULT_USER_LEVEL;
            }
            
            return rs.getInt("user_level");
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }
    //</editor-fold>
    
    
    public static void main(String[] args) {
        System.out.println(get_user_level("admin1"));
    }
}
