/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS_dlg4;

import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.text.MessageFormat;
import java.util.logging.Level;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import overallPOS.modules.share.utils.CloseDialog;
import overallPOS.modules.share.utils.CurrencyDocument;
import overallPOS.modules.share.utils.KeyMapping;
import overallPOS.modules.share.utils.KeyMapping.KeyAction;

/**
 *
 * @author i1
 */
public class Dlg_sales_qty extends javax.swing.JDialog {

    /**
     * Creates new form Dlg_endorsement_qty
     */
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

        public final double qty;

        public OutputData(double qty) {
            this.qty = qty;
        }
    }
//</editor-fold>

    //<editor-fold defaultstate="collapsed" desc=" Constructors ">
    private Dlg_sales_qty(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    private Dlg_sales_qty(java.awt.Dialog parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    public Dlg_sales_qty() {
        super();
        initComponents();
        myInit();

    }
    private Dlg_sales_qty myRef;

    private void setThisRef(Dlg_sales_qty myRef) {
        this.myRef = myRef;
    }
    private static java.util.Map<Object, Dlg_sales_qty> dialogContainer = new java.util.HashMap();

    public static void clearUpFirst(java.awt.Window parent) {
        if (dialogContainer.containsKey(parent)) {
            dialogContainer.remove(parent);
        }
    }

    public static Dlg_sales_qty create(java.awt.Window parent, boolean modal) {

        if (modal) {
            return create(parent, ModalityType.APPLICATION_MODAL);
        }

        return create(parent, ModalityType.MODELESS);

    }

    public static Dlg_sales_qty create(java.awt.Window parent, java.awt.Dialog.ModalityType modalType) {

        if (parent instanceof java.awt.Frame) {

            Dlg_sales_qty dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Dlg_sales_qty((java.awt.Frame) parent, false);
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
            Dlg_sales_qty dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Dlg_sales_qty((java.awt.Dialog) parent, false);
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


        Dlg_sales_qty dialog = Dlg_sales_qty.create(new javax.swing.JFrame(), true);
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
        jLabel1 = new javax.swing.JLabel();
        lb_endorse = new javax.swing.JLabel();
        lb_endorsed = new javax.swing.JLabel();
        pnl_numpad = new javax.swing.JPanel();
        btn_9 = new javax.swing.JButton();
        btn_6 = new javax.swing.JButton();
        btn_8 = new javax.swing.JButton();
        btn_4 = new javax.swing.JButton();
        btn_5 = new javax.swing.JButton();
        btn_7 = new javax.swing.JButton();
        btn_3 = new javax.swing.JButton();
        btn_1 = new javax.swing.JButton();
        btn_2 = new javax.swing.JButton();
        btn_0 = new javax.swing.JButton();
        btn_dot = new javax.swing.JButton();
        btn_ok = new javax.swing.JButton();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        btn_clear = new javax.swing.JButton();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        btn_cancel = new javax.swing.JButton();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        lb_name = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(159, 207, 243));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        jLabel1.setText("QUANTITY SOLD:");
        jPanel2.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(12, 188, 156, -1));

        lb_endorse.setBackground(new java.awt.Color(0, 0, 0));
        lb_endorse.setFont(new java.awt.Font("Dialog", 1, 24)); // NOI18N
        lb_endorse.setForeground(new java.awt.Color(0, 255, 0));
        lb_endorse.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_endorse.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        lb_endorse.setOpaque(true);
        jPanel2.add(lb_endorse, new org.netbeans.lib.awtextra.AbsoluteConstraints(12, 315, 280, 39));

        lb_endorsed.setFont(new java.awt.Font("Dialog", 1, 24)); // NOI18N
        lb_endorsed.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_endorsed.setText("0");
        lb_endorsed.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        lb_endorsed.setOpaque(true);
        jPanel2.add(lb_endorsed, new org.netbeans.lib.awtextra.AbsoluteConstraints(12, 211, 280, 40));

        pnl_numpad.setBackground(new java.awt.Color(219, 236, 248));
        pnl_numpad.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(41, 9, 149), 3, true));
        pnl_numpad.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btn_9.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_9.setForeground(new java.awt.Color(41, 9, 149));
        btn_9.setText("9");
        btn_9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_9ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_9, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 20, 140, 100));

        btn_6.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_6.setForeground(new java.awt.Color(41, 9, 149));
        btn_6.setText("6");
        btn_6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_6ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_6, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 120, 140, 100));

        btn_8.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_8.setForeground(new java.awt.Color(41, 9, 149));
        btn_8.setText("8");
        btn_8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_8ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_8, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 20, 140, 100));

        btn_4.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_4.setForeground(new java.awt.Color(41, 9, 149));
        btn_4.setText("4");
        btn_4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_4ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_4, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 120, 130, 100));

        btn_5.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_5.setForeground(new java.awt.Color(41, 9, 149));
        btn_5.setText("5");
        btn_5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_5ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_5, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 120, 140, 100));

        btn_7.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_7.setForeground(new java.awt.Color(41, 9, 149));
        btn_7.setText("7");
        btn_7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_7ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_7, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 20, 130, 100));

        btn_3.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_3.setForeground(new java.awt.Color(41, 9, 149));
        btn_3.setText("3");
        btn_3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_3ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_3, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 220, 140, 100));

        btn_1.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_1.setForeground(new java.awt.Color(41, 9, 149));
        btn_1.setText("1");
        btn_1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_1ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_1, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 220, 130, 100));

        btn_2.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_2.setForeground(new java.awt.Color(41, 9, 149));
        btn_2.setText("2");
        btn_2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_2ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_2, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 220, 140, 100));

        btn_0.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_0.setForeground(new java.awt.Color(41, 9, 149));
        btn_0.setText("0");
        btn_0.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_0ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_0, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 320, 270, 90));

        btn_dot.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_dot.setForeground(new java.awt.Color(41, 9, 149));
        btn_dot.setText(".");
        btn_dot.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_dotActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_dot, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 320, 140, 90));

        btn_ok.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/check.png"))); // NOI18N
        btn_ok.setBorderPainted(false);
        btn_ok.setContentAreaFilled(false);
        btn_ok.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/check-MO.png"))); // NOI18N
        btn_ok.setRolloverSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/check-MO.png"))); // NOI18N
        btn_ok.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_okActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_ok, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 410, 70, 70));

        jLabel11.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(41, 9, 149));
        jLabel11.setText("OK");
        pnl_numpad.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(370, 470, 30, -1));

        jLabel12.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(149, 9, 12));
        jLabel12.setText("(ENTER)");
        pnl_numpad.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 490, 80, -1));

        btn_clear.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/clear-fields1.png"))); // NOI18N
        btn_clear.setBorderPainted(false);
        btn_clear.setContentAreaFilled(false);
        btn_clear.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/clear-fields-MO.png"))); // NOI18N
        btn_clear.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/clear-fields-MO.png"))); // NOI18N
        btn_clear.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_clearActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_clear, new org.netbeans.lib.awtextra.AbsoluteConstraints(220, 420, 90, -1));

        jLabel15.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel15.setForeground(new java.awt.Color(41, 9, 149));
        jLabel15.setText("CLEAR");
        pnl_numpad.add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 470, 50, 20));

        jLabel16.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel16.setForeground(new java.awt.Color(149, 9, 12));
        jLabel16.setText("(F5)");
        pnl_numpad.add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 490, 40, 20));

        btn_cancel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/close_1.png"))); // NOI18N
        btn_cancel.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 1, true));
        btn_cancel.setBorderPainted(false);
        btn_cancel.setContentAreaFilled(false);
        btn_cancel.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/close-MO_1.png"))); // NOI18N
        btn_cancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_cancelActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_cancel, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 420, 70, -1));

        jLabel13.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel13.setForeground(new java.awt.Color(41, 9, 149));
        jLabel13.setText("CLOSE");
        pnl_numpad.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 470, 60, 20));

        jLabel14.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel14.setForeground(new java.awt.Color(149, 9, 12));
        jLabel14.setText("ESCAPE");
        pnl_numpad.add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 490, 70, 20));

        jPanel2.add(pnl_numpad, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 140, 466, 526));

        lb_name.setFont(new java.awt.Font("Dialog", 1, 18)); // NOI18N
        lb_name.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_name.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.add(lb_name, new org.netbeans.lib.awtextra.AbsoluteConstraints(12, 91, 756, 39));

        jLabel4.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        jLabel4.setText("ENTER QUANTITY:");
        jPanel2.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 290, 156, -1));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        jLabel2.setFont(new java.awt.Font("Dialog", 1, 18)); // NOI18N
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("CANCEL SALE");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, 780, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, 37, Short.MAX_VALUE)
                .addContainerGap())
        );

        jPanel2.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(2, 12, 780, -1));

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 780, 680));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_9ActionPerformed
        do_9();
    }//GEN-LAST:event_btn_9ActionPerformed

    private void btn_6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_6ActionPerformed
        do_6();
    }//GEN-LAST:event_btn_6ActionPerformed

    private void btn_8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_8ActionPerformed
        do_8();
    }//GEN-LAST:event_btn_8ActionPerformed

    private void btn_4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_4ActionPerformed
        do_4();
    }//GEN-LAST:event_btn_4ActionPerformed

    private void btn_5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_5ActionPerformed
        do_5();
    }//GEN-LAST:event_btn_5ActionPerformed

    private void btn_7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_7ActionPerformed
        do_7();
    }//GEN-LAST:event_btn_7ActionPerformed

    private void btn_3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_3ActionPerformed
        do_3();
    }//GEN-LAST:event_btn_3ActionPerformed

    private void btn_1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_1ActionPerformed
        do_1();
    }//GEN-LAST:event_btn_1ActionPerformed

    private void btn_2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_2ActionPerformed
        do_2();
    }//GEN-LAST:event_btn_2ActionPerformed

    private void btn_0ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_0ActionPerformed
        do_0();
    }//GEN-LAST:event_btn_0ActionPerformed

    private void btn_dotActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_dotActionPerformed
        do_dot();
    }//GEN-LAST:event_btn_dotActionPerformed

    private void btn_okActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_okActionPerformed
