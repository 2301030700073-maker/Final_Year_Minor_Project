package org.schabi.newpipe.player.mediabrowser;

import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.compose.ui.node.Owner;
import coil3.decode.StaticImageDecoderKt;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.json.internal.Composer;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okio.Okio;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.DownloaderImpl$$ExternalSyntheticLambda0;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.PlayerService$$ExternalSyntheticLambda0;
import org.schabi.newpipe.streams.WebMReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class MediaBrowserPlaybackPreparer implements MediaSessionConnector.PlaybackPreparer {
    public static final Companion Companion = new Companion();
    public static final String TAG = Reflection.getOrCreateKotlinClass(MediaBrowserPlaybackPreparer.class).getSimpleName();
    public final ReportExecutor$$ExternalSyntheticLambda0 clearMediaSessionError;
    public final PlayerService context;
    public final AppDatabase database;
    public ConsumerSingleObserver disposable;
    public final PlayerService$$ExternalSyntheticLambda0 onPrepare;
    public final DownloaderImpl$$ExternalSyntheticLambda0 setMediaSessionError;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public MediaBrowserPlaybackPreparer(PlayerService playerService, DownloaderImpl$$ExternalSyntheticLambda0 downloaderImpl$$ExternalSyntheticLambda0, ReportExecutor$$ExternalSyntheticLambda0 reportExecutor$$ExternalSyntheticLambda0, PlayerService$$ExternalSyntheticLambda0 playerService$$ExternalSyntheticLambda0) {
        this.context = playerService;
        this.setMediaSessionError = downloaderImpl$$ExternalSyntheticLambda0;
        this.clearMediaSessionError = reportExecutor$$ExternalSyntheticLambda0;
        this.onPrepare = playerService$$ExternalSyntheticLambda0;
        this.database = AppKt.getInstance(playerService);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static io.reactivex.rxjava3.internal.operators.single.SingleMap extractPlayQueueFromInfoItemMediaId(java.lang.String r6, java.util.ArrayList r7, java.lang.String r8) {
        /*
            int r0 = r7.size()
            r1 = 2
            if (r0 != r1) goto L95
            r0 = 1
            java.lang.Object r2 = r7.get(r0)
            java.lang.String r2 = (java.lang.String) r2
            int r2 = java.lang.Integer.parseInt(r2)
            r3 = 0
            java.lang.Object r7 = r7.get(r3)
            java.lang.String r7 = (java.lang.String) r7
            r7.getClass()
            int r4 = r7.hashCode()
            r5 = -891990144(0xffffffffcad54f80, float:-6989760.0)
            if (r4 == r5) goto L45
            r5 = 738950403(0x2c0b7d03, float:1.9822483E-12)
            if (r4 == r5) goto L3a
            r5 = 1879474642(0x700681d2, float:1.6651174E29)
            if (r4 != r5) goto L85
            java.lang.String r4 = "playlist"
            boolean r4 = r7.equals(r4)
            if (r4 == 0) goto L85
            org.schabi.newpipe.extractor.InfoItem$InfoType r7 = org.schabi.newpipe.extractor.InfoItem.InfoType.PLAYLIST
            goto L4f
        L3a:
            java.lang.String r4 = "channel"
            boolean r4 = r7.equals(r4)
            if (r4 == 0) goto L85
            org.schabi.newpipe.extractor.InfoItem$InfoType r7 = org.schabi.newpipe.extractor.InfoItem.InfoType.CHANNEL
            goto L4f
        L45:
            java.lang.String r4 = "stream"
            boolean r4 = r7.equals(r4)
            if (r4 == 0) goto L85
            org.schabi.newpipe.extractor.InfoItem$InfoType r7 = org.schabi.newpipe.extractor.InfoItem.InfoType.STREAM
        L4f:
            int r7 = r7.ordinal()
            if (r7 == 0) goto L79
            if (r7 == r0) goto L6d
            if (r7 != r1) goto L68
            io.reactivex.rxjava3.core.Single r6 = org.schabi.newpipe.util.ExtractorHelper.getChannelInfo(r2, r8, r3)
            org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1 r7 = new org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1
            r7.<init>(r2, r0)
            io.reactivex.rxjava3.internal.operators.single.SingleMap r8 = new io.reactivex.rxjava3.internal.operators.single.SingleMap
            r8.<init>(r6, r7, r3)
            return r8
        L68:
            org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException r6 = okio.Okio.parseError(r6)
            throw r6
        L6d:
            io.reactivex.rxjava3.core.Single r6 = org.schabi.newpipe.util.ExtractorHelper.getPlaylistInfo(r2, r8, r3)
            org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$populateRemotePlaylist$1 r7 = org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$populateRemotePlaylist$1.INSTANCE$2
            io.reactivex.rxjava3.internal.operators.single.SingleMap r8 = new io.reactivex.rxjava3.internal.operators.single.SingleMap
            r8.<init>(r6, r7, r3)
            return r8
        L79:
            io.reactivex.rxjava3.core.Single r6 = org.schabi.newpipe.util.ExtractorHelper.getStreamInfo(r2, r8, r3)
            org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$populateRemotePlaylist$1 r7 = org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$populateRemotePlaylist$1.INSTANCE$1
            io.reactivex.rxjava3.internal.operators.single.SingleMap r8 = new io.reactivex.rxjava3.internal.operators.single.SingleMap
            r8.<init>(r6, r7, r3)
            return r8
        L85:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r8 = "Unexpected value: "
            java.lang.String r7 = r8.concat(r7)
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            throw r6
        L95:
            org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException r6 = okio.Okio.parseError(r6)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer.extractPlayQueueFromInfoItemMediaId(java.lang.String, java.util.ArrayList, java.lang.String):io.reactivex.rxjava3.internal.operators.single.SingleMap");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
    
        if (r1.equals("local") != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x005d, code lost:
    
        r2 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0062, code lost:
    
        if (r10.size() != 2) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0064, code lost:
    
        r6 = java.lang.Long.parseLong((java.lang.String) r10.get(0));
        r9 = java.lang.Integer.parseInt((java.lang.String) r10.get(1));
        r10 = r1.equals("local");
        r8 = r8.database;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x007e, code lost:
    
        if (r10 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0080, code lost:
    
        r8.streamDAO();
        r8.playlistDAO();
        r8 = r8.playlistStreamDAO();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b4, code lost:
    
        return new io.reactivex.rxjava3.internal.operators.single.SingleMap(new io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle(okhttp3.Cookie.Companion.createFlowable(r8.__db, true, new java.lang.String[]{"streams", "playlist_stream_join", "stream_state"}, new org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1(r6, r8, 0)).subscribeOn(io.reactivex.rxjava3.schedulers.Schedulers.IO), r5), new org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1(r9, r0), 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b5, code lost:
    
        r8.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00eb, code lost:
    
        return new io.reactivex.rxjava3.internal.operators.single.SingleMap(new io.reactivex.rxjava3.internal.operators.single.SingleMap(new io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle(okhttp3.Cookie.Companion.createFlowable(r8.playlistRemoteDAO().__db, false, new java.lang.String[]{"remote_playlists"}, new androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26(r6, 11)).subscribeOn(io.reactivex.rxjava3.schedulers.Schedulers.IO), r5), org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$populateRemotePlaylist$1.INSTANCE$4, 1), new org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1(r9, r2), 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00f0, code lost:
    
        throw okio.Okio.parseError(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005b, code lost:
    
        if (r1.equals("remote") != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.reactivex.rxjava3.internal.operators.single.SingleMap extractPlayQueueFromPlaylistMediaId(java.lang.String r9, java.util.ArrayList r10, java.lang.String r11) {
        /*
            r8 = this;
            boolean r0 = r10.isEmpty()
            if (r0 != 0) goto Lf6
            r0 = 0
            java.lang.Object r1 = r10.remove(r0)
            java.lang.String r1 = (java.lang.String) r1
            int r2 = r1.hashCode()
            r3 = -934610874(0xffffffffc84af846, float:-207841.1)
            java.lang.String r4 = "local"
            r5 = 1
            if (r2 == r3) goto L55
            r3 = 116079(0x1c56f, float:1.62661E-40)
            if (r2 == r3) goto L2a
            r11 = 103145323(0x625df6b, float:3.1197192E-35)
            if (r2 != r11) goto Lf1
            boolean r11 = r1.equals(r4)
            if (r11 == 0) goto Lf1
            goto L5d
        L2a:
            java.lang.String r8 = "url"
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto Lf1
            int r8 = r10.size()
            if (r8 != r5) goto L50
            if (r11 == 0) goto L50
            java.lang.Object r8 = r10.get(r0)
            java.lang.String r8 = (java.lang.String) r8
            int r8 = java.lang.Integer.parseInt(r8)
            io.reactivex.rxjava3.core.Single r8 = org.schabi.newpipe.util.ExtractorHelper.getPlaylistInfo(r8, r11, r0)
            org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$populateRemotePlaylist$1 r9 = org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$populateRemotePlaylist$1.INSTANCE$3
            io.reactivex.rxjava3.internal.operators.single.SingleMap r10 = new io.reactivex.rxjava3.internal.operators.single.SingleMap
            r10.<init>(r8, r9, r0)
            return r10
        L50:
            org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException r8 = okio.Okio.parseError(r9)
            throw r8
        L55:
            java.lang.String r11 = "remote"
            boolean r11 = r1.equals(r11)
            if (r11 == 0) goto Lf1
        L5d:
            int r11 = r10.size()
            r2 = 2
            if (r11 != r2) goto Lec
            java.lang.Object r9 = r10.get(r0)
            java.lang.String r9 = (java.lang.String) r9
            long r6 = java.lang.Long.parseLong(r9)
            java.lang.Object r9 = r10.get(r5)
            java.lang.String r9 = (java.lang.String) r9
            int r9 = java.lang.Integer.parseInt(r9)
            boolean r10 = r1.equals(r4)
            org.schabi.newpipe.database.AppDatabase r8 = r8.database
            if (r10 == 0) goto Lb5
            r8.streamDAO()
            r8.playlistDAO()
            org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl r8 = r8.playlistStreamDAO()
            androidx.room.RoomDatabase r10 = r8.__db
            java.lang.String r11 = "playlist_stream_join"
            java.lang.String r1 = "stream_state"
            java.lang.String r2 = "streams"
            java.lang.String[] r11 = new java.lang.String[]{r2, r11, r1}
            org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1 r1 = new org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1
            r1.<init>(r6, r8, r0)
            io.reactivex.rxjava3.core.Flowable r8 = okhttp3.Cookie.Companion.createFlowable(r10, r5, r11, r1)
            io.reactivex.rxjava3.internal.schedulers.IoScheduler r10 = io.reactivex.rxjava3.schedulers.Schedulers.IO
            io.reactivex.rxjava3.internal.operators.flowable.FlowableSubscribeOn r8 = r8.subscribeOn(r10)
            io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle r10 = new io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle
            r10.<init>(r8, r5)
            org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1 r8 = new org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1
            r8.<init>(r9, r0)
            io.reactivex.rxjava3.internal.operators.single.SingleMap r9 = new io.reactivex.rxjava3.internal.operators.single.SingleMap
            r9.<init>(r10, r8, r0)
            return r9
        Lb5:
            r8.getClass()
            org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl r8 = r8.playlistRemoteDAO()
            androidx.room.RoomDatabase r8 = r8.__db
            java.lang.String r10 = "remote_playlists"
            java.lang.String[] r10 = new java.lang.String[]{r10}
            androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26 r11 = new androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26
            r1 = 11
            r11.<init>(r6, r1)
            io.reactivex.rxjava3.core.Flowable r8 = okhttp3.Cookie.Companion.createFlowable(r8, r0, r10, r11)
            io.reactivex.rxjava3.internal.schedulers.IoScheduler r10 = io.reactivex.rxjava3.schedulers.Schedulers.IO
            io.reactivex.rxjava3.internal.operators.flowable.FlowableSubscribeOn r8 = r8.subscribeOn(r10)
            io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle r10 = new io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle
            r10.<init>(r8, r5)
            org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$populateRemotePlaylist$1 r8 = org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$populateRemotePlaylist$1.INSTANCE$4
            io.reactivex.rxjava3.internal.operators.single.SingleMap r11 = new io.reactivex.rxjava3.internal.operators.single.SingleMap
            r11.<init>(r10, r8, r5)
            org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1 r8 = new org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1
            r8.<init>(r9, r2)
            io.reactivex.rxjava3.internal.operators.single.SingleMap r9 = new io.reactivex.rxjava3.internal.operators.single.SingleMap
            r9.<init>(r11, r8, r0)
            return r9
        Lec:
            org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException r8 = okio.Okio.parseError(r9)
            throw r8
        Lf1:
            org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException r8 = okio.Okio.parseError(r9)
            throw r8
        Lf6:
            org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException r8 = okio.Okio.parseError(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer.extractPlayQueueFromPlaylistMediaId(java.lang.String, java.util.ArrayList, java.lang.String):io.reactivex.rxjava3.internal.operators.single.SingleMap");
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.PlaybackPreparer
    public final long getSupportedPrepareActions() {
        return 1024L;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.CommandReceiver
    public final boolean onCommand(Player player, String str, Bundle bundle, ResultReceiver resultReceiver) {
        player.getClass();
        str.getClass();
        return false;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.PlaybackPreparer
    public final void onPrepare(boolean z) {
        this.onPrepare.s(Boolean.valueOf(z));
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.PlaybackPreparer
    public final void onPrepareFromMediaId(String str, boolean z, Bundle bundle) {
        Single singleAmb;
        Uri parse;
        ArrayList arrayList;
        str.getClass();
        int i = MainActivity.$r8$clinit;
        ConsumerSingleObserver consumerSingleObserver = this.disposable;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        try {
            parse = Uri.parse(str);
            parse.getClass();
            arrayList = new ArrayList(parse.getPathSegments());
        } catch (ContentNotAvailableException e) {
            singleAmb = new SingleAmb(new Functions.JustValue(e), 2);
        }
        if (arrayList.isEmpty()) {
            throw Okio.parseError(str);
        }
        String str2 = (String) arrayList.remove(0);
        if (str2 != null) {
            int hashCode = str2.hashCode();
            if (hashCode != -1865828127) {
                if (hashCode != 3242771) {
                    if (hashCode == 926934164 && str2.equals("history")) {
                        int i2 = 1;
                        if (arrayList.size() != 1) {
                            throw Okio.parseError(str);
                        }
                        long parseLong = Long.parseLong((String) arrayList.get(0));
                        StreamHistoryDAO_Impl streamHistoryDAO = this.database.streamHistoryDAO();
                        singleAmb = new SingleMap(new FlowableToListSingle(Cookie.Companion.createFlowable(streamHistoryDAO.__db, false, new String[]{"streams", "stream_history"}, new ZipFilesKt$$ExternalSyntheticLambda3(streamHistoryDAO, 28)), i2), new WebMReader.Info(parseLong), 0);
                        SingleObserveOn subscribeOn = singleAmb.subscribeOn(Schedulers.IO);
                        Scheduler mainThread = AndroidSchedulers.mainThread();
                        ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new Composer(this, z), new TokenData(str, this, 20));
                        try {
                            subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver2, mainThread));
                            this.disposable = consumerSingleObserver2;
                            return;
                        } catch (NullPointerException e2) {
                            throw e2;
                        } catch (Throwable th) {
                            throw Owner.CC.m(th, "subscribeActual failed", th);
                        }
                    }
                } else if (str2.equals("item")) {
                    String queryParameter = parse.getQueryParameter("url");
                    if (queryParameter == null) {
                        throw Okio.parseError(str);
                    }
                    singleAmb = extractPlayQueueFromInfoItemMediaId(str, arrayList, queryParameter);
                    SingleObserveOn subscribeOn2 = singleAmb.subscribeOn(Schedulers.IO);
                    Scheduler mainThread2 = AndroidSchedulers.mainThread();
                    ConsumerSingleObserver consumerSingleObserver22 = new ConsumerSingleObserver(new Composer(this, z), new TokenData(str, this, 20));
                    subscribeOn2.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver22, mainThread2));
                    this.disposable = consumerSingleObserver22;
                    return;
                }
            } else if (str2.equals("playlists")) {
                singleAmb = extractPlayQueueFromPlaylistMediaId(str, arrayList, parse.getQueryParameter("url"));
                SingleObserveOn subscribeOn22 = singleAmb.subscribeOn(Schedulers.IO);
                Scheduler mainThread22 = AndroidSchedulers.mainThread();
                ConsumerSingleObserver consumerSingleObserver222 = new ConsumerSingleObserver(new Composer(this, z), new TokenData(str, this, 20));
                subscribeOn22.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver222, mainThread22));
                this.disposable = consumerSingleObserver222;
                return;
            }
        }
        throw Okio.parseError(str);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.PlaybackPreparer
    public final void onPrepareFromSearch(String str, boolean z, Bundle bundle) {
        str.getClass();
        this.setMediaSessionError.accept(StaticImageDecoderKt.getContextForLanguage(this.context).getString(R.string.content_not_supported), 2);
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.PlaybackPreparer
    public final void onPrepareFromUri(Uri uri, boolean z, Bundle bundle) {
        uri.getClass();
        this.setMediaSessionError.accept(StaticImageDecoderKt.getContextForLanguage(this.context).getString(R.string.content_not_supported), 2);
    }
}
