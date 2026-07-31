package org.schabi.newpipe.local.bookmark;

import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.node.Owner;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import com.google.android.exoplayer2.C;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.CallbackCompletableObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureError;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.internal.connection.RealConnectionPool;
import okio.Options;
import org.jsoup.parser.TokenData;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.PlaylistLocalItem;
import org.schabi.newpipe.database.playlist.PlaylistMetadataEntry;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl;
import org.schabi.newpipe.database.playlist.model.PlaylistEntity;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.error.ErrorActivity$$ExternalSyntheticLambda4;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.info_list.ItemViewMode;
import org.schabi.newpipe.local.BaseLocalListFragment;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.holder.LocalBookmarkPlaylistItemHolder;
import org.schabi.newpipe.local.holder.RemoteBookmarkPlaylistItemHolder;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment;
import org.schabi.newpipe.local.playlist.LocalPlaylistManager$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.playlist.RemotePlaylistManager$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.OnClickGesture;
import org.schabi.newpipe.util.debounce.DebounceSavable;
import org.schabi.newpipe.views.NewPipeEditText;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BookmarkFragment extends BaseLocalListFragment<List<PlaylistLocalItem>, Void> implements DebounceSavable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Subscription databaseSubscription;
    public RealConnectionPool debounceSaver;
    public ArrayList deletedItems;
    public CompositeDisposable disposables = new CompositeDisposable();
    public AtomicBoolean isLoadingComplete;
    public ItemTouchHelper itemTouchHelper;
    Parcelable itemsListState;
    public Dispatcher localPlaylistManager;
    public TokenData remotePlaylistManager;

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.BaseFragment
    public final void initListeners() {
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.SimpleCallback(Options.Companion.getItemViewMode(requireContext()) == ItemViewMode.GRID ? 15 : 3) { // from class: org.schabi.newpipe.local.bookmark.BookmarkFragment.3
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int i, int i2, int i3, long j) {
                return Math.max(12, Math.abs(super.interpolateOutOfBoundsScroll(recyclerView, i, i2, i3, j))) * ((int) Math.signum(i2));
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                RealConnectionPool realConnectionPool;
                int i = BookmarkFragment.$r8$clinit;
                BookmarkFragment bookmarkFragment = BookmarkFragment.this;
                if (bookmarkFragment.itemListAdapter == null) {
                    return false;
                }
                if (viewHolder.getItemViewType() != viewHolder2.getItemViewType()) {
                    if (!(viewHolder instanceof LocalBookmarkPlaylistItemHolder) && !(viewHolder instanceof RemoteBookmarkPlaylistItemHolder)) {
                        return false;
                    }
                    if (!(viewHolder2 instanceof LocalBookmarkPlaylistItemHolder) && !(viewHolder2 instanceof RemoteBookmarkPlaylistItemHolder)) {
                        return false;
                    }
                }
                boolean swapItems = bookmarkFragment.itemListAdapter.swapItems(viewHolder.getBindingAdapterPosition(), viewHolder2.getBindingAdapterPosition());
                if (swapItems && (realConnectionPool = bookmarkFragment.debounceSaver) != null) {
                    realConnectionPool.setHasChangesToSave();
                }
                return swapItems;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final void onSwiped(RecyclerView.ViewHolder viewHolder) {
            }
        });
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this.itemsList);
        this.itemListAdapter.localItemBuilder.builder = new AnonymousClass2();
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        super.initViews(view, bundle);
        this.itemListAdapter.useItemHandle = true;
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AppCompatActivity appCompatActivity = this.activity;
        if (appCompatActivity == null) {
            return;
        }
        AppDatabase appKt = AppKt.getInstance(appCompatActivity);
        this.localPlaylistManager = new Dispatcher(appKt);
        this.remotePlaylistManager = new TokenData(appKt);
        this.disposables = new CompositeDisposable();
        this.isLoadingComplete = new AtomicBoolean();
        this.debounceSaver = new RealConnectionPool(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, this);
        this.deletedItems = new ArrayList();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (!this.useAsFrontPage) {
            setTitle(this.activity.getString(R.string.tab_bookmarks));
        }
        return layoutInflater.inflate(R.layout.fragment_bookmarks, viewGroup, false);
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
        this.disposables = null;
        this.localPlaylistManager = null;
        this.remotePlaylistManager = null;
        this.itemsListState = null;
        this.isLoadingComplete = null;
        this.deletedItems = null;
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        CompositeDisposable compositeDisposable = this.disposables;
        if (compositeDisposable != null) {
            compositeDisposable.clear();
        }
        Subscription subscription = this.databaseSubscription;
        if (subscription != null) {
            subscription.cancel();
        }
        this.databaseSubscription = null;
        this.itemTouchHelper = null;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.itemsListState = this.itemsList.getLayoutManager().onSaveInstanceState();
        saveImmediate();
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        AppCompatActivity appCompatActivity = this.activity;
        if (appCompatActivity != null) {
            setTitle(appCompatActivity.getString(R.string.tab_bookmarks));
        }
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment
    public final void resetFragment() {
        super.resetFragment();
        CompositeDisposable compositeDisposable = this.disposables;
        if (compositeDisposable != null) {
            compositeDisposable.clear();
        }
    }

    @Override // org.schabi.newpipe.util.debounce.DebounceSavable
    public final void saveImmediate() {
        AtomicBoolean atomicBoolean;
        if (this.itemListAdapter == null || (atomicBoolean = this.isLoadingComplete) == null || this.debounceSaver == null || !atomicBoolean.get() || !((AtomicBoolean) this.debounceSaver.connections).get()) {
            return;
        }
        ArrayList arrayList = this.itemListAdapter.localItems;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            LocalItem localItem = (LocalItem) arrayList.get(i2);
            if (localItem instanceof PlaylistMetadataEntry) {
                PlaylistMetadataEntry playlistMetadataEntry = (PlaylistMetadataEntry) localItem;
                long j = i2;
                if (playlistMetadataEntry.getDisplayIndex().longValue() != j) {
                    playlistMetadataEntry.setDisplayIndex(Long.valueOf(j));
                    arrayList2.add(playlistMetadataEntry);
                }
            }
            if (localItem instanceof PlaylistRemoteEntity) {
                PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) localItem;
                long j2 = i2;
                if (playlistRemoteEntity.displayIndex != j2) {
                    playlistRemoteEntity.displayIndex = j2;
                    arrayList4.add(playlistRemoteEntity);
                }
            }
        }
        Iterator it = this.deletedItems.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            if (((LocalItem.LocalItemType) pair.second).equals(LocalItem.LocalItemType.PLAYLIST_LOCAL_ITEM)) {
                arrayList3.add((Long) pair.first);
            } else if (((LocalItem.LocalItemType) pair.second).equals(LocalItem.LocalItemType.PLAYLIST_REMOTE_ITEM)) {
                arrayList5.add((Long) pair.first);
            }
        }
        this.deletedItems.clear();
        CompositeDisposable compositeDisposable = this.disposables;
        Dispatcher dispatcher = this.localPlaylistManager;
        dispatcher.getClass();
        ArrayList arrayList6 = new ArrayList(arrayList2.size());
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            PlaylistMetadataEntry playlistMetadataEntry2 = (PlaylistMetadataEntry) it2.next();
            playlistMetadataEntry2.getClass();
            long uid = playlistMetadataEntry2.getUid();
            String orderingName = playlistMetadataEntry2.getOrderingName();
            Boolean isThumbnailPermanent = playlistMetadataEntry2.isThumbnailPermanent();
            isThumbnailPermanent.getClass();
            boolean booleanValue = isThumbnailPermanent.booleanValue();
            Long thumbnailStreamId = playlistMetadataEntry2.getThumbnailStreamId();
            thumbnailStreamId.getClass();
            long longValue = thumbnailStreamId.longValue();
            Long displayIndex = playlistMetadataEntry2.getDisplayIndex();
            displayIndex.getClass();
            arrayList6.add(new PlaylistEntity(uid, orderingName, booleanValue, longValue, displayIndex.longValue()));
        }
        LocalPlaylistManager$$ExternalSyntheticLambda0 localPlaylistManager$$ExternalSyntheticLambda0 = new LocalPlaylistManager$$ExternalSyntheticLambda0(dispatcher, arrayList3, arrayList6, i);
        int i3 = 2;
        CompletableFromAction completableFromAction = new CompletableFromAction(localPlaylistManager$$ExternalSyntheticLambda0, i3);
        IoScheduler ioScheduler = Schedulers.IO;
        CompletableObserveOn subscribeOn = completableFromAction.subscribeOn(ioScheduler);
        TokenData tokenData = this.remotePlaylistManager;
        tokenData.getClass();
        CompletableObserveOn observeOn = new CompletableFromAction(new CompletableSource[]{subscribeOn, new CompletableFromAction(new RemotePlaylistManager$$ExternalSyntheticLambda0(tokenData, arrayList5, arrayList4), i3).subscribeOn(ioScheduler)}, 3).observeOn(AndroidSchedulers.mainThread());
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new BookmarkFragment$$ExternalSyntheticLambda0(this, 1), new BookmarkFragment$$ExternalSyntheticLambda0(this, 0));
        observeOn.subscribe(callbackCompletableObserver);
        compositeDisposable.add(callbackCompletableObserver);
    }

    public final void showDeleteDialog(String str, PlaylistLocalItem playlistLocalItem) {
        AppCompatActivity appCompatActivity = this.activity;
        if (appCompatActivity == null || this.disposables == null) {
            return;
        }
        AlertDialog.Builder title = new AlertDialog.Builder(appCompatActivity).setTitle(str);
        title.setMessage(R.string.delete_playlist_prompt);
        title.P.mCancelable = true;
        title.setPositiveButton(R.string.delete, new FeedFragment$$ExternalSyntheticLambda9(this, playlistLocalItem, 5)).setNegativeButton(R.string.cancel, null).show();
    }

    @Override // org.schabi.newpipe.local.BaseLocalListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void startLoading(boolean z) {
        int i = 1;
        super.startLoading(true);
        RealConnectionPool realConnectionPool = this.debounceSaver;
        if (realConnectionPool != null) {
            this.disposables.add(realConnectionPool.getDebouncedSaver());
            ((AtomicBoolean) this.debounceSaver.connections).set(false);
        }
        this.isLoadingComplete.set(false);
        Dispatcher dispatcher = this.localPlaylistManager;
        TokenData tokenData = this.remotePlaylistManager;
        Flowable createFlowable = Cookie.Companion.createFlowable(((PlaylistStreamDAO_Impl) dispatcher.runningSyncCalls).__db, true, new String[]{"streams", "playlists", "playlist_stream_join"}, new FeedFragment$$ExternalSyntheticLambda10(3));
        IoScheduler ioScheduler = Schedulers.IO;
        new FlowableOnBackpressureError(Flowable.combineLatest(createFlowable.subscribeOn(ioScheduler), Cookie.Companion.createFlowable(((PlaylistRemoteDAO_Impl) tokenData.builder).__db, false, new String[]{"remote_playlists"}, new FeedFragment$$ExternalSyntheticLambda10(2)).subscribeOn(ioScheduler), new FeedViewModel$$ExternalSyntheticLambda0(10)), i).observeOn(AndroidSchedulers.mainThread()).subscribe(new AnonymousClass2());
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.local.bookmark.BookmarkFragment$2, reason: invalid class name */
    public final class AnonymousClass2 implements Subscriber, OnClickGesture {
        public /* synthetic */ AnonymousClass2() {
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public void drag(Object obj, RecyclerView.ViewHolder viewHolder) {
            ItemTouchHelper itemTouchHelper = BookmarkFragment.this.itemTouchHelper;
            if (itemTouchHelper != null) {
                itemTouchHelper.startDrag(viewHolder);
            }
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public void held(Object obj) {
            LocalItem localItem = (LocalItem) obj;
            boolean z = localItem instanceof PlaylistMetadataEntry;
            final BookmarkFragment bookmarkFragment = BookmarkFragment.this;
            if (!z) {
                if (localItem instanceof PlaylistRemoteEntity) {
                    PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) localItem;
                    int i = BookmarkFragment.$r8$clinit;
                    bookmarkFragment.showDeleteDialog(playlistRemoteEntity.orderingName, playlistRemoteEntity);
                    return;
                }
                return;
            }
            final PlaylistMetadataEntry playlistMetadataEntry = (PlaylistMetadataEntry) localItem;
            int i2 = BookmarkFragment.$r8$clinit;
            final String string = bookmarkFragment.getString(R.string.rename);
            final String string2 = bookmarkFragment.getString(R.string.delete);
            final String string3 = bookmarkFragment.getString(R.string.unset_playlist_thumbnail);
            final boolean isPlaylistThumbnailPermanent = bookmarkFragment.localPlaylistManager.getIsPlaylistThumbnailPermanent(playlistMetadataEntry.getUid());
            final ArrayList arrayList = new ArrayList();
            arrayList.add(string);
            arrayList.add(string2);
            if (isPlaylistThumbnailPermanent) {
                arrayList.add(string3);
            }
            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: org.schabi.newpipe.local.bookmark.BookmarkFragment$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    int i4 = BookmarkFragment.$r8$clinit;
                    ArrayList arrayList2 = arrayList;
                    boolean equals = ((String) arrayList2.get(i3)).equals(string);
                    BookmarkFragment bookmarkFragment2 = BookmarkFragment.this;
                    PlaylistMetadataEntry playlistMetadataEntry2 = playlistMetadataEntry;
                    if (equals) {
                        TokenData inflate = TokenData.inflate(bookmarkFragment2.getLayoutInflater());
                        NewPipeEditText newPipeEditText = (NewPipeEditText) inflate.builder;
                        newPipeEditText.setHint(R.string.name);
                        newPipeEditText.setInputType(1);
                        newPipeEditText.setText(playlistMetadataEntry2.getOrderingName());
                        new AlertDialog.Builder(bookmarkFragment2.activity).setView((RelativeLayout) inflate.value).setPositiveButton(R.string.rename_playlist, new ErrorActivity$$ExternalSyntheticLambda4(2, bookmarkFragment2, playlistMetadataEntry2, inflate)).setNegativeButton(R.string.cancel, null).show();
                        return;
                    }
                    if (((String) arrayList2.get(i3)).equals(string2)) {
                        bookmarkFragment2.showDeleteDialog(playlistMetadataEntry2.getOrderingName(), playlistMetadataEntry2);
                        return;
                    }
                    if (isPlaylistThumbnailPermanent && ((String) arrayList2.get(i3)).equals(string3)) {
                        long longValue = ((Long) Cookie.Companion.createFlowable(((PlaylistStreamDAO_Impl) bookmarkFragment2.localPlaylistManager.runningSyncCalls).__db, false, new String[]{"streams", "playlist_stream_join"}, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(playlistMetadataEntry2.getUid(), 13)).blockingFirst()).longValue();
                        if (longValue < 0) {
                            longValue = -1;
                        }
                        try {
                            bookmarkFragment2.localPlaylistManager.modifyPlaylist(playlistMetadataEntry2.getUid(), longValue, null, false).subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(new MaybeCallbackObserver(Functions.EMPTY_CONSUMER, Functions.ON_ERROR_MISSING, Functions.EMPTY_ACTION), AndroidSchedulers.mainThread()));
                        } catch (NullPointerException e) {
                            throw e;
                        } catch (Throwable th) {
                            throw Owner.CC.m(th, "subscribeActual failed", th);
                        }
                    }
                }
            };
            AlertDialog.Builder builder = new AlertDialog.Builder(bookmarkFragment.activity);
            CharSequence[] charSequenceArr = (CharSequence[]) arrayList.toArray(new String[0]);
            AlertController.AlertParams alertParams = builder.P;
            alertParams.mItems = charSequenceArr;
            alertParams.mOnClickListener = onClickListener;
            builder.show();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            BookmarkFragment.this.showError(new ErrorInfo(th, UserAction.REQUESTED_BOOKMARK, "Loading playlists"));
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            List list = (List) obj;
            BookmarkFragment bookmarkFragment = BookmarkFragment.this;
            RealConnectionPool realConnectionPool = bookmarkFragment.debounceSaver;
            if (realConnectionPool == null || !((AtomicBoolean) realConnectionPool.connections).get()) {
                bookmarkFragment.hideLoading();
                bookmarkFragment.itemListAdapter.clearStreamItemList();
                if (list.isEmpty()) {
                    bookmarkFragment.showEmptyState();
                } else {
                    bookmarkFragment.itemListAdapter.addItems(list);
                    if (bookmarkFragment.itemsListState != null) {
                        bookmarkFragment.itemsList.getLayoutManager().onRestoreInstanceState(bookmarkFragment.itemsListState);
                        bookmarkFragment.itemsListState = null;
                    }
                    bookmarkFragment.hideLoading();
                }
                bookmarkFragment.isLoadingComplete.set(true);
            }
            Subscription subscription = bookmarkFragment.databaseSubscription;
            if (subscription != null) {
                subscription.request(1L);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            BookmarkFragment bookmarkFragment = BookmarkFragment.this;
            bookmarkFragment.showLoading();
            bookmarkFragment.isLoadingComplete.set(false);
            Subscription subscription2 = bookmarkFragment.databaseSubscription;
            if (subscription2 != null) {
                subscription2.cancel();
            }
            bookmarkFragment.databaseSubscription = subscription;
            subscription.request(1L);
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public void selected(Object obj) {
            LocalItem localItem = (LocalItem) obj;
            int i = BookmarkFragment.$r8$clinit;
            FragmentManager fm = BookmarkFragment.this.getFM();
            if (!(localItem instanceof PlaylistMetadataEntry)) {
                if (localItem instanceof PlaylistRemoteEntity) {
                    PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) localItem;
                    SQLite.openPlaylistFragment(fm, playlistRemoteEntity.serviceId, playlistRemoteEntity.url, playlistRemoteEntity.orderingName);
                    return;
                }
                return;
            }
            PlaylistMetadataEntry playlistMetadataEntry = (PlaylistMetadataEntry) localItem;
            long uid = playlistMetadataEntry.getUid();
            String orderingName = playlistMetadataEntry.getOrderingName();
            BackStackRecord defaultTransaction = SQLite.defaultTransaction(fm);
            if (orderingName == null) {
                orderingName = "";
            }
            defaultTransaction.replace(R.id.fragment_holder, LocalPlaylistFragment.getInstance(orderingName, uid), null);
            defaultTransaction.addToBackStack(null);
            defaultTransaction.commit();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }
    }
}
