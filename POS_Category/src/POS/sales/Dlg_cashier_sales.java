/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.sales;

import POS.Main;
import POS.printing2.S1_get_sales_for_the_day;
import POS.rpt2.rpt_report;
import POS.rpt2.to_date_to;
import POS.rpt_liquid.Srpt_liquid;
import POS.sales.S1_my_sales.to_receipts;
import POS.utl.DateType;
import POS.utl.MyConnection;
import com.jgoodies.binding.adapter.AbstractTableAdapter;
import com.jgoodies.binding.list.ArrayListModel;
import com.lowagie.text.Font;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.io.InputStream;
import java.sql.Connection;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.ListModel;
import javax.swing.ListSelectionModel;
import mijzcx.synapse.desk.utils.*;
import mijzcx.synapse.desk.utils.KeyMapping.KeyAction;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.swing.JRViewer;

/**
 *
 * @author i1
 */
public class Dlg_cashier_sales extends javax.swing.JDialog {

    /**
     * Creates new form Dlg_my_sales
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
    }
//</editor-fold>

    //<editor-fold defaultstate="collapsed" desc=" Constructors ">
    private Dlg_cashier_sales(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    private Dlg_cashier_sales(java.awt.Dialog parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    public Dlg_cashier_sales() {
        super();
        initComponents();
        myInit();

    }
    private Dlg_cashier_sales myRef;

    private void setThisRef(Dlg_cashier_sales myRef) {
        this.myRef = myRef;
    }
    private static java.util.Map<Object, Dlg_cashier_sales> dialogContainer = new java.util.HashMap();

    public static void clearUpFirst(java.awt.Window parent) {
        if (dialogContainer.containsKey(parent)) {
            dialogContainer.remove(parent);
        }
    }

    public static Dlg_cashier_sales create(java.awt.Window parent, boolean modal) {

        if (modal) {
            return create(parent, ModalityType.APPLICATION_MODAL);
        }

        return create(parent, ModalityType.MODELESS);

    }

    public static Dlg_cashier_sales create(java.awt.Window parent, java.awt.Dialog.ModalityType modalType) {

        if (parent instanceof java.awt.Frame) {

            Dlg_cashier_sales dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Dlg_cashier_sales((java.awt.Frame) parent, false);
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
            Dlg_cashier_sales dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Dlg_cashier_sales((java.awt.Dialog) parent, false);
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


        Dlg_cashier_sales dialog = Dlg_cashier_sales.create(new javax.swing.JFrame(), true);
        Toolkit tk = Toolkit.getDefaultToolkit();
        int xSize = ((int) tk.getScreenSize().
                getWidth());
        int ySize = ((int) tk.getScreenSize().
                getHeight());

        dialog.setSize(xSize, ySize);
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
        lbl_cash_in = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        lbl_dollar = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        lbl_peso = new javax.swing.JLabel();
        lbl_discounts = new javax.swing.JLabel();
        lbl_credit = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jLabel16 = new javax.swing.JLabel();
        lbl_expenses = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        dp_from = new com.toedter.calendar.JDateChooser();
        dp_to = new com.toedter.calendar.JDateChooser();
        jLabel4 = new javax.swing.JLabel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbl_receipt_items = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl_receipts = new javax.swing.JTable();
        jPanel3 = new javax.swing.JPanel();
        pnl_rpt = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel2.setBackground(new java.awt.Color(153, 204, 255));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        lbl_cash_in.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        lbl_cash_in.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_cash_in.setText("0.00");
        lbl_cash_in.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("TOTAL");
        jLabel6.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("CASH IN");
        jLabel7.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        lbl_dollar.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        lbl_dollar.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_dollar.setText("0.00");
        lbl_dollar.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("DOLLAR");
        jLabel9.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel10.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel10.setText("CREDIT");
        jLabel10.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel11.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel11.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel11.setText("PESO");
        jLabel11.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        lbl_peso.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        lbl_peso.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_peso.setText("0.00");
        lbl_peso.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        lbl_discounts.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        lbl_discounts.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_discounts.setText("0.00");
        lbl_discounts.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        lbl_credit.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        lbl_credit.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_credit.setText("0.00");
        lbl_credit.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel15.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel15.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel15.setText("DISCOUNTS");
        jLabel15.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jButton2.setText("CLOSE");
        jButton2.setFocusable(false);
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel16.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel16.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel16.setText("EXPENSES");
        jLabel16.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        lbl_expenses.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        lbl_expenses.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_expenses.setText("0.00");
        lbl_expenses.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel3.setText("DATE FROM:");

        jLabel4.setText("DATE TO:");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addComponent(dp_from, javax.swing.GroupLayout.PREFERRED_SIZE, 168, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(dp_to, javax.swing.GroupLayout.PREFERRED_SIZE, 168, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 64, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 850, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(130, 130, 130)
                        .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, 0)
                        .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, 0)
                        .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, 0)
                        .addComponent(jLabel15, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, 0)
                        .addComponent(jLabel16, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(lbl_cash_in, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(130, 130, 130)
                        .addComponent(lbl_peso, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, 0)
                        .addComponent(lbl_dollar, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, 0)
                        .addComponent(lbl_credit, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, 0)
                        .addComponent(lbl_discounts, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, 0)
                        .addComponent(lbl_expenses, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(10, 10, 10)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel7)
                            .addComponent(jLabel11)
                            .addComponent(jLabel9)
                            .addComponent(jLabel10)
                            .addComponent(jLabel15)
                            .addComponent(jLabel16))
                        .addGap(3, 3, 3)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lbl_cash_in, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lbl_peso, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lbl_dollar, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lbl_credit, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lbl_discounts, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(lbl_expenses, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(dp_from, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel4)
                        .addGap(0, 0, 0)
                        .addComponent(dp_to, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );

        jTabbedPane1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTabbedPane1MouseClicked(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("ORDERS");
        jLabel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        tbl_receipt_items.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane2.setViewportView(tbl_receipt_items);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("TRANSACTIONS");
        jLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        tbl_receipts.setModel(new javax.swing.table.DefaultTableModel(
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
        tbl_receipts.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbl_receiptsMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbl_receipts);

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 613, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 542, Short.MAX_VALUE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGap(12, 12, 12)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 469, Short.MAX_VALUE)
                    .addComponent(jScrollPane2))
                .addGap(7, 7, 7))
        );

        jTabbedPane1.addTab("SALES DETAILS", jPanel4);

        pnl_rpt.setBackground(new java.awt.Color(255, 255, 255));

        javax.swing.GroupLayout pnl_rptLayout = new javax.swing.GroupLayout(pnl_rpt);
        pnl_rpt.setLayout(pnl_rptLayout);
        pnl_rptLayout.setHorizontalGroup(
            pnl_rptLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 1165, Short.MAX_VALUE)
        );
        pnl_rptLayout.setVerticalGroup(
            pnl_rptLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 491, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(pnl_rpt, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(pnl_rpt, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        jTabbedPane1.addTab("SUMMARY", jPanel3);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jTabbedPane1))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jTabbedPane1)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tbl_receiptsMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbl_receiptsMouseClicked
        data_cols();
    }//GEN-LAST:event_tbl_receiptsMouseClicked

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        disposed();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jTabbedPane1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTabbedPane1MouseClicked
        rep = 1;
        set_report();
    }//GEN-LAST:event_jTabbedPane1MouseClicked
    /**
     * @param args the command line arguments
     */
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.toedter.calendar.JDateChooser dp_from;
    private com.toedter.calendar.JDateChooser dp_to;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JLabel lbl_cash_in;
    private javax.swing.JLabel lbl_credit;
    private javax.swing.JLabel lbl_discounts;
    private javax.swing.JLabel lbl_dollar;
    private javax.swing.JLabel lbl_expenses;
    private javax.swing.JLabel lbl_peso;
    private javax.swing.JPanel pnl_rpt;
    private javax.swing.JTable tbl_receipt_items;
    private javax.swing.JTable tbl_receipts;
    // End of variables declaration//GEN-END:variables

