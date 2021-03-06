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

import POS.Main.MyDB;
import POS.discount.S1_add_customer_discount;
import POS.dlg3.Dlg_customer_charges;
import POS.dlg3.Dlg_discount;
import POS.remitances.Dlg_credit_card_2;
import POS.to.to_order;
import POS.to2.to_credit;
import POS.to2.to_disc;
import POS.to2.to_discount;
import POS.utl.Backspace;
import POS.utl.Center;

import POS.utl.NumType;
import POS.utl.Prompt;
import POS_svc4.S5_customer_tables;
import java.awt.Window;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.text.DecimalFormat;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import org.jdesktop.swingx.combobox.ListComboBoxModel;
import mijzcx.synapse.desk.utils.*;
import mijzcx.synapse.desk.utils.KeyMapping.KeyAction;
import org.jdesktop.swingx.autocomplete.AutoCompleteDecorator;

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

        void close(CloseDialog closeDialog);
    }

    public static class OutputData {

        public final double tendered;
        public final List<to_order> orders;
        public final to_disc tt;
        public final int a;
        public final to_credit tc;
        public final int b;
        public final String member_id;
        public final double dollar_rate;
        public final double dollar_tendered;

        public OutputData(double tendered, List<to_order> orders, to_disc tt, int a, to_credit tc, int b, String member_id, double dollar_rate, double dollar_tendered) {
            this.tendered = tendered;
            this.orders = orders;
            this.tt = tt;
            this.a = a;
            this.tc = tc;
            this.b = b;
            this.member_id = member_id;
            this.dollar_rate = dollar_rate;
            this.dollar_tendered = dollar_tendered;
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

        jPanel8 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        ds_amountdue = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        ds_change_peso = new javax.swing.JLabel();
        pnl_numpad = new javax.swing.JPanel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel6 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        cb_card_type = new javax.swing.JComboBox();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jButton3 = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        tf_card_holder = new javax.swing.JTextField();
        tf_credit_card_no = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        tf_app_code = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        cb_bank = new javax.swing.JComboBox();
        jPanel9 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        tf_cust_no = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        jLabel24 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tf_address = new javax.swing.JTextArea();
        cb_cust_name = new javax.swing.JComboBox();
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
        lbl_disc_amount = new javax.swing.JLabel();
        lbl_net = new javax.swing.JLabel();
        lb_credit = new javax.swing.JLabel();
        jLabel19 = new javax.swing.JLabel();
        cb_tendered_peso = new javax.swing.JCheckBox();
        tf_dollar = new javax.swing.JTextField();
        cb_tendered_dollar = new javax.swing.JCheckBox();
        lbl_tendered_peso = new javax.swing.JTextField();
        lbl_tendered_dollar = new javax.swing.JTextField();
        lb_less1 = new javax.swing.JLabel();
        lb_less2 = new javax.swing.JLabel();
        lb_less3 = new javax.swing.JLabel();
        tf_total_dollar = new javax.swing.JLabel();
        lbl_credit_peso = new javax.swing.JTextField();
        lbl_credit_dollar = new javax.swing.JTextField();
        jLabel20 = new javax.swing.JLabel();
        jLabel23 = new javax.swing.JLabel();
        ds_change_dollar = new javax.swing.JLabel();
        cb_credit_peso = new javax.swing.JCheckBox();
        cb_credit_dollar = new javax.swing.JCheckBox();
        jPanel3 = new javax.swing.JPanel();
        ds_title = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        cb_nums = new javax.swing.JComboBox();
        ds_title1 = new javax.swing.JLabel();

        javax.swing.GroupLayout jPanel8Layout = new javax.swing.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(159, 207, 243));
        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setFocusable(false);
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(241, 244, 245));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        ds_amountdue.setBackground(java.awt.Color.black);
        ds_amountdue.setFont(new java.awt.Font("DialogInput", 1, 40)); // NOI18N
        ds_amountdue.setForeground(new java.awt.Color(255, 255, 255));
        ds_amountdue.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        ds_amountdue.setText("1,500.00");
        ds_amountdue.setBorder(javax.swing.BorderFactory.createCompoundBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 3), javax.swing.BorderFactory.createEmptyBorder(3, 3, 3, 3)));
        ds_amountdue.setOpaque(true);
        jPanel1.add(ds_amountdue, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 20, 373, 40));

        jLabel7.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(41, 9, 149));
        jLabel7.setText("Amount Due:");
        jPanel1.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 0, -1, -1));

        ds_change_peso.setBackground(java.awt.Color.darkGray);
        ds_change_peso.setFont(new java.awt.Font("Dialog", 1, 45)); // NOI18N
        ds_change_peso.setForeground(java.awt.Color.green);
        ds_change_peso.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        ds_change_peso.setText("0.00");
        ds_change_peso.setBorder(javax.swing.BorderFactory.createCompoundBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 3), javax.swing.BorderFactory.createEmptyBorder(3, 3, 3, 3)));
        ds_change_peso.setOpaque(true);
        jPanel1.add(ds_change_peso, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 470, 300, 67));

        pnl_numpad.setBackground(new java.awt.Color(159, 207, 243));
        pnl_numpad.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(41, 9, 149), 3, true));
        pnl_numpad.setForeground(new java.awt.Color(41, 9, 149));
        pnl_numpad.setFocusable(false);
        pnl_numpad.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jTabbedPane1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("CREDIT");
        jLabel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, 445, Short.MAX_VALUE)
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGap(162, 162, 162)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(177, Short.MAX_VALUE))
        );

        jTabbedPane1.addTab("", jPanel6);

        jPanel5.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        cb_card_type.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        cb_card_type.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "PREMIUM", "SILVER", "GOLD" }));
        jPanel5.add(cb_card_type, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 200, 280, 33));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel3.setText("CARD #:");
        jPanel5.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 80, 100, 29));

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel4.setText("CARD TYPE:");
        jPanel5.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 200, 100, 29));

        jButton3.setText("+");
        jButton3.setEnabled(false);
        jPanel5.add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 120, 40, 33));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel6.setText("CARD HOLDER:");
        jPanel5.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 40, 120, 29));

        tf_card_holder.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        tf_card_holder.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jPanel5.add(tf_card_holder, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 40, 300, 29));

        tf_credit_card_no.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        tf_credit_card_no.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jPanel5.add(tf_credit_card_no, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 80, 300, 29));

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel8.setText("APPRV. CODE:");
        jPanel5.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 160, 110, 29));

        tf_app_code.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        tf_app_code.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        tf_app_code.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tf_app_codeActionPerformed(evt);
            }
        });
        jPanel5.add(tf_app_code, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 160, 300, 29));

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel9.setText("CARD TYPE:");
        jPanel5.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 120, 100, 29));

        cb_bank.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        cb_bank.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "VISA", "MASTER CARD", "AMEX" }));
        jPanel5.add(cb_bank, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 120, 260, 33));

        jTabbedPane1.addTab("CREDIT CARD", jPanel5);

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel5.setText("NAME:");

        tf_cust_no.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        tf_cust_no.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tf_cust_noMouseClicked(evt);
            }
        });

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel10.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel10.setText("ID. #:");

        jLabel24.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel24.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel24.setText("ADDRESS:");

        jScrollPane1.setHorizontalScrollBarPolicy(javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
        jScrollPane1.setVerticalScrollBarPolicy(javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_NEVER);
        jScrollPane1.setAutoscrolls(true);

        tf_address.setColumns(20);
        tf_address.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        tf_address.setRows(5);
        jScrollPane1.setViewportView(tf_address);

        cb_cust_name.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        cb_cust_name.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cb_cust_nameActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel9Layout = new javax.swing.GroupLayout(jPanel9);
        jPanel9.setLayout(jPanel9Layout);
        jPanel9Layout.setHorizontalGroup(
            jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel9Layout.createSequentialGroup()
                .addGap(31, 31, 31)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(10, 10, 10)
                        .addComponent(cb_cust_name, javax.swing.GroupLayout.PREFERRED_SIZE, 310, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(10, 10, 10)
                        .addComponent(tf_cust_no, javax.swing.GroupLayout.PREFERRED_SIZE, 310, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(jLabel24, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addGap(60, 60, 60)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 310, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(44, Short.MAX_VALUE))
        );
        jPanel9Layout.setVerticalGroup(
            jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel9Layout.createSequentialGroup()
                .addGap(67, 67, 67)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cb_cust_name, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(10, 10, 10)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(tf_cust_no, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(10, 10, 10)
                .addComponent(jLabel24, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, 0)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(122, Short.MAX_VALUE))
        );

        jTabbedPane1.addTab("MEMBERS", jPanel9);

        pnl_numpad.add(jTabbedPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 50, 450, 400));

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
        pnl_numpad.add(btn_9, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 10, 20, 20));

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
        pnl_numpad.add(btn_6, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 10, 20, 20));

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
        pnl_numpad.add(btn_8, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 10, 20, 20));

        btn_4.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_4.setForeground(new java.awt.Color(41, 9, 149));
        btn_4.setText("4");
        btn_4.setFocusable(false);
        btn_4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_4ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_4, new org.netbeans.lib.awtextra.AbsoluteConstraints(440, 10, 30, 20));

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
        pnl_numpad.add(btn_5, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 10, 20, 20));

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
        pnl_numpad.add(btn_7, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 10, 30, 20));

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
        pnl_numpad.add(btn_3, new org.netbeans.lib.awtextra.AbsoluteConstraints(450, 10, 20, 20));

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
        pnl_numpad.add(btn_1, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 10, 30, 20));

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
        pnl_numpad.add(btn_2, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 10, 30, 20));

        btn_0.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_0.setForeground(new java.awt.Color(41, 9, 149));
        btn_0.setText("0");
        btn_0.setFocusable(false);
        btn_0.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_0ActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_0, new org.netbeans.lib.awtextra.AbsoluteConstraints(440, 10, 30, 20));

        btn_dot.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        btn_dot.setForeground(new java.awt.Color(41, 9, 149));
        btn_dot.setText(".");
        btn_dot.setFocusable(false);
        btn_dot.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_dotActionPerformed(evt);
            }
        });
        pnl_numpad.add(btn_dot, new org.netbeans.lib.awtextra.AbsoluteConstraints(450, 10, 20, 20));

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

        jPanel1.add(pnl_numpad, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 20, 470, 580));

        lb_discount.setFont(new java.awt.Font("DejaVu Sans", 1, 18)); // NOI18N
        lb_discount.setForeground(new java.awt.Color(41, 9, 149));
        lb_discount.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_discount.setText("0 %");
        lb_discount.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.add(lb_discount, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 70, 70, 30));

        jLabel11.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(41, 9, 149));
        jLabel11.setText("Php:");
        jLabel11.setFocusable(false);
        jPanel1.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 470, 70, 70));

        jButton1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jButton1.setText(" Discount");
        jButton1.setFocusable(false);
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 70, 100, 30));

        jLabel12.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(255, 0, 0));
        jLabel12.setText("NET AMOUNT DUE:");
        jPanel1.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 110, -1, -1));

        lbl_disc_amount.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_disc_amount.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_disc_amount.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.add(lbl_disc_amount, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 70, 100, 30));

        lbl_net.setBackground(new java.awt.Color(0, 0, 0));
        lbl_net.setFont(new java.awt.Font("DialogInput", 1, 40)); // NOI18N
        lbl_net.setForeground(java.awt.Color.green);
        lbl_net.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        lbl_net.setText("1,500.00");
        lbl_net.setBorder(javax.swing.BorderFactory.createCompoundBorder(new javax.swing.border.LineBorder(java.awt.Color.orange, 3, true), javax.swing.BorderFactory.createEmptyBorder(3, 3, 3, 3)));
        lbl_net.setOpaque(true);
        jPanel1.add(lbl_net, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 130, 373, 50));

        lb_credit.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_credit.setForeground(new java.awt.Color(41, 9, 149));
        lb_credit.setText("CREDIT :");
        jPanel1.add(lb_credit, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 340, 80, 30));

        jLabel19.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel19.setForeground(new java.awt.Color(41, 9, 149));
        jLabel19.setText("Tendered");
        jPanel1.add(jLabel19, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 230, -1, 30));

        cb_tendered_peso.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        cb_tendered_peso.setSelected(true);
        cb_tendered_peso.setText("Php");
        cb_tendered_peso.setFocusable(false);
        cb_tendered_peso.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cb_tendered_pesoActionPerformed(evt);
            }
        });
        jPanel1.add(cb_tendered_peso, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 260, 60, 40));

        tf_dollar.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        tf_dollar.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        tf_dollar.setText("41.00");
        tf_dollar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tf_dollarMouseClicked(evt);
            }
        });
        tf_dollar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tf_dollarActionPerformed(evt);
            }
        });
        tf_dollar.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                tf_dollarKeyReleased(evt);
            }
        });
        jPanel1.add(tf_dollar, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 190, 90, 40));

        cb_tendered_dollar.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        cb_tendered_dollar.setText("USD");
        cb_tendered_dollar.setFocusable(false);
        cb_tendered_dollar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cb_tendered_dollarActionPerformed(evt);
            }
        });
        jPanel1.add(cb_tendered_dollar, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 300, 60, 40));

        lbl_tendered_peso.setFont(new java.awt.Font("DialogInput", 1, 40)); // NOI18N
        lbl_tendered_peso.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        lbl_tendered_peso.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 204, 0), 2));
        lbl_tendered_peso.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl_tendered_pesoMouseClicked(evt);
            }
        });
        lbl_tendered_peso.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                lbl_tendered_pesoKeyReleased(evt);
            }
        });
        jPanel1.add(lbl_tendered_peso, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 260, 280, 40));

        lbl_tendered_dollar.setFont(new java.awt.Font("DialogInput", 1, 40)); // NOI18N
        lbl_tendered_dollar.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        lbl_tendered_dollar.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 204, 0), 2));
        lbl_tendered_dollar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl_tendered_dollarMouseClicked(evt);
            }
        });
        lbl_tendered_dollar.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                lbl_tendered_dollarKeyReleased(evt);
            }
        });
        jPanel1.add(lbl_tendered_dollar, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 300, 280, 40));

        lb_less1.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_less1.setForeground(new java.awt.Color(41, 9, 149));
        lb_less1.setText("Less:");
        jPanel1.add(lb_less1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 70, 50, 30));

        lb_less2.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_less2.setForeground(new java.awt.Color(41, 9, 149));
        lb_less2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lb_less2.setText("=");
        jPanel1.add(lb_less2, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 190, 30, 40));

        lb_less3.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        lb_less3.setForeground(new java.awt.Color(41, 9, 149));
        lb_less3.setText("1 $");
        jPanel1.add(lb_less3, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 190, 30, 40));

        tf_total_dollar.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        tf_total_dollar.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        tf_total_dollar.setText("0.00");
        tf_total_dollar.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.add(tf_total_dollar, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 190, 110, 40));

        lbl_credit_peso.setBackground(new java.awt.Color(0, 0, 0));
        lbl_credit_peso.setFont(new java.awt.Font("DialogInput", 1, 40)); // NOI18N
        lbl_credit_peso.setForeground(new java.awt.Color(255, 255, 255));
        lbl_credit_peso.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        lbl_credit_peso.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 204, 0), 2));
        lbl_credit_peso.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl_credit_pesoMouseClicked(evt);
            }
        });
        lbl_credit_peso.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                lbl_credit_pesoKeyReleased(evt);
            }
        });
        jPanel1.add(lbl_credit_peso, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 360, 280, 40));

        lbl_credit_dollar.setBackground(new java.awt.Color(0, 0, 0));
        lbl_credit_dollar.setFont(new java.awt.Font("DialogInput", 1, 40)); // NOI18N
        lbl_credit_dollar.setForeground(new java.awt.Color(255, 255, 255));
        lbl_credit_dollar.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        lbl_credit_dollar.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 204, 0), 2));
        lbl_credit_dollar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl_credit_dollarMouseClicked(evt);
            }
        });
        lbl_credit_dollar.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                lbl_credit_dollarKeyReleased(evt);
            }
        });
        jPanel1.add(lbl_credit_dollar, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 400, 280, 40));

        jLabel20.setFont(new java.awt.Font("DejaVu Sans", 1, 14)); // NOI18N
        jLabel20.setForeground(java.awt.Color.red);
        jLabel20.setText("Change:");
        jLabel20.setFocusable(false);
        jPanel1.add(jLabel20, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 450, -1, -1));

        jLabel23.setFont(new java.awt.Font("DejaVu Sans", 1, 24)); // NOI18N
        jLabel23.setForeground(new java.awt.Color(41, 9, 149));
        jLabel23.setText("USD:");
        jLabel23.setFocusable(false);
        jPanel1.add(jLabel23, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 540, 70, 60));

        ds_change_dollar.setBackground(java.awt.Color.darkGray);
        ds_change_dollar.setFont(new java.awt.Font("Dialog", 1, 45)); // NOI18N
        ds_change_dollar.setForeground(java.awt.Color.green);
        ds_change_dollar.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        ds_change_dollar.setText("0.00");
        ds_change_dollar.setBorder(javax.swing.BorderFactory.createCompoundBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 3), javax.swing.BorderFactory.createEmptyBorder(3, 3, 3, 3)));
        ds_change_dollar.setOpaque(true);
        jPanel1.add(ds_change_dollar, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 540, 300, 60));

        cb_credit_peso.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        cb_credit_peso.setText("Php");
        cb_credit_peso.setFocusable(false);
        cb_credit_peso.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cb_credit_pesoActionPerformed(evt);
            }
        });
        jPanel1.add(cb_credit_peso, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 360, 60, 40));

        cb_credit_dollar.setFont(new java.awt.Font("Tahoma", 1, 10)); // NOI18N
        cb_credit_dollar.setText("+ CHARGES:");
        cb_credit_dollar.setEnabled(false);
        cb_credit_dollar.setFocusable(false);
        cb_credit_dollar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cb_credit_dollarActionPerformed(evt);
            }
        });
        jPanel1.add(cb_credit_dollar, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 400, 90, 40));

        jPanel2.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 80, 890, 620));

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
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 219, Short.MAX_VALUE)
                .addComponent(ds_title, javax.swing.GroupLayout.PREFERRED_SIZE, 141, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(cb_nums, javax.swing.GroupLayout.PREFERRED_SIZE, 252, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 64, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(ds_title, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(cb_nums, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(ds_title1, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(23, 23, 23))
        );

        jPanel2.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 890, 70));

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 910, 710));

        pack();
    }// </editor-fold>//GEN-END:initComponents

