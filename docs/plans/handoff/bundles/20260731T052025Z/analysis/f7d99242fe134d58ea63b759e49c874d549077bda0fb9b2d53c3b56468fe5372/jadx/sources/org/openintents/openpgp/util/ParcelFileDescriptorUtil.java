package org.openintents.openpgp.util;

import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.OsConstants;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import net.thunderbird.core.logging.legacy.Log;
import org.openintents.openpgp.util.OpenPgpApi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ParcelFileDescriptorUtil {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DataSinkTransferThread extends Thread {
        public final OpenPgpApi.OpenPgpDataSink dataSink;
        public final BufferedInputStream inputStream;
        public Object sinkResult;

        public DataSinkTransferThread(OpenPgpApi.OpenPgpDataSink openPgpDataSink, BufferedInputStream bufferedInputStream) {
            super("IPC Transfer Thread (FROM service)");
            this.dataSink = openPgpDataSink;
            this.inputStream = bufferedInputStream;
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            BufferedInputStream bufferedInputStream = this.inputStream;
            try {
                try {
                    try {
                        this.sinkResult = this.dataSink.processData(bufferedInputStream);
                        bufferedInputStream.close();
                    } catch (IOException e) {
                        Throwable cause = e.getCause();
                        if ((cause instanceof ErrnoException) && ((ErrnoException) cause).errno == OsConstants.EPIPE) {
                            Log.e("Stopped read due to broken pipe (other end closed pipe?)", new Object[0]);
                        } else {
                            Log.e(e, "IOException while reading from in", new Object[0]);
                        }
                        this.sinkResult = null;
                        bufferedInputStream.close();
                    }
                } catch (Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused) {
                    }
                    throw th;
                }
            } catch (IOException unused2) {
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DataSourceTransferThread extends Thread {
        public final OpenPgpApi.OpenPgpDataSource dataSource;
        public final ParcelFileDescriptor.AutoCloseOutputStream outputStream;

        public DataSourceTransferThread(OpenPgpApi.OpenPgpDataSource openPgpDataSource, ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream) {
            super("IPC Transfer Thread (TO service)");
            this.dataSource = openPgpDataSource;
            this.outputStream = autoCloseOutputStream;
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            OpenPgpApi.OpenPgpDataSource openPgpDataSource = this.dataSource;
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = this.outputStream;
            try {
                try {
                    try {
                        openPgpDataSource.writeTo(autoCloseOutputStream);
                        autoCloseOutputStream.close();
                    } catch (IOException unused) {
                    }
                } catch (IOException e) {
                    if (openPgpDataSource.isCancelled) {
                        Log.d("Stopped writing because operation was cancelled.", new Object[0]);
                    } else {
                        Throwable cause = e.getCause();
                        if ((cause instanceof ErrnoException) && ((ErrnoException) cause).errno == OsConstants.EPIPE) {
                            Log.d("Stopped writing due to broken pipe (other end closed pipe?)", new Object[0]);
                        } else {
                            Log.e(e, "IOException when writing to out", new Object[0]);
                        }
                    }
                    autoCloseOutputStream.close();
                }
            } catch (Throwable th) {
                try {
                    autoCloseOutputStream.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TransferThread extends Thread {
        public final InputStream mIn;
        public final OutputStream mOut;

        public TransferThread(InputStream inputStream, OutputStream outputStream) {
            super("IPC Transfer Thread");
            this.mIn = inputStream;
            this.mOut = outputStream;
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            OutputStream outputStream = this.mOut;
            InputStream inputStream = this.mIn;
            byte[] bArr = new byte[4096];
            while (true) {
                try {
                    try {
                        int read = inputStream.read(bArr);
                        if (read > 0) {
                            outputStream.write(bArr, 0, read);
                        }
                    } catch (IOException e) {
                        Log.e(e, "IOException when writing to out", new Object[0]);
                    }
                    try {
                        break;
                    } catch (IOException unused) {
                    }
                } finally {
                }
            }
            inputStream.close();
            try {
                outputStream.close();
            } catch (IOException unused2) {
            }
        }
    }
}
