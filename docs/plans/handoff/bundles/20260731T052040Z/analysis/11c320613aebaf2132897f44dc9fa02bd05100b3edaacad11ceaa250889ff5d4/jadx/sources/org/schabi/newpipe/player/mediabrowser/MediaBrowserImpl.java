package org.schabi.newpipe.player.mediabrowser;

import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaDescriptionCompat;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.schedulers.Schedulers;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.PlayerService$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class MediaBrowserImpl {
    public static final Companion Companion = new Companion();
    public final PlayerService context;
    public final AppDatabase database;
    public final CompositeDisposable disposables;
    public final Dispatcher packageValidator;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static Uri imageUriOrNullIfDisabled(String str) {
            if (!ImageStrategy.shouldLoadImages() || str == null) {
                return null;
            }
            Uri parse = Uri.parse(str);
            parse.getClass();
            return parse;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InfoItem.InfoType.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MediaBrowserImpl(PlayerService playerService, PlayerService$$ExternalSyntheticLambda0 playerService$$ExternalSyntheticLambda0) {
        this.context = playerService;
        this.packageValidator = new Dispatcher(playerService);
        this.database = AppKt.getInstance(playerService);
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        this.disposables = compositeDisposable;
        Flowable mergedPlaylists = getMergedPlaylists();
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(new VideoPlayerUi.AnonymousClass1(playerService$$ExternalSyntheticLambda0, 9), Functions.ON_ERROR_MISSING);
        mergedPlaylists.subscribe((FlowableSubscriber) lambdaSubscriber);
        compositeDisposable.add(lambdaSubscriber);
    }

    public static Uri.Builder buildLocalPlaylistItemMediaId(long j, boolean z) {
        String str = z ? "remote" : "local";
        Uri.Builder authority = new Uri.Builder().authority("org.schabi.newpipe");
        authority.getClass();
        Uri.Builder appendPath = authority.appendPath("playlists").appendPath(str);
        appendPath.getClass();
        Uri.Builder appendPath2 = appendPath.appendPath(String.valueOf(j));
        appendPath2.getClass();
        return appendPath2;
    }

    public final MediaBrowserCompat.MediaItem createRootMediaItem(String str, int i, String str2) {
        PlayerService playerService = this.context;
        Resources resources = playerService.getResources();
        Uri build = new Uri.Builder().scheme("android.resource").authority(resources.getResourcePackageName(i)).appendPath(resources.getResourceTypeName(i)).appendPath(resources.getResourceEntryName(i)).build();
        Bundle bundle = new Bundle();
        bundle.putString("android.media.browse.CONTENT_STYLE_GROUP_TITLE_HINT", playerService.getString(R.string.app_name));
        return new MediaBrowserCompat.MediaItem(new MediaDescriptionCompat(str, str2, null, null, null, build, bundle, null), 1);
    }

    public final Flowable getMergedPlaylists() {
        AppDatabase appDatabase = this.database;
        appDatabase.streamDAO();
        appDatabase.playlistDAO();
        PlaylistStreamDAO_Impl playlistStreamDAO = appDatabase.playlistStreamDAO();
        PlaylistRemoteDAO_Impl playlistRemoteDAO = appDatabase.playlistRemoteDAO();
        Flowable createFlowable = Cookie.Companion.createFlowable(playlistStreamDAO.__db, true, new String[]{"streams", "playlists", "playlist_stream_join"}, new FeedFragment$$ExternalSyntheticLambda10(3));
        IoScheduler ioScheduler = Schedulers.IO;
        return Flowable.combineLatest(createFlowable.subscribeOn(ioScheduler), Cookie.Companion.createFlowable(playlistRemoteDAO.__db, false, new String[]{"remote_playlists"}, new FeedFragment$$ExternalSyntheticLambda10(2)).subscribeOn(ioScheduler), new FeedViewModel$$ExternalSyntheticLambda0(10));
    }

    public final SingleMap populateLocalPlaylist(long j) {
        AppDatabase appDatabase = this.database;
        appDatabase.streamDAO();
        appDatabase.playlistDAO();
        PlaylistStreamDAO_Impl playlistStreamDAO = appDatabase.playlistStreamDAO();
        return new SingleMap(new FlowableToListSingle(Cookie.Companion.createFlowable(playlistStreamDAO.__db, true, new String[]{"streams", "playlist_stream_join", "stream_state"}, new PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1(j, playlistStreamDAO, 0)).subscribeOn(Schedulers.IO), 1), new WebMReader.Info(this, j, 1), 0);
    }

    public final SingleMap populateRemotePlaylist(long j) {
        AppDatabase appDatabase = this.database;
        appDatabase.getClass();
        return new SingleMap(new SingleMap(new FlowableToListSingle(Cookie.Companion.createFlowable(appDatabase.playlistRemoteDAO().__db, false, new String[]{"remote_playlists"}, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 11)).subscribeOn(Schedulers.IO), 1), MediaBrowserImpl$populateRemotePlaylist$1.INSTANCE, 1), new WebMReader.Info(this, j, 2), 0);
    }
}
