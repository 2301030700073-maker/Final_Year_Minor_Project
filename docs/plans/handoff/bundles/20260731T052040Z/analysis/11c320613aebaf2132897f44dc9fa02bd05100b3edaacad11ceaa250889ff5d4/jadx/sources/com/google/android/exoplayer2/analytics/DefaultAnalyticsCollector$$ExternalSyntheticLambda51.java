package com.google.android.exoplayer2.analytics;

import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.util.ListenerSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultAnalyticsCollector$$ExternalSyntheticLambda51 implements ListenerSet.Event {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ AnalyticsListener.EventTime f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ long f$2;

    public /* synthetic */ DefaultAnalyticsCollector$$ExternalSyntheticLambda51(AnalyticsListener.EventTime eventTime, int i, long j) {
        this.f$0 = eventTime;
        this.f$1 = i;
        this.f$2 = j;
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((AnalyticsListener) obj).onDroppedVideoFrames(this.f$0, this.f$1, this.f$2);
                break;
            default:
                ((AnalyticsListener) obj).onVideoFrameProcessingOffset(this.f$0, this.f$2, this.f$1);
                break;
        }
    }

    public /* synthetic */ DefaultAnalyticsCollector$$ExternalSyntheticLambda51(AnalyticsListener.EventTime eventTime, long j, int i) {
        this.f$0 = eventTime;
        this.f$2 = j;
        this.f$1 = i;
    }
}
