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
public class Check_product_if_existing {
    
    //<editor-fold defaultstate="collapsed" desc="do_check">
    public static boolean do_check(String name){
        try {
            
            String s0 = "select p.id from "+MyDB.getNames()+".products p where p.product_name = :product_name; ";
            
            s0 = SqlStringUtil.parse(s0)
                    .setString("product_name", name)
                    .ok();
            
            Lg.$.severe(s0);
            Connection conn = PoolConnection.connect();
            PreparedStatement stmt = conn.prepareStatement(s0);
            ResultSet rs = stmt.executeQuery();
            
            return rs.next();
//            JOptionPane.showMessageDialog(null, "adad");
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }
    //</editor-fold>
   
    
    public static void main(String[] args) {
        System.out.println(do_check("LIEMPO"));
    }
    
}
