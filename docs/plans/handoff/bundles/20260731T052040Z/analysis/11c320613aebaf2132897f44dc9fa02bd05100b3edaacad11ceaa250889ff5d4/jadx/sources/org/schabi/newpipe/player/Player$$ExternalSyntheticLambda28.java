package org.schabi.newpipe.player;

import android.support.v4.media.session.MediaSessionCompat;
import com.google.android.exoplayer2.MediaItem;
import j$.util.Collection;
import j$.util.Optional;
import j$.util.function.Function$CC;
import j$.util.stream.Stream;
import java.util.List;
import java.util.function.Function;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.history.model.StreamHistoryEntry;
import org.schabi.newpipe.database.playlist.PlaylistLocalItem;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.stream.StreamStatisticsEntry;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.mediasession.MediaSessionPlayerUi;
import org.schabi.newpipe.player.mediasource.ManagedMediaSource;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda28 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Player$$ExternalSyntheticLambda28(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Stream stream;
        switch (this.$r8$classId) {
            case 0:
                MediaItemTag.AudioTrack audioTrack = (MediaItemTag.AudioTrack) obj;
                List list = audioTrack.audioStreams;
                int i = audioTrack.selectedAudioStreamIndex;
                if (i < 0 || i >= list.size()) {
                    return null;
                }
                return (AudioStream) list.get(i);
            case 1:
                return ((PlaylistLocalItem) obj).getOrderingName();
            case 2:
                stream = Collection.EL.stream(((PlayQueue) obj).getStreams());
                return stream;
            case 3:
                return ((StreamStatisticsEntry) obj).latestAccessDate;
            case 4:
                return (PlaylistStreamEntry) PlaylistStreamEntry.class.cast((LocalItem) obj);
            case 5:
                return ((PlaylistStreamEntry) obj).streamEntity;
            case 6:
                return Long.valueOf(((StreamHistoryEntry) obj).streamId);
            case 7:
                return ((Player) obj).currentMetadata;
            case 8:
                return ((MediaItemTag) obj).getMaybeAudioTrack();
            case 9:
                return ((MediaItemTag.AudioTrack) obj).audioStreams;
            case 10:
                return Optional.ofNullable(((Player) obj).currentMetadata).flatMap(new Player$$ExternalSyntheticLambda28(8)).map(new Player$$ExternalSyntheticLambda28(0));
            case 11:
                return ((MediaItemTag) obj).getMaybeStreamInfo();
            case 12:
                return ((VideoPlayerUi) obj).binding;
            case 13:
                return ((MediaItemTag) obj).getMaybeQuality();
            case 14:
                MediaItemTag.Quality quality = (MediaItemTag.Quality) obj;
                return (VideoStream) quality.sortedVideoStreams.get(quality.selectedVideoStreamIndex);
            case 15:
                return ((PlayQueueItem) obj).getUrl();
            case 16:
                return Optional.ofNullable(((PlayerService) obj).player);
            case 17:
                return Boolean.valueOf(((Player) obj).isPlaying());
            case 18:
                return ((Player) obj).playerType;
            case 19:
                return Integer.valueOf(((PlayQueue) obj).size());
            case 20:
                return Optional.ofNullable(((Player) obj).playQueue);
            case 21:
                return Integer.valueOf(((PlayQueue) obj).getIndex());
            case 22:
                return ManagedMediaSource.class.cast(obj);
            case 23:
                return ((MediaItem) obj).localConfiguration;
            case 24:
                return ((MediaItem.LocalConfiguration) obj).tag;
            case 25:
                return (MediaItemTag) MediaItemTag.class.cast(obj);
            case 26:
                return ((MediaSessionCompat) obj).mImpl.mToken;
            case 27:
                return Long.valueOf(((StreamInfo) obj).getDuration() * 1000);
            case 28:
                return ((MediaItemTag) obj).getMaybeExtras();
            default:
                return Optional.ofNullable(((MediaSessionPlayerUi) obj).mediaSession).map(new Player$$ExternalSyntheticLambda28(26));
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
