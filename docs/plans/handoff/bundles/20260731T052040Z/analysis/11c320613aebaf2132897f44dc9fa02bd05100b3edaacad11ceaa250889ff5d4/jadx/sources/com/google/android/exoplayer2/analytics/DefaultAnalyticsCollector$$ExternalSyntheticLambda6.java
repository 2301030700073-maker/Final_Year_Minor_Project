package com.google.android.exoplayer2.analytics;

import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.util.ListenerSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultAnalyticsCollector$$ExternalSyntheticLambda6 implements ListenerSet.Event {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AnalyticsListener.EventTime f$0;

    public /* synthetic */ DefaultAnalyticsCollector$$ExternalSyntheticLambda6(AnalyticsListener.EventTime eventTime, int i) {
        this.$r8$classId = i;
        this.f$0 = eventTime;
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public final void invoke(Object obj) {
        int i = this.$r8$classId;
        AnalyticsListener.EventTime eventTime = this.f$0;
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (i) {
            case 0:
                analyticsListener.onDrmKeysRemoved(eventTime);
                break;
            case 1:
                analyticsListener.onSeekStarted(eventTime);
                break;
            case 2:
                analyticsListener.onPlayerReleased(eventTime);
                break;
            case 3:
                analyticsListener.onDrmKeysLoaded(eventTime);
                break;
            case 4:
                analyticsListener.onDrmSessionReleased(eventTime);
                break;
            default:
                analyticsListener.onDrmKeysRestored(eventTime);
                break;
        }
    }
}
