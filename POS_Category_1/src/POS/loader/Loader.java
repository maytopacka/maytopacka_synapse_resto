/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.loader;

import java.awt.Window;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import javax.swing.JFrame;
import javax.swing.SwingWorker;
import overallPOS.modules.share.utils.Application;
import POS.utl.Center;
import overallPOS.modules.share.utils.CloseDialog;
import overallPOS.modules.share.utils.Executor;

/**
 *
 * @author mijzcx
 */
public class Loader {

    public static void doExecute(JFrame ff, final Executor.Task task) {
        final Progress d = Progress.create(new JFrame(), true);
        d.setDisLabel("Please Wait...");
        final SwingWorker work = new SwingWorker() {

            @Override
            protected Object doInBackground() throws Exception {
                task.work_on();
                return null;
            }
        };

        work.addPropertyChangeListener(new PropertyChangeListener() {

            public void propertyChange(PropertyChangeEvent pce) {
                if ("state".equals(pce.getPropertyName()) && SwingWorker.StateValue.DONE == pce.getNewValue()) {
                    d.setVisible(false);

                }
            }
        });


        d.setTitle("Processing");
        d.setCallback(new Progress.Callback() {

            @Override
            public void cancel(CloseDialog closeDialog) {
                work.cancel(true);
                closeDialog.ok();
            }
        });
        Center.setCenter(d);
//        Application.locateOnParentCenter2(ff, d);


        work.execute();
        d.setVisible(true);
    }

    public static interface Task {

        void work_on();
    }

    public static void doExecute(final Window w, final Task task) {


        final Progress d = Progress.create(new JFrame(), true);
        d.setDisLabel("Please Wait...");
        final SwingWorker work = new SwingWorker() {

            @Override
            protected Object doInBackground() throws Exception {
                task.work_on();
                return null;
            }
        };

        work.addPropertyChangeListener(new PropertyChangeListener() {

            public void propertyChange(PropertyChangeEvent pce) {
                if ("state".equals(pce.getPropertyName()) && SwingWorker.StateValue.DONE == pce.getNewValue()) {
                    d.setVisible(false);

                }
            }
        });


        d.setTitle("Processing");
        d.setCallback(new Progress.Callback() {

            @Override
            public void cancel(CloseDialog closeDialog) {
                work.cancel(true);
                closeDialog.ok();
            }
        });

        Center.setCenter(d);
//        Application.locateOnParentCenter2(w, d);


        work.execute();
        d.setVisible(true);

    }
}
