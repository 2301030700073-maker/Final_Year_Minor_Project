package org.schabi.newpipe.local.holder;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import coil3.ComponentRegistry;
import java.util.LinkedList;
import java.util.function.Consumer;
import okhttp3.ConnectionPool;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.stream.StreamStatisticsEntry;
import org.schabi.newpipe.extractor.comments.CommentsInfoItem;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.detail.BaseDescriptionFragment;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.info_list.holder.CommentInfoItemHolder;
import org.schabi.newpipe.info_list.holder.StreamMiniInfoItemHolder;
import org.schabi.newpipe.local.subscription.item.ChannelItem;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.OnClickGesture;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class PlaylistItemHolder$$ExternalSyntheticLambda1 implements View.OnLongClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ PlaylistItemHolder$$ExternalSyntheticLambda1(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        StreamInfo streamInfo;
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                LocalItem localItem = (LocalItem) obj;
                OnClickGesture onClickGesture = (OnClickGesture) ((LocalPlaylistItemHolder) obj2).itemBuilder.builder;
                if (onClickGesture != null) {
                    onClickGesture.held(localItem);
                    break;
                }
                break;
            case 1:
                int i2 = BaseDescriptionFragment.$r8$clinit;
                Transition.Impl26.copyToClipboard(((BaseDescriptionFragment) obj2).requireContext(), (String) obj);
                break;
            case 2:
                VideoDetailFragment videoDetailFragment = (VideoDetailFragment) obj2;
                Consumer consumer = (Consumer) obj;
                LinkedList linkedList = VideoDetailFragment.stack;
                if (!videoDetailFragment.isLoading.get() && (streamInfo = videoDetailFragment.currentInfo) != null) {
                    consumer.s(streamInfo);
                    break;
                }
                break;
            case 3:
                CommentInfoItemHolder commentInfoItemHolder = (CommentInfoItemHolder) obj2;
                CommentsInfoItem commentsInfoItem = (CommentsInfoItem) obj;
                ComponentRegistry.Builder builder = commentInfoItemHolder.itemBuilder;
                if (!DeviceUtils.isTv((Context) builder.interceptors)) {
                    CharSequence text = commentInfoItemHolder.itemContentView.getText();
                    if (text != null) {
                        Transition.Impl26.copyToClipboard((Context) builder.interceptors, text.toString());
                        break;
                    }
                } else {
                    SQLite.openCommentAuthorIfPresent((FragmentActivity) ((Context) builder.interceptors), commentsInfoItem);
                    break;
                }
                break;
            case 4:
                StreamInfoItem streamInfoItem = (StreamInfoItem) obj;
                ConnectionPool connectionPool = (ConnectionPool) ((StreamMiniInfoItemHolder) obj2).itemBuilder.mappers;
                if (connectionPool != null) {
                    connectionPool.held(streamInfoItem);
                    break;
                }
                break;
            case 5:
                PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) obj;
                OnClickGesture onClickGesture2 = (OnClickGesture) ((LocalPlaylistStreamItemHolder) obj2).itemBuilder.builder;
                if (onClickGesture2 != null) {
                    onClickGesture2.held(playlistStreamEntry);
                    break;
                }
                break;
            case 6:
                StreamStatisticsEntry streamStatisticsEntry = (StreamStatisticsEntry) obj;
                OnClickGesture onClickGesture3 = (OnClickGesture) ((LocalPlaylistStreamItemHolder) obj2).itemBuilder.builder;
                if (onClickGesture3 != null) {
                    onClickGesture3.held(streamStatisticsEntry);
                    break;
                }
                break;
            case 7:
                ((OnClickGesture) obj2).held(((ChannelItem) obj).infoItem);
                break;
            default:
                PlayQueueItem playQueueItem = (PlayQueueItem) obj;
                PlayQueueItemBuilder.OnSelectedListener onSelectedListener = ((PlayQueueItemBuilder) obj2).onItemClickListener;
                if (onSelectedListener != null) {
                    onSelectedListener.held(playQueueItem, view);
                    break;
                }
                break;
        }
        return true;
    }
}
