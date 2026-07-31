package org.schabi.newpipe.player.mediaitem;

import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.BaseMediaSource;
import j$.util.Optional;
import java.util.List;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.mediasource.LoadedMediaSource;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class ExceptionTag implements MediaItemTag {
    public final List errors;
    public final Object extras;
    public final PlayQueueItem item;

    public ExceptionTag(PlayQueueItem playQueueItem, List list, BaseMediaSource baseMediaSource) {
        this.item = playQueueItem;
        this.errors = list;
        this.extras = baseMediaSource;
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final /* synthetic */ MediaItem asMediaItem() {
        return RecordTag.$default$asMediaItem(this);
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final List getErrors() {
        return this.errors;
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final Optional getMaybeAudioTrack() {
        return Optional.empty();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final Optional getMaybeExtras() {
        return Optional.ofNullable(this.extras).map(new Player$$ExternalSyntheticLambda28(22));
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final Optional getMaybeQuality() {
        return Optional.empty();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final Optional getMaybeStreamInfo() {
        return Optional.empty();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final int getServiceId() {
        return this.item.getServiceId();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final String getStreamUrl() {
        return this.item.getUrl();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final String getThumbnailUrl() {
        return ImageStrategy.choosePreferredImage(this.item.getThumbnails());
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final String getTitle() {
        return this.item.getTitle();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final String getUploaderName() {
        return this.item.getUploader();
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final /* synthetic */ String makeMediaId() {
        return RecordTag.$default$makeMediaId(this);
    }

    @Override // org.schabi.newpipe.player.mediaitem.MediaItemTag
    public final MediaItemTag withExtras(LoadedMediaSource loadedMediaSource) {
        return new ExceptionTag(this.item, this.errors, loadedMediaSource);
    }
}
