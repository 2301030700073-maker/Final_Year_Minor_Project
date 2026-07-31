package org.schabi.newpipe.local.playlist;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.compose.ui.node.Owner;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import com.google.android.exoplayer2.util.Log;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.CallbackCompletableObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureError;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableSubscribeOn;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.internal.connection.RealConnectionPool;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.TokenData;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;
import org.schabi.newpipe.database.playlist.model.PlaylistStreamEntity;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.list.playlist.PlaylistControlViewHolder;
import org.schabi.newpipe.info_list.ItemViewMode;
import org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry;
import org.schabi.newpipe.local.BaseLocalListFragment;
import org.schabi.newpipe.local.LocalItemListAdapter;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.NavigationHelper$$ExternalSyntheticLambda5;
import org.schabi.newpipe.util.OnClickGesture;
import org.schabi.newpipe.util.debounce.DebounceSavable;
import org.schabi.newpipe.views.NewPipeEditText;
import org.schabi.newpipe.views.NewPipeTextView;
import us.shandian.giga.service.DownloadManager$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class LocalPlaylistFragment extends BaseLocalListFragment<List<PlaylistStreamEntry>, Void> implements PlaylistControlViewHolder, DebounceSavable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Subscription databaseSubscription;
    public RealConnectionPool debounceSaver;
    public CompositeDisposable disposables;
    public Printer headerBinding;
    public AtomicBoolean isLoadingComplete;
    public boolean isRewritingPlaylist = false;
    public ItemTouchHelper itemTouchHelper;
    Parcelable itemsListState;
    protected String name;
    public Dispatcher playlistControlBinding;
    protected Long playlistId;
    public Dispatcher playlistManager;

    /* renamed from: $r8$lambda$P_u4_HiCmhoZzHplnujq-I4PrkI, reason: not valid java name */
    public static /* synthetic */ List m872$r8$lambda$P_u4_HiCmhoZzHplnujqI4PrkI(List list) {
        return (List) Collection.EL.stream(list).map(new Player$$ExternalSyntheticLambda28(6)).collect(Collectors.toList());
    }

    public static LocalPlaylistFragment getInstance(String str, long j) {
        LocalPlaylistFragment localPlaylistFragment = new LocalPlaylistFragment();
        localPlaylistFragment.playlistId = Long.valueOf(j);
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        localPlaylistFragment.name = str;
        return localPlaylistFragment;
    }

    public final void changeThumbnailStreamId(long j, boolean z) {
        Dispatcher dispatcher = this.playlistManager;
        if (dispatcher != null) {
            if (z || !dispatcher.getIsPlaylistThumbnailPermanent(this.playlistId.longValue())) {
                Toast makeText = Toast.makeText(getActivity(), R.string.playlist_thumbnail_change_success, 0);
                MaybeObserveOn modifyPlaylist = this.playlistManager.modifyPlaylist(this.playlistId.longValue(), j, null, z);
                Scheduler mainThread = AndroidSchedulers.mainThread();
                MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new LocalPlaylistFragment$$ExternalSyntheticLambda0(makeText, 8), new LocalPlaylistFragment$$ExternalSyntheticLambda0(this, 7), Functions.EMPTY_ACTION);
                try {
                    modifyPlaylist.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver, mainThread));
                    this.disposables.add(maybeCallbackObserver);
                } catch (NullPointerException e) {
                    throw e;
                } catch (Throwable th) {
                    throw Owner.CC.m(th, "subscribeActual failed", th);
                }
            }
        }
    }

    public final void createRenameDialog() {
        if (this.playlistId == null || this.name == null || getContext() == null) {
            return;
        }
        TokenData inflate = TokenData.inflate(getLayoutInflater());
        NewPipeEditText newPipeEditText = (NewPipeEditText) inflate.builder;
        newPipeEditText.setHint(R.string.name);
        newPipeEditText.setInputType(1);
        newPipeEditText.setSelection(newPipeEditText.getText().length());
        newPipeEditText.setText(this.name);
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(R.string.rename_playlist);
        AlertDialog.Builder view = builder.setView((RelativeLayout) inflate.value);
        view.P.mCancelable = true;
        view.setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.rename, new LocalPlaylistFragment$$ExternalSyntheticLambda3(this, inflate, 0)).show();
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment
    public final Supplier getListHeaderSupplier() {
        View inflate = this.activity.getLayoutInflater().inflate(R.layout.local_playlist_header, (ViewGroup) this.itemsList, false);
        int i = R.id.playlist_control;
        View findChildViewById = Options.Companion.findChildViewById(R.id.playlist_control, inflate);
        if (findChildViewById != null) {
            Dispatcher bind = Dispatcher.bind(findChildViewById);
            i = R.id.playlist_stream_count;
            NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.playlist_stream_count, inflate);
            if (newPipeTextView != null) {
                i = R.id.playlist_title_view;
                NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.playlist_title_view, inflate);
                if (newPipeTextView2 != null) {
                    this.headerBinding = new Printer((RelativeLayout) inflate, bind, newPipeTextView, newPipeTextView2, 8);
                    this.playlistControlBinding = bind;
                    newPipeTextView2.setSelected(true);
                    final Printer printer = this.headerBinding;
                    Objects.requireNonNull(printer);
                    return new Supplier() { // from class: org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$ExternalSyntheticLambda2
                        @Override // java.util.function.Supplier
                        public final Object get() {
                            return (RelativeLayout) Printer.this.root;
                        }
                    };
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    public final SinglePlayQueue getPlayQueue(int i) {
        LocalItemListAdapter localItemListAdapter = this.itemListAdapter;
        if (localItemListAdapter == null) {
            return new SinglePlayQueue(0, Collections.EMPTY_LIST);
        }
        ArrayList arrayList = localItemListAdapter.localItems;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            LocalItem localItem = (LocalItem) it.next();
            if (localItem instanceof PlaylistStreamEntry) {
                arrayList2.add(((PlaylistStreamEntry) localItem).toStreamInfoItem());
            }
        }
        return new SinglePlayQueue(i, arrayList2);
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void hideLoading() {
        super.hideLoading();
        Printer printer = this.headerBinding;
        if (printer != null) {
            AppKt.animate((RelativeLayout) printer.root, true, 200L);
            AppKt.animate((LinearLayout) this.playlistControlBinding.executorServiceOrNull, true, 200L);
        }
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.BaseFragment
    public final void initListeners() {
        ((NewPipeTextView) this.headerBinding.settings).setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = LocalPlaylistFragment.$r8$clinit;
                LocalPlaylistFragment.this.createRenameDialog();
            }
        });
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ChooseTabsFragment.AnonymousClass2(this, Options.Companion.getItemViewMode(requireContext()) == ItemViewMode.GRID ? 15 : 3));
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this.itemsList);
        this.itemListAdapter.localItemBuilder.builder = new AnonymousClass2();
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        super.initViews(view, bundle);
        setTitle(this.name);
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.playlistManager = new Dispatcher(AppKt.getInstance(requireContext()));
        this.disposables = new CompositeDisposable();
        this.isLoadingComplete = new AtomicBoolean();
        this.debounceSaver = new RealConnectionPool(10000L, this);
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.menu_local_playlist, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_playlist, viewGroup, false);
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        RealConnectionPool realConnectionPool = this.debounceSaver;
        if (realConnectionPool != null) {
            ((PublishSubject) realConnectionPool.cleanupQueue).onComplete();
        }
        CompositeDisposable compositeDisposable = this.disposables;
        if (compositeDisposable != null) {
            compositeDisposable.dispose();
        }
        this.debounceSaver = null;
        this.playlistManager = null;
        this.disposables = null;
        this.isLoadingComplete = null;
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
        CompositeDisposable compositeDisposable = this.disposables;
        if (compositeDisposable != null) {
            compositeDisposable.clear();
        }
        this.databaseSubscription = null;
        this.itemTouchHelper = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        final int i = 0;
        final int i2 = 1;
        if (menuItem.getItemId() == R.id.menu_item_share_playlist) {
            AlertDialog.Builder builder = new AlertDialog.Builder(requireContext());
            builder.setTitle(R.string.share_playlist);
            builder.P.mCancelable = true;
            AlertDialog.Builder positiveButton = builder.setPositiveButton(R.string.share_playlist_with_titles, new DialogInterface.OnClickListener(this) { // from class: org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$ExternalSyntheticLambda5
                public final /* synthetic */ LocalPlaylistFragment f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    int i4 = i;
                    LocalPlaylistFragment localPlaylistFragment = this.f$0;
                    switch (i4) {
                        case 0:
                            int i5 = LocalPlaylistFragment.$r8$clinit;
                            localPlaylistFragment.sharePlaylist(PlayListShareMode.WITH_TITLES);
                            return;
                        case 1:
                            if (localPlaylistFragment.isRewritingPlaylist) {
                                return;
                            }
                            localPlaylistFragment.isRewritingPlaylist = true;
                            localPlaylistFragment.showLoading();
                            Dispatcher dispatcher = localPlaylistFragment.playlistManager;
                            long longValue = localPlaylistFragment.playlistId.longValue();
                            PlaylistStreamDAO_Impl playlistStreamDAO_Impl = (PlaylistStreamDAO_Impl) dispatcher.runningSyncCalls;
                            Flowable createFlowable = Cookie.Companion.createFlowable(playlistStreamDAO_Impl.__db, true, new String[]{"streams", "playlist_stream_join", "stream_state"}, new PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1(longValue, playlistStreamDAO_Impl, 1));
                            IoScheduler ioScheduler = Schedulers.IO;
                            FlowableElementAtMaybe flowableElementAtMaybe = new FlowableElementAtMaybe(createFlowable.subscribeOn(ioScheduler));
                            CompositeDisposable compositeDisposable = localPlaylistFragment.disposables;
                            MaybeObserveOn subscribeOn = flowableElementAtMaybe.subscribeOn(ioScheduler);
                            Scheduler mainThread = AndroidSchedulers.mainThread();
                            MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new LocalPlaylistFragment$$ExternalSyntheticLambda0(localPlaylistFragment, 2), new LocalPlaylistFragment$$ExternalSyntheticLambda0(localPlaylistFragment, 3), Functions.EMPTY_ACTION);
                            try {
                                subscribeOn.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver, mainThread));
                                compositeDisposable.add(maybeCallbackObserver);
                                return;
                            } catch (NullPointerException e) {
                                throw e;
                            } catch (Throwable th) {
                                throw Owner.CC.m(th, "subscribeActual failed", th);
                            }
                        case 2:
                            int i6 = LocalPlaylistFragment.$r8$clinit;
                            localPlaylistFragment.sharePlaylist(PlayListShareMode.YOUTUBE_TEMP_PLAYLIST);
                            return;
                        default:
                            int i7 = LocalPlaylistFragment.$r8$clinit;
                            localPlaylistFragment.sharePlaylist(PlayListShareMode.JUST_URLS);
                            return;
                    }
                }
            });
            final int i3 = 2;
            positiveButton.setNeutralButton(R.string.share_playlist_as_youtube_temporary_playlist, new DialogInterface.OnClickListener(this) { // from class: org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$ExternalSyntheticLambda5
                public final /* synthetic */ LocalPlaylistFragment f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i32) {
                    int i4 = i3;
                    LocalPlaylistFragment localPlaylistFragment = this.f$0;
                    switch (i4) {
                        case 0:
                            int i5 = LocalPlaylistFragment.$r8$clinit;
                            localPlaylistFragment.sharePlaylist(PlayListShareMode.WITH_TITLES);
                            return;
                        case 1:
                            if (localPlaylistFragment.isRewritingPlaylist) {
                                return;
                            }
                            localPlaylistFragment.isRewritingPlaylist = true;
                            localPlaylistFragment.showLoading();
                            Dispatcher dispatcher = localPlaylistFragment.playlistManager;
                            long longValue = localPlaylistFragment.playlistId.longValue();
                            PlaylistStreamDAO_Impl playlistStreamDAO_Impl = (PlaylistStreamDAO_Impl) dispatcher.runningSyncCalls;
                            Flowable createFlowable = Cookie.Companion.createFlowable(playlistStreamDAO_Impl.__db, true, new String[]{"streams", "playlist_stream_join", "stream_state"}, new PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1(longValue, playlistStreamDAO_Impl, 1));
                            IoScheduler ioScheduler = Schedulers.IO;
                            FlowableElementAtMaybe flowableElementAtMaybe = new FlowableElementAtMaybe(createFlowable.subscribeOn(ioScheduler));
                            CompositeDisposable compositeDisposable = localPlaylistFragment.disposables;
                            MaybeObserveOn subscribeOn = flowableElementAtMaybe.subscribeOn(ioScheduler);
                            Scheduler mainThread = AndroidSchedulers.mainThread();
                            MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new LocalPlaylistFragment$$ExternalSyntheticLambda0(localPlaylistFragment, 2), new LocalPlaylistFragment$$ExternalSyntheticLambda0(localPlaylistFragment, 3), Functions.EMPTY_ACTION);
                            try {
                                subscribeOn.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver, mainThread));
                                compositeDisposable.add(maybeCallbackObserver);
                                return;
                            } catch (NullPointerException e) {
                                throw e;
                            } catch (Throwable th) {
                                throw Owner.CC.m(th, "subscribeActual failed", th);
                            }
                        case 2:
                            int i6 = LocalPlaylistFragment.$r8$clinit;
                            localPlaylistFragment.sharePlaylist(PlayListShareMode.YOUTUBE_TEMP_PLAYLIST);
                            return;
                        default:
                            int i7 = LocalPlaylistFragment.$r8$clinit;
                            localPlaylistFragment.sharePlaylist(PlayListShareMode.JUST_URLS);
                            return;
                    }
                }
            });
            final int i4 = 3;
            positiveButton.setNegativeButton(R.string.share_playlist_with_list, new DialogInterface.OnClickListener(this) { // from class: org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$ExternalSyntheticLambda5
                public final /* synthetic */ LocalPlaylistFragment f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i32) {
                    int i42 = i4;
                    LocalPlaylistFragment localPlaylistFragment = this.f$0;
                    switch (i42) {
                        case 0:
                            int i5 = LocalPlaylistFragment.$r8$clinit;
                            localPlaylistFragment.sharePlaylist(PlayListShareMode.WITH_TITLES);
                            return;
                        case 1:
                            if (localPlaylistFragment.isRewritingPlaylist) {
                                return;
                            }
                            localPlaylistFragment.isRewritingPlaylist = true;
                            localPlaylistFragment.showLoading();
                            Dispatcher dispatcher = localPlaylistFragment.playlistManager;
                            long longValue = localPlaylistFragment.playlistId.longValue();
                            PlaylistStreamDAO_Impl playlistStreamDAO_Impl = (PlaylistStreamDAO_Impl) dispatcher.runningSyncCalls;
                            Flowable createFlowable = Cookie.Companion.createFlowable(playlistStreamDAO_Impl.__db, true, new String[]{"streams", "playlist_stream_join", "stream_state"}, new PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1(longValue, playlistStreamDAO_Impl, 1));
                            IoScheduler ioScheduler = Schedulers.IO;
                            FlowableElementAtMaybe flowableElementAtMaybe = new FlowableElementAtMaybe(createFlowable.subscribeOn(ioScheduler));
                            CompositeDisposable compositeDisposable = localPlaylistFragment.disposables;
                            MaybeObserveOn subscribeOn = flowableElementAtMaybe.subscribeOn(ioScheduler);
                            Scheduler mainThread = AndroidSchedulers.mainThread();
                            MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new LocalPlaylistFragment$$ExternalSyntheticLambda0(localPlaylistFragment, 2), new LocalPlaylistFragment$$ExternalSyntheticLambda0(localPlaylistFragment, 3), Functions.EMPTY_ACTION);
                            try {
                                subscribeOn.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver, mainThread));
                                compositeDisposable.add(maybeCallbackObserver);
                                return;
                            } catch (NullPointerException e) {
                                throw e;
                            } catch (Throwable th) {
                                throw Owner.CC.m(th, "subscribeActual failed", th);
                            }
                        case 2:
                            int i6 = LocalPlaylistFragment.$r8$clinit;
                            localPlaylistFragment.sharePlaylist(PlayListShareMode.YOUTUBE_TEMP_PLAYLIST);
                            return;
                        default:
                            int i7 = LocalPlaylistFragment.$r8$clinit;
                            localPlaylistFragment.sharePlaylist(PlayListShareMode.JUST_URLS);
                            return;
                    }
                }
            }).show();
            return true;
        }
        if (menuItem.getItemId() == R.id.menu_item_rename_playlist) {
            createRenameDialog();
            return true;
        }
        if (menuItem.getItemId() == R.id.menu_item_remove_watched) {
            if (!this.isRewritingPlaylist) {
                CheckBox checkBox = new CheckBox(requireContext());
                checkBox.setText(R.string.remove_watched_popup_partially_watched_streams);
                LinearLayout linearLayout = new LinearLayout(requireContext());
                linearLayout.setOrientation(1);
                int dpToPx = DeviceUtils.dpToPx(requireContext(), 20);
                linearLayout.setPadding(dpToPx, dpToPx, dpToPx, 0);
                linearLayout.addView(checkBox, new LinearLayout.LayoutParams(-1, -2));
                AlertDialog.Builder builder2 = new AlertDialog.Builder(requireContext());
                builder2.setMessage(R.string.remove_watched_popup_warning);
                builder2.setTitle(R.string.remove_watched_popup_title);
                builder2.setView(linearLayout).setPositiveButton(R.string.yes, new LocalPlaylistFragment$$ExternalSyntheticLambda3(this, checkBox, i2)).setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(1)).show();
                return true;
            }
        } else {
            if (menuItem.getItemId() != R.id.menu_item_remove_duplicates) {
                return false;
            }
            if (!this.isRewritingPlaylist) {
                AlertDialog.Builder builder3 = new AlertDialog.Builder(getActivity());
                builder3.setTitle(R.string.remove_duplicates_title);
                builder3.setMessage(R.string.remove_duplicates_message);
                AlertDialog.Builder positiveButton2 = builder3.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener(this) { // from class: org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$ExternalSyntheticLambda5
                    public final /* synthetic */ LocalPlaylistFragment f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i32) {
                        int i42 = i2;
                        LocalPlaylistFragment localPlaylistFragment = this.f$0;
                        switch (i42) {
                            case 0:
                                int i5 = LocalPlaylistFragment.$r8$clinit;
                                localPlaylistFragment.sharePlaylist(PlayListShareMode.WITH_TITLES);
                                return;
                            case 1:
                                if (localPlaylistFragment.isRewritingPlaylist) {
                                    return;
                                }
                                localPlaylistFragment.isRewritingPlaylist = true;
                                localPlaylistFragment.showLoading();
                                Dispatcher dispatcher = localPlaylistFragment.playlistManager;
                                long longValue = localPlaylistFragment.playlistId.longValue();
                                PlaylistStreamDAO_Impl playlistStreamDAO_Impl = (PlaylistStreamDAO_Impl) dispatcher.runningSyncCalls;
                                Flowable createFlowable = Cookie.Companion.createFlowable(playlistStreamDAO_Impl.__db, true, new String[]{"streams", "playlist_stream_join", "stream_state"}, new PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1(longValue, playlistStreamDAO_Impl, 1));
                                IoScheduler ioScheduler = Schedulers.IO;
                                FlowableElementAtMaybe flowableElementAtMaybe = new FlowableElementAtMaybe(createFlowable.subscribeOn(ioScheduler));
                                CompositeDisposable compositeDisposable = localPlaylistFragment.disposables;
                                MaybeObserveOn subscribeOn = flowableElementAtMaybe.subscribeOn(ioScheduler);
                                Scheduler mainThread = AndroidSchedulers.mainThread();
                                MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new LocalPlaylistFragment$$ExternalSyntheticLambda0(localPlaylistFragment, 2), new LocalPlaylistFragment$$ExternalSyntheticLambda0(localPlaylistFragment, 3), Functions.EMPTY_ACTION);
                                try {
                                    subscribeOn.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver, mainThread));
                                    compositeDisposable.add(maybeCallbackObserver);
                                    return;
                                } catch (NullPointerException e) {
                                    throw e;
                                } catch (Throwable th) {
                                    throw Owner.CC.m(th, "subscribeActual failed", th);
                                }
                            case 2:
                                int i6 = LocalPlaylistFragment.$r8$clinit;
                                localPlaylistFragment.sharePlaylist(PlayListShareMode.YOUTUBE_TEMP_PLAYLIST);
                                return;
                            default:
                                int i7 = LocalPlaylistFragment.$r8$clinit;
                                localPlaylistFragment.sharePlaylist(PlayListShareMode.JUST_URLS);
                                return;
                        }
                    }
                });
                positiveButton2.setNeutralButton(R.string.cancel, null);
                positiveButton2.show();
            }
        }
        return true;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.itemsListState = this.itemsList.getLayoutManager().onSaveInstanceState();
        saveImmediate();
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment
    public final void resetFragment() {
        super.resetFragment();
        Subscription subscription = this.databaseSubscription;
        if (subscription != null) {
            subscription.cancel();
        }
    }

    @Override // org.schabi.newpipe.util.debounce.DebounceSavable
    public final void saveImmediate() {
        AtomicBoolean atomicBoolean;
        if (this.playlistManager == null || this.itemListAdapter == null || (atomicBoolean = this.isLoadingComplete) == null || this.debounceSaver == null || !atomicBoolean.get() || !((AtomicBoolean) this.debounceSaver.connections).get()) {
            return;
        }
        ArrayList arrayList = this.itemListAdapter.localItems;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            LocalItem localItem = (LocalItem) it.next();
            if (localItem instanceof PlaylistStreamEntry) {
                arrayList2.add(Long.valueOf(((PlaylistStreamEntry) localItem).streamId));
            }
        }
        Dispatcher dispatcher = this.playlistManager;
        long longValue = this.playlistId.longValue();
        dispatcher.getClass();
        ArrayList arrayList3 = new ArrayList(arrayList2.size());
        int i = 0;
        int i2 = 0;
        while (i2 < arrayList2.size()) {
            long j = longValue;
            arrayList3.add(new PlaylistStreamEntity(j, ((Long) arrayList2.get(i2)).longValue(), i2));
            i2++;
            longValue = j;
        }
        CompletableObserveOn observeOn = new CompletableFromAction(new LocalPlaylistManager$$ExternalSyntheticLambda1(dispatcher, longValue, arrayList3, 0), 2).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new LocalPlaylistFragment$$ExternalSyntheticLambda0(this, 5), new LocalPlaylistFragment$$ExternalSyntheticLambda0(this, i));
        observeOn.subscribe(callbackCompletableObserver);
        this.disposables.add(callbackCompletableObserver);
    }

    public final void setStreamCountAndOverallDuration(ArrayList arrayList) {
        if (this.activity == null || this.headerBinding == null) {
            return;
        }
        ((NewPipeTextView) this.headerBinding.accum).setText(Localization.concatenateStrings(Localization.localizeStreamCount(this.activity, arrayList.size()), Localization.getDurationString(Collection.EL.stream(arrayList).filter(new Player$$ExternalSyntheticLambda48(7)).map(new Player$$ExternalSyntheticLambda28(4)).map(new Player$$ExternalSyntheticLambda28(5)).mapToLong(new DownloadManager$$ExternalSyntheticLambda0(3)).sum(), true)));
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void setTitle(String str) {
        super.setTitle(str);
        Printer printer = this.headerBinding;
        if (printer != null) {
            ((NewPipeTextView) printer.settings).setText(str);
        }
    }

    public final void sharePlaylist(PlayListShareMode playListShareMode) {
        Context requireContext = requireContext();
        CompositeDisposable compositeDisposable = this.disposables;
        FlowableSubscribeOn playlistStreams = this.playlistManager.getPlaylistStreams(this.playlistId.longValue());
        LocalPlaylistFragment$$ExternalSyntheticLambda24 localPlaylistFragment$$ExternalSyntheticLambda24 = new LocalPlaylistFragment$$ExternalSyntheticLambda24(playListShareMode, requireContext, 2);
        Functions.verifyPositive(Log.LOG_LEVEL_OFF, "maxConcurrency");
        FlowableObserveOn observeOn = new FlowableObserveOn(playlistStreams, localPlaylistFragment$$ExternalSyntheticLambda24).observeOn(AndroidSchedulers.mainThread());
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(new LocalPlaylistFragment$$ExternalSyntheticLambda16(this, playListShareMode, requireContext), new LocalPlaylistFragment$$ExternalSyntheticLambda0(this, 4));
        observeOn.subscribe((FlowableSubscriber) lambdaSubscriber);
        compositeDisposable.add(lambdaSubscriber);
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void showLoading() {
        super.showLoading();
        Printer printer = this.headerBinding;
        if (printer != null) {
            AppKt.animate((RelativeLayout) printer.root, false, 200L);
            AppKt.animate((LinearLayout) this.playlistControlBinding.executorServiceOrNull, false, 200L);
        }
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void startLoading(boolean z) {
        int i = 1;
        super.startLoading(true);
        CompositeDisposable compositeDisposable = this.disposables;
        if (compositeDisposable != null) {
            compositeDisposable.clear();
        }
        RealConnectionPool realConnectionPool = this.debounceSaver;
        if (realConnectionPool != null) {
            this.disposables.add(realConnectionPool.getDebouncedSaver());
            ((AtomicBoolean) this.debounceSaver.connections).set(false);
        }
        this.isLoadingComplete.set(false);
        new FlowableOnBackpressureError(this.playlistManager.getPlaylistStreams(this.playlistId.longValue()), i).observeOn(AndroidSchedulers.mainThread()).subscribe(new AnonymousClass2());
    }

    public final void updateThumbnailUrl() {
        if (this.playlistManager.getIsPlaylistThumbnailPermanent(this.playlistId.longValue())) {
            return;
        }
        changeThumbnailStreamId(!this.itemListAdapter.localItems.isEmpty() ? ((PlaylistStreamEntry) this.itemListAdapter.localItems.get(0)).streamEntity.getUid() : -1L, false);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.local.playlist.LocalPlaylistFragment$2, reason: invalid class name */
    public final class AnonymousClass2 implements Subscriber, OnClickGesture {
        public /* synthetic */ AnonymousClass2() {
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public void drag(Object obj, RecyclerView.ViewHolder viewHolder) {
            ItemTouchHelper itemTouchHelper = LocalPlaylistFragment.this.itemTouchHelper;
            if (itemTouchHelper != null) {
                itemTouchHelper.startDrag(viewHolder);
            }
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public void held(Object obj) {
            LocalItem localItem = (LocalItem) obj;
            if (localItem instanceof PlaylistStreamEntry) {
                LocalPlaylistFragment localPlaylistFragment = LocalPlaylistFragment.this;
                PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) localItem;
                StreamInfoItem streamInfoItem = playlistStreamEntry.toStreamInfoItem();
                try {
                    Context context = localPlaylistFragment.getContext();
                    WebMReader.Segment segment = new WebMReader.Segment(localPlaylistFragment.getActivity(), context, localPlaylistFragment, streamInfoItem);
                    StreamDialogDefaultEntry streamDialogDefaultEntry = StreamDialogDefaultEntry.SET_AS_PLAYLIST_THUMBNAIL;
                    StreamDialogDefaultEntry streamDialogDefaultEntry2 = StreamDialogDefaultEntry.DELETE;
                    Stream.CC.of((Object[]) new StreamDialogDefaultEntry[]{streamDialogDefaultEntry, streamDialogDefaultEntry2}).forEach(new Player$$ExternalSyntheticLambda1(segment, 9));
                    segment.setAction(StreamDialogDefaultEntry.START_HERE_ON_BACKGROUND, new LocalPlaylistFragment$$ExternalSyntheticLambda16(localPlaylistFragment, context, playlistStreamEntry));
                    segment.setAction(streamDialogDefaultEntry, new LocalPlaylistFragment$$ExternalSyntheticLambda24(localPlaylistFragment, playlistStreamEntry, 1));
                    segment.setAction(streamDialogDefaultEntry2, new LocalPlaylistFragment$$ExternalSyntheticLambda24(localPlaylistFragment, playlistStreamEntry, 0));
                    segment.create().show();
                } catch (IllegalArgumentException e) {
                    WebMReader.Segment.reportErrorDuringInitialization(e, streamInfoItem);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            LocalPlaylistFragment.this.showError(new ErrorInfo(th, UserAction.REQUESTED_BOOKMARK, "Loading local playlist"));
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            List list = (List) obj;
            LocalPlaylistFragment localPlaylistFragment = LocalPlaylistFragment.this;
            RealConnectionPool realConnectionPool = localPlaylistFragment.debounceSaver;
            if (realConnectionPool == null || !((AtomicBoolean) realConnectionPool.connections).get()) {
                localPlaylistFragment.hideLoading();
                LocalItemListAdapter localItemListAdapter = localPlaylistFragment.itemListAdapter;
                if (localItemListAdapter != null) {
                    localItemListAdapter.clearStreamItemList();
                    if (list.isEmpty()) {
                        localPlaylistFragment.showEmptyState();
                    } else {
                        localPlaylistFragment.itemListAdapter.addItems(list);
                        if (localPlaylistFragment.itemsListState != null) {
                            localPlaylistFragment.itemsList.getLayoutManager().onRestoreInstanceState(localPlaylistFragment.itemsListState);
                            localPlaylistFragment.itemsListState = null;
                        }
                        localPlaylistFragment.setStreamCountAndOverallDuration(localPlaylistFragment.itemListAdapter.localItems);
                        AppKt.initPlaylistControlClickListener(localPlaylistFragment.activity, localPlaylistFragment.playlistControlBinding, localPlaylistFragment);
                        localPlaylistFragment.hideLoading();
                    }
                }
                localPlaylistFragment.isLoadingComplete.set(true);
            }
            Subscription subscription = localPlaylistFragment.databaseSubscription;
            if (subscription != null) {
                subscription.request(1L);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            LocalPlaylistFragment localPlaylistFragment = LocalPlaylistFragment.this;
            localPlaylistFragment.showLoading();
            localPlaylistFragment.isLoadingComplete.set(false);
            Subscription subscription2 = localPlaylistFragment.databaseSubscription;
            if (subscription2 != null) {
                subscription2.cancel();
            }
            localPlaylistFragment.databaseSubscription = subscription;
            subscription.request(1L);
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public void selected(Object obj) {
            LocalItem localItem = (LocalItem) obj;
            if (localItem instanceof PlaylistStreamEntry) {
                StreamEntity streamEntity = ((PlaylistStreamEntry) localItem).streamEntity;
                LocalPlaylistFragment localPlaylistFragment = LocalPlaylistFragment.this;
                SQLite.openVideoDetailFragment(localPlaylistFragment.requireContext(), localPlaylistFragment.getFM(), streamEntity.getServiceId(), streamEntity.getUrl(), streamEntity.getTitle(), null, false);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }
    }

    @Override // org.schabi.newpipe.fragments.list.playlist.PlaylistControlViewHolder
    public final PlayQueue getPlayQueue() {
        return getPlayQueue(0);
    }
}
