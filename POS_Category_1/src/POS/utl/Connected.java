/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.utl;

import POS.Main.MyDB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import overallPOS.modules.share.utils.PoolConnection;

/**
 *
 * @author Dummy
 */
public class Connected {
    public static String conn(){
        String if_con="no";
        try {
            Connection conn = PoolConnection.connect();
            String s0 = "select max(id) from "+MyDB.getNames()+".users ";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(s0);
            while (rs.next()) {
                 if_con = rs.getString(1);
            }
            return if_con;
        } catch (Exception e) {
            if_con="no";
            return if_con;
            
        } finally {
            PoolConnection.close();
        }
    }
    public static void main(String[] args) {
        System.out.println(conn());
    }
}
