package org.openintents.openpgp.util;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.ParcelFileDescriptor;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.ui.crypto.MessageCryptoHelper;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.openintents.openpgp.IOpenPgpService2;
import org.openintents.openpgp.OpenPgpError;
import org.openintents.openpgp.util.ParcelFileDescriptorUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpApi {
    public final Context mContext;
    public final AtomicInteger mPipeIdGen = new AtomicInteger();
    public final IOpenPgpService2 mService;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface CancelableBackgroundOperation {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface IOpenPgpCallback {
        void onReturn(Intent intent);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface IOpenPgpSinkResultCallback<T> {
        void onProgress(int i, int i2);

        void onReturn(Intent intent, Object obj);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenPgpAsyncTask extends AsyncTask {
        public final IOpenPgpCallback callback;
        public final Intent data;

        public OpenPgpAsyncTask(Intent intent, IOpenPgpCallback iOpenPgpCallback) {
            this.data = intent;
            this.callback = iOpenPgpCallback;
        }

        @Override // android.os.AsyncTask
        public final Object doInBackground(Object[] objArr) {
            return OpenPgpApi.this.executeApi(this.data, null);
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Object obj) {
            this.callback.onReturn((Intent) obj);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static class OpenPgpDataResult<T> {
        public final Intent apiResult;
        public final Object sinkResult;

        public OpenPgpDataResult(Intent intent, Object obj) {
            this.apiResult = intent;
            this.sinkResult = obj;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OpenPgpDataSink<T> {
        MimeBodyPart processData(BufferedInputStream bufferedInputStream);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static abstract class OpenPgpDataSource {
        public boolean isCancelled;
        public ParcelFileDescriptor writeSidePfd;

        public Long getSizeForProgress() {
            return null;
        }

        public final ParcelFileDescriptor startPumpThread() {
            if (this.writeSidePfd != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("startPumpThread() must only be called once!");
                return null;
            }
            ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
            ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
            this.writeSidePfd = createPipe[1];
            new ParcelFileDescriptorUtil.DataSourceTransferThread(this, new ParcelFileDescriptor.AutoCloseOutputStream(this.writeSidePfd)).start();
            return parcelFileDescriptor;
        }

        public abstract void writeTo(ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenPgpSourceSinkAsyncTask extends AsyncTask implements CancelableBackgroundOperation {
        public final IOpenPgpSinkResultCallback callback;
        public final Intent data;
        public final OpenPgpDataSink dataSink;
        public final OpenPgpDataSource dataSource;

        public OpenPgpSourceSinkAsyncTask(Intent intent, OpenPgpDataSource openPgpDataSource, OpenPgpDataSink openPgpDataSink, IOpenPgpSinkResultCallback iOpenPgpSinkResultCallback) {
            this.data = intent;
            this.dataSource = openPgpDataSource;
            this.dataSink = openPgpDataSink;
            this.callback = iOpenPgpSinkResultCallback;
        }

        /* JADX WARN: Not initialized variable reg: 5, insn: 0x0053: MOVE (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]) (LINE:84), block:B:42:0x0053 */
        @Override // android.os.AsyncTask
        public final Object doInBackground(Object[] objArr) {
            ParcelFileDescriptor parcelFileDescriptor;
            ParcelFileDescriptor startPumpThread;
            ParcelFileDescriptor parcelFileDescriptor2;
            int i;
            ParcelFileDescriptorUtil.DataSinkTransferThread dataSinkTransferThread;
            OpenPgpApi openPgpApi = OpenPgpApi.this;
            openPgpApi.getClass();
            Intent intent = this.data;
            OpenPgpDataSource openPgpDataSource = this.dataSource;
            ParcelFileDescriptor parcelFileDescriptor3 = null;
            try {
                if (openPgpDataSource != null) {
                    try {
                        Long sizeForProgress = openPgpDataSource.getSizeForProgress();
                        if (sizeForProgress != null) {
                            intent.putExtra("data_length", sizeForProgress.longValue());
                        } else {
                            intent.removeExtra("progress_messenger");
                        }
                        startPumpThread = openPgpDataSource.startPumpThread();
                    } catch (Exception e) {
                        e = e;
                        parcelFileDescriptor2 = null;
                        Log.e(e, "Exception in executeApi call", new Object[0]);
                        Intent intent2 = new Intent();
                        intent2.putExtra("result_code", 0);
                        intent2.putExtra("error", new OpenPgpError(e.getMessage()));
                        OpenPgpDataResult openPgpDataResult = new OpenPgpDataResult(intent2, null);
                        OpenPgpApi.closeLoudly(parcelFileDescriptor2);
                        return openPgpDataResult;
                    } catch (Throwable th) {
                        th = th;
                        OpenPgpApi.closeLoudly(parcelFileDescriptor3);
                        throw th;
                    }
                } else {
                    startPumpThread = null;
                }
                OpenPgpDataSink openPgpDataSink = this.dataSink;
                if (openPgpDataSink != null) {
                    i = openPgpApi.mPipeIdGen.incrementAndGet();
                    parcelFileDescriptor2 = openPgpApi.mService.createOutputPipe(i);
                    try {
                        dataSinkTransferThread = new ParcelFileDescriptorUtil.DataSinkTransferThread(openPgpDataSink, new BufferedInputStream(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor2)));
                        dataSinkTransferThread.start();
                    } catch (Exception e2) {
                        e = e2;
                        Log.e(e, "Exception in executeApi call", new Object[0]);
                        Intent intent22 = new Intent();
                        intent22.putExtra("result_code", 0);
                        intent22.putExtra("error", new OpenPgpError(e.getMessage()));
                        OpenPgpDataResult openPgpDataResult2 = new OpenPgpDataResult(intent22, null);
                        OpenPgpApi.closeLoudly(parcelFileDescriptor2);
                        return openPgpDataResult2;
                    }
                } else {
                    i = 0;
                    parcelFileDescriptor2 = null;
                    dataSinkTransferThread = null;
                }
                Intent executeApi = openPgpApi.executeApi(intent, startPumpThread, i);
                if (dataSinkTransferThread == null) {
                    OpenPgpDataResult openPgpDataResult3 = new OpenPgpDataResult(executeApi, null);
                    OpenPgpApi.closeLoudly(parcelFileDescriptor2);
                    return openPgpDataResult3;
                }
                dataSinkTransferThread.join();
                if (dataSinkTransferThread.isAlive()) {
                    throw new IllegalStateException("result must be accessed only *after* the thread finished execution!");
                }
                OpenPgpDataResult openPgpDataResult4 = new OpenPgpDataResult(executeApi, dataSinkTransferThread.sinkResult);
                OpenPgpApi.closeLoudly(parcelFileDescriptor2);
                return openPgpDataResult4;
            } catch (Throwable th2) {
                th = th2;
                parcelFileDescriptor3 = parcelFileDescriptor;
            }
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Object obj) {
            OpenPgpDataResult openPgpDataResult = (OpenPgpDataResult) obj;
            this.callback.onReturn(openPgpDataResult.apiResult, openPgpDataResult.sinkResult);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface PermissionPingCallback {
    }

    public OpenPgpApi(Context context, IOpenPgpService2 iOpenPgpService2) {
        this.mContext = context;
        this.mService = iOpenPgpService2;
    }

    public static void closeLoudly(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e) {
                Log.e(e, "IOException when closing ParcelFileDescriptor!", new Object[0]);
            }
        }
    }

    public final Intent executeApi(Intent intent, ByteArrayOutputStream byteArrayOutputStream) {
        int incrementAndGet;
        ParcelFileDescriptor createOutputPipe;
        ParcelFileDescriptorUtil.TransferThread transferThread;
        ParcelFileDescriptor parcelFileDescriptor = null;
        try {
            if (byteArrayOutputStream != null) {
                try {
                    incrementAndGet = this.mPipeIdGen.incrementAndGet();
                    createOutputPipe = this.mService.createOutputPipe(incrementAndGet);
                } catch (Exception e) {
                    e = e;
                    Log.e(e, "Exception in executeApi call", new Object[0]);
                    Intent intent2 = new Intent();
                    intent2.putExtra("result_code", 0);
                    intent2.putExtra("error", new OpenPgpError(e.getMessage()));
                    closeLoudly(parcelFileDescriptor);
                    return intent2;
                }
                try {
                    transferThread = new ParcelFileDescriptorUtil.TransferThread(new ParcelFileDescriptor.AutoCloseInputStream(createOutputPipe), byteArrayOutputStream);
                    transferThread.start();
                } catch (Exception e2) {
                    e = e2;
                    parcelFileDescriptor = createOutputPipe;
                    Log.e(e, "Exception in executeApi call", new Object[0]);
                    Intent intent22 = new Intent();
                    intent22.putExtra("result_code", 0);
                    intent22.putExtra("error", new OpenPgpError(e.getMessage()));
                    closeLoudly(parcelFileDescriptor);
                    return intent22;
                } catch (Throwable th) {
                    th = th;
                    parcelFileDescriptor = createOutputPipe;
                    closeLoudly(parcelFileDescriptor);
                    throw th;
                }
            } else {
                incrementAndGet = 0;
                createOutputPipe = null;
                transferThread = null;
            }
            Intent executeApi = executeApi(intent, null, incrementAndGet);
            if (transferThread != null) {
                transferThread.join();
            }
            closeLoudly(createOutputPipe);
            return executeApi;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final OpenPgpSourceSinkAsyncTask executeApiAsync(Intent intent, MessageCryptoHelper.AnonymousClass8 anonymousClass8, OpenPgpDataSink openPgpDataSink, final IOpenPgpSinkResultCallback iOpenPgpSinkResultCallback) {
        intent.putExtra("progress_messenger", new Messenger(new Handler(new Handler.Callback() { // from class: org.openintents.openpgp.util.OpenPgpApi.1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                IOpenPgpSinkResultCallback.this.onProgress(message.arg1, message.arg2);
                return true;
            }
        })));
        OpenPgpSourceSinkAsyncTask openPgpSourceSinkAsyncTask = new OpenPgpSourceSinkAsyncTask(intent, anonymousClass8, openPgpDataSink, iOpenPgpSinkResultCallback);
        openPgpSourceSinkAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return openPgpSourceSinkAsyncTask;
    }

    public final void executeApiAsync(Intent intent, IOpenPgpCallback iOpenPgpCallback) {
        new OpenPgpAsyncTask(intent, iOpenPgpCallback).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final Intent executeApi(Intent intent, ParcelFileDescriptor parcelFileDescriptor, int i) {
        try {
            intent.putExtra("api_version", 12);
            Intent execute = this.mService.execute(intent, parcelFileDescriptor, i);
            execute.setExtrasClassLoader(this.mContext.getClassLoader());
            return execute;
        } catch (Exception e) {
            Log.e(e, "Exception in executeApi call", new Object[0]);
            Intent intent2 = new Intent();
            intent2.putExtra("result_code", 0);
            intent2.putExtra("error", new OpenPgpError(e.getMessage()));
            return intent2;
        } finally {
            closeLoudly(parcelFileDescriptor);
        }
    }
}
