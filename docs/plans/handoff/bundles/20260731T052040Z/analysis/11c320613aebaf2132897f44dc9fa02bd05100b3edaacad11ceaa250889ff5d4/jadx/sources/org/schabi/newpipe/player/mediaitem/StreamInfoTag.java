package org.schabi.newpipe.player.mediaitem;

import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.MediaItem;
import j$.util.Optional;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.mediasource.LoadedMediaSource;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class StreamInfoTag implements MediaItemTag {
    public final MediaItemTag.AudioTrack audioTrack;
    public final Object extras;
    public final MediaItemTag.Quality quality;
    public final StreamInfo streamInfo;

    public StreamInfoTag(StreamInfo streamInfo, MediaItemTag.Quality quality, MediaItemTag.AudioTrack audioTrack, LoadedMediaSource loadedMediaSource) {
        this.streamInfo = streamInfo;
        this.quality = quality;
        this.audioTrack = audioTrack;
        this.extras = loadedMediaSource;
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final /* synthetic */ MediaItem asMediaItem() {
        return RecordTag.$default$asMediaItem(this);
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final List getErrors() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final Optional getMaybeAudioTrack() {
        return Optional.ofNullable(this.audioTrack);
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final Optional getMaybeExtras() {
        return Optional.ofNullable(this.extras).map(new Player$$ExternalSyntheticLambda28(22));
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final Optional getMaybeQuality() {
        return Optional.ofNullable(this.quality);
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final Optional getMaybeStreamInfo() {
        return Optional.of(this.streamInfo);
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final int getServiceId() {
        return this.streamInfo.getServiceId();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final String getStreamUrl() {
        return this.streamInfo.getUrl();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final String getThumbnailUrl() {
        return ImageStrategy.choosePreferredImage(this.streamInfo.getThumbnails());
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final String getTitle() {
        return this.streamInfo.getName();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final String getUploaderName() {
        return this.streamInfo.getUploaderName();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final /* synthetic */ String makeMediaId() {
        return RecordTag.$default$makeMediaId(this);
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final MediaItemTag withExtras(LoadedMediaSource loadedMediaSource) {
        return new StreamInfoTag(this.streamInfo, this.quality, this.audioTrack, loadedMediaSource);
    }
}
