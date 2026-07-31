package org.schabi.newpipe.local.history;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.Comparator;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Supplier;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;
import org.schabi.newpipe.database.stream.StreamStatisticsEntry;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.list.playlist.PlaylistControlViewHolder;
import org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry;
import org.schabi.newpipe.local.BaseLocalListFragment;
import org.schabi.newpipe.local.LocalItemListAdapter;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda38;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;
import org.schabi.newpipe.settings.HistorySettingsFragment;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.util.OnClickGesture;
import org.schabi.newpipe.views.NewPipeTextView;
import us.shandian.giga.service.DownloadManager$$ExternalSyntheticLambda0;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class StatisticsPlaylistFragment extends BaseLocalListFragment<List<StreamStatisticsEntry>, Void> implements PlaylistControlViewHolder {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Subscription databaseSubscription;
    public Dispatcher headerBinding;
    Parcelable itemsListState;
    public Dispatcher playlistControlBinding;
    public PlaylistHeaderBinding recordManager;
    public final CompositeDisposable disposables = new CompositeDisposable();
    public int sortMode = 1;

    @Override // org.schabi.newpipe.local.BaseLocalListFragment
    public final Supplier getListHeaderSupplier() {
        View inflate = this.activity.getLayoutInflater().inflate(R.layout.statistic_playlist_control, (ViewGroup) this.itemsList, false);
        int i = R.id.playlist_control;
        View findChildViewById = Options.Companion.findChildViewById(R.id.playlist_control, inflate);
        if (findChildViewById != null) {
            Dispatcher bind = Dispatcher.bind(findChildViewById);
            i = R.id.sortButton;
            RelativeLayout relativeLayout = (RelativeLayout) Options.Companion.findChildViewById(R.id.sortButton, inflate);
            if (relativeLayout != null) {
                i = R.id.sortButtonIcon;
                ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.sortButtonIcon, inflate);
                if (imageView != null) {
                    i = R.id.sortButtonText;
                    NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.sortButtonText, inflate);
                    if (newPipeTextView != null) {
                        Dispatcher dispatcher = new Dispatcher((LinearLayout) inflate, bind, relativeLayout, imageView, newPipeTextView);
                        this.headerBinding = dispatcher;
                        this.playlistControlBinding = bind;
                        return new Player$$ExternalSyntheticLambda38(dispatcher, 5);
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // org.schabi.newpipe.fragments.list.playlist.PlaylistControlViewHolder
    public final PlayQueue getPlayQueue() {
        LocalItemListAdapter localItemListAdapter = this.itemListAdapter;
        if (localItemListAdapter == null) {
            return new SinglePlayQueue(0, Collections.EMPTY_LIST);
        }
        ArrayList arrayList = localItemListAdapter.localItems;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            LocalItem localItem = (LocalItem) it.next();
            if (localItem instanceof StreamStatisticsEntry) {
                arrayList2.add(((StreamStatisticsEntry) localItem).toStreamInfoItem());
            }
        }
        return new SinglePlayQueue(0, arrayList2);
    }

    public final void handleResult(List list) {
        Comparator comparing;
        hideLoading();
        if (this.itemListAdapter == null) {
            return;
        }
        ((LinearLayout) this.playlistControlBinding.executorServiceOrNull).setVisibility(0);
        this.itemListAdapter.clearStreamItemList();
        if (list.isEmpty()) {
            showEmptyState();
            return;
        }
        LocalItemListAdapter localItemListAdapter = this.itemListAdapter;
        int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(this.sortMode);
        if (ordinal == 0) {
            comparing = Comparator.CC.comparing(new Player$$ExternalSyntheticLambda28(3));
        } else {
            if (ordinal != 1) {
                list = null;
                localItemListAdapter.addItems(list);
                if (this.itemsListState != null && this.itemsList.getLayoutManager() != null) {
                    this.itemsList.getLayoutManager().onRestoreInstanceState(this.itemsListState);
                    this.itemsListState = null;
                }
                AppKt.initPlaylistControlClickListener(this.activity, this.playlistControlBinding, this);
                ((RelativeLayout) this.headerBinding.readyAsyncCalls).setOnClickListener(new Deleter$$ExternalSyntheticLambda4(this, 6));
                hideLoading();
            }
            comparing = Comparator.CC.comparingLong(new DownloadManager$$ExternalSyntheticLambda0(2));
        }
        Collections.sort(list, Comparator.EL.reversed(comparing));
        localItemListAdapter.addItems(list);
        if (this.itemsListState != null) {
            this.itemsList.getLayoutManager().onRestoreInstanceState(this.itemsListState);
            this.itemsListState = null;
        }
        AppKt.initPlaylistControlClickListener(this.activity, this.playlistControlBinding, this);
        ((RelativeLayout) this.headerBinding.readyAsyncCalls).setOnClickListener(new Deleter$$ExternalSyntheticLambda4(this, 6));
        hideLoading();
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.BaseFragment
    public final void initListeners() {
        this.itemListAdapter.localItemBuilder.builder = new AnonymousClass1();
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        super.initViews(view, bundle);
        if (this.useAsFrontPage) {
            return;
        }
        setTitle(getString(R.string.title_last_played));
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.recordManager = new PlaylistHeaderBinding(getContext());
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.menu_history, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_playlist, viewGroup, false);
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.recordManager = null;
        this.itemsListState = null;
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        LocalItemListAdapter localItemListAdapter = this.itemListAdapter;
        if (localItemListAdapter != null) {
            localItemListAdapter.localItemBuilder.builder = null;
        }
        this.headerBinding = null;
        this.playlistControlBinding = null;
        Subscription subscription = this.databaseSubscription;
        if (subscription != null) {
            subscription.cancel();
        }
        this.databaseSubscription = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.action_history_clear) {
            return false;
        }
        HistorySettingsFragment.openDeleteWatchHistoryDialog(requireContext(), this.recordManager, this.disposables);
        return true;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        RecyclerView.LayoutManager layoutManager = this.itemsList.getLayoutManager();
        Objects.requireNonNull(layoutManager);
        this.itemsListState = layoutManager.onSaveInstanceState();
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        AppCompatActivity appCompatActivity = this.activity;
        if (appCompatActivity != null) {
            setTitle(appCompatActivity.getString(R.string.title_activity_history));
        }
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment
    public final void resetFragment() {
        super.resetFragment();
        Subscription subscription = this.databaseSubscription;
        if (subscription != null) {
            subscription.cancel();
        }
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void startLoading(boolean z) {
        super.startLoading(true);
        StreamHistoryDAO_Impl streamHistoryDAO_Impl = (StreamHistoryDAO_Impl) this.recordManager.playlistDescription;
        Cookie.Companion.createFlowable(streamHistoryDAO_Impl.__db, false, new String[]{"streams", "stream_history", "stream_state"}, new StreamHistoryDAO_Impl$$ExternalSyntheticLambda0(streamHistoryDAO_Impl, 0)).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()).subscribe(new AnonymousClass1());
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.local.history.StatisticsPlaylistFragment$1, reason: invalid class name */
    public final class AnonymousClass1 implements OnClickGesture, Subscriber {
        public /* synthetic */ AnonymousClass1() {
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public void held(Object obj) {
            LocalItem localItem = (LocalItem) obj;
            if (localItem instanceof StreamStatisticsEntry) {
                StreamStatisticsEntry streamStatisticsEntry = (StreamStatisticsEntry) localItem;
                int i = StatisticsPlaylistFragment.$r8$clinit;
                StatisticsPlaylistFragment statisticsPlaylistFragment = StatisticsPlaylistFragment.this;
                Context context = statisticsPlaylistFragment.getContext();
                StreamInfoItem streamInfoItem = streamStatisticsEntry.toStreamInfoItem();
                try {
                    WebMReader.Segment segment = new WebMReader.Segment(statisticsPlaylistFragment.getActivity(), context, statisticsPlaylistFragment, streamInfoItem);
                    StreamDialogDefaultEntry streamDialogDefaultEntry = StreamDialogDefaultEntry.DELETE;
                    segment.addEntry(streamDialogDefaultEntry);
                    segment.setAction(streamDialogDefaultEntry, new RxConvertKt$$ExternalSyntheticLambda0(statisticsPlaylistFragment, streamStatisticsEntry, 25));
                    segment.create().show();
                } catch (IllegalArgumentException e) {
                    WebMReader.Segment.reportErrorDuringInitialization(e, streamInfoItem);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            StatisticsPlaylistFragment.this.showError(new ErrorInfo(th, UserAction.SOMETHING_ELSE, "History Statistics"));
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            StatisticsPlaylistFragment statisticsPlaylistFragment = StatisticsPlaylistFragment.this;
            statisticsPlaylistFragment.handleResult((List) obj);
            Subscription subscription = statisticsPlaylistFragment.databaseSubscription;
            if (subscription != null) {
                subscription.request(1L);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            StatisticsPlaylistFragment statisticsPlaylistFragment = StatisticsPlaylistFragment.this;
            statisticsPlaylistFragment.showLoading();
            Subscription subscription2 = statisticsPlaylistFragment.databaseSubscription;
            if (subscription2 != null) {
                subscription2.cancel();
            }
            statisticsPlaylistFragment.databaseSubscription = subscription;
            subscription.request(1L);
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public void selected(Object obj) {
            LocalItem localItem = (LocalItem) obj;
            if (localItem instanceof StreamStatisticsEntry) {
                StreamEntity streamEntity = ((StreamStatisticsEntry) localItem).streamEntity;
                StatisticsPlaylistFragment statisticsPlaylistFragment = StatisticsPlaylistFragment.this;
                SQLite.openVideoDetailFragment(statisticsPlaylistFragment.requireContext(), statisticsPlaylistFragment.getFM(), streamEntity.getServiceId(), streamEntity.getUrl(), streamEntity.getTitle(), null, false);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public /* synthetic */ void drag(Object obj, RecyclerView.ViewHolder viewHolder) {
        }
    }
}
