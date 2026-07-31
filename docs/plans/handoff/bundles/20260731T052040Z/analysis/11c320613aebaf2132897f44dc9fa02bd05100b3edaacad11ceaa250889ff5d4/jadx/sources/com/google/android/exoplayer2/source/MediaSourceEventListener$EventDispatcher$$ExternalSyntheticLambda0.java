package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.source.MediaSourceEventListener;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MediaSourceEventListener.EventDispatcher f$0;
    public final /* synthetic */ MediaSourceEventListener f$1;
    public final /* synthetic */ LoadEventInfo f$2;
    public final /* synthetic */ MediaLoadData f$3;

    public /* synthetic */ MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0(MediaSourceEventListener.EventDispatcher eventDispatcher, MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i) {
        this.$r8$classId = i;
        this.f$0 = eventDispatcher;
        this.f$1 = mediaSourceEventListener;
        this.f$2 = loadEventInfo;
        this.f$3 = mediaLoadData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        MediaLoadData mediaLoadData = this.f$3;
        LoadEventInfo loadEventInfo = this.f$2;
        MediaSourceEventListener mediaSourceEventListener = this.f$1;
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.f$0;
        switch (i) {
            case 0:
                eventDispatcher.lambda$loadCompleted$1(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                break;
            case 1:
                eventDispatcher.lambda$loadCanceled$2(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                break;
            default:
                eventDispatcher.lambda$loadStarted$0(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                break;
        }
    }
}
