/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * Dlg_001.java
 *
 * Created on Sep 27, 2011, 4:42:16 PM
 */
package POS.dlg;

import POS.dlg3.Dlg_customer_charges;
import POS.dlg3.Dlg_discount;
import POS.to.to_order;
import POS.to2.to_credit;
import POS.to2.to_disc;
import POS.to2.to_discount;
import POS.utl.Backspace;
import POS.utl.Center;

import POS.utl.NumType;
import POS_svc4.S5_customer_tables;
import java.awt.Window;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.swing.JButton;
import javax.swing.JTextField;
import org.jdesktop.swingx.combobox.ListComboBoxModel;
import overallPOS.modules.share.utils.*;
import overallPOS.modules.share.utils.KeyMapping.KeyAction;

/**
 *
 * @author u2
 */
public class Dlg_pay extends javax.swing.JDialog {

    //<editor-fold defaultstate="collapsed" desc=" callback ">
    private Callback callback;

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public static interface Callback {

        void ok(CloseDialog closeDialog, OutputData data);

        void ok2(CloseDialog closeDialog, OutputData data);
    }

    public static class OutputData {

        public final double tendered;
        public final List<to_order> orders;
        public final to_disc tt;
        public final int a;
        public final to_credit tc;
        public final int b;
        public final String member_id;

        public OutputData(double tendered, List<to_order> orders, to_disc tt, int a, to_credit tc, int b, String member_id) {
            this.tendered = tendered;
            this.orders = orders;
            this.tt = tt;
            this.a = a;
            this.tc = tc;
            this.b = b;
            this.member_id = member_id;
        }
    }

    public static class InputData {

        public final List<to_order> orders;

        public InputData(List<to_order> orders) {
            this.orders = orders;
        }
    }

