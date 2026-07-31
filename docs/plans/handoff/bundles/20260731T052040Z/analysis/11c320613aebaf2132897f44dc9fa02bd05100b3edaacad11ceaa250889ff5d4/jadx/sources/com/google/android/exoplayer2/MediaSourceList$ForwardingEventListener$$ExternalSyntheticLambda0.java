package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.MediaSourceList;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MediaSourceList.ForwardingEventListener f$0;
    public final /* synthetic */ Pair f$1;
    public final /* synthetic */ LoadEventInfo f$2;
    public final /* synthetic */ MediaLoadData f$3;

    public /* synthetic */ MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i) {
        this.$r8$classId = i;
        this.f$0 = forwardingEventListener;
        this.f$1 = pair;
        this.f$2 = loadEventInfo;
        this.f$3 = mediaLoadData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        MediaLoadData mediaLoadData = this.f$3;
        LoadEventInfo loadEventInfo = this.f$2;
        Pair pair = this.f$1;
        MediaSourceList.ForwardingEventListener forwardingEventListener = this.f$0;
        switch (i) {
            case 0:
                forwardingEventListener.lambda$onLoadCompleted$1(pair, loadEventInfo, mediaLoadData);
                break;
            case 1:
                forwardingEventListener.lambda$onLoadStarted$0(pair, loadEventInfo, mediaLoadData);
                break;
            default:
                forwardingEventListener.lambda$onLoadCanceled$2(pair, loadEventInfo, mediaLoadData);
                break;
        }
    }
}
