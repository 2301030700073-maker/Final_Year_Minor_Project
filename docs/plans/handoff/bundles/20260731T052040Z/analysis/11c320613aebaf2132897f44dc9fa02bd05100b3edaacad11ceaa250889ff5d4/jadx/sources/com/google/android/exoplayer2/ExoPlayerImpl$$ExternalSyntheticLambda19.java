package com.google.android.exoplayer2;

import com.google.android.exoplayer2.ExoPlayerImplInternal;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayerImpl$$ExternalSyntheticLambda19 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ ExoPlayerImpl$$ExternalSyntheticLambda19(Object obj, Object obj2, int i) {
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
                ((ExoPlayerImpl) obj2).lambda$new$1((ExoPlayerImplInternal.PlaybackInfoUpdate) obj);
                break;
            case 1:
                ((ExoPlayerImplInternal) obj2).lambda$sendMessageToTargetThread$1((PlayerMessage) obj);
                break;
            default:
                ((SimpleBasePlayer) obj2).lambda$updateStateForPendingOperation$61((ListenableFuture) obj);
                break;
        }
    }
}
