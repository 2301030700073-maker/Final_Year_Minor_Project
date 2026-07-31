package com.google.android.exoplayer2.scheduler;

import com.google.android.exoplayer2.scheduler.RequirementsWatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RequirementsWatcher.NetworkCallback f$0;

    public /* synthetic */ RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda0(RequirementsWatcher.NetworkCallback networkCallback, int i) {
        this.$r8$classId = i;
        this.f$0 = networkCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        RequirementsWatcher.NetworkCallback networkCallback = this.f$0;
        switch (i) {
            case 0:
                networkCallback.lambda$postCheckRequirements$0();
                break;
            default:
                networkCallback.lambda$postRecheckNotMetNetworkRequirements$1();
                break;
        }
    }
}
