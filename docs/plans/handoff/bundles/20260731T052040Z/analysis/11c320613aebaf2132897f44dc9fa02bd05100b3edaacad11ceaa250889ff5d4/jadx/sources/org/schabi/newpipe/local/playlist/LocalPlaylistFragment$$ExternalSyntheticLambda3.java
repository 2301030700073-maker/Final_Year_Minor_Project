package org.schabi.newpipe.local.playlist;

import android.content.DialogInterface;
import android.util.Pair;
import android.widget.CheckBox;
import androidx.compose.ui.node.Owner;
import androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeMap;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeZipArray;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.ConnectionPool;
import okhttp3.Cookie;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.playlist.dao.PlaylistDAO_Impl;
import org.schabi.newpipe.database.playlist.model.PlaylistEntity;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.views.NewPipeEditText;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalPlaylistFragment$$ExternalSyntheticLambda3 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LocalPlaylistFragment f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ LocalPlaylistFragment$$ExternalSyntheticLambda3(LocalPlaylistFragment localPlaylistFragment, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = localPlaylistFragment;
        this.f$1 = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        Object obj = this.f$1;
        final LocalPlaylistFragment localPlaylistFragment = this.f$0;
        int i3 = 1;
        switch (i2) {
            case 0:
                int i4 = LocalPlaylistFragment.$r8$clinit;
                String obj2 = ((NewPipeEditText) ((TokenData) obj).builder).getText().toString();
                if (localPlaylistFragment.playlistManager == null) {
                    return;
                }
                localPlaylistFragment.name = obj2;
                localPlaylistFragment.setTitle(obj2);
                MaybeObserveOn modifyPlaylist = localPlaylistFragment.playlistManager.modifyPlaylist(localPlaylistFragment.playlistId.longValue(), -2L, obj2, false);
                Scheduler mainThread = AndroidSchedulers.mainThread();
                MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new FeedViewModel$$ExternalSyntheticLambda0(14), new LocalPlaylistFragment$$ExternalSyntheticLambda0(localPlaylistFragment, i3), Functions.EMPTY_ACTION);
                try {
                    modifyPlaylist.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver, mainThread));
                    localPlaylistFragment.disposables.add(maybeCallbackObserver);
                    return;
                } catch (NullPointerException e) {
                    throw e;
                } catch (Throwable th) {
                    throw Owner.CC.m(th, "subscribeActual failed", th);
                }
            default:
                int i5 = LocalPlaylistFragment.$r8$clinit;
                final boolean isChecked = ((CheckBox) obj).isChecked();
                if (localPlaylistFragment.isRewritingPlaylist) {
                    return;
                }
                localPlaylistFragment.isRewritingPlaylist = true;
                localPlaylistFragment.showLoading();
                final PlaylistHeaderBinding playlistHeaderBinding = new PlaylistHeaderBinding(localPlaylistFragment.getContext());
                StreamHistoryDAO_Impl streamHistoryDAO_Impl = (StreamHistoryDAO_Impl) playlistHeaderBinding.playlistDescription;
                Flowable createFlowable = Cookie.Companion.createFlowable(streamHistoryDAO_Impl.__db, false, new String[]{"streams", "stream_history"}, new StreamHistoryDAO_Impl$$ExternalSyntheticLambda0(streamHistoryDAO_Impl, 1));
                IoScheduler ioScheduler = Schedulers.IO;
                MaybeMap maybeMap = new MaybeMap(new FlowableElementAtMaybe(createFlowable.subscribeOn(ioScheduler)), new FeedViewModel$$ExternalSyntheticLambda0(15), 0);
                MaybeZipArray maybeZipArray = new MaybeZipArray(new MaybeSource[]{new FlowableElementAtMaybe(localPlaylistFragment.playlistManager.getPlaylistStreams(localPlaylistFragment.playlistId.longValue())), maybeMap}, new ConnectionPool(new BiFunction() { // from class: org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$ExternalSyntheticLambda19
                    @Override // io.reactivex.rxjava3.functions.BiFunction
                    public final Object apply(Object obj3, Object obj4) {
                        List list = (List) obj3;
                        List list2 = (List) obj4;
                        int i6 = LocalPlaylistFragment.$r8$clinit;
                        ArrayList arrayList = new ArrayList();
                        LocalPlaylistFragment localPlaylistFragment2 = LocalPlaylistFragment.this;
                        boolean isPlaylistThumbnailPermanent = localPlaylistFragment2.playlistManager.getIsPlaylistThumbnailPermanent(localPlaylistFragment2.playlistId.longValue());
                        List list3 = (List) new SingleAmb(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(playlistHeaderBinding, list, 8), 3).subscribeOn(Schedulers.IO).blockingGet();
                        boolean z = false;
                        for (int i7 = 0; i7 < list.size(); i7++) {
                            PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) list.get(i7);
                            StreamStateEntity streamStateEntity = (StreamStateEntity) list3.get(i7);
                            int binarySearch = Collections.binarySearch(list2, Long.valueOf(playlistStreamEntry.streamId));
                            long duration = playlistStreamEntry.toStreamInfoItem().getDuration();
                            if (binarySearch < 0 || streamStateEntity == null || !(isChecked || streamStateEntity.isFinished(duration))) {
                                arrayList.add(playlistStreamEntry);
                            } else if (!isPlaylistThumbnailPermanent && !z) {
                                if (((PlaylistEntity) ((List) ((PlaylistDAO_Impl) localPlaylistFragment2.playlistManager.runningAsyncCalls).getPlaylist(localPlaylistFragment2.playlistId.longValue()).blockingFirst()).get(0)).thumbnailStreamId == playlistStreamEntry.streamEntity.getUid()) {
                                    z = true;
                                }
                            }
                        }
                        return new Pair(arrayList, Boolean.valueOf(z));
                    }
                }, 15));
                CompositeDisposable compositeDisposable = localPlaylistFragment.disposables;
                MaybeObserveOn subscribeOn = maybeZipArray.subscribeOn(ioScheduler);
                Scheduler mainThread2 = AndroidSchedulers.mainThread();
                MaybeCallbackObserver maybeCallbackObserver2 = new MaybeCallbackObserver(new LocalPlaylistFragment$$ExternalSyntheticLambda0(localPlaylistFragment, 6), new LocalPlaylistFragment$$ExternalSyntheticLambda21(0, localPlaylistFragment, isChecked), Functions.EMPTY_ACTION);
                try {
                    subscribeOn.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver2, mainThread2));
                    compositeDisposable.add(maybeCallbackObserver2);
                    return;
                } catch (NullPointerException e2) {
                    throw e2;
                } catch (Throwable th2) {
                    throw Owner.CC.m(th2, "subscribeActual failed", th2);
                }
        }
    }
}
