package com.rnmaps.maps;

import android.content.Context;
import android.util.Log;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes5.dex */
public class MapTileWorker extends Worker {
    private static final int BUFFER_SIZE = 16384;

    public MapTileWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        String string = getInputData().getString("filename");
        try {
            int i = getInputData().getInt("maxAge", 0);
            if (i >= 0) {
                if ((System.currentTimeMillis() - new File(string).lastModified()) / 1000 < i) {
                    return ListenableWorker.Result.failure();
                }
            }
            try {
                byte[] fetchTile = fetchTile(new URL(getInputData().getString("url")));
                if (fetchTile != null) {
                    if (!writeTileImage(fetchTile, string)) {
                        return ListenableWorker.Result.failure();
                    }
                    Log.d("urlTile", "Worker fetched " + string);
                    return ListenableWorker.Result.success();
                }
                return ListenableWorker.Result.retry();
            } catch (MalformedURLException e) {
                throw new AssertionError(e);
            }
        } catch (Error unused) {
            return ListenableWorker.Result.failure();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.net.URL] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.io.InputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private byte[] fetchTile(java.net.URL r9) {
        /*
            r8 = this;
            r0 = 0
            java.io.InputStream r9 = com.google.firebase.perf.network.FirebasePerfUrlConnection.openStream(r9)     // Catch: java.lang.Throwable -> L38 java.lang.OutOfMemoryError -> L3d java.io.IOException -> L3f
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L2e java.lang.OutOfMemoryError -> L33 java.io.IOException -> L35
            r1.<init>()     // Catch: java.lang.Throwable -> L2e java.lang.OutOfMemoryError -> L33 java.io.IOException -> L35
            r2 = 16384(0x4000, float:2.2959E-41)
            byte[] r3 = new byte[r2]     // Catch: java.lang.OutOfMemoryError -> L2a java.io.IOException -> L2c java.lang.Throwable -> L50
        Le:
            r4 = 0
            int r5 = r9.read(r3, r4, r2)     // Catch: java.lang.OutOfMemoryError -> L2a java.io.IOException -> L2c java.lang.Throwable -> L50
            r6 = -1
            if (r5 == r6) goto L1a
            r1.write(r3, r4, r5)     // Catch: java.lang.OutOfMemoryError -> L2a java.io.IOException -> L2c java.lang.Throwable -> L50
            goto Le
        L1a:
            r1.flush()     // Catch: java.lang.OutOfMemoryError -> L2a java.io.IOException -> L2c java.lang.Throwable -> L50
            byte[] r0 = r1.toByteArray()     // Catch: java.lang.OutOfMemoryError -> L2a java.io.IOException -> L2c java.lang.Throwable -> L50
            if (r9 == 0) goto L26
            r9.close()     // Catch: java.lang.Exception -> L26
        L26:
            r1.close()     // Catch: java.lang.Exception -> L29
        L29:
            return r0
        L2a:
            r2 = move-exception
            goto L42
        L2c:
            r2 = move-exception
            goto L42
        L2e:
            r1 = move-exception
            r7 = r1
            r1 = r0
            r0 = r7
            goto L51
        L33:
            r2 = move-exception
            goto L36
        L35:
            r2 = move-exception
        L36:
            r1 = r0
            goto L42
        L38:
            r9 = move-exception
            r1 = r0
            r0 = r9
            r9 = r1
            goto L51
        L3d:
            r2 = move-exception
            goto L40
        L3f:
            r2 = move-exception
        L40:
            r9 = r0
            r1 = r9
        L42:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L50
            if (r9 == 0) goto L4a
            r9.close()     // Catch: java.lang.Exception -> L4a
        L4a:
            if (r1 == 0) goto L4f
            r1.close()     // Catch: java.lang.Exception -> L4f
        L4f:
            return r0
        L50:
            r0 = move-exception
        L51:
            if (r9 == 0) goto L56
            r9.close()     // Catch: java.lang.Exception -> L56
        L56:
            if (r1 == 0) goto L5b
            r1.close()     // Catch: java.lang.Exception -> L5b
        L5b:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rnmaps.maps.MapTileWorker.fetchTile(java.net.URL):byte[]");
    }

    private boolean writeTileImage(byte[] bArr, String str) {
        if (str == null) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                File file = new File(str);
                file.getParentFile().mkdirs();
                fileOutputStream = SentryFileOutputStream.Factory.create(new FileOutputStream(file), file);
                fileOutputStream.write(bArr);
                if (fileOutputStream == null) {
                    return true;
                }
                try {
                    fileOutputStream.close();
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException | OutOfMemoryError e) {
            e.printStackTrace();
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Exception unused3) {
                }
            }
            return false;
        }
    }
}
