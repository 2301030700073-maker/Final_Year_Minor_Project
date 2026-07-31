package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.MediaSourceList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MediaSourceList.ForwardingEventListener f$0;
    public final /* synthetic */ Pair f$1;

    public /* synthetic */ MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, int i) {
        this.$r8$classId = i;
        this.f$0 = forwardingEventListener;
        this.f$1 = pair;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Pair pair = this.f$1;
        MediaSourceList.ForwardingEventListener forwardingEventListener = this.f$0;
        switch (i) {
            case 0:
                forwardingEventListener.lambda$onDrmKeysRestored$9(pair);
                break;
            case 1:
                forwardingEventListener.lambda$onDrmKeysLoaded$7(pair);
                break;
            case 2:
                forwardingEventListener.lambda$onDrmSessionReleased$11(pair);
                break;
            default:
                forwardingEventListener.lambda$onDrmKeysRemoved$10(pair);
                break;
        }
    }
}
