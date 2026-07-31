package org.schabi.newpipe.player.mediabrowser;

import io.reactivex.rxjava3.functions.Function;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.player.playqueue.PlaylistPlayQueue;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;
import org.schabi.newpipe.util.ExtractorHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class MediaBrowserImpl$populateRemotePlaylist$1 implements Function {
    public static final MediaBrowserImpl$populateRemotePlaylist$1 INSTANCE = new MediaBrowserImpl$populateRemotePlaylist$1(0);
    public static final MediaBrowserImpl$populateRemotePlaylist$1 INSTANCE$1 = new MediaBrowserImpl$populateRemotePlaylist$1(1);
    public static final MediaBrowserImpl$populateRemotePlaylist$1 INSTANCE$2 = new MediaBrowserImpl$populateRemotePlaylist$1(2);
    public static final MediaBrowserImpl$populateRemotePlaylist$1 INSTANCE$3 = new MediaBrowserImpl$populateRemotePlaylist$1(3);
    public static final MediaBrowserImpl$populateRemotePlaylist$1 INSTANCE$4 = new MediaBrowserImpl$populateRemotePlaylist$1(4);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ MediaBrowserImpl$populateRemotePlaylist$1(int i) {
        this.$r8$classId = i;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) obj;
                playlistRemoteEntity.getClass();
                return ExtractorHelper.getPlaylistInfo(playlistRemoteEntity.serviceId, playlistRemoteEntity.url, false);
            case 1:
                StreamInfo streamInfo = (StreamInfo) obj;
                streamInfo.getClass();
                return new SinglePlayQueue(streamInfo);
            case 2:
                PlaylistInfo playlistInfo = (PlaylistInfo) obj;
                playlistInfo.getClass();
                return new PlaylistPlayQueue(playlistInfo, 0);
            case 3:
                PlaylistInfo playlistInfo2 = (PlaylistInfo) obj;
                playlistInfo2.getClass();
                return new PlaylistPlayQueue(playlistInfo2, 0);
            default:
                PlaylistRemoteEntity playlistRemoteEntity2 = (PlaylistRemoteEntity) obj;
                playlistRemoteEntity2.getClass();
                return ExtractorHelper.getPlaylistInfo(playlistRemoteEntity2.serviceId, playlistRemoteEntity2.url, false);
        }
    }
}
