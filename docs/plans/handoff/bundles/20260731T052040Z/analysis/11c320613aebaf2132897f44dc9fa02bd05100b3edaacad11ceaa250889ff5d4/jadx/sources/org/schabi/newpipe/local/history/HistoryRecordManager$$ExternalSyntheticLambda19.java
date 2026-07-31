package org.schabi.newpipe.local.history;

import androidx.room.util.DBUtil;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl$$ExternalSyntheticLambda3;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.stream.StreamInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class HistoryRecordManager$$ExternalSyntheticLambda19 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ long f$2;

    public /* synthetic */ HistoryRecordManager$$ExternalSyntheticLambda19(int i, long j, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        long j = this.f$2;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                PlaylistHeaderBinding playlistHeaderBinding = (PlaylistHeaderBinding) obj2;
                StreamInfo streamInfo = (StreamInfo) obj;
                StreamStateEntity streamStateEntity = new StreamStateEntity(((StreamDAO_Impl) playlistHeaderBinding.uploaderLayout).upsert(new StreamEntity(streamInfo)), j);
                if (streamStateEntity.isValid(streamInfo.getDuration())) {
                    StreamStateDAO_Impl streamStateDAO_Impl = (StreamStateDAO_Impl) playlistHeaderBinding.playlistStreamCount;
                    ((Number) DBUtil.performBlocking(streamStateDAO_Impl.__db, false, true, new StreamStateDAO_Impl$$ExternalSyntheticLambda3(streamStateDAO_Impl, streamStateEntity, 0))).longValue();
                    break;
                }
                break;
            default:
                ((VideoRendererEventListener.EventDispatcher) obj2).lambda$renderedFirstFrame$6(obj, j);
                break;
        }
    }
}
