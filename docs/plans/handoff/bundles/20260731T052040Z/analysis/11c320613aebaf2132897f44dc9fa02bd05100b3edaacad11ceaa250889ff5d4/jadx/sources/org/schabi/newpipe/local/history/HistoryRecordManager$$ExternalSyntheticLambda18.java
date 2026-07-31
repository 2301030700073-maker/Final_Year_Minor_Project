package org.schabi.newpipe.local.history;

import androidx.work.Worker$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.util.ListenerSet;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.concurrent.Callable;
import okhttp3.Dispatcher;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.stream.StreamInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class HistoryRecordManager$$ExternalSyntheticLambda18 implements ListenerSet.Event, Action, Function {
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ long f$2;

    public /* synthetic */ HistoryRecordManager$$ExternalSyntheticLambda18(long j, Object obj, Object obj2) {
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = j;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        final Dispatcher dispatcher = (Dispatcher) this.f$0;
        final List list = (List) this.f$1;
        final Integer num = (Integer) obj;
        AppDatabase appDatabase = (AppDatabase) dispatcher.executorServiceOrNull;
        final long j = this.f$2;
        return (List) appDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(new Callable() { // from class: org.schabi.newpipe.local.playlist.LocalPlaylistManager$$ExternalSyntheticLambda9
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Dispatcher dispatcher2 = Dispatcher.this;
                return dispatcher2.insertJoinEntities(((StreamDAO_Impl) dispatcher2.readyAsyncCalls).upsertAll(list), num.intValue() + 1, j);
            }
        }, 14));
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onRenderedFirstFrame((AnalyticsListener.EventTime) this.f$0, this.f$1, this.f$2);
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        PlaylistHeaderBinding playlistHeaderBinding = (PlaylistHeaderBinding) this.f$0;
        StreamInfo streamInfo = (StreamInfo) this.f$1;
        AppDatabase appDatabase = (AppDatabase) playlistHeaderBinding.rootView;
        HistoryRecordManager$$ExternalSyntheticLambda19 historyRecordManager$$ExternalSyntheticLambda19 = new HistoryRecordManager$$ExternalSyntheticLambda19(0, this.f$2, playlistHeaderBinding, streamInfo);
        appDatabase.getClass();
        appDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(historyRecordManager$$ExternalSyntheticLambda19, 15));
    }
}