    private void myInit() {
//        Main.MyDB.setNames("db_pos_casablanca");
        init_key();
        dp_from.setDate(new Date());
        dp_to.setDate(new Date());


        init_tbl_receipts();
//        data_cols("24");
        compute();
        init_tbl_receipt_items();
//        set_report();
        dp_from.addPropertyChangeListener(new PropertyChangeListener() {

            @Override
            public void propertyChange(PropertyChangeEvent pce) {
                data_cols(session);
            }
        });
        dp_to.addPropertyChangeListener(new PropertyChangeListener() {

            @Override
            public void propertyChange(PropertyChangeEvent pce) {
                data_cols(session);
            }
        });

    }
    String session = "";

    public void do_pass(String cashier_session_id) {
        session = cashier_session_id;
        double cash_in = S1_my_sales.ret_cash_in(cashier_session_id);
        double expenses = S1_my_sales.ret_expenses(cashier_session_id);
        lbl_cash_in.setText(FitIn.fmt_wc_0(cash_in));
        lbl_expenses.setText(FitIn.fmt_wc_0(expenses));
        data_cols(session);
//        JOptionPane.showMessageDialog(null, cashier_session_id);
        compute();
//        set_report();
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
    private ArrayListModel tbl_receipts_ALM;
    private TblreceiptsModel tbl_receipts_M;

    private void init_tbl_receipts() {
        tbl_receipts_ALM = new ArrayListModel();
        tbl_receipts_M = new TblreceiptsModel(tbl_receipts_ALM);
        tbl_receipts.getTableHeader().
                setPreferredSize(new Dimension(100, 40));
        tbl_receipts.setModel(tbl_receipts_M);
        tbl_receipts.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
        tbl_receipts.setRowHeight(25);
//        tbl_receipts.setAutoResizeMode(1);
        int[] tbl_widths_receipts = {70, 0, 100, 0, 0, 100, 100, 100, 0, 0, 0, 100};
        for (int i = 0, n = tbl_widths_receipts.length; i < n; i++) {
            if (i == 2) {
                continue;
            }
            TableWidthUtilities.setColumnWidth(tbl_receipts, i, tbl_widths_receipts[i]);
        }
        Dimension d = tbl_receipts.getTableHeader().
                getPreferredSize();
        d.height = 30;
        tbl_receipts.getTableHeader().
                setPreferredSize(d);
        tbl_receipts.getTableHeader().
                setFont(new java.awt.Font("Arial", Font.BOLD, 12));
        tbl_receipts.setRowHeight(35);
        tbl_receipts.setFont(new java.awt.Font("Arial", 1, 12));
    }

    private void loadData_receipts(List<to_receipts> acc) {
        tbl_receipts_ALM.clear();
        tbl_receipts_ALM.addAll(acc);
    }

    public static class TblreceiptsModel extends AbstractTableAdapter {

        public static String[] COLUMNS = {
            "TRANS #", "cashier_session_id", "TIME", "or_number", "receipt_status", "TENDERED", "DISCOUNT", "CREDIT", "approval_code", "member_id", "is_payed", "DOLLAR"
        };

        public TblreceiptsModel(ListModel listmodel) {
            super(listmodel, COLUMNS);
        }

        @Override
        public boolean isCellEditable(int row, int column) {
            if (column == 1) {
                return true;
            }
            return false;
        }

        @Override
        public Class getColumnClass(int col) {
            if (col == 1000) {
                return Boolean.class;
            }
            return Object.class;
        }

        @Override
        public Object getValueAt(int row, int col) {
            to_receipts tt = (to_receipts) getRow(row);
            switch (col) {
            case 0:
                return tt.id;
            case 1:
                return tt.cashier_session_id;
            case 2:
                return tt.receipt_date;
            case 3:
                return tt.or_number;
            case 4:
                return tt.receipt_status;
            case 5:
                return FitIn.fmt_wc_0(tt.tendered);
            case 6:
                return FitIn.fmt_wc_0(tt.discount);
            case 7:
                return FitIn.fmt_wc_0(tt.credit);
            case 8:
                return tt.approval_code;
            case 9:
                return tt.member_id;
            case 10:
                return tt.is_payed;
            default:
                return tt.dollar;
            }
        }
    }

    private void data_cols(String session_id) {

        String date_from = DateType.sf.format(dp_from.getDate());
        String date_to = DateType.sf.format(dp_to.getDate());
        loadData_receipts(S1_my_sales.ret_data(session_id, date_from, date_to));
    }
    private ArrayListModel tbl_receipt_items_ALM;
    private Tblreceipt_itemsModel tbl_receipt_items_M;

    private void init_tbl_receipt_items() {
        tbl_receipt_items_ALM = new ArrayListModel();
        tbl_receipt_items_M = new Tblreceipt_itemsModel(tbl_receipt_items_ALM);
        tbl_receipt_items.getTableHeader().
                setPreferredSize(new Dimension(100, 40));
        tbl_receipt_items.setModel(tbl_receipt_items_M);
        tbl_receipt_items.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
        tbl_receipt_items.setRowHeight(25);
//        tbl_receipt_items.setAutoResizeMode(1);
        int[] tbl_widths_receipt_items = {0, 0, 0, 70, 100, 100, 100, 0};
        for (int i = 0, n = tbl_widths_receipt_items.length; i < n; i++) {
            if (i == 4) {
                continue;
            }
            TableWidthUtilities.setColumnWidth(tbl_receipt_items, i, tbl_widths_receipt_items[i]);
        }
        Dimension d = tbl_receipt_items.getTableHeader().
                getPreferredSize();
        d.height = 30;
        tbl_receipt_items.getTableHeader().
                setPreferredSize(d);
        tbl_receipt_items.getTableHeader().
                setFont(new java.awt.Font("Arial", Font.BOLD, 12));
        tbl_receipt_items.setRowHeight(35);
        tbl_receipt_items.setFont(new java.awt.Font("Arial", 1, 12));
    }

    private void loadData_receipt_items(List<S1_my_sales.to_receipt_items> acc) {
        tbl_receipt_items_ALM.clear();
        tbl_receipt_items_ALM.addAll(acc);
    }

    public static class Tblreceipt_itemsModel extends AbstractTableAdapter {

        public static String[] COLUMNS = {
            "id", "receipt_id", "product_name", "QTY", "DESCRIPTION", "PRICE", "AMOUNT", "cat_name"
        };

        public Tblreceipt_itemsModel(ListModel listmodel) {
            super(listmodel, COLUMNS);
        }

        @Override
        public boolean isCellEditable(int row, int column) {
            if (column == 1) {
                return true;
            }
            return false;
        }

        @Override
        public Class getColumnClass(int col) {
            if (col == 1000) {
                return Boolean.class;
            }
            return Object.class;
        }

        @Override
        public Object getValueAt(int row, int col) {
            S1_my_sales.to_receipt_items tt = (S1_my_sales.to_receipt_items) getRow(row);
            switch (col) {
            case 0:
                return tt.id;
            case 1:
                return tt.receipt_id;
            case 2:
                return tt.product_name;
            case 3:
                return FitIn.toInt("" + tt.qty);
            case 4:
                return tt.description;
            case 5:
                return tt.unit_price;
            case 6:
                return tt.qty * tt.unit_price;
            default:
                return tt.cat_name;
            }
        }
    }

    private void data_cols() {
//        (new ArrayListModel());
        int idx = tbl_receipts.getSelectedRow();
        if (idx < 0) {
            return;
        }

        final to_receipts to = (to_receipts) tbl_receipts_ALM.get(tbl_receipts.convertRowIndexToModel(idx));
//        JOptionPane.showMessageDialog(null, to.id);
        loadData_receipt_items(S1_my_sales.ret_items("" + to.or_number));
    }

    private void compute() {
        double peso = 0;
        double dollar = 0;
        double credit = 0;
        double discount = 0;
        double cash_in = 0;


        List<to_receipts> datas = tbl_receipts_ALM;

        for (to_receipts to : datas) {
            peso += to.tendered;
            credit += to.credit;
            discount += to.discount;
            dollar += to.dollar;
        }

        lbl_peso.setText(FitIn.fmt_wc_0(peso));
        lbl_dollar.setText(FitIn.fmt_wc_0(dollar));
        lbl_discounts.setText(FitIn.fmt_wc_0(discount));
        lbl_credit.setText(FitIn.fmt_wc_0(credit));
    }

    private void print_sales() {
        final to_date_to.session to = new to_date_to.session(new Date(), new Date(), "", "", 0, session);
        Executor.doExecute(this, new Executor.Task() {

            @Override
            public void work_on() {
                if (System.getProperty("version", "ordering").
                        equals("resto")) {
                    rpt_report.pdf_cashier_session(to, "rpt_cashier_session_1_1");
                } else {
                    String print_to_receipt = System.getProperty("print_to_receipt", "true");
                    if (print_to_receipt.equals("true")) {
                        rpt_report.pdf_cashier_session(to, "rpt_cashier_session");
                    } else {
                        rpt_report.pdf_cashier_session(to, "rpt_cashier_session");
                    }

                }
            }
        });
    }
    int rep = 0;

    private void set_report() {
//        if (rep == 0) {
        int row = jTabbedPane1.getSelectedIndex();
//        JOptionPane.showMessageDialog(null, row);
        final String version = System.getProperty("version", "ordering");
        String date_from = DateType.sf.format(dp_from.getDate());
        String date_to = DateType.sf.format(dp_to.getDate());
        final S1_get_sales_for_the_day.to_reciept_sales to = S1_get_sales_for_the_day.ret_data_session(session, new Date(), new Date(), "", 0,date_from,date_to);

//            final to_date_to to2 = new to_date_to(dp_from.getDate(), dp_to.getDate(), b_name, "", amount);
        String jrxml_name = "";
        if (version.equals("resto")) {
            jrxml_name = "rpt_daily_sales_liquid.jrxml";
            report_get_viewer_conn_summary(to, jrxml_name);
        } else {
            jrxml_name = "rpt_daily_sales_cashier.jrxml";
            report_get_viewer_conn_summary(to, jrxml_name);
        }
//        }

    }

    private void report_get_viewer_conn_summary(final S1_get_sales_for_the_day.to_reciept_sales to, String jrxml_name) {
        pnl_rpt.removeAll();
        pnl_rpt.setLayout(new BorderLayout());
        try {
            JRViewer viewer = get_viewer_conn_summary(to, jrxml_name);
            JPanel pnl = new JPanel();
            pnl.add(viewer);
            pnl.setVisible(true);
            pnl.setVisible(true);
            pnl_rpt.add(viewer);
            pnl_rpt.updateUI();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static JRViewer get_viewer_conn_summary(S1_get_sales_for_the_day.to_reciept_sales to, String rpt_name) {
        Connection con11 = null;
        try {
            con11 = MyConnection.connect();

            return JasperUtil.getJasperViewer(
                    compileJasper(rpt_name),
                    JasperUtil.setParameter(to),
                    con11);
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
        }
    }

    public static JasperReport compileJasper(String rpt_name) {
        try {
            String jrxml = rpt_name;
            InputStream is = Srpt_liquid.class.getResourceAsStream(jrxml);
            JasperReport jasper = JasperCompileManager.compileReport(is);
            return jasper;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
