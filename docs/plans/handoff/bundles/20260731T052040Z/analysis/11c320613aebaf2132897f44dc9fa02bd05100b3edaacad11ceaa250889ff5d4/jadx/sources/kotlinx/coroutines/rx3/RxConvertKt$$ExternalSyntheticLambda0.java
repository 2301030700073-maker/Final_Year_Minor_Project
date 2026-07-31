package kotlinx.coroutines.rx3;

import android.app.Dialog;
import android.content.Context;
import android.widget.Toast;
import androidx.compose.foundation.lazy.layout.Averages;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider$HandleAndRequestImpl;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.compose.ui.node.Owner;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.fragment.app.Fragment;
import androidx.preference.Preference;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.TransactionExecutor;
import androidx.sqlite.SQLite;
import androidx.work.DirectExecutor;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import androidx.work.WorkerParameters;
import androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import androidx.work.rxjava3.RxWorker;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.memory.MemoryCacheService;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.DefaultAnalyticsCollector;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.ListenerSet;
import com.google.android.exoplayer2.video.VideoSize;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.CancellableDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.CallbackCompletableObserver;
import io.reactivex.rxjava3.internal.observers.EmptyCompletableObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import io.reactivex.rxjava3.internal.operators.completable.CompletablePeek;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeMap;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableCreate$CreateEmitter;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.internal.schedulers.ExecutorScheduler;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.schedulers.SingleScheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.Unconfined;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import org.mozilla.javascript.ContextAction;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.optimizer.OptRuntime;
import org.schabi.newpipe.DownloaderImpl;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.PlaylistDuplicatesEntry;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl;
import org.schabi.newpipe.database.stream.StreamStatisticsEntry;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.fragments.list.playlist.PlaylistFragment;
import org.schabi.newpipe.info_list.dialog.StreamDialogEntry;
import org.schabi.newpipe.local.dialog.PlaylistAppendDialog;
import org.schabi.newpipe.local.dialog.PlaylistCreationDialog;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.local.history.HistoryRecordManager$$ExternalSyntheticLambda18;
import org.schabi.newpipe.local.history.HistoryRecordManager$$ExternalSyntheticLambda21;
import org.schabi.newpipe.local.history.StatisticsPlaylistFragment;
import org.schabi.newpipe.local.history.StatisticsPlaylistFragment$$ExternalSyntheticLambda5;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.TimestampChangeData;
import org.schabi.newpipe.settings.ExoPlayerSettingsFragment;
import org.schabi.newpipe.settings.HistorySettingsFragment;
import org.schabi.newpipe.util.OnClickGesture;
import org.schabi.newpipe.util.SparseItemUtil$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RxConvertKt$$ExternalSyntheticLambda0 implements ShouldPauseCallback, CallbackToFutureAdapter$Resolver, ListenerSet.Event, ListenerSet.IterationFinishedEvent, DefaultTrackSelector.TrackInfo.Factory, ContextAction, Consumer, StreamDialogEntry.StreamDialogEntryAction, Function, OnClickGesture, Preference.OnPreferenceChangeListener, Preference.OnPreferenceClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ RxConvertKt$$ExternalSyntheticLambda0(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        PlaylistDialog playlistCreationDialog;
        int i = this.$r8$classId;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 20:
                LinkedList linkedList = VideoDetailFragment.stack;
                ((VideoDetailFragment) obj3).updatePlaybackProgress(((StreamStateEntity) obj).progressMillis, ((StreamInfo) obj2).getDuration() * 1000);
                break;
            case 24:
                java.util.function.Consumer consumer = (java.util.function.Consumer) obj3;
                List list = (List) obj2;
                if (((Boolean) obj).booleanValue()) {
                    playlistCreationDialog = new PlaylistAppendDialog();
                    playlistCreationDialog.streamEntities = list;
                } else {
                    playlistCreationDialog = new PlaylistCreationDialog();
                    playlistCreationDialog.streamEntities = list;
                }
                consumer.s(playlistCreationDialog);
                break;
            case 26:
                Player player = (Player) obj3;
                player.getClass();
                String str = ((TimestampChangeData) obj2).url;
                ErrorUtil.createNotification(player.context, new ErrorInfo((Throwable) obj, UserAction.PLAY_ON_POPUP, str, (Integer) null, str));
                break;
            default:
                Context context = (Context) obj3;
                StreamInfo streamInfo = (StreamInfo) obj;
                CompletableFromAction completableFromAction = new CompletableFromAction(new SparseItemUtil$$ExternalSyntheticLambda4(context, streamInfo), 0);
                IoScheduler ioScheduler = Schedulers.IO;
                new CompletablePeek(completableFromAction.subscribeOn(ioScheduler).observeOn(ioScheduler), Functions.EMPTY_CONSUMER, new SparseItemUtil$$ExternalSyntheticLambda4(context, streamInfo)).subscribe(new EmptyCompletableObserver());
                ((java.util.function.Consumer) obj2).s(streamInfo);
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
    
        if (android.text.TextUtils.equals(r3.uploader, r9.getUploaderName()) != false) goto L20;
     */
    @Override // io.reactivex.rxjava3.functions.Function
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object apply(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.f$0
            org.schabi.newpipe.fragments.list.playlist.PlaylistFragment r0 = (org.schabi.newpipe.fragments.list.playlist.PlaylistFragment) r0
            java.lang.Object r9 = r9.f$1
            org.schabi.newpipe.extractor.playlist.PlaylistInfo r9 = (org.schabi.newpipe.extractor.playlist.PlaylistInfo) r9
            java.util.List r10 = (java.util.List) r10
            int r1 = org.schabi.newpipe.fragments.list.playlist.PlaylistFragment.$r8$clinit
            r1 = -1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            int r2 = io.reactivex.rxjava3.core.Flowable.BUFFER_SIZE
            io.reactivex.rxjava3.internal.operators.flowable.FlowableJust r2 = new io.reactivex.rxjava3.internal.operators.flowable.FlowableJust
            r2.<init>(r1)
            boolean r1 = r10.isEmpty()
            if (r1 == 0) goto L1f
            goto L7c
        L1f:
            r1 = 0
            java.lang.Object r3 = r10.get(r1)
            org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity r3 = (org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity) r3
            r3.getClass()
            r9.getClass()
            int r4 = r3.serviceId
            int r5 = r9.getServiceId()
            if (r4 != r5) goto L7d
            java.lang.Long r4 = r3.streamCount
            long r5 = r9.getStreamCount()
            if (r4 != 0) goto L3d
            goto L7d
        L3d:
            long r7 = r4.longValue()
            int r4 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r4 != 0) goto L7d
            java.lang.String r4 = r3.orderingName
            java.lang.String r5 = r9.getName()
            boolean r4 = android.text.TextUtils.equals(r4, r5)
            if (r4 == 0) goto L7d
            java.lang.String r4 = r3.url
            java.lang.String r5 = r9.getUrl()
            boolean r4 = android.text.TextUtils.equals(r4, r5)
            if (r4 == 0) goto L7d
            java.lang.String r4 = r3.thumbnailUrl
            java.util.List r5 = r9.getThumbnails()
            r5.getClass()
            java.lang.String r5 = org.schabi.newpipe.util.image.ImageStrategy.imageListToDbUrl(r5)
            boolean r4 = android.text.TextUtils.equals(r4, r5)
            if (r4 == 0) goto L7d
            java.lang.String r3 = r3.uploader
            java.lang.String r4 = r9.getUploaderName()
            boolean r3 = android.text.TextUtils.equals(r3, r4)
            if (r3 == 0) goto L7d
        L7c:
            return r2
        L7d:
            org.jsoup.parser.TokenData r0 = r0.remotePlaylistManager
            java.lang.Object r10 = r10.get(r1)
            org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity r10 = (org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity) r10
            long r1 = r10.uid
            r0.getClass()
            org.schabi.newpipe.local.feed.FeedDatabaseManager$$ExternalSyntheticLambda3 r10 = new org.schabi.newpipe.local.feed.FeedDatabaseManager$$ExternalSyntheticLambda3
            r10.<init>(r9, r0, r1)
            io.reactivex.rxjava3.internal.operators.single.SingleAmb r9 = new io.reactivex.rxjava3.internal.operators.single.SingleAmb
            r0 = 3
            r9.<init>(r10, r0)
            io.reactivex.rxjava3.internal.schedulers.IoScheduler r10 = io.reactivex.rxjava3.schedulers.Schedulers.IO
            io.reactivex.rxjava3.internal.operators.single.SingleObserveOn r9 = r9.subscribeOn(r10)
            boolean r10 = r9 instanceof io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
            if (r10 == 0) goto La6
            io.reactivex.rxjava3.internal.fuseable.FuseToFlowable r9 = (io.reactivex.rxjava3.internal.fuseable.FuseToFlowable) r9
            io.reactivex.rxjava3.core.Flowable r9 = r9.fuseToFlowable()
            return r9
        La6:
            io.reactivex.rxjava3.internal.operators.maybe.MaybeConcatArray r10 = new io.reactivex.rxjava3.internal.operators.maybe.MaybeConcatArray
            r0 = 5
            r10.<init>(r9, r0)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0.apply(java.lang.Object):java.lang.Object");
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
    public Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        int i = this.$r8$classId;
        DirectExecutor directExecutor = DirectExecutor.INSTANCE;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        final int i2 = 0;
        switch (i) {
            case 2:
                Executor executor = (Executor) obj2;
                GapComposer$$ExternalSyntheticLambda0 gapComposer$$ExternalSyntheticLambda0 = (GapComposer$$ExternalSyntheticLambda0) obj;
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                final int i3 = 1;
                Runnable runnable = new Runnable() { // from class: androidx.work.WorkerKt$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i4 = i3;
                        AtomicBoolean atomicBoolean2 = atomicBoolean;
                        switch (i4) {
                            case 0:
                                atomicBoolean2.set(true);
                                break;
                            default:
                                atomicBoolean2.set(true);
                                break;
                        }
                    }
                };
                ResolvableFuture resolvableFuture = callbackToFutureAdapter$Completer.cancellationFuture;
                if (resolvableFuture != null) {
                    resolvableFuture.addListener(runnable, directExecutor);
                }
                executor.execute(new WorkerKt$$ExternalSyntheticLambda2(4, atomicBoolean, callbackToFutureAdapter$Completer, gapComposer$$ExternalSyntheticLambda0));
                return "setForegroundAsync";
            case 3:
                Executor executor2 = (Executor) obj2;
                Function0 function0 = (Function0) obj;
                final AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
                Runnable runnable2 = new Runnable() { // from class: androidx.work.WorkerKt$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i4 = i2;
                        AtomicBoolean atomicBoolean22 = atomicBoolean2;
                        switch (i4) {
                            case 0:
                                atomicBoolean22.set(true);
                                break;
                            default:
                                atomicBoolean22.set(true);
                                break;
                        }
                    }
                };
                ResolvableFuture resolvableFuture2 = callbackToFutureAdapter$Completer.cancellationFuture;
                if (resolvableFuture2 != null) {
                    resolvableFuture2.addListener(runnable2, directExecutor);
                }
                executor2.execute(new WorkerKt$$ExternalSyntheticLambda2(i2, atomicBoolean2, callbackToFutureAdapter$Completer, function0));
                return Unit.INSTANCE;
            default:
                WorkerParameters workerParameters = ((RxWorker) obj2).mWorkerParams;
                ExecutorService executorService = workerParameters.mBackgroundExecutor;
                SingleScheduler singleScheduler = Schedulers.SINGLE;
                try {
                    ((Single) obj).subscribeOn(new ExecutorScheduler(executorService)).subscribe(new SingleObserveOn.ObserveOnSingleObserver(new MemoryCacheService(callbackToFutureAdapter$Completer), new ExecutorScheduler((TransactionExecutor) workerParameters.mWorkTaskExecutor.executorServiceOrNull)));
                    return "converted single to future";
                } catch (NullPointerException e) {
                    throw e;
                } catch (Throwable th) {
                    throw Owner.CC.m(th, "subscribeActual failed", th);
                }
        }
    }

    @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo.Factory
    public List create(int i, TrackGroup trackGroup, int[] iArr) {
        List lambda$selectVideoTrack$2;
        List lambda$selectTextTrack$4;
        switch (this.$r8$classId) {
            case 16:
                lambda$selectVideoTrack$2 = DefaultTrackSelector.lambda$selectVideoTrack$2((DefaultTrackSelector.Parameters) this.f$0, (int[]) this.f$1, i, trackGroup, iArr);
                return lambda$selectVideoTrack$2;
            default:
                lambda$selectTextTrack$4 = DefaultTrackSelector.lambda$selectTextTrack$4((DefaultTrackSelector.Parameters) this.f$0, (String) this.f$1, i, trackGroup, iArr);
                return lambda$selectTextTrack$4;
        }
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.$r8$classId) {
            case 5:
                ((AnalyticsListener) obj).onAudioAttributesChanged((AnalyticsListener.EventTime) this.f$0, (AudioAttributes) this.f$1);
                break;
            case 6:
                ((AnalyticsListener) obj).onPlaybackParametersChanged((AnalyticsListener.EventTime) this.f$0, (PlaybackParameters) this.f$1);
                break;
            case 7:
            default:
                DefaultAnalyticsCollector.lambda$onVideoSizeChanged$56((AnalyticsListener.EventTime) this.f$0, (VideoSize) this.f$1, (AnalyticsListener) obj);
                break;
            case 8:
                ((AnalyticsListener) obj).onCues((AnalyticsListener.EventTime) this.f$0, (CueGroup) this.f$1);
                break;
            case 9:
                ((AnalyticsListener) obj).onAvailableCommandsChanged((AnalyticsListener.EventTime) this.f$0, (Player.Commands) this.f$1);
                break;
            case 10:
                ((AnalyticsListener) obj).onTrackSelectionParametersChanged((AnalyticsListener.EventTime) this.f$0, (TrackSelectionParameters) this.f$1);
                break;
            case 11:
                ((AnalyticsListener) obj).onCues((AnalyticsListener.EventTime) this.f$0, (List<Cue>) this.f$1);
                break;
            case 12:
                ((AnalyticsListener) obj).onTracksChanged((AnalyticsListener.EventTime) this.f$0, (Tracks) this.f$1);
                break;
            case 13:
                ((AnalyticsListener) obj).onDeviceInfoChanged((AnalyticsListener.EventTime) this.f$0, (DeviceInfo) this.f$1);
                break;
            case 14:
                ((AnalyticsListener) obj).onMetadata((AnalyticsListener.EventTime) this.f$0, (Metadata) this.f$1);
                break;
        }
    }

    @Override // org.schabi.newpipe.info_list.dialog.StreamDialogEntry.StreamDialogEntryAction
    public void onClick(Fragment fragment, StreamInfoItem streamInfoItem) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        int i2 = 0;
        switch (i) {
            case 21:
                PlaylistFragment playlistFragment = (PlaylistFragment) obj2;
                int i3 = PlaylistFragment.$r8$clinit;
                SQLite.playOnBackgroundPlayer((Context) obj, playlistFragment.getPlayQueue$1(Math.max(playlistFragment.infoListAdapter.infoItemList.indexOf(streamInfoItem), 0)), true);
                break;
            default:
                StatisticsPlaylistFragment statisticsPlaylistFragment = (StatisticsPlaylistFragment) obj2;
                int i4 = StatisticsPlaylistFragment.$r8$clinit;
                LocalItem localItem = (LocalItem) statisticsPlaylistFragment.itemListAdapter.localItems.get(Math.max(statisticsPlaylistFragment.itemListAdapter.localItems.indexOf((StreamStatisticsEntry) obj), 0));
                if (localItem instanceof StreamStatisticsEntry) {
                    PlaylistHeaderBinding playlistHeaderBinding = statisticsPlaylistFragment.recordManager;
                    long j = ((StreamStatisticsEntry) localItem).streamId;
                    playlistHeaderBinding.getClass();
                    CompletableObserveOn observeOn = new CompletableFromAction(new HistoryRecordManager$$ExternalSyntheticLambda21(playlistHeaderBinding, j), i2).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
                    CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new StatisticsPlaylistFragment$$ExternalSyntheticLambda5(statisticsPlaylistFragment), new StatisticsPlaylistFragment$$ExternalSyntheticLambda5(statisticsPlaylistFragment));
                    observeOn.subscribe(callbackCompletableObserver);
                    statisticsPlaylistFragment.disposables.add(callbackCompletableObserver);
                    break;
                }
                break;
        }
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        ExoPlayerSettingsFragment exoPlayerSettingsFragment = (ExoPlayerSettingsFragment) this.f$0;
        String str = (String) this.f$1;
        int i = ExoPlayerSettingsFragment.$r8$clinit;
        if (!Boolean.FALSE.equals(obj)) {
            return true;
        }
        PreferenceManager.getDefaultSharedPreferences(exoPlayerSettingsFragment.requireContext()).edit().putInt(str, 0).apply();
        preference.setSummary(preference.mContext.getString(R.string.disable_media_tunneling_summary));
        return true;
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        HistorySettingsFragment historySettingsFragment = (HistorySettingsFragment) this.f$0;
        Preference preference2 = (Preference) this.f$1;
        int i = HistorySettingsFragment.$r8$clinit;
        historySettingsFragment.defaultPreferences.edit().putString(historySettingsFragment.getString(R.string.recaptcha_cookies_key), "").apply();
        DownloaderImpl.instance.mCookies.put("recaptcha_cookies", "");
        Toast.makeText(historySettingsFragment.getActivity(), R.string.recaptcha_cookies_cleared, 0).show();
        preference2.setEnabled(false);
        return true;
    }

    @Override // org.mozilla.javascript.ContextAction
    public Object run(org.mozilla.javascript.Context context) {
        Object lambda$main$0;
        lambda$main$0 = OptRuntime.lambda$main$0((String[]) this.f$0, (Script) this.f$1, context);
        return lambda$main$0;
    }

    @Override // org.schabi.newpipe.util.OnClickGesture
    public void selected(Object obj) {
        final PlaylistAppendDialog playlistAppendDialog = (PlaylistAppendDialog) this.f$0;
        final Dispatcher dispatcher = (Dispatcher) this.f$1;
        LocalItem localItem = (LocalItem) obj;
        final List list = playlistAppendDialog.streamEntities;
        if (!(localItem instanceof PlaylistDuplicatesEntry) || list == null) {
            return;
        }
        final PlaylistDuplicatesEntry playlistDuplicatesEntry = (PlaylistDuplicatesEntry) localItem;
        long j = playlistDuplicatesEntry.timesStreamIsContained;
        final Toast makeText = Toast.makeText(playlistAppendDialog.getContext(), j > 0 ? playlistAppendDialog.getString(R.string.playlist_add_stream_success_duplicate, Long.valueOf(j)) : playlistAppendDialog.getString(R.string.playlist_add_stream_success), 0);
        CompositeDisposable compositeDisposable = playlistAppendDialog.playlistDisposables;
        long j2 = playlistDuplicatesEntry.uid;
        MaybeObserveOn subscribeOn = new MaybeMap(new FlowableElementAtMaybe(Cookie.Companion.createFlowable(((PlaylistStreamDAO_Impl) dispatcher.runningSyncCalls).__db, false, new String[]{"playlist_stream_join"}, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j2, 15))), new HistoryRecordManager$$ExternalSyntheticLambda18(j2, dispatcher, list), 0).subscribeOn(Schedulers.IO);
        Scheduler mainThread = AndroidSchedulers.mainThread();
        MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new Consumer() { // from class: org.schabi.newpipe.local.dialog.PlaylistAppendDialog$$ExternalSyntheticLambda3
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj2) {
                Toast toast = makeText;
                toast.show();
                PlaylistDuplicatesEntry playlistDuplicatesEntry2 = playlistDuplicatesEntry;
                Long l = playlistDuplicatesEntry2.thumbnailStreamId;
                if (l == null || l.longValue() != -1) {
                    return;
                }
                CompositeDisposable compositeDisposable2 = PlaylistAppendDialog.this.playlistDisposables;
                MaybeObserveOn modifyPlaylist = dispatcher.modifyPlaylist(playlistDuplicatesEntry2.uid, ((StreamEntity) list.get(0)).getUid(), null, false);
                Scheduler mainThread2 = AndroidSchedulers.mainThread();
                MaybeCallbackObserver maybeCallbackObserver2 = new MaybeCallbackObserver(new PlaylistAppendDialog$$ExternalSyntheticLambda5(toast, 0), Functions.ON_ERROR_MISSING, Functions.EMPTY_ACTION);
                try {
                    modifyPlaylist.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver2, mainThread2));
                    compositeDisposable2.add(maybeCallbackObserver2);
                } catch (NullPointerException e) {
                    throw e;
                } catch (Throwable th) {
                    throw Owner.CC.m(th, "subscribeActual failed", th);
                }
            }
        }, Functions.ON_ERROR_MISSING, Functions.EMPTY_ACTION);
        try {
            subscribeOn.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver, mainThread));
            compositeDisposable.add(maybeCallbackObserver);
            Dialog dialog = playlistAppendDialog.mDialog;
            if (dialog != null) {
                dialog.dismiss();
            } else {
                DecodeUtils$$ExternalSyntheticBUOutline0.m$3(playlistAppendDialog, " does not have a Dialog.", "DialogFragment ");
            }
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    @Override // androidx.compose.runtime.ShouldPauseCallback
    public boolean shouldPause() {
        PrefetchHandleProvider$HandleAndRequestImpl prefetchHandleProvider$HandleAndRequestImpl = (PrefetchHandleProvider$HandleAndRequestImpl) this.f$0;
        Averages averages = (Averages) this.f$1;
        if (!prefetchHandleProvider$HandleAndRequestImpl.pauseRequested) {
            prefetchHandleProvider$HandleAndRequestImpl.updateElapsedAndAvailableTime();
            averages.resumeTimeNanos = Averages.calculateAverageTime(prefetchHandleProvider$HandleAndRequestImpl.elapsedTimeNanos, averages.resumeTimeNanos);
            prefetchHandleProvider$HandleAndRequestImpl.pauseRequested = !prefetchHandleProvider$HandleAndRequestImpl.shouldExecute(prefetchHandleProvider$HandleAndRequestImpl.availableTimeNanos, r1 + averages.pauseTimeNanos);
        }
        return prefetchHandleProvider$HandleAndRequestImpl.pauseRequested;
    }

    public void subscribe(ObservableCreate$CreateEmitter observableCreate$CreateEmitter) {
        CoroutineContext coroutineContext = (CoroutineContext) this.f$0;
        WorkConstraintsTracker$track$$inlined$combine$1 workConstraintsTracker$track$$inlined$combine$1 = (WorkConstraintsTracker$track$$inlined$combine$1) this.f$1;
        Unconfined unconfined = Dispatchers.Unconfined;
        unconfined.getClass();
        DisposableHelper.set(observableCreate$CreateEmitter, new CancellableDisposable(new RxCancellable(JobKt.launch(GlobalScope.INSTANCE, AppKt.plus(unconfined, coroutineContext), CoroutineStart.ATOMIC, new RxConvertKt$asObservable$1$job$1(workConstraintsTracker$track$$inlined$combine$1, observableCreate$CreateEmitter, null)))));
    }

    @Override // org.schabi.newpipe.util.OnClickGesture
    public /* synthetic */ void held(Object obj) {
    }

    @Override // org.schabi.newpipe.util.OnClickGesture
    public /* synthetic */ void drag(Object obj, RecyclerView.ViewHolder viewHolder) {
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        ((DefaultAnalyticsCollector) this.f$0).lambda$setPlayer$1((com.google.android.exoplayer2.Player) this.f$1, (AnalyticsListener) obj, flagSet);
    }
}
