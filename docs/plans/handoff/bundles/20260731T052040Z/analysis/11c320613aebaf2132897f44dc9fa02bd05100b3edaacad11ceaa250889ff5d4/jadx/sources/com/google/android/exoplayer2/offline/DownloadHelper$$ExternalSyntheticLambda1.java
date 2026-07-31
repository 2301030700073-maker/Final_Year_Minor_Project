package com.google.android.exoplayer2.offline;

import com.google.android.exoplayer2.offline.DownloadHelper;
import com.google.android.exoplayer2.offline.DownloadService;
import java.io.IOException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DownloadHelper$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ DownloadHelper$$ExternalSyntheticLambda1(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((DownloadHelper) obj2).lambda$onMediaPreparationFailed$5((IOException) obj);
                break;
            case 1:
                ((DownloadService.DownloadManagerHelper) obj2).lambda$attachService$0((DownloadService) obj);
                break;
            default:
                ((DownloadHelper) obj2).lambda$prepare$3((DownloadHelper.Callback) obj);
                break;
        }
    }
}
