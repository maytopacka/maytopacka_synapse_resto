/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import POS.inventory.S2_assembly;
import POS_svc4.S2_search;
import POS_svc4.S2_search.to_items_status;
import com.jgoodies.binding.adapter.AbstractTableAdapter;
import com.jgoodies.binding.list.ArrayListModel;
import com.lowagie.text.Font;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;
import java.util.logging.Level;
import javax.swing.*;
import javax.swing.ListModel;
import javax.swing.ListSelectionModel;
import javax.swing.table.*;
import overallPOS.modules.share.utils.*;
import overallPOS.modules.share.utils.KeyMapping.KeyAction;

/**
 *
 * @author i1
 */
public class Dlg_quantity_menu extends javax.swing.JDialog {

    /**
     * Creates new form Dlg_quantity
     */
    //<editor-fold defaultstate="collapsed" desc=" callback ">
    private Callback callback;

    public void setCallback(Callback callback) {
        this.callback = callback;


    }

    public static interface Callback {

        void order(CloseDialog closeDialog, OutputData data);

        void cancel(CloseDialog closeDialog, OutputData data);

        void remove(CloseDialog closeDialog);
    }

    public static class InputData {
    }

    public static class OutputData {

        public final S2_search.to_items to_items;
        public final List<S2_search.to_items_status> to_sub;
        public final double to_pay;

        public OutputData(S2_search.to_items to_items, List<to_items_status> to_sub, double to_pay) {
            this.to_items = to_items;
            this.to_sub = to_sub;
            this.to_pay = to_pay;
        }
    }
//</editor-fold>

    //<editor-fold defaultstate="collapsed" desc=" Constructors ">
    private Dlg_quantity_menu(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    private Dlg_quantity_menu(java.awt.Dialog parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    public Dlg_quantity_menu() {
        super();
        initComponents();
        myInit();

    }
    private Dlg_quantity_menu myRef;

    private void setThisRef(Dlg_quantity_menu myRef) {
        this.myRef = myRef;
    }
    private static java.util.Map<Object, Dlg_quantity_menu> dialogContainer = new java.util.HashMap();

    public static void clearUpFirst(java.awt.Window parent) {
        if (dialogContainer.containsKey(parent)) {
            dialogContainer.remove(parent);
        }
    }

    public static Dlg_quantity_menu create(java.awt.Window parent, boolean modal) {

        if (modal) {
            return create(parent, ModalityType.APPLICATION_MODAL);
        }

        return create(parent, ModalityType.MODELESS);

    }

    public static Dlg_quantity_menu create(java.awt.Window parent, java.awt.Dialog.ModalityType modalType) {

        if (parent instanceof java.awt.Frame) {

            Dlg_quantity_menu dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Dlg_quantity_menu((java.awt.Frame) parent, false);
                dialog.setModalityType(modalType);
                dialogContainer.put(parent, dialog);
                java.util.logging.Logger.getAnonymousLogger().log(Level.INFO, "instances: {0}", dialogContainer.size());
                dialog.setThisRef(dialog);
                return dialog;
            } else {
                dialog.setModalityType(modalType);
                return dialog;
            }

        }

        if (parent instanceof java.awt.Dialog) {
            Dlg_quantity_menu dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Dlg_quantity_menu((java.awt.Dialog) parent, false);
                dialog.setModalityType(modalType);
                dialogContainer.put(parent, dialog);
                java.util.logging.Logger.getAnonymousLogger().log(Level.INFO, "instances: {0}", dialogContainer.size());
                dialog.setThisRef(dialog);
                return dialog;
            } else {
                dialog.setModalityType(modalType);
                return dialog;
            }

        }

        return null;

    }
    //</editor-fold>    

