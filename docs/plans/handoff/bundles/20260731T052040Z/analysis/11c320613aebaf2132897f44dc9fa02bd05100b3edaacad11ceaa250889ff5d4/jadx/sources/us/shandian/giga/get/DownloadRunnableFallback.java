package us.shandian.giga.get;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import org.schabi.newpipe.streams.io.SharpStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class DownloadRunnableFallback extends Thread {
    public HttpURLConnection mConn;
    public SharpStream mF;
    public InputStream mIs;
    public final DownloadMission mMission;
    public int mRetryCount = 0;

    public DownloadRunnableFallback(DownloadMission downloadMission) {
        this.mMission = downloadMission;
    }

    public final void dispose() {
        try {
            try {
                InputStream inputStream = this.mIs;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.mConn.disconnect();
            } catch (Throwable th) {
                this.mConn.disconnect();
                throw th;
            }
        } catch (IOException unused) {
        }
        SharpStream sharpStream = this.mF;
        if (sharpStream != null) {
            sharpStream.close();
        }
    }

    @Override // java.lang.Thread
    public final void interrupt() {
        super.interrupt();
        HttpURLConnection httpURLConnection = this.mConn;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0070 A[Catch: Exception -> 0x0035, TryCatch #1 {Exception -> 0x0035, blocks: (B:3:0x0004, B:9:0x0016, B:13:0x002d, B:14:0x0038, B:19:0x0054, B:45:0x0069, B:47:0x0070, B:50:0x007c, B:52:0x007e, B:54:0x0084, B:56:0x009c, B:57:0x00bf, B:59:0x00c6, B:61:0x00ce, B:63:0x00db, B:71:0x008e), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e6  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: us.shandian.giga.get.DownloadRunnableFallback.run():void");
    }
}
