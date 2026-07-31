package com.google.android.exoplayer2.offline;

import android.os.Handler;
import android.os.Message;
import com.google.android.exoplayer2.offline.DownloadHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DownloadManager$$ExternalSyntheticLambda0 implements Handler.Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DownloadManager$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean handleMainMessage;
        boolean handleDownloadHelperCallbackMessage;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                handleMainMessage = ((DownloadManager) obj).handleMainMessage(message);
                return handleMainMessage;
            default:
                handleDownloadHelperCallbackMessage = ((DownloadHelper.MediaPreparer) obj).handleDownloadHelperCallbackMessage(message);
                return handleDownloadHelperCallbackMessage;
        }
    }
}
