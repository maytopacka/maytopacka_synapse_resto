/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dlg_test;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.util.logging.Level;
import javax.swing.Timer;
import overallPOS.modules.share.utils.CloseDialog;
import overallPOS.modules.share.utils.KeyMapping;
import overallPOS.modules.share.utils.KeyMapping.KeyAction;





/**
 *
 * @author Dummy
 */
public class Collpane extends javax.swing.JDialog {

    /** Creates new form Collpane */
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
private Collpane(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    private Collpane(java.awt.Dialog parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }

    public Collpane() {
        super();
        initComponents();
        myInit();

    }
    private Collpane myRef;

    private void setThisRef(Collpane myRef) {
        this.myRef = myRef;
    }
    private static java.util.Map<Object, Collpane> dialogContainer = new java.util.HashMap();

    public static void clearUpFirst(java.awt.Window parent) {
        if (dialogContainer.containsKey(parent)) {
            dialogContainer.remove(parent);
        }
    }

    public static Collpane create(java.awt.Window parent, boolean modal) {

        if (modal) {
            return create(parent, ModalityType.APPLICATION_MODAL);
        }

        return create(parent, ModalityType.MODELESS);

    }

    public static Collpane create(java.awt.Window parent, java.awt.Dialog.ModalityType modalType) {

        if (parent instanceof java.awt.Frame) {

            Collpane dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Collpane((java.awt.Frame) parent, false);
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
            Collpane dialog = dialogContainer.get(parent);

            if (dialog == null) {
                dialog = new Collpane((java.awt.Dialog) parent, false);
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


        Collpane dialog = Collpane.create(new javax.swing.JFrame(), true);
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

        lbl_p_1 = new javax.swing.JButton();
        lbl_p_qty = new javax.swing.JLabel();
        lbl_p_2 = new javax.swing.JButton();
        lbl_p3 = new javax.swing.JButton();
        lbl_p_6 = new javax.swing.JButton();
        lbl_p_5 = new javax.swing.JButton();
        lbl_p_4 = new javax.swing.JButton();
        lbl_p_7 = new javax.swing.JButton();
        lbl_p_8 = new javax.swing.JButton();
        lbl_p_9 = new javax.swing.JButton();
        lbl_p_clear = new javax.swing.JButton();
        lbl_p_dot = new javax.swing.JButton();
        lbl_p_0 = new javax.swing.JButton();
        lbl_p_x = new javax.swing.JButton();
        lbl_go = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(229, 299));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbl_p_1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_1.setText("1");
        getContentPane().add(lbl_p_1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 50, 70, 50));

        lbl_p_qty.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_qty.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_p_qty.setText("0.00");
        lbl_p_qty.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        getContentPane().add(lbl_p_qty, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 210, 40));

        lbl_p_2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_2.setText("2");
        getContentPane().add(lbl_p_2, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 50, 70, 50));

        lbl_p3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p3.setText("3");
        getContentPane().add(lbl_p3, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 50, 70, 50));

        lbl_p_6.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_6.setText("6");
        getContentPane().add(lbl_p_6, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 100, 70, 50));

        lbl_p_5.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_5.setText("5");
        getContentPane().add(lbl_p_5, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 100, 70, 50));

        lbl_p_4.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_4.setText("4");
        getContentPane().add(lbl_p_4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 100, 70, 50));

        lbl_p_7.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_7.setText("7");
        getContentPane().add(lbl_p_7, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 150, 70, 50));

        lbl_p_8.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_8.setText("8");
        getContentPane().add(lbl_p_8, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 150, 70, 50));

        lbl_p_9.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_9.setText("9");
        getContentPane().add(lbl_p_9, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 150, 70, 50));

        lbl_p_clear.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_clear.setText("CL");
        getContentPane().add(lbl_p_clear, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 200, 70, 50));

        lbl_p_dot.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_dot.setText(".");
        getContentPane().add(lbl_p_dot, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 200, 70, 50));

        lbl_p_0.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_0.setText("0");
        getContentPane().add(lbl_p_0, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 200, 70, 50));

        lbl_p_x.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_p_x.setText("X");
        getContentPane().add(lbl_p_x, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 250, 80, 40));

        lbl_go.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lbl_go.setText("OK");
        getContentPane().add(lbl_go, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 250, 130, 40));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
   

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton lbl_go;
    private javax.swing.JButton lbl_p3;
    private javax.swing.JButton lbl_p_0;
    private javax.swing.JButton lbl_p_1;
    private javax.swing.JButton lbl_p_2;
    private javax.swing.JButton lbl_p_4;
    private javax.swing.JButton lbl_p_5;
    private javax.swing.JButton lbl_p_6;
    private javax.swing.JButton lbl_p_7;
    private javax.swing.JButton lbl_p_8;
    private javax.swing.JButton lbl_p_9;
    private javax.swing.JButton lbl_p_clear;
    private javax.swing.JButton lbl_p_dot;
    private javax.swing.JLabel lbl_p_qty;
    private javax.swing.JButton lbl_p_x;
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
