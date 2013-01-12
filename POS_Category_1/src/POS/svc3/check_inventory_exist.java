/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.svc3;

import java.sql.Connection;
import overallPOS.modules.share.utils.PoolConnection;

/**
 *
 * @author Dummy
 */
public class check_inventory_exist {
    
    
    public static String check_if_inv_exists(String number){
        
//        String date=S5_select_
        
        String stat="";
        try {
            Connection conn = PoolConnection.connect();
            
            String s0="";
            
            
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
        
        return stat;
        
    }
}
