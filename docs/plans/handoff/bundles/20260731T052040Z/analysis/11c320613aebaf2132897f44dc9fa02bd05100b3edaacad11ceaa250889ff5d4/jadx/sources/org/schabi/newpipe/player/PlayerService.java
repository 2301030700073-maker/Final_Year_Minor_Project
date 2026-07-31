package org.schabi.newpipe.player;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda3;
import androidx.core.app.ActivityRecreator;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationManagerCompat;
import androidx.media.MediaBrowserServiceCompat;
import coil3.ComponentRegistry;
import com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.EmptySequence;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.MergingSequence;
import kotlin.sequences.Sequence;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import okio.Options;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.DownloaderImpl$$ExternalSyntheticLambda0;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;
import org.schabi.newpipe.player.event.PlayerEventListener;
import org.schabi.newpipe.player.helper.PlayerHolder;
import org.schabi.newpipe.player.helper.PlayerHolder$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl;
import org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$onSearch$1;
import org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer;
import org.schabi.newpipe.player.mediabrowser.PackageValidator$CallerPackageInfo;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlayerService extends MediaBrowserServiceCompat {
    public static final /* synthetic */ int $r8$clinit = 0;
    public MediaBrowserImpl mediaBrowserImpl;
    public MediaBrowserPlaybackPreparer mediaBrowserPlaybackPreparer;
    public MediaSessionCompat mediaSession;
    public Player player;
    public MediaSessionConnector sessionConnector;
    public final LocalBinder mBinder = new LocalBinder(this);
    public PlayerHolder$$ExternalSyntheticLambda0 onPlayerStartedOrStopped = null;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LocalBinder extends Binder {
        public final WeakReference playerService;

        public LocalBinder(PlayerService playerService) {
            this.playerService = new WeakReference(playerService);
        }
    }

    static {
        String str = Player.TAG;
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(new AudioServiceLeakFix(context));
    }

    public final void cleanup() {
        if (this.player != null) {
            PlayerHolder$$ExternalSyntheticLambda0 playerHolder$$ExternalSyntheticLambda0 = this.onPlayerStartedOrStopped;
            if (playerHolder$$ExternalSyntheticLambda0 != null) {
                playerHolder$$ExternalSyntheticLambda0.s(null);
            }
            Player player = this.player;
            player.saveStreamProgressState();
            player.setRecovery();
            PlayerHolder.AnonymousClass1 anonymousClass1 = player.fragmentListener;
            if (anonymousClass1 != null) {
                anonymousClass1.onServiceStopped();
                player.fragmentListener = null;
            }
            PlayerEventListener playerEventListener = player.activityListener;
            if (playerEventListener != null) {
                playerEventListener.onServiceStopped();
                player.activityListener = null;
            }
            player.destroyPlayer();
            player.unregisterBroadcastReceiver();
            player.databaseUpdateDisposable.clear();
            DisposableHelper.set(player.progressUpdateDisposable.resource, null);
            player.streamItemDisposable.clear();
            player.UIs.destroyAll(Object.class);
            this.player = null;
        }
        this.mediaSession.setActive(false);
        NavUtils.stopForeground(this);
    }

    public final void destroyPlayerAndStopService() {
        cleanup();
        stopService(new Intent(this, (Class<?>) PlayerService.class));
    }

    @Override // androidx.media.MediaBrowserServiceCompat, android.app.Service
    public final IBinder onBind(Intent intent) {
        if ("bind_player_holder_action".equals(intent.getAction())) {
            return this.mBinder;
        }
        if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
            return super.onBind(intent);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media.MediaBrowserServiceCompat, android.app.Service
    public final void onCreate() {
        super.onCreate();
        Options.Companion.setTheme(this, -1);
        Object[] objArr = 0;
        this.mediaBrowserImpl = new MediaBrowserImpl(this, new PlayerService$$ExternalSyntheticLambda0(this, 0));
        MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(this);
        this.mediaSession = mediaSessionCompat;
        MediaSessionCompat.Token token = mediaSessionCompat.mImpl.mToken;
        if (token == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Session token may not be null");
            return;
        }
        if (this.mSession != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The session token has already been set");
            return;
        }
        this.mSession = token;
        ComponentRegistry.Builder builder = this.mImpl;
        ((MediaBrowserServiceCompat) builder.lazyFetcherFactories).mHandler.postOrRun(new ActivityRecreator.AnonymousClass1(5, builder, token, objArr == true ? 1 : 0));
        MediaSessionConnector mediaSessionConnector = new MediaSessionConnector(this.mediaSession);
        this.sessionConnector = mediaSessionConnector;
        int i = 1;
        mediaSessionConnector.setMetadataDeduplicationEnabled(true);
        MediaSessionConnector mediaSessionConnector2 = this.sessionConnector;
        Objects.requireNonNull(mediaSessionConnector2);
        MediaBrowserPlaybackPreparer mediaBrowserPlaybackPreparer = new MediaBrowserPlaybackPreparer(this, new DownloaderImpl$$ExternalSyntheticLambda0(mediaSessionConnector2, i), new ReportExecutor$$ExternalSyntheticLambda0(this, 28), new PlayerService$$ExternalSyntheticLambda0(this, i));
        this.mediaBrowserPlaybackPreparer = mediaBrowserPlaybackPreparer;
        this.sessionConnector.setPlaybackPreparer(mediaBrowserPlaybackPreparer);
    }

    @Override // androidx.media.MediaBrowserServiceCompat, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        cleanup();
        ConsumerSingleObserver consumerSingleObserver = this.mediaBrowserPlaybackPreparer.disposable;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        MediaSessionCompat.MediaSessionImplApi22 mediaSessionImplApi22 = this.mediaSession.mImpl;
        MediaSession mediaSession = mediaSessionImplApi22.mSessionFwk;
        mediaSessionImplApi22.mExtraControllerCallbacks.kill();
        if (Build.VERSION.SDK_INT == 27) {
            try {
                Field declaredField = mediaSession.getClass().getDeclaredField("mCallback");
                declaredField.setAccessible(true);
                Handler handler = (Handler) declaredField.get(mediaSession);
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
            } catch (Exception e) {
                Log.w("MediaSessionCompat", "Exception happened while accessing MediaSession.mCallback.", e);
            }
        }
        mediaSession.setCallback(null);
        mediaSessionImplApi22.mExtraSession.mMediaSessionImplRef.set(null);
        mediaSession.release();
        this.mediaBrowserImpl.disposables.dispose();
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public final MediaMetadataCompat.Builder onGetRoot(String str, int i, Bundle bundle) {
        PackageValidator$CallerPackageInfo packageValidator$CallerPackageInfo;
        MediaBrowserImpl mediaBrowserImpl = this.mediaBrowserImpl;
        mediaBrowserImpl.getClass();
        int i2 = MainActivity.$r8$clinit;
        Dispatcher dispatcher = mediaBrowserImpl.packageValidator;
        dispatcher.getClass();
        PackageManager packageManager = (PackageManager) dispatcher.readyAsyncCalls;
        LinkedHashMap linkedHashMap = (LinkedHashMap) dispatcher.runningSyncCalls;
        Pair pair = (Pair) linkedHashMap.get(str);
        if (pair == null) {
            pair = new Pair(0, Boolean.FALSE);
        }
        int intValue = ((Number) pair.component1()).intValue();
        boolean booleanValue = ((Boolean) pair.component2()).booleanValue();
        int i3 = 1;
        if (intValue != i) {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 4160);
            if (packageInfo == null) {
                packageValidator$CallerPackageInfo = null;
            } else {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                String valueOf = String.valueOf(applicationInfo != null ? applicationInfo.loadLabel(packageManager) : null);
                ApplicationInfo applicationInfo2 = packageInfo.applicationInfo;
                int i4 = applicationInfo2 != null ? applicationInfo2.uid : -1;
                String signature = Dispatcher.getSignature(packageInfo);
                String[] strArr = packageInfo.requestedPermissions;
                Sequence sequence = EmptySequence.INSTANCE;
                Sequence stringsKt__StringsKt$lineSequence$$inlined$Sequence$1 = strArr != null ? strArr.length == 0 ? sequence : new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(strArr, i3) : null;
                if (stringsKt__StringsKt$lineSequence$$inlined$Sequence$1 == null) {
                    stringsKt__StringsKt$lineSequence$$inlined$Sequence$1 = sequence;
                }
                int[] iArr = packageInfo.requestedPermissionsFlags;
                Sequence stringsKt__StringsKt$lineSequence$$inlined$Sequence$12 = iArr != null ? iArr.length == 0 ? sequence : new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(iArr, 2) : null;
                if (stringsKt__StringsKt$lineSequence$$inlined$Sequence$12 != null) {
                    sequence = stringsKt__StringsKt$lineSequence$$inlined$Sequence$12;
                }
                FilteringSequence filteringSequence = new FilteringSequence(new MergingSequence(stringsKt__StringsKt$lineSequence$$inlined$Sequence$1, sequence, new SaversKt$$ExternalSyntheticLambda3(23)), true, new FeedFragment$$ExternalSyntheticLambda10(12));
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(filteringSequence);
                while (filteringSequence$iterator$1.hasNext()) {
                    Pair pair2 = (Pair) filteringSequence$iterator$1.next();
                    String str2 = (String) pair2.component1();
                    ((Number) pair2.component2()).intValue();
                    linkedHashSet.add(str2);
                }
                packageValidator$CallerPackageInfo = new PackageValidator$CallerPackageInfo(valueOf, str, i4, signature, CollectionsKt.toSet(linkedHashSet));
            }
            if (packageValidator$CallerPackageInfo == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Caller wasn't found in the system?");
                return null;
            }
            if (packageValidator$CallerPackageInfo.uid != i) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Caller's package UID doesn't match caller's actual UID?");
                return null;
            }
            String str3 = packageValidator$CallerPackageInfo.signature;
            if (i != Process.myUid() && i != 1000 && !Intrinsics.areEqual(str3, (String) dispatcher.runningAsyncCalls) && !packageValidator$CallerPackageInfo.permissions.contains("android.permission.MEDIA_CONTENT_CONTROL")) {
                if (!((HashSet) NotificationManagerCompat.getEnabledListenerPackages((Context) dispatcher.executorServiceOrNull)).contains(packageValidator$CallerPackageInfo.packageName)) {
                    booleanValue = false;
                    linkedHashMap.put(str, new Pair(Integer.valueOf(i), Boolean.valueOf(booleanValue)));
                }
            }
            booleanValue = true;
            linkedHashMap.put(str, new Pair(Integer.valueOf(i), Boolean.valueOf(booleanValue)));
        }
        if (!booleanValue || (bundle != null && bundle.getBoolean("android.service.media.extra.RECENT", false))) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("android.media.browse.SEARCH_SUPPORTED", true);
        return new MediaMetadataCompat.Builder(bundle2);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public final void onLoadChildren(String str, MediaBrowserServiceCompat.Result result) {
        Single singleAmb;
        Single single;
        ArrayList arrayList;
        int i;
        int i2;
        MediaBrowserImpl mediaBrowserImpl = this.mediaBrowserImpl;
        mediaBrowserImpl.getClass();
        str.getClass();
        int i3 = MainActivity.$r8$clinit;
        result.detach();
        CompositeDisposable compositeDisposable = mediaBrowserImpl.disposables;
        PlayerService playerService = mediaBrowserImpl.context;
        int i4 = 2;
        try {
            Uri parse = Uri.parse(str);
            parse.getClass();
            arrayList = new ArrayList(parse.getPathSegments());
            i = 1;
            i2 = 0;
        } catch (ContentNotAvailableException e) {
            singleAmb = new SingleAmb(new Functions.JustValue(e), i4);
        }
        if (!arrayList.isEmpty()) {
            String str2 = (String) arrayList.remove(0);
            if (str2 != null) {
                int hashCode = str2.hashCode();
                if (hashCode != -1865828127) {
                    if (hashCode == 926934164 && str2.equals("history")) {
                        StreamHistoryDAO_Impl streamHistoryDAO = mediaBrowserImpl.database.streamHistoryDAO();
                        singleAmb = new SingleMap(new FlowableToListSingle(Cookie.Companion.createFlowable(streamHistoryDAO.__db, false, new String[]{"streams", "stream_history"}, new ZipFilesKt$$ExternalSyntheticLambda3(streamHistoryDAO, 28)), i), new MediaBrowserImpl$onSearch$1(mediaBrowserImpl, i4), i2);
                        single = singleAmb;
                    }
                } else if (str2.equals("playlists")) {
                    if (!arrayList.isEmpty()) {
                        if (arrayList.size() == 2) {
                            String str3 = (String) arrayList.get(0);
                            Object obj = arrayList.get(1);
                            obj.getClass();
                            long parseLong = Long.parseLong((String) obj);
                            if (Intrinsics.areEqual(str3, "local")) {
                                single = mediaBrowserImpl.populateLocalPlaylist(parseLong);
                            } else if (Intrinsics.areEqual(str3, "remote")) {
                                single = mediaBrowserImpl.populateRemotePlaylist(parseLong);
                            }
                        }
                        Log.w("MediaBrowserImpl", "Unknown playlist URI: ".concat(str));
                        throw Okio.parseError(str);
                    }
                    singleAmb = new SingleMap(new FlowableToListSingle(mediaBrowserImpl.getMergedPlaylists(), i), new MediaBrowserImpl$onSearch$1(mediaBrowserImpl, i), i2);
                    single = singleAmb;
                }
            }
            throw Okio.parseError(str);
        }
        single = new SingleAmb(Jsoup.listOf((Object[]) new MediaBrowserCompat.MediaItem[]{mediaBrowserImpl.createRootMediaItem("playlists", R.drawable.ic_bookmark_white, playerService.getResources().getString(R.string.tab_bookmarks_short)), mediaBrowserImpl.createRootMediaItem("history", R.drawable.ic_history_white, playerService.getResources().getString(R.string.action_history))}), 4);
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new VideoPlayerUi.AnonymousClass1(result, 10), new TokenData((Object) result, str, 18));
        single.subscribe(consumerSingleObserver);
        compositeDisposable.add(consumerSingleObserver);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x01ea  */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int onStartCommand(android.content.Intent r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 883
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.PlayerService.onStartCommand(android.content.Intent, int, int):int");
    }

    @Override // android.app.Service
    public final void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        Player player = this.player;
        if (player == null || player.videoPlayerSelected()) {
            onDestroy();
            Runtime.getRuntime().halt(0);
        }
    }
}