    //</editor-fold>
    //<editor-fold defaultstate="collapsed" desc=" Constructors ">
    private Dlg_pay(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    private Dlg_pay(java.awt.Dialog parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    public Dlg_pay() {
        super();
        initComponents();
        myInit();

    }
    private Dlg_pay myRef;

    private void setThisRef(Dlg_pay myRef) {
        this.myRef = myRef;
    }
    private static java.util.Map<Object, Dlg_pay> dialogContainer = new java.util.HashMap();

    public static void clearUpFirst(java.awt.Window parent) {
        if (dialogContainer.containsKey(parent)) {
            dialogContainer.remove(parent);
        }
    }

    public static Dlg_pay create(java.awt.Window parent, boolean modal) {

        if (modal) {
            return create(parent, ModalityType.APPLICATION_MODAL);
        }

        return create(parent, ModalityType.MODELESS);

    }

    public static Dlg_pay create(java.awt.Window parent, java.awt.Dialog.ModalityType modalType) {

        if (parent instanceof java.awt.Frame) {

            Dlg_pay dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Dlg_pay((java.awt.Frame) parent, false);
                dialog.setModalityType(modalType);
                dialogContainer.put(parent, dialog);
                java.util.logging.Logger.getAnonymousLogger().
                        log(Level.INFO, "instances: {0}", dialogContainer.size());
                dialog.setThisRef(dialog);
                return dialog;
            } else {
                dialog.setModalityType(modalType);
                return dialog;
            }

        }

        if (parent instanceof java.awt.Dialog) {
            Dlg_pay dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Dlg_pay((java.awt.Dialog) parent, false);
                dialog.setModalityType(modalType);
                dialogContainer.put(parent, dialog);
                java.util.logging.Logger.getAnonymousLogger().
                        log(Level.INFO, "instances: {0}", dialogContainer.size());
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


        Dlg_pay dialog = Dlg_pay.create(new javax.swing.JFrame(), true);
        dialog.setVisible(true);

    }
    //</editor-fold>

    //<editor-fold defaultstate="collapsed" desc=" added ">
    @Override
    public void setVisible(boolean visible) {
        super.setVisible(visible);
        if (visible == true) {
            getContentPane().
                    removeAll();
            initComponents();
            myInit();
            repaint();
//            validateTree();
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
        jPanel1 = new javax.swing.JPanel();
        ds_amountdue = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        ds_change = new javax.swing.JLabel();
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
        jPanel4 = new javax.swing.JPanel();
        btn_cancel = new javax.swing.JButton();
        btn_ok = new javax.swing.JButton();
        btn_clear = new javax.swing.JButton();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        btn_credit = new javax.swing.JButton();
        jLabel21 = new javax.swing.JLabel();
        jLabel22 = new javax.swing.JLabel();
        lb_discount = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jLabel12 = new javax.swing.JLabel();
        lb_less = new javax.swing.JLabel();
        lb_desc = new javax.swing.JLabel();
        lbl_net = new javax.swing.JLabel();
        lb_credit = new javax.swing.JLabel();
        lbl_credit = new javax.swing.JLabel();
        jLabel19 = new javax.swing.JLabel();
        lbl_tendered = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        ds_title = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        cb_nums = new javax.swing.JComboBox();
        ds_title1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(159, 207, 243));
        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setFocusable(false);
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(241, 244, 245));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        ds_amountdue.setBackground(java.awt.Color.black);
        ds_amountdue.setFont(new java.awt.Font("Dialog", 1, 40)); // NOI18N
        ds_amountdue.setForeground(new java.awt.Color(255, 255, 255));
        ds_amountdue.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        ds_amountdue.setText("100.00");
        ds_amountdue.setBorder(javax.swing.BorderFactory.createCompoundBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 3), javax.swing.BorderFactory.createEmptyBorder(3, 3, 3, 3)));
        ds_amountdue.setOpaque(true);
        jPanel1.add(ds_amountdue, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 50, 373, 50));

        jLabel7.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(41, 9, 149));
        jLabel7.setText("Amount Due:");
        jPanel1.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 20, -1, -1));

        ds_change.setBackground(java.awt.Color.darkGray);
        ds_change.setFont(new java.awt.Font("Dialog", 1, 45)); // NOI18N
        ds_change.setForeground(java.awt.Color.green);
        ds_change.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        ds_change.setText("400.00");
        ds_change.setBorder(javax.swing.BorderFactory.createCompoundBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 3), javax.swing.BorderFactory.createEmptyBorder(3, 3, 3, 3)));
        ds_change.setOpaque(true);
        jPanel1.add(ds_change, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 510, 370, 67));

        pnl_numpad.setBackground(new java.awt.Color(159, 207, 243));
        pnl_numpad.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(41, 9, 149), 3, true));
        pnl_numpad.setForeground(new java.awt.Color(41, 9, 149));
        pnl_numpad.setFocusable(false);
        pnl_numpad.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btn_9.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_9.setForeground(new java.awt.Color(41, 9, 149));
        btn_9.setText("9");
        btn_9.setFocusable(false);
        btn_9.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                btn_9MouseDragged(evt);
            }
        });
        btn_9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_9ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_9, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 10, 150, 110));

        btn_6.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_6.setForeground(new java.awt.Color(41, 9, 149));
        btn_6.setText("6");
        btn_6.setFocusable(false);
        btn_6.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                btn_6MouseDragged(evt);
            }
        });
        btn_6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_6ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_6, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 120, 150, 110));

        btn_8.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_8.setForeground(new java.awt.Color(41, 9, 149));
        btn_8.setText("8");
        btn_8.setFocusable(false);
        btn_8.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                btn_8MouseDragged(evt);
            }
        });
        btn_8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_8ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_8, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 10, 150, 110));

        btn_4.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_4.setForeground(new java.awt.Color(41, 9, 149));
        btn_4.setText("4");
        btn_4.setFocusable(false);
        btn_4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_4ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 120, 150, 110));

        btn_5.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_5.setForeground(new java.awt.Color(41, 9, 149));
        btn_5.setText("5");
        btn_5.setFocusable(false);
        btn_5.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                btn_5MouseDragged(evt);
            }
        });
        btn_5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_5ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_5, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 120, 150, 110));

        btn_7.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_7.setForeground(new java.awt.Color(41, 9, 149));
        btn_7.setText("7");
        btn_7.setFocusable(false);
        btn_7.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                btn_7MouseDragged(evt);
            }
        });
        btn_7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_7ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_7, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 150, 110));

        btn_3.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_3.setForeground(new java.awt.Color(41, 9, 149));
        btn_3.setText("3");
        btn_3.setFocusable(false);
        btn_3.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                btn_3MouseDragged(evt);
            }
        });
        btn_3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_3ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_3, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 230, 150, 110));

        btn_1.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_1.setForeground(new java.awt.Color(41, 9, 149));
        btn_1.setText("1");
        btn_1.setFocusable(false);
        btn_1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_1MouseClicked(evt);
            }
        });
        btn_1.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                btn_1MouseDragged(evt);
            }
        });
        btn_1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_1ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 230, 150, 110));

        btn_2.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_2.setForeground(new java.awt.Color(41, 9, 149));
        btn_2.setText("2");
        btn_2.setFocusable(false);
        btn_2.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                btn_2MouseDragged(evt);
            }
        });
        btn_2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_2ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_2, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 230, 150, 110));

        btn_0.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_0.setForeground(new java.awt.Color(41, 9, 149));
        btn_0.setText("0");
        btn_0.setFocusable(false);
        btn_0.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_0ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_0, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 340, 300, 80));

        btn_dot.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_dot.setForeground(new java.awt.Color(41, 9, 149));
        btn_dot.setText(".");
        btn_dot.setFocusable(false);
        btn_dot.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_dotActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_dot, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 340, 150, 80));

        jPanel4.setBackground(java.awt.Color.white);
        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setFocusable(false);
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btn_cancel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/close_1.png"))); // NOI18N
        btn_cancel.setBorderPainted(false);
        btn_cancel.setContentAreaFilled(false);
        btn_cancel.setFocusable(false);
        btn_cancel.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/close-MO_1.png"))); // NOI18N
        btn_cancel.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/close-MO_1.png"))); // NOI18N
        btn_cancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_cancelActionPerformed(evt);
            }
        });
        jPanel4.add(btn_cancel, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 10, 90, 70));

        btn_ok.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/check.png"))); // NOI18N
        btn_ok.setBorderPainted(false);
        btn_ok.setContentAreaFilled(false);
        btn_ok.setFocusable(false);
        btn_ok.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/check-MO.png"))); // NOI18N
        btn_ok.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/check-MO.png"))); // NOI18N
        btn_ok.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_okActionPerformed(evt);
            }
        });
        jPanel4.add(btn_ok, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 10, -1, 60));

        btn_clear.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/clear-fields1.png"))); // NOI18N
        btn_clear.setBorderPainted(false);
        btn_clear.setContentAreaFilled(false);
        btn_clear.setFocusable(false);
        btn_clear.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/clear-fields-MO.png"))); // NOI18N
        btn_clear.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/clear-fields-MO.png"))); // NOI18N
        btn_clear.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_clearActionPerformed(evt);
            }
        });
        jPanel4.add(btn_clear, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 10, 80, 70));

        jLabel13.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel13.setForeground(new java.awt.Color(41, 9, 149));
        jLabel13.setText("OK");
        jPanel4.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 70, 40, -1));

        jLabel14.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel14.setForeground(new java.awt.Color(149, 9, 12));
        jLabel14.setText("(ENTER)");
        jPanel4.add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(370, 90, 80, -1));

        jLabel15.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel15.setForeground(new java.awt.Color(41, 9, 149));
        jLabel15.setText("CLOSE");
        jPanel4.add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 70, 80, 20));

        jLabel16.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel16.setForeground(new java.awt.Color(149, 9, 12));
        jLabel16.setText("(ESCAPE)");
        jPanel4.add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 90, 90, 20));

        jLabel17.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel17.setForeground(new java.awt.Color(41, 9, 149));
        jLabel17.setText("CLEAR");
        jPanel4.add(jLabel17, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 70, 70, 20));

        jLabel18.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel18.setForeground(new java.awt.Color(149, 9, 12));
        jLabel18.setText("(F5)");
        jPanel4.add(jLabel18, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 90, 60, 20));

        btn_credit.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/members.png"))); // NOI18N
        btn_credit.setBorderPainted(false);
        btn_credit.setContentAreaFilled(false);
        btn_credit.setFocusable(false);
        btn_credit.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/members-mo.png"))); // NOI18N
        btn_credit.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/members-mo.png"))); // NOI18N
        btn_credit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_creditActionPerformed(evt);
            }
        });
        jPanel4.add(btn_credit, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 20, 70, 60));

        jLabel21.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel21.setForeground(new java.awt.Color(41, 9, 149));
        jLabel21.setText("MEMBERS");
        jPanel4.add(jLabel21, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 80, 100, 20));

        jLabel22.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel22.setForeground(new java.awt.Color(149, 9, 12));
        jLabel22.setText("(F1)");
        jPanel4.add(jLabel22, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 100, 60, 20));

        pnl_numpad.add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 440, 450, 120));

        jPanel1.add(pnl_numpad, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 50, 470, 570));

        lb_discount.setFont(new java.awt.Font("DejaVu Sans", 1, 18)); // NOI18N
        lb_discount.setForeground(new java.awt.Color(41, 9, 149));
        lb_discount.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lb_discount.setText("0 %");
        lb_discount.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.add(lb_discount, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 120, 70, 30));

        jLabel11.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(41, 9, 149));
        jLabel11.setText("Change:");
        jLabel11.setFocusable(false);
        jPanel1.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 490, -1, -1));

        jButton1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jButton1.setText(" Discount");
        jButton1.setFocusable(false);
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 120, 110, 30));

        jLabel12.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(255, 0, 0));
        jLabel12.setText("NET AMOUNT DUE:");
        jPanel1.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 170, -1, -1));

        lb_less.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_less.setForeground(new java.awt.Color(41, 9, 149));
        lb_less.setText("Less:");
        jPanel1.add(lb_less, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 120, 50, 30));

        lb_desc.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lb_desc.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.add(lb_desc, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 120, 100, 30));

        lbl_net.setBackground(new java.awt.Color(0, 0, 0));
        lbl_net.setFont(new java.awt.Font("DialogInput", 1, 40)); // NOI18N
        lbl_net.setForeground(java.awt.Color.green);
        lbl_net.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lbl_net.setText("100.00");
        lbl_net.setBorder(javax.swing.BorderFactory.createCompoundBorder(new javax.swing.border.LineBorder(java.awt.Color.orange, 3, true), javax.swing.BorderFactory.createEmptyBorder(3, 3, 3, 3)));
        lbl_net.setOpaque(true);
        jPanel1.add(lbl_net, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 190, 373, 60));

        lb_credit.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_credit.setForeground(new java.awt.Color(41, 9, 149));
        lb_credit.setText("CREDIT :");
        jPanel1.add(lb_credit, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 370, 130, 30));

        lbl_credit.setBackground(new java.awt.Color(0, 0, 0));
        lbl_credit.setFont(new java.awt.Font("DialogInput", 1, 40)); // NOI18N
        lbl_credit.setForeground(new java.awt.Color(255, 255, 255));
        lbl_credit.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lbl_credit.setText("0.0");
        lbl_credit.setBorder(javax.swing.BorderFactory.createCompoundBorder(new javax.swing.border.LineBorder(java.awt.Color.orange, 3, true), javax.swing.BorderFactory.createEmptyBorder(3, 3, 3, 3)));
        lbl_credit.setOpaque(true);
        jPanel1.add(lbl_credit, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 400, 373, 60));

        jLabel19.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel19.setForeground(new java.awt.Color(41, 9, 149));
        jLabel19.setText("Tendered");
        jPanel1.add(jLabel19, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 260, -1, -1));

        lbl_tendered.setBackground(java.awt.Color.white);
        lbl_tendered.setFont(new java.awt.Font("DialogInput", 1, 40)); // NOI18N
        lbl_tendered.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lbl_tendered.setText("100.00");
        lbl_tendered.setBorder(javax.swing.BorderFactory.createCompoundBorder(new javax.swing.border.LineBorder(java.awt.Color.orange, 3, true), javax.swing.BorderFactory.createEmptyBorder(3, 3, 3, 3)));
        lbl_tendered.setOpaque(true);
        jPanel1.add(lbl_tendered, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 290, 370, 60));

        jPanel2.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(14, 100, 890, 640));

        jPanel3.setBackground(new java.awt.Color(241, 244, 245));
        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel3.setFocusable(false);

        ds_title.setFont(new java.awt.Font("Arial Black", 0, 24)); // NOI18N
        ds_title.setForeground(new java.awt.Color(41, 9, 149));
        ds_title.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        ds_title.setText("Order No.");
        ds_title.setFocusable(false);

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/POS/img2/cash.png"))); // NOI18N
        jLabel1.setFocusable(false);

        cb_nums.setFont(new java.awt.Font("Dialog", 1, 18)); // NOI18N
        cb_nums.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "0" }));

        ds_title1.setFont(new java.awt.Font("Arial Black", 1, 36)); // NOI18N
        ds_title1.setForeground(new java.awt.Color(41, 9, 149));
        ds_title1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        ds_title1.setText("TO PAY");
        ds_title1.setFocusable(false);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(ds_title1, javax.swing.GroupLayout.PREFERRED_SIZE, 168, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 205, Short.MAX_VALUE)
                .addComponent(ds_title, javax.swing.GroupLayout.PREFERRED_SIZE, 141, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(cb_nums, javax.swing.GroupLayout.PREFERRED_SIZE, 252, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 76, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(ds_title, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(ds_title1, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(cb_nums, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap())
        );

        jPanel2.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 890, 80));

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 910, 760));

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

