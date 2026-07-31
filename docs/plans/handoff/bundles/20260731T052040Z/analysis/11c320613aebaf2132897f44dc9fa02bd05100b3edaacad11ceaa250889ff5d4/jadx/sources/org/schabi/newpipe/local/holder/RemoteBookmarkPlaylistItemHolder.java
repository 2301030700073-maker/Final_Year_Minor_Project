package org.schabi.newpipe.local.holder;

import android.view.View;
import android.view.ViewGroup;
import j$.time.format.DateTimeFormatter;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RemoteBookmarkPlaylistItemHolder extends LocalPlaylistItemHolder {
    public final View itemHandleView;

    public RemoteBookmarkPlaylistItemHolder(TokenData tokenData, ViewGroup viewGroup) {
        super(tokenData, R.layout.list_playlist_bookmark_item, viewGroup, 1);
        this.itemHandleView = this.itemView.findViewById(R.id.itemHandle);
    }

    @Override // org.schabi.newpipe.local.holder.LocalPlaylistItemHolder, org.schabi.newpipe.local.holder.LocalItemHolder
    public final void updateFromItem(LocalItem localItem, PlaylistHeaderBinding playlistHeaderBinding, DateTimeFormatter dateTimeFormatter) {
        if (localItem instanceof PlaylistRemoteEntity) {
            this.itemHandleView.setOnTouchListener(new PlayQueueItemBuilder$$ExternalSyntheticLambda2(this, (PlaylistRemoteEntity) localItem, 3));
            super.updateFromItem(localItem, playlistHeaderBinding, dateTimeFormatter);
        }
    }
}
