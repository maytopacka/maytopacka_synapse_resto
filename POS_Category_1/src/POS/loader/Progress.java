/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * ProgressDialog.java
 *
 * Created on 01 14, 11, 1:40:06 PM
 */
package POS.loader;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.logging.Level;
import javax.swing.Timer;
import overallPOS.modules.share.utils.CloseDialog;
import overallPOS.modules.share.utils.Lg;

/**
 *
 * @author admin
 */
public class Progress extends javax.swing.JDialog {

    /**
     * Creates new form CatalogDialog
     */
    //<editor-fold defaultstate="collapsed" desc=" Constructors ">
    private Progress(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    private Progress(java.awt.Dialog parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    public Progress() {
        super();
        initComponents();
        myInit();
    }
    private Progress myRef;

    private void setThisRef(Progress myRef) {
        this.myRef = myRef;
    }
    private static java.util.Map<Object, Progress> dialogContainer = new java.util.HashMap();

    public static void clearUpFirst(java.awt.Window parent) {
        if (dialogContainer.containsKey(parent)) {
            dialogContainer.remove(parent);
        }
    }

    public static Progress create(java.awt.Window parent, boolean modal) {

        if (modal) {
            return create(parent, ModalityType.APPLICATION_MODAL);
        }

        return create(parent, ModalityType.MODELESS);

    }

    public static Progress create(java.awt.Window parent, java.awt.Dialog.ModalityType modalType) {

        if (parent instanceof java.awt.Frame) {

            Progress dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Progress((java.awt.Frame) parent, false);
                dialog.setModalityType(modalType);
                dialogContainer.put(parent, dialog);
                Lg.$.log(Level.INFO, "instances: {0}", dialogContainer.size());
                dialog.setThisRef(dialog);
                return dialog;
            } else {
                dialog.setModalityType(modalType);
                return dialog;
            }

        }

        if (parent instanceof java.awt.Dialog) {
            Progress dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Progress((java.awt.Dialog) parent, false);
                dialog.setModalityType(modalType);
                dialogContainer.put(parent, dialog);
                Lg.$.log(Level.INFO, "instances: {0}", dialogContainer.size());
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

        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                try {
                    Progress dialog = Progress.create(new javax.swing.JFrame(), true);
                    dialog.setVisible(true);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                } finally {
                    System.exit(0);
                }
            }
        });
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

        jPanel1 = new javax.swing.JPanel();
        lblSeconds = new javax.swing.JLabel();
        jProgressBar1 = new javax.swing.JProgressBar();
        btnCancel = new javax.swing.JButton();
        disLabel = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(159, 207, 243));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lblSeconds.setFont(new java.awt.Font("SansSerif", 1, 18)); // NOI18N
        lblSeconds.setText("2 sec");
        jPanel1.add(lblSeconds, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 60, 70, 30));

        jProgressBar1.setIndeterminate(true);
        jPanel1.add(jProgressBar1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 60, 370, 30));

        btnCancel.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnCancel.setText("Cancel");
        btnCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelActionPerformed(evt);
            }
        });
        jPanel1.add(btnCancel, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 100, 90, 30));

        disLabel.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        disLabel.setText("Processing Please Wait... ");
        jPanel1.add(disLabel, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 30, 260, -1));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 400, 140));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelActionPerformed
        cancel();
    }//GEN-LAST:event_btnCancelActionPerformed
    private Callback callback;

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public static interface Callback {

        void cancel(CloseDialog closeDialog);
    }

    private void cancel() {
        if (callback != null) {
            callback.cancel(new CloseDialog(this));
        }
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCancel;
    private javax.swing.JLabel disLabel;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JProgressBar jProgressBar1;
    private javax.swing.JLabel lblSeconds;
    // End of variables declaration//GEN-END:variables

    public void setDisLabel(String label) {
        this.disLabel.setText(label);
    }
    private Timer timer;

    private void myInit() {
        timer = new Timer(0, new ActionListener() {

            public void actionPerformed(ActionEvent e) {
                incrSeconds();
            }
        });
        timer.setDelay(1000);
        timer.start();

    }

    @Override
    public void setVisible(boolean visible) {
        if (!visible) {
            timer.stop();
        } else {
            i = 0;
            timer.start();
        }
        
        super.setVisible(visible);
    }
    int i = 0;

    private void incrSeconds() {

        lblSeconds.setText(i++ + " sec");
    }
}
