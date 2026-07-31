package us.shandian.giga.get;

import android.util.Log;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import java.io.InterruptedIOException;
import java.nio.channels.ClosedByInterruptException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class DownloadMission$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DownloadMission f$0;

    public /* synthetic */ DownloadMission$$ExternalSyntheticLambda0(DownloadMission downloadMission, int i) {
        this.$r8$classId = i;
        this.f$0 = downloadMission;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        DownloadMission downloadMission = this.f$0;
        switch (i) {
            case 0:
                downloadMission.errCode = -1;
                Exception exc = null;
                downloadMission.errObject = null;
                Thread currentThread = Thread.currentThread();
                downloadMission.notifyPostProcessing(1);
                try {
                    try {
                        downloadMission.psAlgorithm.run(downloadMission);
                        downloadMission.notifyPostProcessing(downloadMission.errCode == -1 ? 2 : 0);
                    } catch (Exception e) {
                        Log.e("DownloadMission", "Post-processing failed. ".concat(downloadMission.psAlgorithm.toString()), e);
                        if (!(e instanceof InterruptedIOException) && !(e instanceof ClosedByInterruptException) && !currentThread.isInterrupted()) {
                            if (downloadMission.errCode == -1) {
                                downloadMission.errCode = AnalyticsListener.EVENT_AUDIO_ENABLED;
                            }
                            downloadMission.notifyPostProcessing(downloadMission.errCode == -1 ? 2 : 0);
                            exc = e;
                        }
                        downloadMission.notifyError(AnalyticsListener.EVENT_AUDIO_DECODER_INITIALIZED, null);
                        downloadMission.notifyPostProcessing(downloadMission.errCode == -1 ? 2 : 0);
                        return;
                    }
                    if (downloadMission.errCode == -1) {
                        downloadMission.notifyFinished();
                        return;
                    }
                    if (exc == null) {
                        exc = downloadMission.errObject;
                    }
                    downloadMission.notifyError(AnalyticsListener.EVENT_AUDIO_ENABLED, exc);
                    return;
                } catch (Throwable th) {
                    downloadMission.notifyPostProcessing(downloadMission.errCode == -1 ? 2 : 0);
                    throw th;
                }
            default:
                downloadMission.writeThisToFile();
                return;
        }
    }
}