    //<editor-fold defaultstate="collapsed" desc=" main ">
    public static void main(String args[]) {

        try {
            javax.swing.UIManager.setLookAndFeel(javax.swing.UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }


        Dlg_quantity_menu dialog = Dlg_quantity_menu.create(new javax.swing.JFrame(), true);
        dialog.setVisible(true);

    }
    //</editor-fold>

    //<editor-fold defaultstate="collapsed" desc=" added ">
    @Override
    public void setVisible(boolean visible) {
        super.setVisible(visible);
        if (visible == true) {
            getContentPane().removeAll();
            initComponents();
            myInit();
            repaint();
        }


    }

    public javax.swing.JPanel getSurface() {
        return (javax.swing.JPanel) getContentPane();
    }

    public void nullify() {
        myRef.setVisible(false);
        myRef = null;
    }
    //</editor-fold>

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        cx_all = new javax.swing.JCheckBox();
        jPanel1 = new javax.swing.JPanel();
        jButton15 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jButton9 = new javax.swing.JButton();
        jButton10 = new javax.swing.JButton();
        jButton11 = new javax.swing.JButton();
        jButton12 = new javax.swing.JButton();
        jButton13 = new javax.swing.JButton();
        jButton14 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        tf_qty = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        lbl_price = new javax.swing.JLabel();
        lbl_name = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbl_items = new javax.swing.JTable();
        lbl_price1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setAlwaysOnTop(true);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(102, 204, 255));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        cx_all.setSelected(true);
        cx_all.setFocusable(false);
        cx_all.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        cx_all.setOpaque(false);
        cx_all.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                cx_allMouseClicked(evt);
            }
        });
        jPanel2.add(cx_all, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 40, 30, 30));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton15.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton15.setText("OK");
        jButton15.setFocusable(false);
        jButton15.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton15ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton15, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 280, 80, 40));

        jButton3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton3.setText("1");
        jButton3.setFocusable(false);
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 40, 80, 60));

        jButton4.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton4.setText("2");
        jButton4.setFocusable(false);
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton4, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 40, 80, 60));

        jButton5.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton5.setText("4");
        jButton5.setFocusable(false);
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton5, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 100, 80, 60));

        jButton6.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton6.setText("5");
        jButton6.setFocusable(false);
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton6, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 100, 80, 60));

        jButton7.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton7.setText("6");
        jButton7.setFocusable(false);
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton7, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 100, 80, 60));

        jButton8.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton8.setText("7");
        jButton8.setFocusable(false);
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton8, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 160, 80, 60));

        jButton9.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton9.setText("8");
        jButton9.setFocusable(false);
        jButton9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton9ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton9, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 160, 80, 60));

        jButton10.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton10.setText("9");
        jButton10.setFocusable(false);
        jButton10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton10ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton10, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 160, 80, 60));

        jButton11.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton11.setText("0");
        jButton11.setFocusable(false);
        jButton11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton11ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton11, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 220, 80, 60));

        jButton12.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton12.setText(".");
        jButton12.setFocusable(false);
        jButton12.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton12ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton12, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 220, 80, 60));

        jButton13.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton13.setText("CL");
        jButton13.setFocusable(false);
        jButton13.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton13ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton13, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 220, 80, 60));

        jButton14.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton14.setText("3");
        jButton14.setFocusable(false);
        jButton14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton14ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton14, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 40, 80, 60));

        jButton2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton2.setText("X");
        jButton2.setFocusable(false);
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 280, 80, 40));

        tf_qty.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        tf_qty.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        tf_qty.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tf_qtyActionPerformed(evt);
            }
        });
        tf_qty.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                tf_qtyKeyReleased(evt);
            }
        });
        jPanel1.add(tf_qty, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 240, 40));

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton1.setText("REM");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 280, 80, 40));

        jPanel2.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 40, -1, -1));

        lbl_price.setBackground(new java.awt.Color(0, 0, 0));
        lbl_price.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        lbl_price.setForeground(new java.awt.Color(0, 255, 0));
        lbl_price.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        lbl_price.setText("1,000.00");
        lbl_price.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        lbl_price.setOpaque(true);
        jPanel2.add(lbl_price, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 10, 120, 30));

        lbl_name.setBackground(new java.awt.Color(255, 255, 255));
        lbl_name.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_name.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_name.setText("1 pc Chicken with Rice and Egg");
        lbl_name.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        lbl_name.setOpaque(true);
        jPanel2.add(lbl_name, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 10, 480, 30));

        jScrollPane2.setFocusable(false);

        tbl_items.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tbl_items.setFocusable(false);
        tbl_items.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbl_itemsMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(tbl_items);

        jPanel2.add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 40, 390, 320));

        lbl_price1.setBackground(new java.awt.Color(0, 0, 0));
        lbl_price1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        lbl_price1.setForeground(new java.awt.Color(0, 255, 0));
        lbl_price1.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lbl_price1.setText("P");
        lbl_price1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        lbl_price1.setOpaque(true);
        jPanel2.add(lbl_price1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 30, 30));

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 650, 370));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        set_qty("1");
        compute();
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        set_qty("2");
        compute();
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton14ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton14ActionPerformed
        set_qty("3");
        compute();
    }//GEN-LAST:event_jButton14ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        set_qty("4");
        compute();
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
        set_qty("5");
        compute();
    }//GEN-LAST:event_jButton6ActionPerformed

    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
        set_qty("6");
        compute();
    }//GEN-LAST:event_jButton7ActionPerformed

    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
        set_qty("7");
        compute();
    }//GEN-LAST:event_jButton8ActionPerformed

    private void jButton9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton9ActionPerformed
        set_qty("8");
        compute();
    }//GEN-LAST:event_jButton9ActionPerformed

    private void jButton10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton10ActionPerformed
        set_qty("9");
        compute();
    }//GEN-LAST:event_jButton10ActionPerformed

    private void jButton11ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton11ActionPerformed
        set_qty("0");
        compute();
    }//GEN-LAST:event_jButton11ActionPerformed

    private void jButton12ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton12ActionPerformed
        set_qty(".");
        compute();
    }//GEN-LAST:event_jButton12ActionPerformed

    private void jButton13ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton13ActionPerformed
        clear();
    }//GEN-LAST:event_jButton13ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        disposed();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void cx_allMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_cx_allMouseClicked
        check_all();
    }//GEN-LAST:event_cx_allMouseClicked

    private void tbl_itemsMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbl_itemsMouseClicked
        set_check();
    }//GEN-LAST:event_tbl_itemsMouseClicked

    private void jButton15ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton15ActionPerformed
        ok1();
    }//GEN-LAST:event_jButton15ActionPerformed

    private void tf_qtyKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_tf_qtyKeyReleased
        compute();
    }//GEN-LAST:event_tf_qtyKeyReleased

    private void tf_qtyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tf_qtyActionPerformed
        ok1();

    }//GEN-LAST:event_tf_qtyActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        cancel();
    }//GEN-LAST:event_jButton1ActionPerformed
    /**
     * @param args the command line arguments
     */
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JCheckBox cx_all;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton11;
    private javax.swing.JButton jButton12;
    private javax.swing.JButton jButton13;
    private javax.swing.JButton jButton14;
    private javax.swing.JButton jButton15;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel lbl_name;
    private javax.swing.JLabel lbl_price;
    private javax.swing.JLabel lbl_price1;
    private javax.swing.JTable tbl_items;
    private javax.swing.JTextField tf_qty;
    // End of variables declaration//GEN-END:variables

    private void myInit() {
        init_key();
        init_tbl_items();
        data_items();
        cx_all.setVisible(false);
//        assemble = "1";
//        assemble = S2_assembly.get_assembly_no(ref);
//        if (assemble.equals("1")) {
//            cx_all.setVisible(true);
//        } else {
//            cx_all.setVisible(false);
//        }
    }
    double my_price = 0;
    double my_qty = 0;
    String my_id = "";
    String my_img_path = "";
    String my_uom = "";
    int stat = 0;
    String ref = "263";
    String assemble = "0";
    String guest_id = "-1";
    String cat_id = "-1";
    String category_name = "";

    public void do_pass(S2_search.to_items to_items, List<S2_search.to_items_status> to_sub, int state, String guest, String cat) {
        my_price = to_items.price;
        my_qty = to_items.qty;
        stat = state;
        my_id = to_items.name;
        my_img_path = to_items.img_path;
        my_uom = to_items.uom;
        ref = to_items.name;
        guest_id = guest;
        cat_id = cat;
        lbl_name.setText(to_items.desc);
        category_name = to_items.category_name;
        assemble = S2_assembly.get_assembly_no(ref);
        if (assemble.equals("1")) {
            cx_all.setVisible(true);
        } else {
            cx_all.setVisible(false);
        }
//        loadData_items(to_sub);
        data_items();
        tf_qty.setText("");
        tf_qty.selectAll();
        compute();
    }

    public void do_pass_order(S2_search.to_orders to) {
        tbl_employee_payroll_ALM.clear();
        tbl_employee_payroll_M.fireTableDataChanged();
        my_price = to.price;
        my_qty = to.qty;
        stat = 2;
        my_id = to.name;
        my_img_path = to.img_path;
        my_uom = to.uom;
        ref = to.name;

        lbl_name.setText(to.desc);
        assemble = S2_assembly.get_assembly_no(ref);
        if (assemble.equals("1")) {
            cx_all.setVisible(true);
        } else {
            cx_all.setVisible(false);
        }
        cx_all.setSelected(false);
        loadData_items(to.to_sub);
//        data_items();
        tf_qty.setText("" + to.qty);
//        tf_qty.selectAll();
        compute();
    }
    int set = 0;

    public void do_set_up(int setter) {
        set = setter;
    }
    // <editor-fold defaultstate="collapsed" desc="Key">

    private void disposed() {
        this.dispose();
    }

    private void init_key() {
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_ESCAPE, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
//                btn_0.doClick();
                disposed();
            }
        });
    }
    // </editor-fold>

    private void set_qty(String text) {
        String t = tf_qty.getText();

        tf_qty.setText(t + text);
    }

    private void clear() {
        tf_qty.setText("");
    }
    private ArrayListModel tbl_employee_payroll_ALM;
    private TblInvoicesModel tbl_employee_payroll_M;
