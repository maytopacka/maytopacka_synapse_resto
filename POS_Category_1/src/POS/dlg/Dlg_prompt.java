/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * dlg_prompt.java
 *
 * Created on Mar 20, 2012, 10:12:08 PM
 */
package POS.dlg;

import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.util.logging.Level;
import overallPOS.modules.share.utils.CloseDialog;
import overallPOS.modules.share.utils.Executor;
import overallPOS.modules.share.utils.KeyMapping;
import overallPOS.modules.share.utils.KeyMapping.KeyAction;

/**
 *
 * @author u2
 */
public class Dlg_prompt extends javax.swing.JDialog {

    //<editor-fold defaultstate="collapsed" desc=" callback ">
    private Callback callback;
    
    public void setCallback(Callback callback) {
        this.callback = callback;
    }
    
    public static interface Callback {
        
        void ok(CloseDialog closeDialog, OutputData data);
    }
    
    public static class OutputData {
        
    }
    
    public static class InputData {
    }
    //</editor-fold>

    //<editor-fold defaultstate="collapsed" desc=" Constructors ">
    private Dlg_prompt(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }
    
    private Dlg_prompt(java.awt.Dialog parent, boolean modal) {
        super(parent, modal);
        initComponents();
        myInit();
    }
    
    public Dlg_prompt() {
        super();
        initComponents();
        myInit();
        
    }
    private Dlg_prompt myRef;
    
    private void setThisRef(Dlg_prompt myRef) {
        this.myRef = myRef;
    }
    private static java.util.Map<Object, Dlg_prompt> dialogContainer = new java.util.HashMap();
    
    public static void clearUpFirst(java.awt.Window parent) {
        if (dialogContainer.containsKey(parent)) {
            dialogContainer.remove(parent);
        }
    }
    
    public static Dlg_prompt create(java.awt.Window parent, boolean modal) {
        
        if (modal) {
            return create(parent, ModalityType.APPLICATION_MODAL);
        }
        
        return create(parent, ModalityType.MODELESS);
        
    }
    
    public static Dlg_prompt create(java.awt.Window parent, java.awt.Dialog.ModalityType modalType) {
        
        if (parent instanceof java.awt.Frame) {
            
            Dlg_prompt dialog = dialogContainer.get(parent);
            
            if (dialog == null) {
                dialog = new Dlg_prompt((java.awt.Frame) parent, false);
                dialog.setModalityType(modalType);
                dialogContainer.put(parent, dialog);
                java.util.logging.Logger.getAnonymousLogger().log(Level.INFO, "instances: {0}", dialogContainer.
                        size());
                dialog.setThisRef(dialog);
                return dialog;
            } else {
                dialog.setModalityType(modalType);
                return dialog;
            }
            
        }
        
        if (parent instanceof java.awt.Dialog) {
            Dlg_prompt dialog = dialogContainer.get(parent);
            
            if (dialog == null) {
                dialog = new Dlg_prompt((java.awt.Dialog) parent, false);
                dialog.setModalityType(modalType);
                dialogContainer.put(parent, dialog);
                java.util.logging.Logger.getAnonymousLogger().log(Level.INFO, "instances: {0}", dialogContainer.
                        size());
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
            javax.swing.UIManager.setLookAndFeel(javax.swing.UIManager.
                    getSystemLookAndFeelClassName());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        
        
        Dlg_prompt dialog = Dlg_prompt.create(new javax.swing.JFrame(), true);
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

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 423, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 230, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
    //<editor-fold defaultstate="collapsed" desc=" myInit ">
    private void myInit() {
        initActionKey();
    }
    
    private void initActionKey() {
        
        KeyMapping.mapKeyWIFW(getSurface(),
                KeyEvent.VK_ESCAPE, new KeyAction() {
            
            @Override
            public void actionPerformed(ActionEvent e) {
                setVisible(false);
            }
        });
    }
    //</editor-fold>

    public void load(InputData data) {
    }
    
    private void cancel() {
        this.setVisible(false);
    }
    
    private void do_ok() {
        if (callback == null) {
            return;
        }
        
        Executor.doExecute(this, new Executor.Task() {
            
            @Override
            public void work_on() {
                prcss_work_on();
            }
        });
    }
    
    private void prcss_work_on() {
        callback.ok(new CloseDialog(this), new OutputData());
    }
}
