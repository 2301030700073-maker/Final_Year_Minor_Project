package com.fsck.k9.controller;

import androidx.work.Configuration;
import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import okio.AsyncTimeout;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.CountingOutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProgressBodyFactory extends AsyncTimeout.Companion {
    public final Configuration.Builder progressListener;

    public ProgressBodyFactory(Configuration.Builder builder) {
        super(18);
        this.progressListener = builder;
    }

    @Override // okio.AsyncTimeout.Companion
    public final void copyData(InputStream inputStream, FileOutputStream fileOutputStream) {
        Timer timer = new Timer();
        try {
            final CountingOutputStream countingOutputStream = new CountingOutputStream(fileOutputStream);
            try {
                timer.scheduleAtFixedRate(new TimerTask() { // from class: com.fsck.k9.controller.ProgressBodyFactory.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        long j;
                        Configuration.Builder builder = ProgressBodyFactory.this.progressListener;
                        CountingOutputStream countingOutputStream2 = countingOutputStream;
                        synchronized (countingOutputStream2) {
                            j = countingOutputStream2.count;
                        }
                        if (j > 2147483647L) {
                            throw new ArithmeticException("The byte count " + j + " is too large to be converted to an int");
                        }
                        int i = (int) j;
                        Iterator it = MessagingController.this.listeners.iterator();
                        while (it.hasNext()) {
                            ((SimpleMessagingListener) it.next()).updateProgress(i);
                        }
                    }
                }, 0L, 50L);
                IOUtils.copy(inputStream, countingOutputStream);
                countingOutputStream.close();
                timer.cancel();
            } finally {
            }
        } catch (Throwable th) {
            timer.cancel();
            throw th;
        }
    }
}
