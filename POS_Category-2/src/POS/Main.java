/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS;

import POS.guests.S2_guest_charges;
import POS.loading.OutputData;
import POS.pnl.Dashboard;
import POS.utl.Center;
import POS.utl.FullScreen;
import POS.utl.Screen;

import java.awt.Window;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;
import javax.swing.JFrame;
import overallPOS.modules.share.utils.*;

/**
 *
 * @author u2
 */
public class Main {

    private void go_full_version() {
        // todo: make this as full version
        Dashboard pnl = new Dashboard();
        Application.setSystemLookAndFeel();
        Screen.set_normal(pnl);
        S2_guest_charges.ret_data("");;
        String name = System.getProperty("entityName", "Intelink-One");
        pnl.setVisible(true);
        pnl.do_login(name);
    }

//    private void go_demo_version() {
//
//        Dashboard pnl = new Dashboard();
//        Application.setSystemLookAndFeel();
//        FullScreen.do_max_normal(pnl);
//        String name = System.getProperty("entityName", "Intelink-One");
//        pnl.do_login(name);
//
//    }
    private void start() {
        try {
            Application.setSystemLookAndFeel();
            go_full_version();
//            String license = System.getProperty("license");
//            license = Crypto.decrypt("intelink-one", license);

//            if ((license != null && license.equals("aw"))) {
//            }
//            if ((license != null && license.equals("aw1"))) {
//                go_demo_version();
//            }
        } catch (Exception ex) {
            Lg.$.severe(ex.getMessage());
            System.exit(0);
        }
    }

    public static void main(final String[] args) {

        Window p = (Window) new JFrame();
        loading nd = loading.create(p, true);
        nd.setTitle("");
        nd.setCallback(new loading.Callback() {

            @Override
            public void ok(CloseDialog closeDialog, OutputData data) {
                closeDialog.ok();

            }
        });
        Center.setCenter(nd);
        try {
            String conf = (args.length > 0
                    ? args[0]
                    : null);
            Properties prop = new Properties();

            String userHome = System.getProperty("user.home");
            System.out.println(userHome);
            conf = (conf == null
                    ? "pos_meatshop.conf"
                    : conf);
            System.out.println(conf);
            File file = new File(userHome + "/" + conf);
            if (file.exists()) {
                InputStream is = new FileInputStream(file);
                prop.load(is);
            } else {
                file = new File(conf);
                if (file.exists()) {
                    InputStream is = new FileInputStream(file);
                    prop.load(is);
                }
            }

            System.setProperty("entityName", prop.getProperty("entityName", "Intelink-One"));
            System.setProperty("pdf.reader.loc", prop.getProperty("pdf.reader.loc", "AcroRd32.exe"));
            System.setProperty("instanceSocket", prop.getProperty("instanceSocket", "800"));
            System.setProperty("HOST_CONN_PYOP_SEND", prop.getProperty("server_conn", "localhost"));
            System.setProperty("HOST_PARAM_PYOP_SEND", prop.getProperty("server_param", "?user=root&password=password"));
//          System.setProperty("pool_host", prop.getProperty("pool_host", "localhost"));
            System.setProperty("pool_user", prop.getProperty("pool_user", "root"));
            System.setProperty("pool_password", prop.getProperty("pool_password", "password"));
            System.out.println(prop.getProperty("pool_host", "localhost"));

            System.setProperty("cashiering_for", prop.getProperty("cashiering_for", "coop"));
            System.setProperty("version", prop.getProperty("version", "retail"));
            System.setProperty("admin", prop.getProperty("admin", "false"));
            System.setProperty("img_path", prop.getProperty("img_path", "C:\\Users\\Dummy\\"));
            System.setProperty("license", prop.getProperty("license", ""));
            System.setProperty("terminal", prop.getProperty("terminal", "T1"));
            System.setProperty("receipt_printer_disabled", prop.getProperty("receipt_printer_disabled", "true"));
            System.setProperty("receipt_printer_show_dialog", prop.getProperty("receipt_printer_show_dialog", "false"));
            System.setProperty("receipt_printer", prop.getProperty("receipt_printer", ""));
            System.setProperty("report_printer_show_dialog", prop.getProperty("report_printer_show_dialog", "false"));
            System.setProperty("report_printer", prop.getProperty("report_printer", ""));
            //RECEIPT STMS
            System.setProperty("receipt_store_name", prop.getProperty("receipt_store_name", "SYNAPSE"));
            System.setProperty("receipt_infos", prop.getProperty("receipt_infos", "DUMAGUETE CITY"));
            System.setProperty("receipt_footer", prop.getProperty("receipt_footer", "THIS IS NOT AN OFFICIAL RECEIPT\nThank you come again!!!"));

            System.setProperty("stock_lenient", prop.getProperty("stock_lenient", "false"));
            System.setProperty("do_print", prop.getProperty("do_print", "false"));
            System.setProperty("open_drawer", prop.getProperty("open_drawer", "false"));
            System.setProperty("mydb", prop.getProperty("mydb", "db_pos_restaurant"));
            System.setProperty("strict_cashout", prop.getProperty("strict_cashout", "false"));
            String mydb = System.getProperty("mydb", "db_pos_restaurant");
            MyDB.setNames(mydb);


            System.out.println(MyDB.getNames() + " ------");
            Lg.$.severe(System.getProperty("receipt_printer"));

            new Main().start();
        } catch (Exception ex) {
//                    Lg.$.severe(ex.getMessage());
            throw new RuntimeException(ex);
        }


    }

    public void aw() {
    }

    public static class MyDB {

        public static String names;

        public MyDB(String username) {
            names = username;
        }

        public static String getNames() {
            return names;
        }

        public static void setNames(String names) {
            MyDB.names = names;
        }
    }

    public static class ImgPath {

        public static String path;

        public ImgPath(String username) {
            path = username;
        }

        public static String getPath() {
            return path;
        }

        public static void setPath(String path) {
            ImgPath.path = path;
        }
    }
}
