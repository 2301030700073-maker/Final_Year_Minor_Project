package us.shandian.giga.get;

import java.net.HttpURLConnection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class DownloadInitializer extends Thread {
    public HttpURLConnection mConn = null;
    public final DownloadMission mMission;

    public DownloadInitializer(DownloadMission downloadMission) {
        this.mMission = downloadMission;
    }

    @Override // java.lang.Thread
    public final void interrupt() {
        super.interrupt();
        HttpURLConnection httpURLConnection = this.mConn;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.getInputStream().close();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x007e, code lost:
    
        r0 = r20.mMission;
        r0.nearLength = r12;
        r7 = r0.psAlgorithm;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0084, code lost:
    
        if (r7 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0088, code lost:
    
        if (r7.reserveSpace == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008a, code lost:
    
        r0 = r0.offsets;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0090, code lost:
    
        if (r10 >= 1) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0095, code lost:
    
        r0[0] = 5242880;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009d, code lost:
    
        if (r10 >= 157286400) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a1, code lost:
    
        r0[0] = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a0, code lost:
    
        r10 = 157286400;
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: us.shandian.giga.get.DownloadInitializer.run():void");
    }
}
