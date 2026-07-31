package org.schabi.newpipe.local.history;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import com.google.android.exoplayer2.upstream.experimental.SlidingWeightedAverageBandwidthStatistic;
import com.google.android.exoplayer2.util.Clock;
import io.reactivex.rxjava3.functions.Action;
import java.util.Deque;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class HistoryRecordManager$$ExternalSyntheticLambda21 implements SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction, Action {
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ HistoryRecordManager$$ExternalSyntheticLambda21(long j, Clock clock) {
        this.f$1 = j;
        this.f$0 = clock;
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        PlaylistHeaderBinding playlistHeaderBinding = (PlaylistHeaderBinding) this.f$0;
        RoomDatabase roomDatabase = ((StreamStateDAO_Impl) playlistHeaderBinding.playlistStreamCount).__db;
        long j = this.f$1;
        ((Number) DBUtil.performBlocking(roomDatabase, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 17))).intValue();
        ((Number) DBUtil.performBlocking(((StreamHistoryDAO_Impl) playlistHeaderBinding.playlistDescription).__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 8))).intValue();
    }

    @Override // com.google.android.exoplayer2.upstream.experimental.SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction
    public boolean shouldEvictSample(Deque deque) {
        boolean lambda$getAgeBasedEvictionFunction$1;
        lambda$getAgeBasedEvictionFunction$1 = SlidingWeightedAverageBandwidthStatistic.lambda$getAgeBasedEvictionFunction$1(this.f$1, (Clock) this.f$0, deque);
        return lambda$getAgeBasedEvictionFunction$1;
    }

    public /* synthetic */ HistoryRecordManager$$ExternalSyntheticLambda21(PlaylistHeaderBinding playlistHeaderBinding, long j) {
        this.f$0 = playlistHeaderBinding;
        this.f$1 = j;
    }
}
