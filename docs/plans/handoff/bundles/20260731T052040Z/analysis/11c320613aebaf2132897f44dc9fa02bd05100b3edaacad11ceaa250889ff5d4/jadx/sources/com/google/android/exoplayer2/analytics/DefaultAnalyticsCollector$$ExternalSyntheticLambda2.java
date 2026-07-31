package com.google.android.exoplayer2.analytics;

import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.util.ListenerSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultAnalyticsCollector$$ExternalSyntheticLambda2 implements ListenerSet.Event {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AnalyticsListener.EventTime f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ DefaultAnalyticsCollector$$ExternalSyntheticLambda2(AnalyticsListener.EventTime eventTime, int i, boolean z) {
        this.$r8$classId = 2;
        this.f$0 = eventTime;
        this.f$2 = i;
        this.f$1 = z;
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((AnalyticsListener) obj).onPlayWhenReadyChanged(this.f$0, this.f$1, this.f$2);
                break;
            case 1:
                ((AnalyticsListener) obj).onPlayerStateChanged(this.f$0, this.f$1, this.f$2);
                break;
            default:
                ((AnalyticsListener) obj).onDeviceVolumeChanged(this.f$0, this.f$2, this.f$1);
                break;
        }
    }

    public /* synthetic */ DefaultAnalyticsCollector$$ExternalSyntheticLambda2(AnalyticsListener.EventTime eventTime, boolean z, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = eventTime;
        this.f$1 = z;
        this.f$2 = i;
    }
}
