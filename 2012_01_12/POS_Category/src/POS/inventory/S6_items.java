/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.inventory;

import POS.Main.MyDB;
import POS.to2.to_add_product;
import POS.utl.MyConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import mijzcx.synapse.desk.utils.Lg;
import mijzcx.synapse.desk.utils.PoolConnection;

/**
 *
 * @author Dummy
 */
public class S6_items {

    public static void edit_data(to_add_product to_add_product, String is_linient, String is_active) {
        try {
            Connection conn = MyConnection.connect();
            String s0 = "update " + MyDB.getNames() + ".inventory2_stocks_left set "
                    + "product_name= '" + to_add_product.name + "'"
                    + ",description= '" + to_add_product.desc + "'"
                    + ",price= '" + to_add_product.price + "'"
                    + ",product_qty= '" + to_add_product.qty + "'"
                    + ",types= '" + "none" + "'"
                    + ",types_num= '" + "0" + "'"
                    + ",is_vat= '" + to_add_product.vat + "'"
                    + ",prod_assembly= '" + "0" + "'"
                    + ",is_linient= '" + is_linient + "'"
                    + ",w_commission= '" + to_add_product.w_commission + "'"
                    + ",comm_amount= '" + to_add_product.comm_amount + "'"
                    + ",cat_id= '" + to_add_product.cat_id + "'"
                    + ",cost= '" + to_add_product.cost + "'"
                    + ",img_path= '" + "empty" + "'"
                    + ",printing_assembly= '" + to_add_product.printing_assembly + "'"
                    + ",is_active= '" + is_active + "'"
                    + "where "
                    + " product_name ='" + to_add_product.name + "' "
                    + " ";

            PreparedStatement stmt = conn.prepareStatement(s0);
            stmt.execute();
            Lg.s(S6_items.class, "Successfully Updated");
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            MyConnection.close();
        }
    }

    public static void edit_data_active(String barcode, String is_active) {
        try {
            Connection conn = MyConnection.connect();
            String s0 = "update " + MyDB.getNames() + ".inventory2_stocks_left set "
                    + "is_active= '" + is_active + "'"
                    + "where "
                    + " product_name ='" + barcode + "' "
                    + " ";

            PreparedStatement stmt = conn.prepareStatement(s0);
            stmt.execute();
            Lg.s(S6_items.class, "Successfully Updated");
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            MyConnection.close();
        }
    }

    public static void delete_data(to_add_product to_inventory2_stocks_left) {
        try {
            Connection conn = MyConnection.connect();
            String s0 = "delete from " + MyDB.getNames() + ".inventory2_stocks_left where "
                    + " product_name ='" + to_inventory2_stocks_left.name + "' "
                    + " ";

            PreparedStatement stmt = conn.prepareStatement(s0);
            stmt.execute();
            Lg.s(S6_items.class, "Successfully Deleted");
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            PoolConnection.close();
        }
    }
}
