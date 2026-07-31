package com.google.android.exoplayer2;

import com.google.android.exoplayer2.SimpleBasePlayer;
import com.google.android.exoplayer2.upstream.experimental.SlidingWeightedAverageBandwidthStatistic;
import java.util.Deque;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1 implements SimpleBasePlayer.PositionSupplier, SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction {
    public final /* synthetic */ long f$0;

    public /* synthetic */ SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(long j) {
        this.f$0 = j;
    }

    @Override // com.google.android.exoplayer2.SimpleBasePlayer.PositionSupplier
    public long get() {
        return this.f$0;
    }

    @Override // com.google.android.exoplayer2.upstream.experimental.SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction
    public boolean shouldEvictSample(Deque deque) {
        boolean lambda$getMaxCountEvictionFunction$0;
        lambda$getMaxCountEvictionFunction$0 = SlidingWeightedAverageBandwidthStatistic.lambda$getMaxCountEvictionFunction$0(this.f$0, deque);
        return lambda$getMaxCountEvictionFunction$0;
    }
}
