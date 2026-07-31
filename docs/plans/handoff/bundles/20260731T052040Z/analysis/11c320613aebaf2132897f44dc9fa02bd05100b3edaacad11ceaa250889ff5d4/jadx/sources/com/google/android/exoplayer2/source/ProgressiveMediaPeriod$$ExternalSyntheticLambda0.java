package com.google.android.exoplayer2.source;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ProgressiveMediaPeriod$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ProgressiveMediaPeriod f$0;

    public /* synthetic */ ProgressiveMediaPeriod$$ExternalSyntheticLambda0(ProgressiveMediaPeriod progressiveMediaPeriod, int i) {
        this.$r8$classId = i;
        this.f$0 = progressiveMediaPeriod;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        ProgressiveMediaPeriod progressiveMediaPeriod = this.f$0;
        switch (i) {
            case 0:
                progressiveMediaPeriod.maybeFinishPrepare();
                break;
            case 1:
                progressiveMediaPeriod.lambda$new$0();
                break;
            default:
                progressiveMediaPeriod.lambda$onLengthKnown$2();
                break;
        }
    }
}
