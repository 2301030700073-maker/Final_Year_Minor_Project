package org.schabi.newpipe.player.ui;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import androidx.appcompat.app.AlertDialog;
import androidx.sqlite.SQLite;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import com.google.android.material.snackbar.Snackbar;
import com.nononsenseapps.filepicker.FileItemAdapter;
import java.util.LinkedList;
import java.util.function.Consumer;
import net.newpipe.app.AppKt;
import okhttp3.ConnectionPool;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.stream.StreamStatisticsEntry;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.extractor.comments.CommentsInfoItem;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItem;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.fragments.list.BaseListFragment$$ExternalSyntheticLambda0;
import org.schabi.newpipe.fragments.list.comments.CommentRepliesFragment;
import org.schabi.newpipe.fragments.list.playlist.PlaylistFragment;
import org.schabi.newpipe.fragments.list.search.SuggestionListAdapter;
import org.schabi.newpipe.info_list.holder.ChannelMiniInfoItemHolder;
import org.schabi.newpipe.info_list.holder.StreamMiniInfoItemHolder;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.local.holder.LocalPlaylistItemHolder;
import org.schabi.newpipe.local.holder.LocalPlaylistStreamItemHolder;
import org.schabi.newpipe.local.subscription.item.ChannelItem;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.notification.NotificationConstants;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder;
import org.schabi.newpipe.settings.SelectKioskFragment;
import org.schabi.newpipe.settings.SelectKioskFragment$SelectKioskAdapter$Entry;
import org.schabi.newpipe.settings.custom.NotificationSlot;
import org.schabi.newpipe.settings.notifications.NotificationModeConfigAdapter;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchItem;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment$$ExternalSyntheticLambda4;
import org.schabi.newpipe.settings.tabs.Tab;
import org.schabi.newpipe.util.OnClickGesture;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class VideoPlayerUi$$ExternalSyntheticLambda42 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ VideoPlayerUi$$ExternalSyntheticLambda42(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        StreamInfo streamInfo;
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                VideoPlayerUi videoPlayerUi = (VideoPlayerUi) obj2;
                int i2 = MainActivity.$r8$clinit;
                ((Runnable) obj).run();
                if (videoPlayerUi.player.currentState != 128) {
                    videoPlayerUi.controlsVisibilityHandler.removeCallbacksAndMessages(null);
                    videoPlayerUi.showHideShadow(300L, true);
                    AppKt.animate(videoPlayerUi.binding.playbackControlRoot, true, 300L, AnimationType.ALPHA, 0L, new Processor$$ExternalSyntheticLambda2(videoPlayerUi, view, 22));
                    break;
                }
                break;
            case 1:
                ((View.OnClickListener) obj).onClick(view);
                ((Snackbar) obj2).dispatchDismiss(1);
                break;
            case 2:
                Context context = (Context) obj2;
                ErrorUtil.Companion.getClass();
                context.startActivity(ErrorUtil.Companion.getErrorActivityIntent(context, (ErrorInfo) obj));
                break;
            case 3:
                VideoDetailFragment videoDetailFragment = (VideoDetailFragment) obj2;
                Consumer consumer = (Consumer) obj;
                LinkedList linkedList = VideoDetailFragment.stack;
                if (!videoDetailFragment.isLoading.get() && (streamInfo = videoDetailFragment.currentInfo) != null) {
                    consumer.s(streamInfo);
                    break;
                }
                break;
            case 4:
                int i3 = CommentRepliesFragment.$r8$clinit;
                SQLite.openCommentAuthorIfPresent(((CommentRepliesFragment) obj2).requireActivity(), (CommentsInfoItem) obj);
                break;
            case 5:
                PlaylistFragment playlistFragment = (PlaylistFragment) obj2;
                PlaylistInfo playlistInfo = (PlaylistInfo) obj;
                int i4 = PlaylistFragment.$r8$clinit;
                try {
                    SQLite.openChannelFragment(playlistFragment.getFM(), playlistInfo.getServiceId(), playlistInfo.getUploaderUrl(), playlistInfo.getUploaderName());
                    break;
                } catch (Exception e) {
                    ErrorUtil.showUiErrorSnackbar(playlistFragment, "Opening channel fragment", e);
                    return;
                }
            case 6:
                ChannelInfoItem channelInfoItem = (ChannelInfoItem) obj;
                BaseListFragment$$ExternalSyntheticLambda0 baseListFragment$$ExternalSyntheticLambda0 = (BaseListFragment$$ExternalSyntheticLambda0) ((ChannelMiniInfoItemHolder) obj2).itemBuilder.keyers;
                if (baseListFragment$$ExternalSyntheticLambda0 != null) {
                    baseListFragment$$ExternalSyntheticLambda0.selected(channelInfoItem);
                    break;
                }
                break;
            case 7:
                PlaylistInfoItem playlistInfoItem = (PlaylistInfoItem) obj;
                BaseListFragment$$ExternalSyntheticLambda0 baseListFragment$$ExternalSyntheticLambda02 = (BaseListFragment$$ExternalSyntheticLambda0) ((ChannelMiniInfoItemHolder) obj2).itemBuilder.lazyFetcherFactories;
                if (baseListFragment$$ExternalSyntheticLambda02 != null) {
                    baseListFragment$$ExternalSyntheticLambda02.selected(playlistInfoItem);
                    break;
                }
                break;
            case 8:
                StreamInfoItem streamInfoItem = (StreamInfoItem) obj;
                ConnectionPool connectionPool = (ConnectionPool) ((StreamMiniInfoItemHolder) obj2).itemBuilder.mappers;
                if (connectionPool != null) {
                    connectionPool.selected(streamInfoItem);
                    break;
                }
                break;
            case 9:
                PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) obj;
                OnClickGesture onClickGesture = (OnClickGesture) ((LocalPlaylistStreamItemHolder) obj2).itemBuilder.builder;
                if (onClickGesture != null) {
                    onClickGesture.selected(playlistStreamEntry);
                    break;
                }
                break;
            case 10:
                StreamStatisticsEntry streamStatisticsEntry = (StreamStatisticsEntry) obj;
                OnClickGesture onClickGesture2 = (OnClickGesture) ((LocalPlaylistStreamItemHolder) obj2).itemBuilder.builder;
                if (onClickGesture2 != null) {
                    onClickGesture2.selected(streamStatisticsEntry);
                    break;
                }
                break;
            case 11:
                LocalItem localItem = (LocalItem) obj;
                OnClickGesture onClickGesture3 = (OnClickGesture) ((LocalPlaylistItemHolder) obj2).itemBuilder.builder;
                if (onClickGesture3 != null) {
                    onClickGesture3.selected(localItem);
                    break;
                }
                break;
            case 12:
                ((OnClickGesture) obj2).selected(((ChannelItem) obj).infoItem);
                break;
            case 13:
                PlayQueueItem playQueueItem = (PlayQueueItem) obj;
                PlayQueueItemBuilder.OnSelectedListener onSelectedListener = ((PlayQueueItemBuilder) obj2).onItemClickListener;
                if (onSelectedListener != null) {
                    onSelectedListener.selected(playQueueItem);
                    break;
                }
                break;
            case 14:
                SelectKioskFragment$SelectKioskAdapter$Entry selectKioskFragment$SelectKioskAdapter$Entry = (SelectKioskFragment$SelectKioskAdapter$Entry) obj;
                SelectKioskFragment selectKioskFragment = (SelectKioskFragment) ((FileItemAdapter) obj2).mList;
                ChooseTabsFragment$$ExternalSyntheticLambda4 chooseTabsFragment$$ExternalSyntheticLambda4 = selectKioskFragment.onSelectedListener;
                if (chooseTabsFragment$$ExternalSyntheticLambda4 != null) {
                    chooseTabsFragment$$ExternalSyntheticLambda4.f$0.addTab(new Tab.KioskTab(selectKioskFragment$SelectKioskAdapter$Entry.serviceId, selectKioskFragment$SelectKioskAdapter$Entry.kioskId));
                }
                selectKioskFragment.dismissInternal(false, false);
                break;
            case 15:
                NotificationSlot notificationSlot = (NotificationSlot) obj2;
                notificationSlot.onToggleCompactSlot.accept(Integer.valueOf(notificationSlot.i), (CheckBox) obj);
                break;
            case 16:
                NotificationSlot notificationSlot2 = (NotificationSlot) obj2;
                notificationSlot2.selectedAction = NotificationConstants.ALL_ACTIONS[view.getId()];
                notificationSlot2.updateInfo();
                ((AlertDialog) obj).dismiss();
                break;
            case 17:
                NotificationModeConfigAdapter.SubscriptionHolder._init_$lambda$0((NotificationModeConfigAdapter.SubscriptionHolder) obj2, (NotificationModeConfigAdapter) obj, view);
                break;
            default:
                PreferenceSearchItem preferenceSearchItem = (PreferenceSearchItem) obj;
                Player$$ExternalSyntheticLambda1 player$$ExternalSyntheticLambda1 = (Player$$ExternalSyntheticLambda1) ((SuggestionListAdapter) obj2).listener;
                if (player$$ExternalSyntheticLambda1 != null) {
                    player$$ExternalSyntheticLambda1.s(preferenceSearchItem);
                    break;
                }
                break;
        }
    }
}