private void btn_cancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_cancelActionPerformed
//    clear_field();
    this.dispose();
}//GEN-LAST:event_btn_cancelActionPerformed

private void btn_okActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_okActionPerformed
    do_ok();
}//GEN-LAST:event_btn_okActionPerformed

private void btn_clearActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_clearActionPerformed
    do_clear();
}//GEN-LAST:event_btn_clearActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
//        discount();
        do_login();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void btn_creditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_creditActionPerformed
        // TODO add your handling code here:
        credit();
    }//GEN-LAST:event_btn_creditActionPerformed

    private void btn_7MouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_7MouseDragged
        // TODO add your handling code here:
//        do_7();
    }//GEN-LAST:event_btn_7MouseDragged

    private void btn_8MouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_8MouseDragged
        // TODO add your handling code here:
//        do_8();
    }//GEN-LAST:event_btn_8MouseDragged

    private void btn_9MouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_9MouseDragged
        // TODO add your handling code here:
//        do_9();
    }//GEN-LAST:event_btn_9MouseDragged

    private void btn_5MouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_5MouseDragged
        // TODO add your handling code here:
//        do_4();
    }//GEN-LAST:event_btn_5MouseDragged

    private void btn_6MouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_6MouseDragged
        // TODO add your handling code here:
