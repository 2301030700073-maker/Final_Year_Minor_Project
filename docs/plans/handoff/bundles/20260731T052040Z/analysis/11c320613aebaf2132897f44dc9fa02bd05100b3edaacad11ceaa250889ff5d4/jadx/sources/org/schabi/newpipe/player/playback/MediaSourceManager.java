package org.schabi.newpipe.player.playback;

import android.os.Handler;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.ExoPlayer;
import com.jakewharton.rxbinding4.view.ViewClickObservable;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.observable.ObservableEmpty;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableInterval;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableScalarXMap$ScalarXMapObservable;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.internal.operators.single.SingleOnErrorReturn;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.util.OpenHashSet;
import io.reactivex.rxjava3.operators.ScalarSupplier;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Path;
import org.jsoup.parser.TokenData;
import org.mozilla.javascript.Token;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.mediasource.ManagedMediaSource;
import org.schabi.newpipe.player.mediasource.ManagedMediaSourcePlaylist;
import org.schabi.newpipe.player.mediasource.PlaceholderMediaSource;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.playqueue.PlayQueueItem$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class MediaSourceManager {
    public final LambdaObserver debouncedLoader;
    public final PublishSubject debouncedSignal;
    public final AtomicBoolean isBlocked;
    public final CompositeDisposable loaderReactor;
    public final Set loadingItems;
    public final PlayQueue playQueue;
    public Subscription playQueueReactor;
    public final Player playbackListener;
    public final long playbackNearEndGapMillis;
    public ManagedMediaSourcePlaylist playlist;
    public final Handler removeMediaSourceHandler = new Handler();

    /* JADX WARN: Multi-variable type inference failed */
    public MediaSourceManager(Player player, PlayQueue playQueue) {
        Observable observableFlatMap;
        if (playQueue.broadcastReceiver == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Play Queue has not been initialized.");
            throw null;
        }
        this.playbackListener = player;
        this.playQueue = playQueue;
        this.playbackNearEndGapMillis = 30000L;
        Scheduler mainThread = AndroidSchedulers.mainThread();
        Objects.requireNonNull(TimeUnit.MILLISECONDS, "unit is null");
        ObservableMap observableMap = new ObservableMap(new ObservableInterval(Math.max(0L, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS), Math.max(0L, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS), mainThread), new MediaSourceManager$$ExternalSyntheticLambda0(this), 1);
        PublishSubject publishSubject = new PublishSubject();
        this.debouncedSignal = publishSubject;
        ViewClickObservable viewClickObservable = new ViewClickObservable(new Observable[]{publishSubject, observableMap}, 3);
        Path.Companion companion = Functions.IDENTITY;
        int i = Flowable.BUFFER_SIZE;
        Functions.verifyPositive(2, "maxConcurrency");
        Functions.verifyPositive(i, "bufferSize");
        if (viewClickObservable instanceof ScalarSupplier) {
            Object obj = ((ScalarSupplier) viewClickObservable).get();
            observableFlatMap = obj == null ? ObservableEmpty.INSTANCE : new ObservableScalarXMap$ScalarXMapObservable(obj, companion);
        } else {
            observableFlatMap = new ObservableFlatMap(viewClickObservable, i, 0);
        }
        ObservableObserveOn observeOn = observableFlatMap.debounce(400L).subscribeOn(Schedulers.SINGLE).observeOn(AndroidSchedulers.mainThread());
        LambdaObserver lambdaObserver = new LambdaObserver(new MediaSourceManager$$ExternalSyntheticLambda0(this), Functions.ON_ERROR_MISSING);
        observeOn.subscribe(lambdaObserver);
        this.debouncedLoader = lambdaObserver;
        this.playQueueReactor = EmptySubscription.INSTANCE;
        this.loaderReactor = new CompositeDisposable();
        this.isBlocked = new AtomicBoolean(false);
        this.playlist = new ManagedMediaSourcePlaylist();
        this.loadingItems = DesugarCollections.synchronizedSet(new ArraySet(0));
        playQueue.broadcastReceiver.observeOn(AndroidSchedulers.mainThread()).subscribe(new VideoPlayerUi.AnonymousClass1(this, 12));
    }

    public final void loadImmediate() {
        TokenData tokenData;
        int i = PlayQueue.$r8$clinit;
        PlayQueue playQueue = this.playQueue;
        int index = playQueue.getIndex();
        PlayQueueItem item = playQueue.getItem(index);
        if (item == null) {
            tokenData = null;
        } else {
            int max = Math.max(0, index - 1);
            int i2 = index + 2;
            List subList = playQueue.getStreams().subList(max, Math.min(playQueue.size(), i2));
            ArraySet arraySet = new ArraySet(0);
            if (subList != null) {
                arraySet.addAll(subList);
            }
            int size = i2 - playQueue.size();
            if (size >= 0) {
                arraySet.addAll(playQueue.getStreams().subList(0, Math.min(playQueue.size(), size)));
            }
            arraySet.remove(item);
            tokenData = new TokenData(item, arraySet, 21);
        }
        if (tokenData == null) {
            return;
        }
        if (!this.loadingItems.contains(this.playQueue.getItem())) {
            CompositeDisposable compositeDisposable = this.loaderReactor;
            if (!compositeDisposable.disposed) {
                synchronized (compositeDisposable) {
                    try {
                        if (!compositeDisposable.disposed) {
                            OpenHashSet openHashSet = compositeDisposable.resources;
                            r3 = openHashSet != null ? openHashSet.size : 0;
                        }
                    } finally {
                    }
                }
            }
            if (r3 > 3) {
                this.loaderReactor.clear();
                this.loadingItems.clear();
            }
        }
        maybeLoadItem((PlayQueueItem) tokenData.value);
        ArrayMap.KeyIterator keyIterator = new ArrayMap.KeyIterator((ArraySet) tokenData.builder);
        while (keyIterator.hasNext()) {
            maybeLoadItem((PlayQueueItem) keyIterator.next());
        }
    }

    public final void maybeBlock() {
        int i = PlayQueue.$r8$clinit;
        AtomicBoolean atomicBoolean = this.isBlocked;
        if (atomicBoolean.get()) {
            return;
        }
        Player player = this.playbackListener;
        if (!player.exoPlayerIsNull()) {
            player.currentItem = null;
            player.currentMetadata = null;
            player.simpleExoPlayer.stop();
            player.isPrepared = false;
            player.changeState(Token.EXPORT);
        }
        this.playlist = new ManagedMediaSourcePlaylist();
        atomicBoolean.set(true);
    }

    public final void maybeLoadItem(PlayQueueItem playQueueItem) {
        int indexOf;
        ManagedMediaSource managedMediaSource;
        int i = PlayQueue.$r8$clinit;
        PlayQueue playQueue = this.playQueue;
        if (playQueue.indexOf(playQueueItem) >= this.playlist.internalSource.getSize()) {
            return;
        }
        Set set = this.loadingItems;
        if (set.contains(playQueueItem) || (managedMediaSource = this.playlist.get((indexOf = playQueue.indexOf(playQueueItem)))) == null) {
            return;
        }
        int i2 = 0;
        if (managedMediaSource.shouldBeReplacedWith(playQueueItem, indexOf != playQueue.getIndex())) {
            set.add(playQueueItem);
            SingleOnErrorReturn singleOnErrorReturn = new SingleOnErrorReturn(new SingleMap(playQueueItem.getStream(), new MediaSourceManager$$ExternalSyntheticLambda3(this, playQueueItem), i2), new PlayQueueItem$$ExternalSyntheticLambda0(playQueueItem), null);
            Scheduler mainThread = AndroidSchedulers.mainThread();
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new MediaSourceManager$$ExternalSyntheticLambda3(this, playQueueItem), Functions.ON_ERROR_MISSING);
            try {
                singleOnErrorReturn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver, mainThread));
                this.loaderReactor.add(consumerSingleObserver);
            } catch (NullPointerException e) {
                throw e;
            } catch (Throwable th) {
                throw Owner.CC.m(th, "subscribeActual failed", th);
            }
        }
    }

    public final void maybeRenewCurrentIndex() {
        int index = this.playQueue.getIndex();
        PlayQueueItem item = this.playQueue.getItem();
        ManagedMediaSource managedMediaSource = this.playlist.get(index);
        if (item == null || managedMediaSource == null) {
            return;
        }
        if (!managedMediaSource.shouldBeReplacedWith(item, true)) {
            maybeSynchronizePlayer();
            return;
        }
        int i = PlayQueue.$r8$clinit;
        ManagedMediaSourcePlaylist managedMediaSourcePlaylist = this.playlist;
        Handler handler = this.removeMediaSourceHandler;
        MediaSourceManager$$ExternalSyntheticLambda2 mediaSourceManager$$ExternalSyntheticLambda2 = new MediaSourceManager$$ExternalSyntheticLambda2(this, 0);
        synchronized (managedMediaSourcePlaylist) {
            ManagedMediaSource managedMediaSource2 = managedMediaSourcePlaylist.get(index);
            PlaceholderMediaSource placeholderMediaSource = PlaceholderMediaSource.COPY;
            if (managedMediaSource2 == placeholderMediaSource) {
                return;
            }
            managedMediaSourcePlaylist.update(index, placeholderMediaSource, handler, mediaSourceManager$$ExternalSyntheticLambda2);
        }
    }

    public final void maybeSync(boolean z) {
        PlayQueue playQueue;
        int i = PlayQueue.$r8$clinit;
        PlayQueueItem item = this.playQueue.getItem();
        if (this.isBlocked.get() || item == null) {
            return;
        }
        Player player = this.playbackListener;
        if (player.exoPlayerIsNull() || (playQueue = player.playQueue) == null || player.currentItem == item) {
            return;
        }
        int indexOf = playQueue.indexOf(item);
        int currentMediaItemIndex = player.simpleExoPlayer.getCurrentMediaItemIndex();
        int windowCount = player.simpleExoPlayer.getCurrentTimeline().getWindowCount();
        PlayQueueItem playQueueItem = player.currentItem;
        boolean z2 = (playQueueItem != null && playQueueItem.getServiceId() == item.getServiceId() && player.currentItem.getUrl().equals(item.getUrl())) ? false : true;
        player.currentItem = item;
        if (indexOf != player.playQueue.getIndex()) {
            String str = Player.TAG;
            StringBuilder m179m = Modifier.CC.m179m("Playback - Play Queue may be not in sync: item index=[", indexOf, "], queue index=[");
            m179m.append(player.playQueue.getIndex());
            m179m.append("]");
            Log.e(str, m179m.toString());
            return;
        }
        if ((windowCount > 0 && indexOf >= windowCount) || indexOf < 0) {
            Log.e(Player.TAG, "Playback - Trying to seek to invalid index=[" + indexOf + "] with playlist length=[" + windowCount + "]");
            return;
        }
        if (!z && currentMediaItemIndex == indexOf && player.isPlaying()) {
            return;
        }
        if (z2) {
            player.onThumbnailLoaded(null);
        }
        long recoveryPosition = item.getRecoveryPosition();
        ExoPlayer exoPlayer = player.simpleExoPlayer;
        if (recoveryPosition == Long.MIN_VALUE) {
            exoPlayer.seekToDefaultPosition(indexOf);
            return;
        }
        exoPlayer.seekTo(indexOf, item.getRecoveryPosition());
        PlayQueue playQueue2 = player.playQueue;
        synchronized (playQueue2) {
            playQueue2.setRecovery(indexOf, Long.MIN_VALUE);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021 A[Catch: all -> 0x0081, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0013, B:12:0x0021, B:16:0x004c, B:18:0x0056, B:21:0x007d, B:23:0x0066, B:25:0x006c, B:26:0x0071, B:28:0x0033, B:32:0x0046), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004c A[Catch: all -> 0x0081, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0013, B:12:0x0021, B:16:0x004c, B:18:0x0056, B:21:0x007d, B:23:0x0066, B:25:0x006c, B:26:0x0071, B:28:0x0033, B:32:0x0046), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void maybeSynchronizePlayer() {
        /*
            r6 = this;
            monitor-enter(r6)
            org.schabi.newpipe.player.playqueue.PlayQueue r0 = r6.playQueue     // Catch: java.lang.Throwable -> L81
            int r1 = r0.size()     // Catch: java.lang.Throwable -> L81
            int r2 = r0.getIndex()     // Catch: java.lang.Throwable -> L81
            int r1 = r1 - r2
            r2 = 1
            r3 = 0
            if (r1 <= r2) goto L12
            r1 = r2
            goto L13
        L12:
            r1 = r3
        L13:
            boolean r0 = r0.isComplete()     // Catch: java.lang.Throwable -> L81
            if (r0 != 0) goto L1e
            if (r1 == 0) goto L1c
            goto L1e
        L1c:
            r0 = r3
            goto L1f
        L1e:
            r0 = r2
        L1f:
            if (r0 == 0) goto L83
            org.schabi.newpipe.player.mediasource.ManagedMediaSourcePlaylist r0 = r6.playlist     // Catch: java.lang.Throwable -> L81
            com.google.android.exoplayer2.source.ConcatenatingMediaSource r0 = r0.internalSource     // Catch: java.lang.Throwable -> L81
            int r0 = r0.getSize()     // Catch: java.lang.Throwable -> L81
            org.schabi.newpipe.player.playqueue.PlayQueue r1 = r6.playQueue     // Catch: java.lang.Throwable -> L81
            int r4 = r1.size()     // Catch: java.lang.Throwable -> L81
            if (r0 == r4) goto L33
        L31:
            r0 = r3
            goto L4a
        L33:
            org.schabi.newpipe.player.mediasource.ManagedMediaSourcePlaylist r0 = r6.playlist     // Catch: java.lang.Throwable -> L81
            int r4 = r1.getIndex()     // Catch: java.lang.Throwable -> L81
            org.schabi.newpipe.player.mediasource.ManagedMediaSource r0 = r0.get(r4)     // Catch: java.lang.Throwable -> L81
            org.schabi.newpipe.player.playqueue.PlayQueueItem r1 = r1.getItem()     // Catch: java.lang.Throwable -> L81
            if (r0 == 0) goto L31
            if (r1 != 0) goto L46
            goto L31
        L46:
            boolean r0 = r0.isStreamEqual(r1)     // Catch: java.lang.Throwable -> L81
        L4a:
            if (r0 == 0) goto L83
            int r0 = org.schabi.newpipe.player.playqueue.PlayQueue.$r8$clinit     // Catch: java.lang.Throwable -> L81
            java.util.concurrent.atomic.AtomicBoolean r0 = r6.isBlocked     // Catch: java.lang.Throwable -> L81
            boolean r1 = r0.get()     // Catch: java.lang.Throwable -> L81
            if (r1 == 0) goto L7c
            r0.set(r3)     // Catch: java.lang.Throwable -> L81
            org.schabi.newpipe.player.Player r0 = r6.playbackListener     // Catch: java.lang.Throwable -> L81
            org.schabi.newpipe.player.mediasource.ManagedMediaSourcePlaylist r1 = r6.playlist     // Catch: java.lang.Throwable -> L81
            com.google.android.exoplayer2.source.ConcatenatingMediaSource r1 = r1.internalSource     // Catch: java.lang.Throwable -> L81
            boolean r4 = r0.exoPlayerIsNull()     // Catch: java.lang.Throwable -> L81
            if (r4 == 0) goto L66
            goto L7d
        L66:
            int r4 = r0.currentState     // Catch: java.lang.Throwable -> L81
            r5 = 123(0x7b, float:1.72E-43)
            if (r4 != r5) goto L71
            r4 = 125(0x7d, float:1.75E-43)
            r0.changeState(r4)     // Catch: java.lang.Throwable -> L81
        L71:
            com.google.android.exoplayer2.ExoPlayer r4 = r0.simpleExoPlayer     // Catch: java.lang.Throwable -> L81
            r4.setMediaSource(r1, r3)     // Catch: java.lang.Throwable -> L81
            com.google.android.exoplayer2.ExoPlayer r0 = r0.simpleExoPlayer     // Catch: java.lang.Throwable -> L81
            r0.prepare()     // Catch: java.lang.Throwable -> L81
            goto L7d
        L7c:
            r2 = r3
        L7d:
            r6.maybeSync(r2)     // Catch: java.lang.Throwable -> L81
            goto L83
        L81:
            r0 = move-exception
            goto L85
        L83:
            monitor-exit(r6)
            return
        L85:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L81
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.playback.MediaSourceManager.maybeSynchronizePlayer():void");
    }

    public final void populateSources() {
        int i = PlayQueue.$r8$clinit;
        while (this.playlist.internalSource.getSize() < this.playQueue.size()) {
            ManagedMediaSourcePlaylist managedMediaSourcePlaylist = this.playlist;
            synchronized (managedMediaSourcePlaylist) {
                managedMediaSourcePlaylist.append(PlaceholderMediaSource.COPY);
            }
        }
    }
}
