package org.schabi.newpipe.player.playqueue;

import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.xwray.groupie.viewbinding.GroupieViewHolder;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.database.playlist.PlaylistMetadataEntry;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.local.holder.LocalBookmarkPlaylistItemHolder;
import org.schabi.newpipe.local.holder.LocalPlaylistStreamItemHolder;
import org.schabi.newpipe.local.holder.RemoteBookmarkPlaylistItemHolder;
import org.schabi.newpipe.local.subscription.item.FeedGroupReorderItem;
import org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment;
import org.schabi.newpipe.util.OnClickGesture;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class PlayQueueItemBuilder$$ExternalSyntheticLambda2 implements View.OnTouchListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ PlayQueueItemBuilder$$ExternalSyntheticLambda2(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        PlayQueueItemBuilder.OnSelectedListener onSelectedListener;
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                PlayQueueItemBuilder playQueueItemBuilder = (PlayQueueItemBuilder) obj2;
                PlayQueueItemHolder playQueueItemHolder = (PlayQueueItemHolder) obj;
                playQueueItemBuilder.getClass();
                view.performClick();
                if (motionEvent.getActionMasked() == 0 && (onSelectedListener = playQueueItemBuilder.onItemClickListener) != null) {
                    onSelectedListener.onStartDrag(playQueueItemHolder);
                    break;
                }
                break;
            case 1:
                LocalBookmarkPlaylistItemHolder localBookmarkPlaylistItemHolder = (LocalBookmarkPlaylistItemHolder) obj2;
                PlaylistMetadataEntry playlistMetadataEntry = (PlaylistMetadataEntry) obj;
                view.performClick();
                TokenData tokenData = localBookmarkPlaylistItemHolder.itemBuilder;
                if (tokenData != null && ((OnClickGesture) tokenData.builder) != null && motionEvent.getActionMasked() == 0) {
                    ((OnClickGesture) tokenData.builder).drag(playlistMetadataEntry, localBookmarkPlaylistItemHolder);
                    break;
                }
                break;
            case 2:
                LocalPlaylistStreamItemHolder localPlaylistStreamItemHolder = (LocalPlaylistStreamItemHolder) obj2;
                PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) obj;
                view.performClick();
                TokenData tokenData2 = localPlaylistStreamItemHolder.itemBuilder;
                if (tokenData2 != null && ((OnClickGesture) tokenData2.builder) != null && motionEvent.getActionMasked() == 0) {
                    ((OnClickGesture) tokenData2.builder).drag(playlistStreamEntry, localPlaylistStreamItemHolder);
                    break;
                }
                break;
            case 3:
                RemoteBookmarkPlaylistItemHolder remoteBookmarkPlaylistItemHolder = (RemoteBookmarkPlaylistItemHolder) obj2;
                PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) obj;
                view.performClick();
                TokenData tokenData3 = remoteBookmarkPlaylistItemHolder.itemBuilder;
                if (tokenData3 != null && ((OnClickGesture) tokenData3.builder) != null && motionEvent.getActionMasked() == 0) {
                    ((OnClickGesture) tokenData3.builder).drag(playlistRemoteEntity, remoteBookmarkPlaylistItemHolder);
                    break;
                }
                break;
            case 4:
                FeedGroupReorderItem feedGroupReorderItem = (FeedGroupReorderItem) obj2;
                GroupieViewHolder groupieViewHolder = (GroupieViewHolder) obj;
                if (motionEvent.getActionMasked() != 0) {
                    break;
                } else {
                    feedGroupReorderItem.dragCallback.startDrag(groupieViewHolder);
                    break;
                }
            default:
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) obj;
                ChooseTabsFragment.SelectedTabsAdapter selectedTabsAdapter = ChooseTabsFragment.SelectedTabsAdapter.this;
                ItemTouchHelper itemTouchHelper = selectedTabsAdapter.itemTouchHelper;
                if (motionEvent.getActionMasked() == 0 && itemTouchHelper != null && selectedTabsAdapter.getItemCount() > 1) {
                    itemTouchHelper.startDrag(viewHolder);
                    break;
                } else {
                    break;
                }
        }
        return false;
    }
}