//        do_6();
    }//GEN-LAST:event_btn_6MouseDragged

    private void btn_1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_1MouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_btn_1MouseClicked

    private void btn_2MouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_2MouseDragged
        // TODO add your handling code here:
//        do_2();
    }//GEN-LAST:event_btn_2MouseDragged

    private void btn_3MouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_3MouseDragged
        // TODO add your handling code here:
//        do_3();
    }//GEN-LAST:event_btn_3MouseDragged

    private void btn_1MouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_1MouseDragged
        // TODO add your handling code here:
//        do_1();
    }//GEN-LAST:event_btn_1MouseDragged
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
    private javax.swing.JButton btn_credit;
    private javax.swing.JButton btn_dot;
    private javax.swing.JButton btn_ok;
    private javax.swing.JComboBox cb_nums;
    private javax.swing.JLabel ds_amountdue;
    private javax.swing.JLabel ds_change;
    private javax.swing.JLabel ds_title;
    private javax.swing.JLabel ds_title1;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JLabel lb_credit;
    private javax.swing.JLabel lb_desc;
    private javax.swing.JLabel lb_discount;
    private javax.swing.JLabel lb_less;
    private javax.swing.JLabel lbl_credit;
    private javax.swing.JLabel lbl_net;
    private javax.swing.JLabel lbl_tendered;
    private javax.swing.JPanel pnl_numpad;
    // End of variables declaration//GEN-END:variables
    //<editor-fold defaultstate="collapsed" desc=" myInit ">

    private void myInit() {

//        if (System.getProperty("os.name").equalsIgnoreCase("linux")) {
//           
//            this.setUndecorated(true);
//        } else {
////             JOptionPane.showMessageDialog(null, System.getProperty("os.name"));
//            this.setUndecorated(false);
//        }
        lb_discount.setText("0%");
        initActionKey();
        initDisableBtnFocus();
        initTfDummy();
//        btn_cancel.setVisible(false);
    }

    private void clear_field() {
        Backspace.clear_lbl(lbl_tendered);
        tf_dummy.setText(lbl_tendered.getText());

        compute2();
    }

    private void initDisableBtnFocus() {
        JButton[] bs = new JButton[]{
            btn_0, btn_1, btn_2, btn_3, btn_4, btn_5, btn_6, btn_7, btn_8, btn_9, btn_dot,
            btn_cancel, btn_clear, btn_ok
        };

        for (JButton b : bs) {
            b.setFocusable(false);
        }
    }
    private JTextField tf_dummy;

    private void initTfDummy() {
        ds_change.setText("");
        lbl_tendered.setText("");
        ds_amountdue.setText("");
        tf_dummy = new JTextField();
        CurrencyDocument cd = new CurrencyDocument(true, 10);
        tf_dummy.setDocument(cd);
    }

    private void put_text(String str) {
//        z
        if (bb != 0) {
            tf_dummy.setText("");
            bb = 0;
            pay_mode = "cash";
            mem_id = "";
            lbl_credit.setText("0");
            lbl_tendered.setText("");

        }

        CurrencyDocument.decimalInserter(tf_dummy, str);
        lbl_tendered.setText(tf_dummy.getText());
        screen_computation();
    }

    private void do_clear() {
        tf_dummy.setText("");
        lbl_tendered.setText(tf_dummy.getText());
        ds_change.setText("0.0");
//        screen_computation();
    }

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

    private void do_cancel() {
        this.setVisible(false);
    }

    private void compute2() {
        double amt_due = 0;
        double amt_tendered = 0;

        try {
            amt_due = Round2.withZeroBack(lbl_net.getText()).
                    doubleValue();

            String str_tendered = lbl_tendered.getText();
            if (str_tendered.isEmpty()) {
//                JOptionPane.showMessageDialog(this, "Asang Bayad?");
//                return false;
            }

            amt_tendered = Double.parseDouble(str_tendered);
        } catch (Exception e) {
            amt_due = 0;
            amt_tendered = 0;
        }

        double change = amt_tendered - amt_due;

        if (change < 0) {
            ds_change.setText("Kulang");
//            return false;
        } else if (change == 0) {
//            CashDrawer.open();
//            ds_change.setText("Exact");
        } else {
//            CashDrawer.open();
            ds_change.setText(MessageFormat.format("{0,number,#,##0.00}", change));
        }
    }

    private boolean screen_computation() {
        double amt_due = 0;
        double amt_tendered = 0;

        double credit = 0;
        credit = Double.parseDouble(NumType.no_comma(lbl_credit.getText()));
        try {
            amt_due = Round2.withZeroBack(lbl_net.getText()).
                    doubleValue();

            String str_tendered = lbl_tendered.getText();
            if (str_tendered.isEmpty()) {
//                JOptionPane.showMessageDialog(this, "Asang Bayad?");
//                return false;
            }

            amt_tendered = Double.parseDouble(str_tendered);
        } catch (Exception e) {
            amt_due = 0;
            amt_tendered = 0;
        }

        double change = (amt_tendered + credit) - amt_due;

        if (change < 0) {
            ds_change.setText("Kulang");
            return false;
        } else if (change == 0) {
//            CashDrawer.open();
            ds_change.setText("Exact");
        } else {
//            CashDrawer.open();
            ds_change.setText(MessageFormat.format("{0,number,#,##0.00}", change));
        }

        return true;

    }

    private void dispo() {
        this.dispose();
    }

    private void initActionKey() {

        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_ESCAPE, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                dispo();
            }
        });
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_F1, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_credit.doClick();
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
                KeyEvent.VK_BACK_SPACE, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                clear_field();
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
                KeyEvent.VK_0, new KeyAction() {

            @Override
            public void actionPerformed(ActionEvent e) {
                btn_0.doClick();
//                JOptionPane.showMessageDialog(null, "adadad");
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

                do_clear();
//               btn_clear.doClick();
            }
        });
    }
    //</editor-fold>
    double discount = 0;
    double ord_total = 0;
    private List<to_order> orders;

    public void load(InputData data, String amount) {

        this.orders = data.orders;


        double total = 0;

//        for (to_order o : orders) {
//            total += o.quantity * o.unit_price;
//        }
        ord_total = FitIn.toDouble(amount);

        lb_discount.setText("0% = ");
        lb_desc.setText("0");

        ds_amountdue.setText(amount);
        lbl_net.setText(amount);
    }

    private void set_discount() {
        double total = 0;
        total = Double.parseDouble(NumType.no_comma(ds_amountdue.getText()));
        discount = discount / 100;

        double tot_discount = 0;
        if (discount <= 0) {
//            total=total;
//            discount=0;
            tot_discount = 0;
//            total=Double.parseDouble(ds_amountdue.getText());
        } else {
//            JOptionPane.showMessageDialog(null,total+ " "+ discount);
//            discount=total*discount;
            tot_discount = total * discount;

        }
        counted_disc = "" + tot_discount;
        total = total - tot_discount;
//        ds_amountdue.setText(MessageFormat.format("{0,number,#,##0.00}", total));
    }
    to_disc to1;
    String counted_disc = "";

    private void do_ok() {
        double tendered = 0.0;
        tendered = FitIn.toDouble(lbl_net.getText());
        double tender = tendered;
        if (!screen_computation()) {
        } else {
            if (callback != null) {
//                System.out.println(tender + " = " + too + " = " + pay_mode + " = " + mem_id);
                String dis_name = "";
                String dis_rate = "0";
                String cust_name = "";
                String cust_no = "";
                String cus_add = "";
                String tot_disc = "0";
                to_disc too1 = new to_disc(dis_name, dis_rate, cust_name, cust_no, cus_add, tot_disc);
                if (too == null) {
                    ok1(tender, too1, pay_mode, mem_id);
                } else {
                    ok1(tender, too, pay_mode, mem_id);
                }

            }
        }
    }

    private void disposed() {
        this.dispose();
    }
    int ii = 0;

    private void clear_data() {
        to_credit t1 = new to_credit("", "", "", "", "", 0);
        to_discount t2 = new to_discount("", "", "", "");
        ii = 0;
        bb = 0;
        lbl_tendered.setText("");
//            JOptionPane.showMessageDialog(null, "adadad");
    }

    private void ok1(double tendered, to_disc to, String payment_mode, String member_id) {

        if (payment_mode.equals("cash")) {
            bb = 0;
        }
        if (payment_mode.equals("credit")) {
            bb = 2;
        }
        if (payment_mode.equals("prepaid")) {
            bb = 3;
        }
        if (callback != null) {
            callback.ok2(new CloseDialog(this), new OutputData(tendered, orders, to, ii, to_c, bb, member_id));
        }

        this.dispose();
    }
    final List<to_disc> datas = new ArrayList();
    to_disc too;

    public void do_login() {
        final String names = System.getProperty("entityName", "Intelink-One");
//        lbl_bu.setText(names);

        Window w = (Window) this;
        Dlg_authenticate d = Dlg_authenticate.create(w, true);
        d.setTitle("Login");

        d.setCallback(new Dlg_authenticate.Callback() {

            @Override
            public void ok(CloseDialog cd, Dlg_authenticate.OutputData data) {
                cd.ok();
                discount();
//                int user_level = S12_retval_user_level.get_user_level(data.un);
//                if (user_level == 1) {
//                    cd.ok();
//                    discount();
//                } else {
//                   
//                }

            }

            @Override
            public void show_login_again(CloseDialog closeDialog) {
//                closeDialog.ok();
            }
        });
        Center.setCenter(d);
//        Application.locateOnParentCenter(w, d);
        d.setVisible(true);

    }

    private void discount() {
        Window p = (Window) this;
        Dlg_discount nd = Dlg_discount.create(p, true);
        nd.setTitle("Discount");

        if (bb == 0) {
            to_credit tot = new to_credit("", "", "", "", "", 0);
            to_c = tot;
            mem_id = "";
//            bb = 0;
        }

        nd.do_pass(to_c, mem_id);
        nd.setCallback(new Dlg_discount.Callback() {

            @Override
            public void ok(CloseDialog closeDialog, Dlg_discount.OutputData data) {
                closeDialog.ok();
                discount = Double.parseDouble(data.disc_percent);
//                lb_discount.setText(data.disc_percent+ " %");
                lb_discount.setText("" + data.disc_percent + "%");
                double d = (discount / 100) * Double.parseDouble(NumType.no_comma(ds_amountdue.getText()));
                lb_desc.setText("" + NumType.with_decimal(d));
                lbl_net.setText("" + FitIn.fmt_wc(FitIn.toDouble(ds_amountdue.getText()) - d));
                set_discount();
//                ds_amountdue
                to_disc to = new to_disc(data.disc_name, data.disc_percent, data.cust_name, data.cust_num, data.cust_address, counted_disc);

                ii = 2;
                too = to;
                lbl_credit.setText("" + lbl_net.getText());
                lbl_tendered.setText("" + lbl_net.getText());

                screen_computation();

//                load_data(orders);
//                datas.add(to);
            }
        });
        Center.setCenter(nd);

        nd.setVisible(true);
    }
    to_credit to_c;
    int bb = 0;

    public void do_pass() {
        clear_data();
        String cashiering_for = System.getProperty("version", "resto");
        if (cashiering_for.equals("ordering")) {
            ds_title.setVisible(true);
            cb_nums.setVisible(true);
            set_ord_num();

        } else {
            ds_title.setVisible(false);
            cb_nums.setVisible(false);
        }

        if (cashiering_for.equals("resto")) {
            btn_credit.setVisible(true);
            jLabel21.setVisible(true);
            jLabel22.setVisible(true);
            set_ord_num();
        }
        if (cashiering_for.equals("retail")) {
            btn_credit.setVisible(false);
            jLabel21.setVisible(false);
            jLabel22.setVisible(false);
            set_ord_num();
        }

    }

    private void set_ord_num() {
        cb_nums.setModel(new ListComboBoxModel(S5_customer_tables.get_customer_tables_2()));
    }
    String pay_mode = "cash";
    String mem_id = "0";

    private void credit() {

        Window p = (Window) this;
        Dlg_customer_charges nd = Dlg_customer_charges.create(p, true);
        nd.setTitle("");
        nd.do_pass(FitIn.toDouble(lbl_net.getText()));
        lbl_credit.setText(lbl_net.getText());
        nd.setCallback(new Dlg_customer_charges.Callback() {

            @Override
            public void ok(CloseDialog closeDialog, Dlg_customer_charges.OutputData data) {
//                closeDialog.ok();
//                tf_owner.setText(data.name);
//                tf_card_number.setText(data.address);
//                tf_code.setText(data.con);
                to_c = data.to;
                bb = 2;
                lbl_credit.setText(NumType.with_comma(data.to.amount));
                pay_mode = data.payment_mode;
                mem_id = data.member_id;

                if (data.payment_mode.equals("credit")) {
                    lb_credit.setText("CREDIT");
                    lbl_tendered.setText(FitIn.fmt_woc_0(data.to.amount));
                    ds_change.setText("0.00");
                    bb = 2;
                } else {
                    lb_credit.setText("PREPAID");
                    lbl_tendered.setText(FitIn.fmt_woc_0(data.to.amount));
                    ds_change.setText("0.00");
                    bb = 3;
                }
//                ok1(Double.parseDouble(FitIn.fmt_woc(lbl_net.getText())), too, data.payment_mode, data.member_id);
//                JOptionPane.showMessageDialog(null, data.payment_mode);
            }
        });
        Center.setCenter(nd);

        nd.setVisible(true);

    }
//    private void credit2() {
//        Window p = (Window) this;
//        Dlg_credit_card nd = Dlg_credit_card.create(p, true);
//        nd.setTitle("");
//        nd.do_pass(Double.parseDouble(NumType.no_comma(lbl_net.getText())));
//        nd.setCallback(new Dlg_credit_card.Callback() {
//
//            @Override
//            public void ok(CloseDialog closeDialog, Dlg_credit_card.OutputData data) {
//                closeDialog.ok();
//                to_c = data.to;
//                bb = 2;
//                lbl_credit.setText(NumType.with_comma(data.to.amount));
//            }
//            
//        });
//        Center.setCenter(nd);
//
//        nd.setVisible(true);
//    }
}
