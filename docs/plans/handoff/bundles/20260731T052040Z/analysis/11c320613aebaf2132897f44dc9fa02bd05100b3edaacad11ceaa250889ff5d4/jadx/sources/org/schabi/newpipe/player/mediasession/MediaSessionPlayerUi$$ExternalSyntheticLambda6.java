package org.schabi.newpipe.player.mediasession;

import android.content.Intent;
import android.support.v4.media.MediaMetadataCompat;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector;
import j$.util.Optional;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda14;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MediaSessionPlayerUi$$ExternalSyntheticLambda6 implements MediaSessionConnector.MediaButtonEventHandler, MediaSessionConnector.MediaMetadataProvider {
    public final /* synthetic */ MediaSessionPlayerUi f$0;

    public /* synthetic */ MediaSessionPlayerUi$$ExternalSyntheticLambda6(MediaSessionPlayerUi mediaSessionPlayerUi) {
        this.f$0 = mediaSessionPlayerUi;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.MediaMetadataProvider
    public MediaMetadataCompat getMetadata(Player player) {
        int i = MainActivity.$r8$clinit;
        MediaMetadataCompat.Builder builder = new MediaMetadataCompat.Builder();
        MediaSessionPlayerUi mediaSessionPlayerUi = this.f$0;
        org.schabi.newpipe.player.Player player2 = mediaSessionPlayerUi.player;
        MediaItemTag mediaItemTag = player2.currentMetadata;
        PlayerService playerService = player2.context;
        builder.putString("android.media.metadata.TITLE", mediaItemTag == null ? playerService.getString(R.string.unknown_content) : mediaItemTag.getTitle());
        MediaItemTag mediaItemTag2 = player2.currentMetadata;
        builder.putString("android.media.metadata.ARTIST", mediaItemTag2 == null ? playerService.getString(R.string.unknown_content) : mediaItemTag2.getUploaderName());
        builder.putLong("android.media.metadata.DURATION", ((Long) player2.getCurrentStreamInfo().filter(new Player$$ExternalSyntheticLambda48(10)).map(new Player$$ExternalSyntheticLambda28(27)).orElse(-1L)).longValue());
        Optional.ofNullable(player2.currentThumbnail).filter(new ListHelper$$ExternalSyntheticLambda14(player2.prefs.getBoolean(mediaSessionPlayerUi.context.getString(R.string.show_thumbnail_key), true), 1)).ifPresent(new Player$$ExternalSyntheticLambda1(builder, 16));
        return new MediaMetadataCompat(builder.mBundle);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.MediaButtonEventHandler
    public boolean onMediaButtonEvent(Player player, Intent intent) {
        return this.f$0.shouldIgnoreHardwareMediaButtons;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.MediaMetadataProvider
    public /* synthetic */ boolean sameAs(MediaMetadataCompat mediaMetadataCompat, MediaMetadataCompat mediaMetadataCompat2) {
        return RecordTag.$default$sameAs(mediaMetadataCompat, mediaMetadataCompat2);
    }
}
