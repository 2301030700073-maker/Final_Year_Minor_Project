package com.google.android.exoplayer2.trackselection;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TrackSelectionOverride$$ExternalSyntheticLambda0 implements Bundleable.Creator {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TrackSelectionOverride$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // com.google.android.exoplayer2.Bundleable.Creator
    public final Bundleable fromBundle(Bundle bundle) {
        TrackSelectionOverride lambda$static$0;
        DefaultTrackSelector.Parameters lambda$static$02;
        DefaultTrackSelector.SelectionOverride lambda$static$03;
        switch (this.$r8$classId) {
            case 0:
                lambda$static$0 = TrackSelectionOverride.lambda$static$0(bundle);
                return lambda$static$0;
            case 1:
                lambda$static$02 = DefaultTrackSelector.Parameters.lambda$static$0(bundle);
                return lambda$static$02;
            case 2:
                lambda$static$03 = DefaultTrackSelector.SelectionOverride.lambda$static$0(bundle);
                return lambda$static$03;
            default:
                return TrackSelectionParameters.fromBundle(bundle);
        }
    }
}
