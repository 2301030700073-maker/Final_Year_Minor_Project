package org.schabi.newpipe.player.mediaitem;

import com.google.android.exoplayer2.MediaItem;
import j$.util.Optional;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.player.mediasource.LoadedMediaSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public interface MediaItemTag {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AudioTrack {
        public final List audioStreams;
        public final int selectedAudioStreamIndex;

        public AudioTrack(int i, List list) {
            this.audioStreams = list;
            this.selectedAudioStreamIndex = i;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Quality {
        public final int selectedVideoStreamIndex;
        public final ArrayList sortedVideoStreams;

        public Quality(int i, ArrayList arrayList) {
            this.sortedVideoStreams = arrayList;
            this.selectedVideoStreamIndex = i;
        }
    }

    MediaItem asMediaItem();

    List getErrors();

    Optional getMaybeAudioTrack();

    Optional getMaybeExtras();

    Optional getMaybeQuality();

    Optional getMaybeStreamInfo();

    int getServiceId();

    String getStreamUrl();

    String getThumbnailUrl();

    String getTitle();

    String getUploaderName();

    String makeMediaId();

    MediaItemTag withExtras(LoadedMediaSource loadedMediaSource);
}