//        do_ok();
        ok1();
    }//GEN-LAST:event_btn_okActionPerformed

    private void btn_clearActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_clearActionPerformed
        do_clear();
    }//GEN-LAST:event_btn_clearActionPerformed

    private void btn_cancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_cancelActionPerformed
//    clear_field();
        this.dispose();
    }//GEN-LAST:event_btn_cancelActionPerformed
    /**
     * @param args the command line arguments
     */
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_0;
    private javax.swing.JButton btn_1;
    private javax.swing.JButton btn_2;
    private javax.swing.JButton btn_3;
    private javax.swing.JButton btn_4;
    private javax.swing.JButton btn_5;
    private javax.swing.JButton btn_6;
    private javax.swing.JButton btn_7;
    private javax.swing.JButton btn_8;
    private javax.swing.JButton btn_9;
    private javax.swing.JButton btn_cancel;
    private javax.swing.JButton btn_clear;
    private javax.swing.JButton btn_dot;
    private javax.swing.JButton btn_ok;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JLabel lb_endorse;
    private javax.swing.JLabel lb_endorsed;
    private javax.swing.JLabel lb_name;
    private javax.swing.JPanel pnl_numpad;
    // End of variables declaration//GEN-END:variables

    private void myInit() {
        init_key();
        tf_dummy = new JTextField();
        CurrencyDocument cd = new CurrencyDocument(true, 10);
        tf_dummy.setDocument(cd);

    }

    private void do_clear() {
        tf_dummy.setText("");
        lb_endorse.setText(tf_dummy.getText());

        double due_amount = 0;
        try {
//            due_amount = Double.parseDouble(lbl_qty.getText()) * input_data.price;
        } catch (Exception e) {
            due_amount = 0;
        }

        String str_amt_due = MessageFormat.format("{0,number,#,##0.00}", due_amount);
//        ds_amountdue.setText(str_amt_due);

    }
    double due = 0;

    public void do_pass(double sold, String name,String tip) {
        jLabel2.setText(tip);
//        JOptionPane.showMessageDialog(null, sold);
        due = sold;
        lb_name.setText(name);
        lb_endorsed.setText("" + sold);
//        lb_bal.setText("" + balance);

    }
    private JTextField tf_dummy;

    private void do_7() {
        put_text("7");
    }

    private void do_8() {
        put_text("8");
    }

    private void do_9() {
        put_text("9");
    }

    private void do_4() {
        put_text("4");
    }

    private void do_5() {
        put_text("5");
    }

    private void do_6() {
        put_text("6");
    }

    private void do_1() {
        put_text("1");
    }

    private void do_2() {
        put_text("2");
    }

    private void do_3() {
        put_text("3");
    }

    private void do_0() {
        put_text("0");
    }

    private void do_dot() {
        put_text(".");
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
        
                KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_BACK_SPACE, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                tf_dummy.setText("");
                lb_endorse.setText(tf_dummy.getText());

            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_NUMPAD0, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_0.doClick();
            }
        });

        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_0, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_0.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_PERIOD, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_dot.doClick();
            }
        });

        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_NUMPAD1, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_1.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_1, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_1.doClick();
            }
        });

        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_NUMPAD2, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_2.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_2, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_2.doClick();
            }
        });

        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_NUMPAD3, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_3.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_3, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_3.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_NUMPAD4, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_4.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_4, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_4.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_NUMPAD5, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_5.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_5, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_5.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_NUMPAD6, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_6.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_6, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_6.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_NUMPAD7, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_7.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_7, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_7.doClick();
            }
        });

        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_NUMPAD8, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_8.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_8, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_8.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_NUMPAD9, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_9.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_9, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_9.doClick();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_DECIMAL, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_dot.doClick();
            }
        });

        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_ENTER, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_ok.doClick();
            }
        });

        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_F5, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_clear.doClick();
            }
        });
    }
    // </editor-fold>

    private void put_text(String str) {
//        CurrencyDocument.decimalInserter(tf_dummy, str);
//        lb_endorse.setText(tf_dummy.getText());

        CurrencyDocument.decimalInserter(tf_dummy, str);

        double am = 0;
        if (tf_dummy.getText().isEmpty()) {
            am = 0;
        } else {
            am = Double.parseDouble(tf_dummy.getText());
        }
        if (am > due) {
            System.out.println(am + " " + due);
        } else {

            lb_endorse.setText(tf_dummy.getText());
        }

    }

    private void ok1() {
        if (lb_endorse.getText().isEmpty() || lb_endorse.getText().equals("0")) {
            return;
        }
        double qty = Double.parseDouble(lb_endorse.getText());
        if (callback != null) {
            callback.ok(new CloseDialog(this), new OutputData(qty));
        }
    }
}