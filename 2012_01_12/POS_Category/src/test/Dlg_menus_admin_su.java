/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package test;

import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.util.logging.Level;
import mijzcx.synapse.desk.utils.CloseDialog;
import mijzcx.synapse.desk.utils.KeyMapping;
import mijzcx.synapse.desk.utils.KeyMapping.KeyAction;





/**
 *
 * @author Dummy
 */
public class Dlg_menus_admin_su extends javax.swing.JDialog {

    /** Creates new form Dlg_menus */
    //<editor-fold defaultstate="collapsed" desc=" callback ">
    private Callback callback;

    public void setCallback(Callback callback) {
        this.callback = callback;


}

    public static interface Callback {

    void ok(CloseDialog closeDialog, OutputData data);
}

public static class InputData {
}

public static class OutputData {
}
//</editor-fold>
 
    //<editor-fold defaultstate="collapsed" desc=" Constructors ">
private Dlg_menus_admin_su(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    private Dlg_menus_admin_su(java.awt.Dialog parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    public Dlg_menus_admin_su() {
        super();
        initComponents();
        myInit();

    }
    private Dlg_menus_admin_su myRef;

    private void setThisRef(Dlg_menus_admin_su myRef) {
        this.myRef = myRef;
    }
    private static java.util.Map<Object, Dlg_menus_admin_su> dialogContainer = new java.util.HashMap();

    public static void clearUpFirst(java.awt.Window parent) {
        if (dialogContainer.containsKey(parent)) {
            dialogContainer.remove(parent);
        }
    }

    public static Dlg_menus_admin_su create(java.awt.Window parent, boolean modal) {

        if (modal) {
            return create(parent, ModalityType.APPLICATION_MODAL);
        }

        return create(parent, ModalityType.MODELESS);

    }

    public static Dlg_menus_admin_su create(java.awt.Window parent, java.awt.Dialog.ModalityType modalType) {

        if (parent instanceof java.awt.Frame) {

            Dlg_menus_admin_su dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Dlg_menus_admin_su((java.awt.Frame) parent, false);
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
            Dlg_menus_admin_su dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Dlg_menus_admin_su((java.awt.Dialog) parent, false);
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


        Dlg_menus_admin_su dialog = Dlg_menus_admin_su.create(new javax.swing.JFrame(), true);
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

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btn_logout = new javax.swing.JButton();
        btn_standby = new javax.swing.JButton();
        lb_standby = new javax.swing.JLabel();
        lb_logout = new javax.swing.JLabel();
        btn_add_product = new javax.swing.JButton();
        lb_add_product = new javax.swing.JLabel();
        btn_discount = new javax.swing.JButton();
        lb_endorsement2 = new javax.swing.JLabel();
        btn_report = new javax.swing.JButton();
        lb_report = new javax.swing.JLabel();
        btn_register_users = new javax.swing.JButton();
        lb_users = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btn_logout.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/log-out2.png"))); // NOI18N
        btn_logout.setBorderPainted(false);
        btn_logout.setContentAreaFilled(false);
        btn_logout.setFocusable(false);
        btn_logout.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/log-out button-MO.png"))); // NOI18N
        btn_logout.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_logoutActionPerformed(evt);
            }
        });
        getContentPane().add(btn_logout, new org.netbeans.lib.awtextra.AbsoluteConstraints(760, 0, 110, -1));

        btn_standby.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/stand-by.png"))); // NOI18N
        btn_standby.setBorderPainted(false);
        btn_standby.setContentAreaFilled(false);
        btn_standby.setFocusable(false);
        btn_standby.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/stand-by-MO.png"))); // NOI18N
        btn_standby.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_standbyActionPerformed(evt);
            }
        });
        getContentPane().add(btn_standby, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 0, -1, 70));

        lb_standby.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_standby.setForeground(new java.awt.Color(41, 9, 149));
        lb_standby.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_standby.setText("STANDBY");
        lb_standby.setFocusable(false);
        getContentPane().add(lb_standby, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 80, 100, 20));

        lb_logout.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_logout.setForeground(new java.awt.Color(41, 9, 149));
        lb_logout.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_logout.setText("LOGOUT");
        lb_logout.setFocusable(false);
        getContentPane().add(lb_logout, new org.netbeans.lib.awtextra.AbsoluteConstraints(760, 80, 110, -1));

        btn_add_product.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/inventory.png"))); // NOI18N
        btn_add_product.setBorderPainted(false);
        btn_add_product.setContentAreaFilled(false);
        btn_add_product.setFocusable(false);
        btn_add_product.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/inventory-mo.png"))); // NOI18N
        btn_add_product.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_add_productActionPerformed(evt);
            }
        });
        getContentPane().add(btn_add_product, new org.netbeans.lib.awtextra.AbsoluteConstraints(530, 0, -1, 80));

        lb_add_product.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_add_product.setForeground(new java.awt.Color(41, 9, 149));
        lb_add_product.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_add_product.setText("INVENTORY");
        lb_add_product.setFocusable(false);
        getContentPane().add(lb_add_product, new org.netbeans.lib.awtextra.AbsoluteConstraints(530, 80, 100, -1));

        btn_discount.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/discount.png"))); // NOI18N
        btn_discount.setBorderPainted(false);
        btn_discount.setContentAreaFilled(false);
        btn_discount.setFocusable(false);
        btn_discount.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/discount-MO.png"))); // NOI18N
        btn_discount.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_discountActionPerformed(evt);
            }
        });
        getContentPane().add(btn_discount, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 0, 90, 80));

        lb_endorsement2.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_endorsement2.setForeground(new java.awt.Color(41, 9, 149));
        lb_endorsement2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_endorsement2.setText("DISCOUNT");
        lb_endorsement2.setFocusable(false);
        getContentPane().add(lb_endorsement2, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 80, 90, -1));

        btn_report.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/reports.png"))); // NOI18N
        btn_report.setBorderPainted(false);
        btn_report.setContentAreaFilled(false);
        btn_report.setFocusable(false);
        btn_report.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/reports-MO.png"))); // NOI18N
        btn_report.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_reportActionPerformed(evt);
            }
        });
        getContentPane().add(btn_report, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 0, 80, 80));

        lb_report.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_report.setForeground(new java.awt.Color(41, 9, 149));
        lb_report.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_report.setText("REPORT");
        lb_report.setFocusable(false);
        getContentPane().add(lb_report, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 80, 80, 20));

        btn_register_users.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/users.png"))); // NOI18N
        btn_register_users.setBorderPainted(false);
        btn_register_users.setContentAreaFilled(false);
        btn_register_users.setFocusable(false);
        btn_register_users.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/users-MO.png"))); // NOI18N
        btn_register_users.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_register_usersActionPerformed(evt);
            }
        });
        getContentPane().add(btn_register_users, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 0, 70, 80));

        lb_users.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_users.setForeground(new java.awt.Color(41, 9, 149));
        lb_users.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_users.setText("USERS");
        lb_users.setFocusable(false);
        getContentPane().add(lb_users, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 80, 70, 20));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(880, 0, 90, 100));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_logoutActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_logoutActionPerformed
