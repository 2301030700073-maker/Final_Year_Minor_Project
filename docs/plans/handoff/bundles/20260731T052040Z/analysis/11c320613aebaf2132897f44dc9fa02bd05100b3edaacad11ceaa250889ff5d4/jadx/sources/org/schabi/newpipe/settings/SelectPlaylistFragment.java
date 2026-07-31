package org.schabi.newpipe.settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import java.util.Vector;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.PlaylistMetadataEntry;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.settings.SelectChannelFragment;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment;
import org.schabi.newpipe.settings.tabs.Tab;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class SelectPlaylistFragment extends DialogFragment {
    public TextView emptyView;
    public ProgressBar progressBar;
    public RecyclerView recyclerView;
    public VideoPlayerUi.AnonymousClass1 onSelectedListener = null;
    public LambdaSubscriber disposable = null;
    public List playlists = new Vector();

    /* renamed from: -$$Nest$mclickedItem, reason: not valid java name */
    public static void m876$$Nest$mclickedItem(SelectPlaylistFragment selectPlaylistFragment, int i) {
        if (selectPlaylistFragment.onSelectedListener != null) {
            LocalItem localItem = (LocalItem) selectPlaylistFragment.playlists.get(i);
            if (localItem instanceof PlaylistMetadataEntry) {
                PlaylistMetadataEntry playlistMetadataEntry = (PlaylistMetadataEntry) localItem;
                VideoPlayerUi.AnonymousClass1 anonymousClass1 = selectPlaylistFragment.onSelectedListener;
                long uid = playlistMetadataEntry.getUid();
                ((ChooseTabsFragment) anonymousClass1.this$0).addTab(new Tab.PlaylistTab(playlistMetadataEntry.getOrderingName(), uid));
            } else if (localItem instanceof PlaylistRemoteEntity) {
                PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) localItem;
                VideoPlayerUi.AnonymousClass1 anonymousClass12 = selectPlaylistFragment.onSelectedListener;
                int i2 = playlistRemoteEntity.serviceId;
                String str = playlistRemoteEntity.url;
                String str2 = playlistRemoteEntity.orderingName;
                ChooseTabsFragment chooseTabsFragment = (ChooseTabsFragment) anonymousClass12.this$0;
                Tab.PlaylistTab playlistTab = new Tab.PlaylistTab();
                playlistTab.playlistServiceId = i2;
                playlistTab.playlistUrl = str;
                playlistTab.playlistName = str2;
                playlistTab.playlistType = LocalItem.LocalItemType.PLAYLIST_REMOTE_ITEM;
                playlistTab.playlistId = -1L;
                chooseTabsFragment.addTab(playlistTab);
            }
        }
        selectPlaylistFragment.dismissInternal(false, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final int i = 0;
        View inflate = layoutInflater.inflate(R.layout.select_playlist_fragment, viewGroup, false);
        this.progressBar = (ProgressBar) inflate.findViewById(R.id.progressBar);
        this.recyclerView = (RecyclerView) inflate.findViewById(R.id.items_list);
        this.emptyView = (TextView) inflate.findViewById(R.id.empty_state_view);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        int i2 = 2;
        this.recyclerView.setAdapter(new SelectChannelFragment.SelectChannelAdapter(this, i2));
        this.progressBar.setVisibility(0);
        this.recyclerView.setVisibility(8);
        this.emptyView.setVisibility(8);
        AppDatabase appKt = AppKt.getInstance(requireContext());
        appKt.streamDAO();
        appKt.playlistDAO();
        PlaylistStreamDAO_Impl playlistStreamDAO = appKt.playlistStreamDAO();
        PlaylistRemoteDAO_Impl playlistRemoteDAO = appKt.playlistRemoteDAO();
        final int i3 = 1;
        Flowable createFlowable = Cookie.Companion.createFlowable(playlistStreamDAO.__db, true, new String[]{"streams", "playlists", "playlist_stream_join"}, new FeedFragment$$ExternalSyntheticLambda10(3));
        IoScheduler ioScheduler = Schedulers.IO;
        FlowableObserveOn observeOn = Flowable.combineLatest(createFlowable.subscribeOn(ioScheduler), Cookie.Companion.createFlowable(playlistRemoteDAO.__db, false, new String[]{"remote_playlists"}, new FeedFragment$$ExternalSyntheticLambda10(i2)).subscribeOn(ioScheduler), new FeedViewModel$$ExternalSyntheticLambda0(10)).observeOn(AndroidSchedulers.mainThread());
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(new Consumer(this) { // from class: org.schabi.newpipe.settings.SelectPlaylistFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SelectPlaylistFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i;
                SelectPlaylistFragment selectPlaylistFragment = this.f$0;
                switch (i4) {
                    case 0:
                        List list = (List) obj;
                        selectPlaylistFragment.playlists = list;
                        selectPlaylistFragment.progressBar.setVisibility(8);
                        selectPlaylistFragment.emptyView.setVisibility(list.isEmpty() ? 0 : 8);
                        selectPlaylistFragment.recyclerView.setVisibility(list.isEmpty() ? 8 : 0);
                        break;
                    default:
                        ErrorUtil.showSnackbar(selectPlaylistFragment.requireActivity(), new ErrorInfo((Throwable) obj, UserAction.UI_ERROR, "Loading playlists"));
                        break;
                }
            }
        }, new Consumer(this) { // from class: org.schabi.newpipe.settings.SelectPlaylistFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SelectPlaylistFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                SelectPlaylistFragment selectPlaylistFragment = this.f$0;
                switch (i4) {
                    case 0:
                        List list = (List) obj;
                        selectPlaylistFragment.playlists = list;
                        selectPlaylistFragment.progressBar.setVisibility(8);
                        selectPlaylistFragment.emptyView.setVisibility(list.isEmpty() ? 0 : 8);
                        selectPlaylistFragment.recyclerView.setVisibility(list.isEmpty() ? 8 : 0);
                        break;
                    default:
                        ErrorUtil.showSnackbar(selectPlaylistFragment.requireActivity(), new ErrorInfo((Throwable) obj, UserAction.UI_ERROR, "Loading playlists"));
                        break;
                }
            }
        });
        observeOn.subscribe((FlowableSubscriber) lambdaSubscriber);
        this.disposable = lambdaSubscriber;
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        LambdaSubscriber lambdaSubscriber = this.disposable;
        if (lambdaSubscriber != null) {
            SubscriptionHelper.cancel(lambdaSubscriber);
        }
    }
}
