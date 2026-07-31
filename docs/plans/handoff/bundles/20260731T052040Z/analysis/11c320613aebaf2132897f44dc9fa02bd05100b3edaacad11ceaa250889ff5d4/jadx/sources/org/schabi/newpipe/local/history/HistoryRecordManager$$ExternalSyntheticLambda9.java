package org.schabi.newpipe.local.history;

import androidx.room.util.DBUtil;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import j$.time.OffsetDateTime;
import java.util.concurrent.Callable;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl$$ExternalSyntheticLambda4;
import org.schabi.newpipe.database.history.model.StreamHistoryEntity;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.stream.StreamInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class HistoryRecordManager$$ExternalSyntheticLambda9 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlaylistHeaderBinding f$0;
    public final /* synthetic */ StreamInfo f$1;
    public final /* synthetic */ OffsetDateTime f$2;

    public /* synthetic */ HistoryRecordManager$$ExternalSyntheticLambda9(PlaylistHeaderBinding playlistHeaderBinding, StreamInfo streamInfo, OffsetDateTime offsetDateTime, int i) {
        this.$r8$classId = i;
        this.f$0 = playlistHeaderBinding;
        this.f$1 = streamInfo;
        this.f$2 = offsetDateTime;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        int i2 = 1;
        StreamInfo streamInfo = this.f$1;
        PlaylistHeaderBinding playlistHeaderBinding = this.f$0;
        switch (i) {
            case 0:
                AppDatabase appDatabase = (AppDatabase) playlistHeaderBinding.rootView;
                HistoryRecordManager$$ExternalSyntheticLambda9 historyRecordManager$$ExternalSyntheticLambda9 = new HistoryRecordManager$$ExternalSyntheticLambda9(playlistHeaderBinding, streamInfo, this.f$2, i2);
                appDatabase.getClass();
                return (Long) appDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(historyRecordManager$$ExternalSyntheticLambda9, 14));
            default:
                long upsert = ((StreamDAO_Impl) playlistHeaderBinding.uploaderLayout).upsert(new StreamEntity(streamInfo));
                StreamHistoryDAO_Impl streamHistoryDAO_Impl = (StreamHistoryDAO_Impl) playlistHeaderBinding.playlistDescription;
                int i3 = 0;
                StreamHistoryEntity streamHistoryEntity = (StreamHistoryEntity) DBUtil.performBlocking(streamHistoryDAO_Impl.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(upsert, streamHistoryDAO_Impl));
                OffsetDateTime offsetDateTime = this.f$2;
                if (streamHistoryEntity == null) {
                    return Long.valueOf(streamHistoryDAO_Impl.insert(new StreamHistoryEntity(upsert, offsetDateTime, 1L)));
                }
                DBUtil.performBlocking(streamHistoryDAO_Impl.__db, false, true, new StreamHistoryDAO_Impl$$ExternalSyntheticLambda4(streamHistoryDAO_Impl, streamHistoryEntity, i3));
                offsetDateTime.getClass();
                streamHistoryEntity.accessDate = offsetDateTime;
                streamHistoryEntity.repeatCount++;
                return Long.valueOf(streamHistoryDAO_Impl.insert(streamHistoryEntity));
        }
    }
}
