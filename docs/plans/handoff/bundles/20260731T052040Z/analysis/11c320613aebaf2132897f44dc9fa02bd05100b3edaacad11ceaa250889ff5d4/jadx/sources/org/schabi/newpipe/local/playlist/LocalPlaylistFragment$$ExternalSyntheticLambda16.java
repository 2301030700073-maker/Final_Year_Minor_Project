package org.schabi.newpipe.local.playlist;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.info_list.dialog.StreamDialogEntry;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalPlaylistFragment$$ExternalSyntheticLambda16 implements Consumer, StreamDialogEntry.StreamDialogEntryAction {
    public final /* synthetic */ LocalPlaylistFragment f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Context f$2;

    public /* synthetic */ LocalPlaylistFragment$$ExternalSyntheticLambda16(LocalPlaylistFragment localPlaylistFragment, Context context, PlaylistStreamEntry playlistStreamEntry) {
        this.f$0 = localPlaylistFragment;
        this.f$2 = context;
        this.f$1 = playlistStreamEntry;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        PlayListShareMode playListShareMode = (PlayListShareMode) this.f$1;
        String str = (String) obj;
        int i = LocalPlaylistFragment.$r8$clinit;
        PlayListShareMode playListShareMode2 = PlayListShareMode.WITH_TITLES;
        LocalPlaylistFragment localPlaylistFragment = this.f$0;
        Context context = this.f$2;
        if (playListShareMode == playListShareMode2) {
            str = context.getString(R.string.share_playlist_content_details, localPlaylistFragment.name, str);
        }
        Transition.Impl26.shareText(context, localPlaylistFragment.name, str, "");
    }

    @Override // org.schabi.newpipe.info_list.dialog.StreamDialogEntry.StreamDialogEntryAction
    public void onClick(Fragment fragment, StreamInfoItem streamInfoItem) {
        PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) this.f$1;
        int i = LocalPlaylistFragment.$r8$clinit;
        LocalPlaylistFragment localPlaylistFragment = this.f$0;
        SQLite.playOnBackgroundPlayer(this.f$2, localPlaylistFragment.getPlayQueue(Math.max(localPlaylistFragment.itemListAdapter.localItems.indexOf(playlistStreamEntry), 0)), true);
    }

    public /* synthetic */ LocalPlaylistFragment$$ExternalSyntheticLambda16(LocalPlaylistFragment localPlaylistFragment, PlayListShareMode playListShareMode, Context context) {
        this.f$0 = localPlaylistFragment;
        this.f$1 = playListShareMode;
        this.f$2 = context;
    }
}
