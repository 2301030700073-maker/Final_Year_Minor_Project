package org.schabi.newpipe.local.history;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import j$.time.OffsetDateTime;
import java.util.concurrent.Callable;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.history.dao.SearchHistoryDAO_Impl;
import org.schabi.newpipe.database.history.model.SearchHistoryEntry;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class HistoryRecordManager$$ExternalSyntheticLambda0 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlaylistHeaderBinding f$0;
    public final /* synthetic */ SearchHistoryEntry f$1;
    public final /* synthetic */ OffsetDateTime f$2;

    public /* synthetic */ HistoryRecordManager$$ExternalSyntheticLambda0(PlaylistHeaderBinding playlistHeaderBinding, SearchHistoryEntry searchHistoryEntry, OffsetDateTime offsetDateTime, int i) {
        this.$r8$classId = i;
        this.f$0 = playlistHeaderBinding;
        this.f$1 = searchHistoryEntry;
        this.f$2 = offsetDateTime;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        OffsetDateTime offsetDateTime = this.f$2;
        final SearchHistoryEntry searchHistoryEntry = this.f$1;
        PlaylistHeaderBinding playlistHeaderBinding = this.f$0;
        final int i2 = 1;
        switch (i) {
            case 0:
                AppDatabase appDatabase = (AppDatabase) playlistHeaderBinding.rootView;
                HistoryRecordManager$$ExternalSyntheticLambda0 historyRecordManager$$ExternalSyntheticLambda0 = new HistoryRecordManager$$ExternalSyntheticLambda0(playlistHeaderBinding, searchHistoryEntry, offsetDateTime, i2);
                appDatabase.getClass();
                return (Long) appDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(historyRecordManager$$ExternalSyntheticLambda0, 14));
            default:
                final SearchHistoryDAO_Impl searchHistoryDAO_Impl = (SearchHistoryDAO_Impl) playlistHeaderBinding.playlistDescriptionReadMore;
                RoomDatabase roomDatabase = searchHistoryDAO_Impl.__db;
                RoomDatabase roomDatabase2 = searchHistoryDAO_Impl.__db;
                final int i3 = 0;
                final SearchHistoryEntry searchHistoryEntry2 = (SearchHistoryEntry) DBUtil.performBlocking(roomDatabase, true, false, new RxAwaitKt$$ExternalSyntheticLambda0(searchHistoryDAO_Impl, 12));
                if (searchHistoryEntry2 == null || searchHistoryEntry2.serviceId != searchHistoryEntry.serviceId || !Intrinsics.areEqual(searchHistoryEntry2.search, searchHistoryEntry.search)) {
                    return Long.valueOf(((Number) DBUtil.performBlocking(roomDatabase2, false, true, new Function1() { // from class: org.schabi.newpipe.database.history.dao.SearchHistoryDAO_Impl$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i4 = i3;
                            SearchHistoryEntry searchHistoryEntry3 = searchHistoryEntry;
                            SearchHistoryDAO_Impl searchHistoryDAO_Impl2 = searchHistoryDAO_Impl;
                            SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                            switch (i4) {
                                case 0:
                                    sQLiteConnection.getClass();
                                    return Long.valueOf(searchHistoryDAO_Impl2.__insertAdapterOfSearchHistoryEntry.insertAndReturnId(sQLiteConnection, searchHistoryEntry3));
                                default:
                                    sQLiteConnection.getClass();
                                    return Integer.valueOf(searchHistoryDAO_Impl2.__updateAdapterOfSearchHistoryEntry.handle(sQLiteConnection, searchHistoryEntry3));
                            }
                        }
                    })).longValue());
                }
                searchHistoryEntry2.creationDate = offsetDateTime;
                return Long.valueOf(((Number) DBUtil.performBlocking(roomDatabase2, false, true, new Function1() { // from class: org.schabi.newpipe.database.history.dao.SearchHistoryDAO_Impl$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i4 = i2;
                        SearchHistoryEntry searchHistoryEntry3 = searchHistoryEntry2;
                        SearchHistoryDAO_Impl searchHistoryDAO_Impl2 = searchHistoryDAO_Impl;
                        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                        switch (i4) {
                            case 0:
                                sQLiteConnection.getClass();
                                return Long.valueOf(searchHistoryDAO_Impl2.__insertAdapterOfSearchHistoryEntry.insertAndReturnId(sQLiteConnection, searchHistoryEntry3));
                            default:
                                sQLiteConnection.getClass();
                                return Integer.valueOf(searchHistoryDAO_Impl2.__updateAdapterOfSearchHistoryEntry.handle(sQLiteConnection, searchHistoryEntry3));
                        }
                    }
                })).intValue());
        }
    }
}
