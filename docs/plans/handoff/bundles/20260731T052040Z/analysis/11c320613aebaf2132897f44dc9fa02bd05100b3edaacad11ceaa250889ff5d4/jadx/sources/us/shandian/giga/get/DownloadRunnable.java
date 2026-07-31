package us.shandian.giga.get;

import androidx.compose.material3.FabPlacement;
import java.net.HttpURLConnection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class DownloadRunnable extends Thread {
    public HttpURLConnection mConn;
    public final int mId;
    public final DownloadMission mMission;

    public DownloadRunnable(DownloadMission downloadMission, int i) {
        this.mMission = downloadMission;
        this.mId = i;
    }

    @Override // java.lang.Thread
    public final void interrupt() {
        super.interrupt();
        try {
            HttpURLConnection httpURLConnection = this.mConn;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        } catch (Exception unused) {
        }
    }

    public final void releaseBlock(FabPlacement fabPlacement, long j) {
        DownloadMission downloadMission = this.mMission;
        int i = fabPlacement.left;
        int i2 = j < 0 ? -1 : fabPlacement.height;
        synchronized (downloadMission.LOCK) {
            downloadMission.blockAcquired[i] = false;
            downloadMission.blocks[i] = i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x011a, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0166, code lost:
    
        if (r5 == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x016f, code lost:
    
        if (r5 != false) goto L112;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0163 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0175  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: us.shandian.giga.get.DownloadRunnable.run():void");
    }
}
