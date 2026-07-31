package com.google.android.exoplayer2.drm;

import com.google.common.util.concurrent.SettableFuture;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class OfflineLicenseHelper$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ OfflineLicenseHelper f$0;
    public final /* synthetic */ SettableFuture f$1;
    public final /* synthetic */ DrmSession f$2;

    public /* synthetic */ OfflineLicenseHelper$$ExternalSyntheticLambda0(DrmSession drmSession, OfflineLicenseHelper offlineLicenseHelper, SettableFuture settableFuture) {
        this.$r8$classId = 2;
        this.f$0 = offlineLicenseHelper;
        this.f$2 = drmSession;
        this.f$1 = settableFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        SettableFuture settableFuture = this.f$1;
        DrmSession drmSession = this.f$2;
        OfflineLicenseHelper offlineLicenseHelper = this.f$0;
        switch (i) {
            case 0:
                offlineLicenseHelper.lambda$getLicenseDurationRemainingSec$0(settableFuture, drmSession);
                break;
            case 1:
                offlineLicenseHelper.lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1(settableFuture, drmSession);
                break;
            default:
                offlineLicenseHelper.lambda$acquireFirstSessionOnHandlerThread$3(drmSession, settableFuture);
                break;
        }
    }

    public /* synthetic */ OfflineLicenseHelper$$ExternalSyntheticLambda0(OfflineLicenseHelper offlineLicenseHelper, SettableFuture settableFuture, DrmSession drmSession, int i) {
        this.$r8$classId = i;
        this.f$0 = offlineLicenseHelper;
        this.f$1 = settableFuture;
        this.f$2 = drmSession;
    }
}