////    

    private void init_tbl_items() {

        tbl_employee_payroll_ALM = new ArrayListModel();
        tbl_employee_payroll_M = new TblInvoicesModel(tbl_employee_payroll_ALM);

        tbl_items.getTableHeader().setPreferredSize(new Dimension(100, 40));
        tbl_items.setModel(tbl_employee_payroll_M);
        tbl_items.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
        tbl_items.setRowHeight(25);

        tbl_items.setAutoResizeMode(1);
        int[] tbl_widths_accounts = {60, 0, 0, 100, 60, 0, 0, 60};

        for (int i = 0, n = tbl_widths_accounts.length; i < n; i++) {
            if (i == 3) {
                continue;
            }
            TableWidthUtilities.setColumnWidth(tbl_items, i, tbl_widths_accounts[i]);

        }
        Dimension d = tbl_items.getTableHeader().getPreferredSize();
        d.height = 30;
        tbl_items.getTableHeader().setPreferredSize(d);
        tbl_items.getTableHeader().setFont(new java.awt.Font("Arial", Font.BOLD, 12));
        tbl_items.setRowHeight(35);
        tbl_items.setFont(new java.awt.Font("Arial", 1, 12));
//        tbl_items.getColumnModel().getColumn(7).setHeaderRenderer(
//                new HeaderRenderer2(tbl_items.getTableHeader()));


    }

    private void loadData_items(List<S2_search.to_items_status> acc) {
        tbl_employee_payroll_ALM.clear();
        tbl_employee_payroll_ALM.addAll(acc);
    }

    public static class TblInvoicesModel extends AbstractTableAdapter {

        public static String[] COLUMNS = {
            "QTY", "NAME", "UOM", "DESC", "PRICE", "IMG PATH", "QTY2", ""
        };

        public TblInvoicesModel(ListModel listmodel) {
            super(listmodel, COLUMNS);
        }

        @Override
        public boolean isCellEditable(int row, int column) {
//           
//            if (column == 1) {
//                return true;
//            }

            return false;
        }

        @Override
        public Class getColumnClass(int col) {
            if (col == 7) {
                return Boolean.class;
            }
            return Object.class;
        }

        @Override
        public Object getValueAt(int row, int col) {
            S2_search.to_items_status tt = (S2_search.to_items_status) getRow(row);

            switch (col) {
            case 0:
                return tt.qty;
            case 1:
                return tt.name;
            case 2:
                return tt.uom;
            case 3:
                return tt.desc;
            case 4:
                return tt.price;
            case 5:
                return tt.img_path;
            case 6:
                return tt.qty2;


            default:
                return tt.status;
            }
        }
    }

    private void data_items() {
        List<S2_search.to_items_status> datas = S2_assembly.ret_data_dashboard(ref);
        loadData_items(datas);
        int state = 0;
        for (S2_search.to_items_status t : datas) {
            S2_search.to_items_status order = (S2_search.to_items_status) tbl_employee_payroll_ALM.get(tbl_items.convertRowIndexToModel(state));
            if (state == 0) {
                order.setStatus(true);
            } else {
                order.setStatus(false);
            }
            state++;
        }



        tbl_employee_payroll_M.fireTableDataChanged();

        compute();

    }

    private void compute() {

        List<S2_search.to_items_status> datas = tbl_employee_payroll_ALM;
        double amount = 0;
        for (S2_search.to_items_status to : datas) {
            if (to.status == true) {
                amount += to.price * to.qty;
            }
        }
        if (tbl_employee_payroll_ALM.isEmpty()) {
            double am = my_price * FitIn.toDouble(tf_qty.getText());
            lbl_price.setText(FitIn.fmt_wc_0(am));
        } else {
            amount = amount * FitIn.toDouble(tf_qty.getText());
            lbl_price.setText(FitIn.fmt_wc_0(amount));
        }

    }

    // <editor-fold defaultstate="collapsed" desc="RENDER">
    public class HeaderRenderer2 implements TableCellRenderer {

        private final JCheckBox check = new JCheckBox();

        public HeaderRenderer2(JTableHeader header) {
            check.setOpaque(false);
            check.setFont(header.getFont());
            header.addMouseListener(new MouseAdapter() {

                @Override
                public void mouseClicked(MouseEvent e) {
                    JTable table = ((JTableHeader) e.getSource()).getTable();
                    TableColumnModel columnModel = table.getColumnModel();
                    int viewColumn = columnModel.getColumnIndexAtX(e.getX());
                    int modelColumn = table.convertColumnIndexToModel(viewColumn);
                    if (modelColumn == 0 || modelColumn == 1) {
                        check.setSelected(!check.isSelected());
                        TableModel m = table.getModel();
                        Boolean f = check.isSelected();
                        for (int i = 0; i < m.getRowCount(); i++) {
                            m.setValueAt(f, i, modelColumn);
                        }
                        check.setSelected(true);
                        ((JTableHeader) e.getSource()).repaint();

                    }
                }
            });
        }

        @Override
        public Component getTableCellRendererComponent(
                JTable tbl, Object val, boolean isS, boolean hasF, int row, int col) {
            TableCellRenderer r = tbl.getTableHeader().getDefaultRenderer();
            JLabel l = (JLabel) r.getTableCellRendererComponent(tbl, val, isS, hasF, row, col);
            l.setIcon(new CheckBoxIcon(check));
//            check.setSelected(true);
//            l.setVerticalTextPosition(Ch);
            return l;
        }

        public JCheckBox getCheck() {
            return check;
        }
    }

    private static class CheckBoxIcon implements Icon {

        private final JCheckBox check;

        public CheckBoxIcon(JCheckBox check) {
            this.check = check;
        }

        @Override
        public int getIconWidth() {
            return check.getPreferredSize().width;
        }

        @Override
        public int getIconHeight() {
            return check.getPreferredSize().height;
        }

        @Override
        public void paintIcon(Component c, Graphics g, int x, int y) {
            SwingUtilities.paintComponent(
                    g, check, (Container) c, x, y, getIconWidth(), getIconHeight());
        }
    }
    // </editor-fold>

    private void set_check() {
        int idx = tbl_items.getSelectedRow();
        if (idx < 0) {
            return;
        }

        List<S2_search.to_items_status> datas = tbl_employee_payroll_ALM;

        if (assemble.equals("2")) {

            for (int i = 0; i < tbl_employee_payroll_ALM.size(); i++) {
                S2_search.to_items_status aw = (S2_search.to_items_status) tbl_employee_payroll_ALM.get(tbl_items.convertRowIndexToModel(i));
                if (i == idx) {
                    aw.setStatus(true);
                } else {
                    aw.setStatus(false);
                }
            }
            tbl_employee_payroll_M.fireTableDataChanged();
            HelpScrollToView.view(idx, tbl_items);
        } else {
            S2_search.to_items_status order = (S2_search.to_items_status) tbl_employee_payroll_ALM.get(tbl_items.convertRowIndexToModel(idx));
            boolean stat = false;
            if (order.status == true) {
                stat = false;
            } else {
                stat = true;
            }
            int state = 0;
            for (S2_search.to_items_status t : datas) {
                if (t.status == true) {
                    state += 1;
                }
            }
            if (state == 1) {
                order.setStatus(true);
            } else {
                order.setStatus(stat);
            }

            tbl_employee_payroll_M.fireTableDataChanged();
        }

        compute();
    }

    private void check_all() {

        boolean stat = false;
        if (!cx_all.isSelected()) {

            stat = false;
        } else {

            stat = true;
        }
        for (int i = 0; i < tbl_employee_payroll_ALM.size(); i++) {
            S2_search.to_items_status order = (S2_search.to_items_status) tbl_employee_payroll_ALM.get(tbl_items.convertRowIndexToModel(i));
            order.setStatus(stat);
        }
        tbl_employee_payroll_M.fireTableDataChanged();
        compute();
    }

    private void ok1() {
        S2_search.to_items to_items = new S2_search.to_items(my_id, my_uom, lbl_name.getText(), FitIn.toDouble(lbl_price.getText()), FitIn.toDouble(tf_qty.getText()), my_img_path, FitIn.toDouble(tf_qty.getText()), guest_id, cat_id, category_name);
        List<S2_search.to_items_status> to_sub = tbl_employee_payroll_ALM;
        double to_pay = FitIn.toDouble(lbl_price.getText());
        double qty = FitIn.toDouble(tf_qty.getText());
        if (qty == 0) {
            JOptionPane.showMessageDialog(null, "Input Quantity");
            return;
        }
        if (callback != null) {
            if (stat == 1) {
                this.dispose();
                callback.order(new CloseDialog(this), new OutputData(to_items, to_sub, to_pay));
            } else {
                this.dispose();
                callback.cancel(new CloseDialog(this), new OutputData(to_items, to_sub, to_pay));
            }
        }
    }

    private void cancel() {
        if (callback != null) {
            callback.remove(new CloseDialog(this));
        }
    }
}