private void btn_9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_9ActionPerformed
//    do_9();
}//GEN-LAST:event_btn_9ActionPerformed

private void btn_6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_6ActionPerformed
//    do_6();
}//GEN-LAST:event_btn_6ActionPerformed

private void btn_8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_8ActionPerformed
//    do_8();
}//GEN-LAST:event_btn_8ActionPerformed

private void btn_4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_4ActionPerformed
//    do_4();
}//GEN-LAST:event_btn_4ActionPerformed

private void btn_5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_5ActionPerformed
//    do_5();
}//GEN-LAST:event_btn_5ActionPerformed

private void btn_7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_7ActionPerformed
//    do_7();
}//GEN-LAST:event_btn_7ActionPerformed

private void btn_3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_3ActionPerformed
//    do_3();
}//GEN-LAST:event_btn_3ActionPerformed

private void btn_1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_1ActionPerformed
//    do_1();
}//GEN-LAST:event_btn_1ActionPerformed

private void btn_2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_2ActionPerformed
//    do_2();
}//GEN-LAST:event_btn_2ActionPerformed

private void btn_0ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_0ActionPerformed
//    do_0();
}//GEN-LAST:event_btn_0ActionPerformed

private void btn_dotActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_dotActionPerformed
//    do_dot();
}//GEN-LAST:event_btn_dotActionPerformed

