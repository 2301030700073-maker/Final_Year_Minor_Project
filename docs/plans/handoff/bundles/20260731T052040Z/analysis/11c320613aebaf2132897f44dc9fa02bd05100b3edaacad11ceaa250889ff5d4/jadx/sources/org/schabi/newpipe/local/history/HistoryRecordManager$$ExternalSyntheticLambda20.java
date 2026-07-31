package org.schabi.newpipe.local.history;

import androidx.room.util.DBUtil;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.time.OffsetDateTime;
import java.util.concurrent.Callable;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.database.history.model.StreamHistoryEntity;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl$$ExternalSyntheticLambda3;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.util.ExtractorHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class HistoryRecordManager$$ExternalSyntheticLambda20 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlaylistHeaderBinding f$0;
    public final /* synthetic */ StreamInfoItem f$1;
    public final /* synthetic */ OffsetDateTime f$2;

    public /* synthetic */ HistoryRecordManager$$ExternalSyntheticLambda20(PlaylistHeaderBinding playlistHeaderBinding, StreamInfoItem streamInfoItem, OffsetDateTime offsetDateTime, int i) {
        this.$r8$classId = i;
        this.f$0 = playlistHeaderBinding;
        this.f$1 = streamInfoItem;
        this.f$2 = offsetDateTime;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        long duration;
        long upsert;
        int i = this.$r8$classId;
        StreamInfoItem streamInfoItem = this.f$1;
        PlaylistHeaderBinding playlistHeaderBinding = this.f$0;
        int i2 = 1;
        switch (i) {
            case 0:
                AppDatabase appDatabase = (AppDatabase) playlistHeaderBinding.rootView;
                HistoryRecordManager$$ExternalSyntheticLambda20 historyRecordManager$$ExternalSyntheticLambda20 = new HistoryRecordManager$$ExternalSyntheticLambda20(playlistHeaderBinding, streamInfoItem, this.f$2, i2);
                appDatabase.getClass();
                return (Long) appDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(historyRecordManager$$ExternalSyntheticLambda20, 14));
            default:
                StreamHistoryDAO_Impl streamHistoryDAO_Impl = (StreamHistoryDAO_Impl) playlistHeaderBinding.playlistDescription;
                StreamDAO_Impl streamDAO_Impl = (StreamDAO_Impl) playlistHeaderBinding.uploaderLayout;
                int i3 = 0;
                if (streamInfoItem.getDuration() < 0) {
                    StreamInfo streamInfo = (StreamInfo) ExtractorHelper.getStreamInfo(streamInfoItem.getServiceId(), streamInfoItem.getUrl(), false).subscribeOn(Schedulers.IO).blockingGet();
                    duration = streamInfo.getDuration();
                    upsert = streamDAO_Impl.upsert(new StreamEntity(streamInfo));
                } else {
                    duration = streamInfoItem.getDuration();
                    upsert = streamDAO_Impl.upsert(new StreamEntity(streamInfoItem));
                }
                long j = upsert;
                StreamStateEntity streamStateEntity = new StreamStateEntity(j, duration * 1000);
                StreamStateDAO_Impl streamStateDAO_Impl = (StreamStateDAO_Impl) playlistHeaderBinding.playlistStreamCount;
                ((Number) DBUtil.performBlocking(streamStateDAO_Impl.__db, false, true, new StreamStateDAO_Impl$$ExternalSyntheticLambda3(streamStateDAO_Impl, streamStateEntity, i3))).longValue();
                if (((StreamHistoryEntity) DBUtil.performBlocking(streamHistoryDAO_Impl.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, streamHistoryDAO_Impl))) == null) {
                    return Long.valueOf(streamHistoryDAO_Impl.insert(new StreamHistoryEntity(j, this.f$2, 0L)));
                }
                return 0L;
        }
    }
}
