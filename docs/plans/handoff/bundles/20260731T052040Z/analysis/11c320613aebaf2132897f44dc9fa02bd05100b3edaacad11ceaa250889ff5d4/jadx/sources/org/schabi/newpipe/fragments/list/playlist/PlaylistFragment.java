package org.schabi.newpipe.fragments.list.playlist;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.compose.ui.node.Owner;
import androidx.room.util.DBUtil;
import androidx.transition.Transition;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.RunnableDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleDoFinally$DoFinallyObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import okhttp3.Dispatcher;
import okio.Okio;
import okio.Options;
import org.jsoup.parser.TokenData;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;
import org.schabi.newpipe.fragments.list.BaseListInfoFragment;
import org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.local.feed.FeedDatabaseManager$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda38;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlaylistPlayQueue;
import org.schabi.newpipe.settings.SettingsActivity;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda5;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.views.NewPipeTextView;
import us.shandian.giga.service.DownloadManager$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class PlaylistFragment extends BaseListInfoFragment<StreamInfoItem, PlaylistInfo> implements PlaylistControlViewHolder {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Subscription bookmarkReactor;
    public CompositeDisposable disposables;
    public PlaylistHeaderBinding headerBinding;
    public AtomicBoolean isBookmarkButtonReady;
    public MenuItem playlistBookmarkButton;
    public Dispatcher playlistControlBinding;
    public PlaylistRemoteEntity playlistEntity;
    public long playlistOverallDurationSeconds;
    public TokenData remotePlaylistManager;
    public long streamCount;

    public PlaylistFragment() {
        super(UserAction.REQUESTED_PLAYLIST);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final Supplier getListHeaderSupplier() {
        View inflate = this.activity.getLayoutInflater().inflate(R.layout.playlist_header, (ViewGroup) this.itemsList, false);
        int i = R.id.playlist_control;
        View findChildViewById = Options.Companion.findChildViewById(R.id.playlist_control, inflate);
        if (findChildViewById != null) {
            Dispatcher bind = Dispatcher.bind(findChildViewById);
            i = R.id.playlist_description;
            NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.playlist_description, inflate);
            if (newPipeTextView != null) {
                i = R.id.playlist_description_read_more;
                NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.playlist_description_read_more, inflate);
                if (newPipeTextView2 != null) {
                    i = R.id.playlist_meta;
                    if (((RelativeLayout) Options.Companion.findChildViewById(R.id.playlist_meta, inflate)) != null) {
                        i = R.id.playlist_stream_count;
                        NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.playlist_stream_count, inflate);
                        if (newPipeTextView3 != null) {
                            i = R.id.playlist_title_view;
                            NewPipeTextView newPipeTextView4 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.playlist_title_view, inflate);
                            if (newPipeTextView4 != null) {
                                i = R.id.uploader_avatar_view;
                                ShapeableImageView shapeableImageView = (ShapeableImageView) Options.Companion.findChildViewById(R.id.uploader_avatar_view, inflate);
                                if (shapeableImageView != null) {
                                    i = R.id.uploader_layout;
                                    RelativeLayout relativeLayout = (RelativeLayout) Options.Companion.findChildViewById(R.id.uploader_layout, inflate);
                                    if (relativeLayout != null) {
                                        i = R.id.uploader_name;
                                        NewPipeTextView newPipeTextView5 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.uploader_name, inflate);
                                        if (newPipeTextView5 != null) {
                                            PlaylistHeaderBinding playlistHeaderBinding = new PlaylistHeaderBinding((RelativeLayout) inflate, bind, newPipeTextView, newPipeTextView2, newPipeTextView3, newPipeTextView4, shapeableImageView, relativeLayout, newPipeTextView5);
                                            this.headerBinding = playlistHeaderBinding;
                                            this.playlistControlBinding = bind;
                                            return new Player$$ExternalSyntheticLambda38(playlistHeaderBinding, 3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // org.schabi.newpipe.fragments.list.playlist.PlaylistControlViewHolder
    public final PlayQueue getPlayQueue() {
        return getPlayQueue$1(0);
    }

    public final PlaylistPlayQueue getPlayQueue$1(int i) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.infoListAdapter.infoItemList.iterator();
        while (it.hasNext()) {
            InfoItem infoItem = (InfoItem) it.next();
            if (infoItem instanceof StreamInfoItem) {
                arrayList.add((StreamInfoItem) infoItem);
            }
        }
        return new PlaylistPlayQueue(((PlaylistInfo) this.currentInfo).getServiceId(), ((PlaylistInfo) this.currentInfo).getUrl(), ((PlaylistInfo) this.currentInfo).getNextPage(), arrayList, i);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final void handleNextItems(ListExtractor.InfoItemsPage infoItemsPage) {
        super.handleNextItems(infoItemsPage);
        setStreamCountAndOverallDuration(infoItemsPage.itemsList, !Page.isValid(infoItemsPage.nextPage));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x01b9  */
    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handleResult(org.schabi.newpipe.extractor.ListInfo r17) {
        /*
            Method dump skipped, instructions count: 567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.fragments.list.playlist.PlaylistFragment.handleResult(org.schabi.newpipe.extractor.ListInfo):void");
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment, org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        super.initViews(view, bundle);
        this.infoListAdapter.useMiniVariant = true;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final SingleAmb loadMoreItemsLogic() {
        int i = this.serviceId;
        String str = this.url;
        Page page = this.currentNextPage;
        ExtractorHelper.checkServiceId(i);
        return new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda5(i, str, page, 1), 3);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final Single loadResult(boolean z) {
        return ExtractorHelper.getPlaylistInfo(this.serviceId, this.url, z);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.disposables = new CompositeDisposable();
        this.isBookmarkButtonReady = new AtomicBoolean(false);
        this.remotePlaylistManager = new TokenData(AppKt.getInstance(requireContext()));
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.menu_playlist, menu);
        this.playlistBookmarkButton = menu.findItem(R.id.menu_item_bookmark);
        updateBookmarkButtons();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_playlist, viewGroup, false);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment, org.schabi.newpipe.fragments.list.BaseListFragment, androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        CompositeDisposable compositeDisposable = this.disposables;
        if (compositeDisposable != null) {
            compositeDisposable.dispose();
        }
        this.disposables = null;
        this.remotePlaylistManager = null;
        this.playlistEntity = null;
        this.isBookmarkButtonReady = null;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.headerBinding = null;
        this.playlistControlBinding = null;
        super.onDestroyView();
        AtomicBoolean atomicBoolean = this.isBookmarkButtonReady;
        if (atomicBoolean != null) {
            atomicBoolean.set(false);
        }
        CompositeDisposable compositeDisposable = this.disposables;
        if (compositeDisposable != null) {
            compositeDisposable.clear();
        }
        Subscription subscription = this.bookmarkReactor;
        if (subscription != null) {
            subscription.cancel();
        }
        this.bookmarkReactor = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver] */
    /* JADX WARN: Type inference failed for: r6v1, types: [io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver] */
    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        final TokenData tokenData;
        RunnableDisposable runnableDisposable;
        int itemId = menuItem.getItemId();
        int i = 1;
        if (itemId == R.id.action_settings) {
            Context requireContext = requireContext();
            requireContext.startActivity(new Intent(requireContext, (Class<?>) SettingsActivity.class));
        } else if (itemId == R.id.menu_item_openInBrowser) {
            Transition.Impl26.openUrlInBrowser(requireContext(), this.url);
        } else if (itemId == R.id.menu_item_share) {
            Context requireContext2 = requireContext();
            String str = this.name;
            String str2 = this.url;
            ListInfo listInfo = this.currentInfo;
            Transition.Impl26.shareText(requireContext2, str, str2, listInfo == null ? Collections.EMPTY_LIST : ((PlaylistInfo) listInfo).getThumbnails());
        } else if (itemId == R.id.menu_item_bookmark) {
            AtomicBoolean atomicBoolean = this.isBookmarkButtonReady;
            if (atomicBoolean != null && atomicBoolean.get() && (tokenData = this.remotePlaylistManager) != null) {
                ListInfo listInfo2 = this.currentInfo;
                if (listInfo2 == null || this.playlistEntity != null) {
                    PlaylistRemoteEntity playlistRemoteEntity = this.playlistEntity;
                    if (playlistRemoteEntity != null) {
                        SingleObserveOn subscribeOn = new SingleAmb(new FeedDatabaseManager$$ExternalSyntheticLambda1(tokenData, playlistRemoteEntity.uid, i), 3).subscribeOn(Schedulers.IO);
                        Scheduler mainThread = AndroidSchedulers.mainThread();
                        PlaylistFragment$$ExternalSyntheticLambda11 playlistFragment$$ExternalSyntheticLambda11 = new PlaylistFragment$$ExternalSyntheticLambda11(this, 1);
                        ?? consumerSingleObserver = new ConsumerSingleObserver(new Utils$$ExternalSyntheticBUOutline0(19), new PlaylistFragment$$ExternalSyntheticLambda11(this, 2));
                        try {
                            try {
                                subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(new SingleDoFinally$DoFinallyObserver(consumerSingleObserver, playlistFragment$$ExternalSyntheticLambda11), mainThread));
                                runnableDisposable = consumerSingleObserver;
                            } catch (NullPointerException e) {
                                throw e;
                            } catch (Throwable th) {
                                AppKt.throwIfFatal(th);
                                NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
                                nullPointerException.initCause(th);
                                throw nullPointerException;
                            }
                        } catch (NullPointerException e2) {
                            throw e2;
                        } catch (Throwable th2) {
                            throw Owner.CC.m(th2, "subscribeActual failed", th2);
                        }
                    } else {
                        runnableDisposable = new RunnableDisposable(Functions.EMPTY_RUNNABLE);
                    }
                } else {
                    final PlaylistInfo playlistInfo = (PlaylistInfo) listInfo2;
                    SingleObserveOn subscribeOn2 = new SingleAmb(new Callable() { // from class: org.schabi.newpipe.local.playlist.RemotePlaylistManager$$ExternalSyntheticLambda4
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            PlaylistRemoteEntity playlistRemoteEntity2 = new PlaylistRemoteEntity(PlaylistInfo.this);
                            PlaylistRemoteDAO_Impl playlistRemoteDAO_Impl = (PlaylistRemoteDAO_Impl) tokenData.builder;
                            playlistRemoteDAO_Impl.getClass();
                            return Long.valueOf(((Number) DBUtil.performBlocking(playlistRemoteDAO_Impl.__db, false, true, new PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2(playlistRemoteDAO_Impl, playlistRemoteEntity2, 1))).longValue());
                        }
                    }, 3).subscribeOn(Schedulers.IO);
                    Scheduler mainThread2 = AndroidSchedulers.mainThread();
                    ?? consumerSingleObserver2 = new ConsumerSingleObserver(new Utils$$ExternalSyntheticBUOutline0(18), new PlaylistFragment$$ExternalSyntheticLambda11(this, 0));
                    try {
                        subscribeOn2.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver2, mainThread2));
                        runnableDisposable = consumerSingleObserver2;
                    } catch (NullPointerException e3) {
                        throw e3;
                    } catch (Throwable th3) {
                        throw Owner.CC.m(th3, "subscribeActual failed", th3);
                    }
                }
                this.disposables.add(runnableDisposable);
            }
        } else {
            if (itemId != R.id.menu_item_append_playlist) {
                return false;
            }
            if (this.currentInfo != null) {
                this.disposables.add(PlaylistDialog.createCorrespondingDialog(getContext(), (List) Collection.EL.stream(getPlayQueue$1(0).getStreams()).map(new Utils$$ExternalSyntheticLambda1(28)).collect(Collectors.toList()), new PlaylistFragment$$ExternalSyntheticLambda1(this, i)));
            }
        }
        return true;
    }

    public final void setStreamCountAndOverallDuration(List list, boolean z) {
        if (this.activity == null || this.headerBinding == null) {
            return;
        }
        this.playlistOverallDurationSeconds = Collection.EL.stream(list).mapToLong(new DownloadManager$$ExternalSyntheticLambda0(1)).sum() + this.playlistOverallDurationSeconds;
        ((NewPipeTextView) this.headerBinding.playlistStreamCount).setText(Localization.concatenateStrings(Localization.localizeStreamCount(this.activity, this.streamCount), Localization.getDurationString(this.playlistOverallDurationSeconds, z)));
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void setTitle(String str) {
        super.setTitle(str);
        PlaylistHeaderBinding playlistHeaderBinding = this.headerBinding;
        if (playlistHeaderBinding != null) {
            ((NewPipeTextView) playlistHeaderBinding.playlistTitleView).setText(str);
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final void showInfoItemDialog(StreamInfoItem streamInfoItem) {
        Context context = getContext();
        try {
            WebMReader.Segment segment = new WebMReader.Segment(getActivity(), context, this, streamInfoItem);
            segment.setAction(StreamDialogDefaultEntry.START_HERE_ON_BACKGROUND, new RxConvertKt$$ExternalSyntheticLambda0(this, context, 21));
            segment.create().show();
        } catch (IllegalArgumentException e) {
            WebMReader.Segment.reportErrorDuringInitialization(e, streamInfoItem);
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void showLoading() {
        super.showLoading();
        AppKt.animate((RelativeLayout) this.headerBinding.rootView, false, 200L);
        AppKt.animateHideRecyclerViewAllowingScrolling(this.itemsList);
        Okio.getRequestManager((ShapeableImageView) this.headerBinding.uploaderAvatarView).dispose();
        AppKt.animate$default((RelativeLayout) this.headerBinding.uploaderLayout, false, 200L, null, 0L, null, 28);
    }

    public final void updateBookmarkButtons() {
        MenuItem menuItem = this.playlistBookmarkButton;
        if (menuItem == null || this.activity == null) {
            return;
        }
        PlaylistRemoteEntity playlistRemoteEntity = this.playlistEntity;
        int i = playlistRemoteEntity == null ? R.drawable.ic_playlist_add : R.drawable.ic_playlist_add_check;
        int i2 = playlistRemoteEntity == null ? R.string.bookmark_playlist : R.string.unbookmark_playlist;
        menuItem.setIcon(i);
        this.playlistBookmarkButton.setTitle(i2);
    }
}