private void btn_cancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_cancelActionPerformed
//    clear_field();
    ok1();
}//GEN-LAST:event_btn_cancelActionPerformed

private void btn_okActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_okActionPerformed
    do_ok();
}//GEN-LAST:event_btn_okActionPerformed

private void btn_clearActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_clearActionPerformed
//    do_clear();
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

    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
        ok1();
    }//GEN-LAST:event_formWindowClosing

    private void cb_tendered_pesoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cb_tendered_pesoActionPerformed
        tendered_peso();
    }//GEN-LAST:event_cb_tendered_pesoActionPerformed

    private void cb_tendered_dollarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cb_tendered_dollarActionPerformed
//        set_tendered_dollar();
        tendered_dollar();
    }//GEN-LAST:event_cb_tendered_dollarActionPerformed

    private void lbl_tendered_pesoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_tendered_pesoMouseClicked
        lbl_tendered_peso.selectAll();
    }//GEN-LAST:event_lbl_tendered_pesoMouseClicked

    private void lbl_tendered_dollarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_tendered_dollarMouseClicked
        lbl_tendered_dollar.selectAll();
    }//GEN-LAST:event_lbl_tendered_dollarMouseClicked

    private void lbl_tendered_pesoKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_lbl_tendered_pesoKeyReleased