//        log_out();
    }//GEN-LAST:event_btn_logoutActionPerformed

    private void btn_standbyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_standbyActionPerformed
//        do_login("");
    }//GEN-LAST:event_btn_standbyActionPerformed

    private void btn_add_productActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_add_productActionPerformed
//        do_add_product();
    }//GEN-LAST:event_btn_add_productActionPerformed

    private void btn_discountActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_discountActionPerformed
        // TODO add your handling code here:
//        do_discount();
    }//GEN-LAST:event_btn_discountActionPerformed

    private void btn_reportActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_reportActionPerformed
//        do_report();
    }//GEN-LAST:event_btn_reportActionPerformed

    private void btn_register_usersActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_register_usersActionPerformed
//        do_register_users();
    }//GEN-LAST:event_btn_register_usersActionPerformed

    /**
     * @param args the command line arguments
     */
   

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_add_product;
    private javax.swing.JButton btn_discount;
    private javax.swing.JButton btn_logout;
    private javax.swing.JButton btn_register_users;
    private javax.swing.JButton btn_report;
    private javax.swing.JButton btn_standby;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel lb_add_product;
    private javax.swing.JLabel lb_endorsement2;
    private javax.swing.JLabel lb_logout;
    private javax.swing.JLabel lb_report;
    private javax.swing.JLabel lb_standby;
    private javax.swing.JLabel lb_users;
    // End of variables declaration//GEN-END:variables

    private void myInit() {
        init_key();
    }

    public void do_pass(){
 
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
    
    
}
