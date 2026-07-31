package us.shandian.giga.service;

import java.util.function.ToLongFunction;
import org.schabi.newpipe.database.stream.StreamStatisticsEntry;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.list.playlist.PlaylistFragment;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import us.shandian.giga.get.DownloadMission;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DownloadManager$$ExternalSyntheticLambda0 implements ToLongFunction {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ DownloadManager$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.ToLongFunction
    public final long applyAsLong(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((DownloadMission) obj).timestamp;
            case 1:
                int i = PlaylistFragment.$r8$clinit;
                return ((StreamInfoItem) obj).getDuration();
            case 2:
                return ((StreamStatisticsEntry) obj).watchCount;
            case 3:
                return ((StreamEntity) obj).getDuration();
            default:
                return ((PlayQueueItem) obj).getDuration();
        }
    }
}