//        set_tendered_peso();
        type_peso();
    }//GEN-LAST:event_lbl_tendered_pesoKeyReleased

    private void lbl_tendered_dollarKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_lbl_tendered_dollarKeyReleased
        type_peso();
    }//GEN-LAST:event_lbl_tendered_dollarKeyReleased

    private void tf_dollarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tf_dollarActionPerformed
    }//GEN-LAST:event_tf_dollarActionPerformed

    private void tf_dollarKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_tf_dollarKeyReleased
        set_dollar_cur();
    }//GEN-LAST:event_tf_dollarKeyReleased

    private void tf_dollarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tf_dollarMouseClicked
        tf_dollar.selectAll();
    }//GEN-LAST:event_tf_dollarMouseClicked

    private void tf_app_codeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tf_app_codeActionPerformed
        ok1();
    }//GEN-LAST:event_tf_app_codeActionPerformed

    private void lbl_credit_pesoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_credit_pesoMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_lbl_credit_pesoMouseClicked

    private void lbl_credit_pesoKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_lbl_credit_pesoKeyReleased
        type_peso();
    }//GEN-LAST:event_lbl_credit_pesoKeyReleased

    private void lbl_credit_dollarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_credit_dollarMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_lbl_credit_dollarMouseClicked

    private void lbl_credit_dollarKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_lbl_credit_dollarKeyReleased
        type_peso();
    }//GEN-LAST:event_lbl_credit_dollarKeyReleased

    private void cb_credit_pesoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cb_credit_pesoActionPerformed
        credit_peso();
    }//GEN-LAST:event_cb_credit_pesoActionPerformed

    private void cb_credit_dollarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cb_credit_dollarActionPerformed
        credit_dollar();
    }//GEN-LAST:event_cb_credit_dollarActionPerformed

    private void tf_cust_noMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tf_cust_noMouseClicked
        // TODO add your handling code here:
