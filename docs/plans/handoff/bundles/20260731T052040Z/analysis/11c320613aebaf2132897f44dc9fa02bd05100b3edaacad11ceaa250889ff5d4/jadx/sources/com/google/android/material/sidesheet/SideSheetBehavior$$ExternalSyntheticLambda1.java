package com.google.android.material.sidesheet;

import android.view.View;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.DefaultAnalyticsCollector;
import com.google.android.exoplayer2.util.ListenerSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SideSheetBehavior$$ExternalSyntheticLambda1 implements ListenerSet.Event, AccessibilityViewCommand {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ SideSheetBehavior$$ExternalSyntheticLambda1(Object obj, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.$r8$classId) {
            case 1:
                ((AnalyticsListener) obj).onAudioSessionIdChanged((AnalyticsListener.EventTime) this.f$0, this.f$1);
                break;
            case 2:
                ((AnalyticsListener) obj).onPlaybackStateChanged((AnalyticsListener.EventTime) this.f$0, this.f$1);
                break;
            case 3:
                ((AnalyticsListener) obj).onRepeatModeChanged((AnalyticsListener.EventTime) this.f$0, this.f$1);
                break;
            case 4:
                ((AnalyticsListener) obj).onPlaybackSuppressionReasonChanged((AnalyticsListener.EventTime) this.f$0, this.f$1);
                break;
            case 5:
                ((AnalyticsListener) obj).onTimelineChanged((AnalyticsListener.EventTime) this.f$0, this.f$1);
                break;
            default:
                DefaultAnalyticsCollector.lambda$onDrmSessionAcquired$61((AnalyticsListener.EventTime) this.f$0, this.f$1, (AnalyticsListener) obj);
                break;
        }
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view) {
        ((SideSheetBehavior) this.f$0).setState(this.f$1);
        return true;
    }
}
