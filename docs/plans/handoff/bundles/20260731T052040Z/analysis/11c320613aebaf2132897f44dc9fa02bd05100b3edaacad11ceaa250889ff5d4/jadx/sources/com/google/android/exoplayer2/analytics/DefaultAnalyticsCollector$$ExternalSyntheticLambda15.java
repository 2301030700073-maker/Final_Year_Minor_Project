package com.google.android.exoplayer2.analytics;

import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.util.ListenerSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultAnalyticsCollector$$ExternalSyntheticLambda15 implements ListenerSet.Event {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AnalyticsListener.EventTime f$0;
    public final /* synthetic */ Exception f$1;

    public /* synthetic */ DefaultAnalyticsCollector$$ExternalSyntheticLambda15(AnalyticsListener.EventTime eventTime, Exception exc, int i) {
        this.$r8$classId = i;
        this.f$0 = eventTime;
        this.f$1 = exc;
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((AnalyticsListener) obj).onVideoCodecError(this.f$0, this.f$1);
                break;
            case 1:
                ((AnalyticsListener) obj).onAudioCodecError(this.f$0, this.f$1);
                break;
            case 2:
                ((AnalyticsListener) obj).onAudioSinkError(this.f$0, this.f$1);
                break;
            default:
                ((AnalyticsListener) obj).onDrmSessionManagerError(this.f$0, this.f$1);
                break;
        }
    }
}