//        keyboard(tf_cust_no);
    }//GEN-LAST:event_tf_cust_noMouseClicked

    private void cb_cust_nameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cb_cust_nameActionPerformed
        choose();
    }//GEN-LAST:event_cb_cust_nameActionPerformed
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
    private javax.swing.JComboBox cb_bank;
    private javax.swing.JComboBox cb_card_type;
    private javax.swing.JCheckBox cb_credit_dollar;
    private javax.swing.JCheckBox cb_credit_peso;
    private javax.swing.JComboBox cb_cust_name;
    private javax.swing.JComboBox cb_nums;
    private javax.swing.JCheckBox cb_tendered_dollar;
    private javax.swing.JCheckBox cb_tendered_peso;
    private javax.swing.JLabel ds_amountdue;
    private javax.swing.JLabel ds_change_dollar;
    private javax.swing.JLabel ds_change_peso;
    private javax.swing.JLabel ds_title;
    private javax.swing.JLabel ds_title1;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JPanel jPanel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JLabel lb_credit;
    private javax.swing.JLabel lb_discount;
    private javax.swing.JLabel lb_less1;
    private javax.swing.JLabel lb_less2;
    private javax.swing.JLabel lb_less3;
    private javax.swing.JTextField lbl_credit_dollar;
    private javax.swing.JTextField lbl_credit_peso;
    private javax.swing.JLabel lbl_disc_amount;
    private javax.swing.JLabel lbl_net;
    private javax.swing.JTextField lbl_tendered_dollar;
    private javax.swing.JTextField lbl_tendered_peso;
    private javax.swing.JPanel pnl_numpad;
    private javax.swing.JTextArea tf_address;
    private javax.swing.JTextField tf_app_code;
    private javax.swing.JTextField tf_card_holder;
    private javax.swing.JTextField tf_credit_card_no;
    private javax.swing.JTextField tf_cust_no;
    private javax.swing.JTextField tf_dollar;
    private javax.swing.JLabel tf_total_dollar;
    // End of variables declaration//GEN-END:variables
    //<editor-fold defaultstate="collapsed" desc=" myInit ">

    private void myInit() {
//        MyDB.setNames("db_pos_casablanca");
//        if (System.getProperty("os.name").equalsIgnoreCase("linux")) {
//           
//            this.setUndecorated(true);
//        } else {
////             JOptionPane.showMessageDialog(null, System.getProperty("os.name"));
//            this.setUndecorated(false);
//        }

        init_cb();
        hidden();
        cb_nums.setVisible(false);
        ds_title.setVisible(false);
        lbl_tendered_dollar.setEnabled(false);
        lbl_credit_peso.setEnabled(false);
        lbl_credit_dollar.setEnabled(false);

        btn_credit.setEnabled(false);
        jLabel21.setEnabled(false);
        jLabel22.setEnabled(false);

        cb_card_type.setVisible(false);
        jLabel4.setVisible(false);

        jTabbedPane1.setEnabled(false);
        lb_discount.setText("0%");
//        lbl_tendered_peso.setText("" + FitIn.toDouble(lbl_net.getText()));

        lbl_tendered_peso.selectAll();
//        initActionKey();
        initDisableBtnFocus();
        lbl_tendered_peso.grabFocus();
//        initTfDummy();
//        btn_cancel.setVisible(false);
    }

    private void hidden() {
        btn_0.setVisible(false);
        btn_1.setVisible(false);
        btn_2.setVisible(false);
        btn_3.setVisible(false);
        btn_4.setVisible(false);
        btn_5.setVisible(false);
        btn_6.setVisible(false);
        btn_7.setVisible(false);
        btn_8.setVisible(false);
        btn_9.setVisible(false);
        btn_dot.setVisible(false);
    }

    private void set_dollar_cur() {
        double am = FitIn.toDouble(tf_dollar.getText());
        if (tf_total_dollar.getText().
                isEmpty() || am <= 0) {
            tf_total_dollar.setText("0.00");
        } else {
            tf_total_dollar.setText("" + df.format((FitIn.toDouble(lbl_net.getText()) / FitIn.toDouble(tf_dollar.getText()))));
        }
        type_peso();
    }

    private void clear_field() {
        Backspace.clear_lbl(lbl_tendered_dollar);
        tf_dummy.setText(lbl_tendered_dollar.getText());

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
        ds_change_peso.setText("");
        lbl_tendered_dollar.setText("");
        ds_amountdue.setText("15000.00");
        tf_dummy = new JTextField();
        CurrencyDocument cd = new CurrencyDocument(true, 10);
        tf_dummy.setDocument(cd);
    }

    private void put_text(String str) {
//        z
//        if (bb != 0) {
//            tf_dummy.setText("");
//            bb = 0;
//            pay_mode = "cash";
//            mem_id = "";
//            lbl_credit_peso.setText("0");
//            lbl_tendered_dollar.setText("");
//
//        }
//
//        CurrencyDocument.decimalInserter(tf_dummy, str);
//        lbl_tendered_dollar.setText(tf_dummy.getText());
//        screen_computation();
    }

    private void do_clear() {
        tf_dummy.setText("");
        lbl_tendered_dollar.setText(tf_dummy.getText());
        ds_change_peso.setText("0.0");
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

            String str_tendered = lbl_tendered_dollar.getText();
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
            ds_change_peso.setText("Kulang");
//            return false;
        } else if (change == 0) {
//            CashDrawer.open();
//            ds_change.setText("Exact");
        } else {
//            CashDrawer.open();
            ds_change_peso.setText(MessageFormat.format("{0,number,#,##0.00}", change));
        }
    }

    private boolean screen_computation() {
        double amt_due = 0;
        double amt_tendered = 0;
        double credit = 0;
        credit = FitIn.toDouble(lbl_credit_peso.getText());
        try {
            amt_due = Round2.withZeroBack(lbl_net.getText()).
                    doubleValue();
            String str_tendered = lbl_tendered_dollar.getText();
            if (str_tendered.isEmpty()) {
                if (System.getProperty("version", "resto").
                        equals("resto")) {
                } else {
                    JOptionPane.showMessageDialog(this, "Asang Bayad?");
                    return false;
                }

            }

            amt_tendered = Double.parseDouble(str_tendered);
        } catch (Exception e) {
            amt_due = 0;
            amt_tendered = 0;
        }

        double change = (amt_tendered + credit) - amt_due;

        if (change < 0) {
            ds_change_peso.setText("Kulang");
            return false;
        } else if (change == 0) {
//            CashDrawer.open();
            ds_change_peso.setText("Exact");
        } else {
//            CashDrawer.open();
            ds_change_peso.setText(MessageFormat.format("{0,number,#,##0.00}", change));
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
    double amounts = 0;
    List<S1_add_customer_discount.to_customer_discounts> datas_cus = new ArrayList();

    private void init_cb() {
        List<String> cust1 = new ArrayList();
        datas_cus = S1_add_customer_discount.ret_data("");
        for (S1_add_customer_discount.to_customer_discounts to : datas_cus) {
            cust1.add(to.customer_name);
        }

        cb_cust_name.setEditable(true);
        AutoCompleteDecorator.decorate(cb_cust_name);
        cb_cust_name.setModel(new ListComboBoxModel(cust1));
    }

    public void load(InputData data, String amount) {
        bb = 0;
        this.orders = data.orders;
        jLabel21.setText("CREDIT");
        ord_total = FitIn.toDouble(amount);

        lb_discount.setText("0% = ");
        lbl_disc_amount.setText("0");
        amounts = FitIn.toDouble(amount);
        ds_amountdue.setText(amount);
        lbl_net.setText(amount);
        tf_total_dollar.setText("" + df.format((FitIn.toDouble(lbl_net.getText()) / FitIn.toDouble(tf_dollar.getText()))));
        set_dollar();
    }

    private void choose() {
        if (!datas_cus.isEmpty()) {
            int sel = cb_cust_name.getSelectedIndex();
//                    JOptionPane.showMessageDialog(null, sel);
            if (sel == -1) {
            } else {
//                System.out.println(datas_cus.size() + " = " + sel);
                final S1_add_customer_discount.to_customer_discounts to = (S1_add_customer_discount.to_customer_discounts) datas_cus.get(sel);
                tf_cust_no.setText(to.card_no);
                tf_address.setText(to.address);
            }
        }
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
        double change = FitIn.toDouble(ds_change_peso.getText());
//        JOptionPane.showMessageDialog(null, change);
        if (change < 0) {
            Prompt.call("Kulang");
            return;
        } else {
//            if (callback != null) {
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

//            }
        }
    }

    private void disposed() {
        this.dispose();
    }
    int ii = 0;

    private void clear_data() {
        to_credit t1 = new to_credit("", "", "", "", "", 0, 0);
        to_discount t2 = new to_discount("", "", "", "");
        ii = 0;
        bb = 0;
        lbl_tendered_dollar.setText("");
//            JOptionPane.showMessageDialog(null, "adadad");
    }

    private void ok1(double tendered, to_disc to, String payment_mode, String member_id) {

//        JOptionPane.showMessageDialog(null, "adadad");
        double dollar_rate = FitIn.toDouble(tf_dollar.getText());
        if (payment_mode.equals("cash")) {
            bb = 0;
        }
        if (payment_mode.equals("credit")) {
            bb = 2;
        }
        if (payment_mode.equals("prepaid")) {
            bb = 3;
        }

        String num = tf_cust_no.getText();
        String address = tf_address.getText();
        int id = 0;
        String customer_name = cb_cust_name.getSelectedItem().
                toString();
        String card_no = tf_cust_no.getText();
        if (cb_credit_peso.isSelected()) {
            if (jTabbedPane1.getSelectedIndex() == 1) {
                if (tf_card_holder.getText().
                        isEmpty() || tf_credit_card_no.getText().
                        isEmpty() || tf_app_code.getText().
                        isEmpty()) {

                    Prompt.call("Please Complete Fields");
                    return;
                }
            }
            if (jTabbedPane1.getSelectedIndex() == 2) {
                if (cb_cust_name.getSelectedItem().toString().isEmpty()) {
//                JOptionPane.showMessageDialog(null, "="+tf_cust_no.getText()+"=");
                    Prompt.call("Please Complete Fields");
                    return;
                }
            }
        }

        S1_add_customer_discount.to_customer_discounts to_credit = new S1_add_customer_discount.to_customer_discounts(id, customer_name, card_no, address);
        S1_add_customer_discount.add_data(to_credit);
        double credit_peso = FitIn.toDouble(lbl_credit_peso.getText());
        double credit_dollar = FitIn.toDouble(lbl_credit_dollar.getText());
        double dollar_tendered = FitIn.toDouble(lbl_tendered_dollar.getText());
        if (cb_credit_dollar.isSelected() || cb_credit_peso.isSelected()) {
            if (jTabbedPane1.getSelectedIndex() == 1) {
                to_credit to2 = new to_credit(tf_credit_card_no.getText(), tf_card_holder.getText(), tf_app_code.getText(), cb_bank.getSelectedItem().
                        toString(), cb_card_type.getSelectedItem().
                        toString(), credit_peso, credit_dollar);
                bb = 2;
                to_c = to2;
            }
            if (jTabbedPane1.getSelectedIndex() == 2) {
                to_credit to2 = new to_credit(tf_cust_no.getText(), cb_cust_name.getSelectedItem().toString(), tf_address.getText(), "", "", credit_peso, credit_dollar);
                bb = 2;
                to_c = to2;
            }

        } else {
            to_credit to2 = new to_credit("", "", "", "", "", 0, 0);
            bb = 1;
            to_c = to2;
        }
        if (callback != null) {
            callback.ok2(new CloseDialog(this), new OutputData(tendered, orders, to, ii, to_c, bb, member_id, dollar_rate, dollar_tendered));
        }

        this.dispose();
    }
    final List<to_disc> datas = new ArrayList();
    to_disc too;

    public void do_login() {
        discount();
//        final String names = System.getProperty("entityName", "Intelink-One");
//        Window w = (Window) this;
//        Dlg_authenticate d = Dlg_authenticate.create(w, true);
//        d.setTitle("Login");
//
//        d.setCallback(new Dlg_authenticate.Callback() {
//
//            @Override
//            public void ok(CloseDialog cd, Dlg_authenticate.OutputData data) {
//                cd.ok();
//                discount();
//            }
//
//            @Override
//            public void show_login_again(CloseDialog closeDialog) {
////                closeDialog.ok();
//            }
//        });
//        Center.setCenter(d);
//        d.setVisible(true);

    }

    private void discount() {
        Window p = (Window) this;
        Dlg_discount nd = Dlg_discount.create(p, true);
        nd.setTitle("Discount");
        if (bb == 0) {
            to_credit tot = new to_credit("", "", "", "", "", 0, 0);
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
                lbl_disc_amount.setText("" + FitIn.fmt_wc_0(d));
                lbl_net.setText("" + FitIn.fmt_wc(FitIn.toDouble(ds_amountdue.getText()) - d));
                set_discount();
//                ds_amountdue
                to_disc to = new to_disc(data.disc_name, data.disc_percent, data.cust_name, data.cust_num, data.cust_address, counted_disc);
                ii = 2;
                too = to;
                type_peso();
//                lbl_credit.setText("" + lbl_net.getText());
//                lbl_tendered_dollar.setText("" + lbl_net.getText());
//                screen_computation();
//                load_data(orders);
//                datas.add(to);
            }
        });
        Center.setCenter(nd);

        nd.setVisible(true);
    }
    to_credit to_c;
    int bb = 0;

    public void do_pass(String user_id) {
        user_ids = user_id;
        clear_data();
        if (user_id.equals(6)) {
            jLabel21.setText("CREDIT");
        } else {
        }
        String cashiering_for = System.getProperty("version", "resto");
        if (cashiering_for.equals("ordering")) {
            ds_title.setVisible(true);
//            cb_nums.setVisible(true);
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
        lbl_tendered_peso.grabFocus();
    }

    private void set_ord_num() {
        cb_nums.setModel(new ListComboBoxModel(S5_customer_tables.get_customer_tables_2()));
    }
    String pay_mode = "cash";
    String mem_id = "0";
    String user_ids = "";

    private void credit() {

        if (System.getProperty("version", "ordering").
                equals("ordering") || user_ids.equals("6") || user_ids.equals("5")) {

            Window p = (Window) this;
            Dlg_credit_card_2 nd = Dlg_credit_card_2.create(p, true);
            nd.setTitle("");
            nd.do_pass(FitIn.toDouble(lbl_net.getText()));
            nd.setCallback(new Dlg_credit_card_2.Callback() {

                @Override
                public void ok(CloseDialog closeDialog, Dlg_credit_card_2.OutputData data) {
                    closeDialog.ok();
                    lbl_credit_peso.setText("" + data.credit_amount);
                    to_credit to = new to_credit(data.card_no, data.card_holder, data.app_code, data.bank, data.type, data.credit_amount, 0);
//                    do_credt(data.app_code, data.bank, data.card_no, data.credit_amount, data.type);
                    lbl_tendered_dollar.setText(FitIn.fmt_woc_0(FitIn.toDouble(lbl_net.getText()) - data.credit_amount));
                    ds_change_peso.setText("0.00");
                    bb = 2;
                    to_c = to;
//                    too = to;
                }
            });
            nd.setLocationRelativeTo(this);

            nd.setVisible(true);

        } else {


            Window p = (Window) this;
            Dlg_customer_charges nd = Dlg_customer_charges.create(p, true);
            nd.setTitle("");
            nd.do_pass(FitIn.toDouble(lbl_net.getText()));
            lbl_credit_peso.setText(lbl_net.getText());
            nd.setCallback(new Dlg_customer_charges.Callback() {

                @Override
                public void ok(CloseDialog closeDialog, Dlg_customer_charges.OutputData data) {
//                closeDialog.ok();
//                tf_owner.setText(data.name);
//                tf_card_number.setText(data.address);
//                tf_code.setText(data.con);
                    to_c = data.to;
                    bb = 2;
                    lbl_credit_peso.setText(NumType.with_comma(data.to.amount));
                    pay_mode = data.payment_mode;
                    mem_id = data.member_id;
                    if (data.payment_mode.equals("credit")) {
                        lb_credit.setText("CREDIT");
                        lbl_tendered_dollar.setText(FitIn.fmt_woc_0(FitIn.toDouble(lbl_net.getText()) - data.to.amount));
                        ds_change_peso.setText("0.00");
                        bb = 2;
                    } else {
                        lb_credit.setText("PREPAID");
                        lbl_tendered_dollar.setText(FitIn.fmt_woc_0(data.to.amount));
                        ds_change_peso.setText("0.00");
                        bb = 3;
                    }
//                ok1(Double.parseDouble(FitIn.fmt_woc(lbl_net.getText())), too, data.payment_mode, data.member_id);
//                JOptionPane.showMessageDialog(null, data.payment_mode);
                }
            });
            Center.setCenter(nd);

            nd.setVisible(true);
        }
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
    private void ok1() {
        if (callback != null) {
            callback.close(new CloseDialog(this));
        }
    }

    private void set_dollar() {

        if (cb_tendered_peso.isSelected()) {
            tf_dollar.setEnabled(true);
            tf_dollar.grabFocus();
            tf_dollar.selectAll();

            double dollar = FitIn.toDouble(tf_dollar.getText());
            double amount_due = FitIn.toDouble(ds_amountdue.getText()) / dollar;

//            ds_amountdue.setText(FitIn.fmt_wc_0(amount_due));
            double discount = FitIn.toDouble(lbl_disc_amount.getText());
            double new_due = FitIn.toDouble(lbl_net.getText());
            double tendered = FitIn.toDouble(lbl_tendered_dollar.getText());
            double credit = FitIn.toDouble(lbl_credit_peso.getText());
            double change = FitIn.toDouble(ds_change_peso.getText());
        } else {
            double dollar = FitIn.toDouble(tf_dollar.getText());
            double amount_due = FitIn.toDouble(ds_amountdue.getText()) * dollar;
//            ds_amountdue.setText(FitIn.fmt_wc_0(amounts));
            double discount = FitIn.toDouble(lbl_disc_amount.getText());
            double new_due = FitIn.toDouble(lbl_net.getText());
            double tendered = FitIn.toDouble(lbl_tendered_dollar.getText());
            double credit = FitIn.toDouble(lbl_credit_peso.getText());
            double change = FitIn.toDouble(ds_change_peso.getText());
            tf_dollar.setEnabled(false);
        }
    }
    DecimalFormat df = new DecimalFormat("#.00");

    private void set_tendered_dollar() {
        double dollar = FitIn.toDouble(tf_dollar.getText());
        double net_due = FitIn.toDouble(lbl_net.getText());
        double tendered_peso = FitIn.toDouble(lbl_tendered_peso.getText());
        double tendered_dollar = FitIn.toDouble(lbl_tendered_dollar.getText());

        if (cb_tendered_dollar.isSelected()) {
            lbl_tendered_dollar.selectAll();
            lbl_tendered_dollar.grabFocus();
            double change = tendered_peso - net_due;
            ds_change_peso.setText(df.format(change));
        } else {
            lbl_tendered_peso.selectAll();
            lbl_tendered_peso.grabFocus();
            lbl_tendered_dollar.setText("");
            double change = tendered_peso - net_due;
            ds_change_peso.setText(df.format(change));
        }
//        if (cb_tendered_dollar.isSelected()) {
//            tendered_dollar = 0;
//            if (cb_tendered_peso.isSelected()) {
//                tendered_dollar = (net_due - tendered_peso) / dollar;
//                lbl_tendered_dollar.setText("" + df.format(tendered_dollar));
//                lbl_tendered_peso.setText( df.format(tendered_peso));
//            } else {
//                tendered_dollar = (net_due) / dollar;
//                lbl_tendered_dollar.setText("" + df.format(tendered_dollar));
//                lbl_tendered_peso.setText("");
//            }
//
//        } else {
//            tendered_dollar = 0;
//            if (cb_tendered_peso.isSelected()) {
//                tendered_dollar = (net_due - tendered_peso);
//                lbl_tendered_dollar.setText("");
//                lbl_tendered_peso.setText( df.format(net_due));
//            } else {
//                tendered_dollar = 0;
//                lbl_tendered_dollar.setText("");
//                lbl_tendered_peso.setText("");
//            }
//
//        }
    }

    private void type_peso() {
        double dollar = FitIn.toDouble(tf_dollar.getText());
        double discount = FitIn.toDouble(lbl_disc_amount.getText());
        double net_due = FitIn.toDouble(lbl_net.getText());
        double tendered_peso = FitIn.toDouble(lbl_tendered_peso.getText());
        double tendered_dollar = FitIn.toDouble(lbl_tendered_dollar.getText());

        double credit_peso = FitIn.toDouble(lbl_credit_peso.getText());
        double credit_dollar = FitIn.toDouble(lbl_credit_dollar.getText());
//        double net_due = FitIn.toDouble(ds_amountdue.getText());

        double total_credit = credit_peso;// + (credit_dollar * dollar);
        double change = (net_due - ((tendered_peso + (tendered_dollar * dollar)) + total_credit)) - discount;
        ds_change_peso.setText(df.format(change * -1));
        ds_change_dollar.setText(df.format((change * -1) / dollar));

        if (cb_credit_peso.isSelected()) {
            jTabbedPane1.setEnabled(true);
            jTabbedPane1.setSelectedIndex(1);
            double master_card = 0;
            if (cb_bank.getSelectedIndex() == 2) {
                master_card = .04;
            } else {
                master_card = .04;
            }
            double net = FitIn.toDouble(lbl_credit_peso.getText());
            master_card = net * master_card;
            double aw = master_card;
//             JOptionPane.showMessageDialog(null, master_card);
            lbl_credit_dollar.setText(FitIn.fmt_wc_0(aw));
            ds_amountdue.setText(FitIn.fmt_wc_0(aw + net_due));
//             type_peso();
        } else {
            ds_amountdue.setText(FitIn.fmt_wc_0(net_due));
            lbl_credit_dollar.setText("");
        }
    }

    private void tendered_peso() {
        if (cb_tendered_peso.isSelected()) {
            lbl_tendered_peso.setEnabled(true);
            lbl_tendered_peso.selectAll();
            lbl_tendered_peso.grabFocus();
            type_peso();
        } else {
            lbl_tendered_peso.setEnabled(false);
            lbl_tendered_peso.setText("");
            type_peso();
        }

    }

    private void tendered_dollar() {
        if (cb_tendered_dollar.isSelected()) {
            lbl_tendered_dollar.setEnabled(true);
            lbl_tendered_dollar.selectAll();
            lbl_tendered_dollar.grabFocus();
            type_peso();
        } else {
            lbl_tendered_dollar.setEnabled(false);
            lbl_tendered_dollar.setText("");
            type_peso();
        }
    }

    private void credit_peso() {
        double master_card = 0;

        if (cb_credit_peso.isSelected()) {


            jTabbedPane1.setEnabled(true);
            jTabbedPane1.setSelectedIndex(1);
            lbl_credit_peso.setEnabled(true);
            lbl_credit_peso.selectAll();
            lbl_credit_peso.grabFocus();

            type_peso();
        } else {
            if (cb_credit_dollar.isSelected()) {
                jTabbedPane1.setEnabled(true);
                jTabbedPane1.setSelectedIndex(1);
            } else {
                jTabbedPane1.setEnabled(false);
                jTabbedPane1.setSelectedIndex(0);
            }
            lbl_credit_peso.setEnabled(false);
            lbl_credit_peso.setText("");

            type_peso();
        }
    }

    private void credit_dollar() {
        double master_card = 0;
        if (cb_credit_dollar.isSelected()) {

//             JOptionPane.showMessageDialog(null, master_card);
            jTabbedPane1.setEnabled(true);
            jTabbedPane1.setSelectedIndex(1);
            lbl_credit_dollar.setEnabled(true);
            lbl_credit_dollar.selectAll();
            lbl_credit_dollar.grabFocus();

            type_peso();
        } else {
            if (cb_credit_peso.isSelected()) {
                jTabbedPane1.setEnabled(true);
                jTabbedPane1.setSelectedIndex(1);
            } else {
                jTabbedPane1.setEnabled(false);
                jTabbedPane1.setSelectedIndex(0);
            }
            lbl_credit_dollar.setEnabled(false);
            lbl_credit_dollar.setText("");

            type_peso();
        }
    }

    private void set_credit() {
        double master_card = 0;

    }
}
