package org.maplibre.android.http;

import android.os.AsyncTask;
import java.util.concurrent.locks.ReentrantLock;
import org.maplibre.android.http.NativeHttpRequest;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LocalRequestTask extends AsyncTask {
    public NativeHttpRequest.AnonymousClass1 requestResponse;

    /* JADX WARN: Removed duplicated region for block: B:33:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doInBackground(java.lang.Object[] r7) {
        /*
            r6 = this;
            java.lang.String r6 = "Mbgl-LocalRequestTask"
            java.lang.String r0 = "Load file failed"
            java.lang.String[] r7 = (java.lang.String[]) r7
            android.content.Context r1 = org.maplibre.android.MapLibre.getApplicationContext()
            android.content.res.AssetManager r1 = r1.getAssets()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "integration/"
            r2.<init>(r3)
            r3 = 0
            r7 = r7[r3]
            r3 = 8
            java.lang.String r7 = r7.substring(r3)
            java.lang.String r3 = "%20"
            java.lang.String r4 = " "
            java.lang.String r7 = r7.replaceAll(r3, r4)
            java.lang.String r3 = "%2c"
            java.lang.String r4 = ","
            java.lang.String r7 = r7.replaceAll(r3, r4)
            r2.append(r7)
            java.lang.String r7 = r2.toString()
            r2 = 0
            java.io.InputStream r7 = r1.open(r7)     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L59
            int r1 = r7.available()     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L52
            byte[] r2 = new byte[r1]     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L52
            r7.read(r2)     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L52
            r7.close()     // Catch: java.io.IOException -> L47
            goto L6f
        L47:
            r7 = move-exception
            org.maplibre.android.log.Logger.e(r6, r0, r7)
            kotlin.text.UStringsKt.strictModeViolation(r0, r7)
            goto L6f
        L4f:
            r1 = move-exception
            r2 = r7
            goto L72
        L52:
            r1 = move-exception
            r5 = r2
            r2 = r7
            r7 = r5
            goto L5b
        L57:
            r1 = move-exception
            goto L72
        L59:
            r1 = move-exception
            r7 = r2
        L5b:
            org.maplibre.android.log.Logger.e(r6, r0, r1)     // Catch: java.lang.Throwable -> L70
            kotlin.text.UStringsKt.strictModeViolation(r0, r1)     // Catch: java.lang.Throwable -> L70
            if (r2 == 0) goto L6e
            r2.close()     // Catch: java.io.IOException -> L67
            goto L6e
        L67:
            r1 = move-exception
            org.maplibre.android.log.Logger.e(r6, r0, r1)
            kotlin.text.UStringsKt.strictModeViolation(r0, r1)
        L6e:
            r2 = r7
        L6f:
            return r2
        L70:
            r7 = move-exception
            r1 = r7
        L72:
            if (r2 == 0) goto L7f
            r2.close()     // Catch: java.io.IOException -> L78
            goto L7f
        L78:
            r7 = move-exception
            org.maplibre.android.log.Logger.e(r6, r0, r7)
            kotlin.text.UStringsKt.strictModeViolation(r0, r7)
        L7f:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.maplibre.android.http.LocalRequestTask.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        NativeHttpRequest.AnonymousClass1 anonymousClass1;
        ReentrantLock reentrantLock;
        long j;
        ReentrantLock reentrantLock2;
        byte[] bArr = (byte[]) obj;
        super.onPostExecute(bArr);
        if (bArr == null || (anonymousClass1 = this.requestResponse) == null) {
            return;
        }
        NativeHttpRequest nativeHttpRequest = anonymousClass1.this$0;
        reentrantLock = nativeHttpRequest.lock;
        reentrantLock.lock();
        j = nativeHttpRequest.nativePtr;
        if (j != 0) {
            nativeHttpRequest.nativeOnResponse(200, null, null, null, null, null, null, bArr);
        }
        reentrantLock2 = nativeHttpRequest.lock;
        reentrantLock2.unlock();
    }
}
