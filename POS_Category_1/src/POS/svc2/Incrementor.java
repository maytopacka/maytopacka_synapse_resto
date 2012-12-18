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

/**
 *
 * @author u2
 */
public class Incrementor {
    
    //<editor-fold defaultstate="collapsed" desc="increment_prod_code">
        
    public static int increment_prod_code() {
        try {
            
            String s0 = "select max(p.id) as max_id from "+MyDB.getNames()+".products p";
            
            Lg.$.severe(s0);
            
            Connection conn = PoolConnection.connect();
            
            PreparedStatement stmt = conn.prepareStatement(s0);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt("max_id") + 1;
                
            }
            
            return 1;
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
        
    }
    //</editor-fold>
    
    
    public static void main(String[] args) {
        System.out.println(increment_prod_code());
    }
    
}
