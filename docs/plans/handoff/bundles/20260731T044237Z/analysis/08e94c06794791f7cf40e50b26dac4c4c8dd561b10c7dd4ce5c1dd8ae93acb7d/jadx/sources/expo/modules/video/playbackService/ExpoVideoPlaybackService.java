package expo.modules.video.playbackService;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentTransaction;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.session.CommandButton;
import androidx.media3.session.MediaSession;
import androidx.media3.session.MediaSessionService;
import androidx.media3.session.MediaStyleNotificationHelper;
import androidx.media3.session.SessionCommand;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.common.collect.ImmutableList;
import expo.modules.kotlin.AppContext;
import expo.modules.video.R;
import expo.modules.video.player.VideoPlayer;
import io.sentry.cache.EnvelopeCache;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ExpoVideoPlaybackService.kt */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0006J\u0012\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0013H\u0016J\u0012\u0010 \u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00072\u0006\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020\u0011H\u0016J\u0010\u0010&\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0007H\u0002J\b\u0010'\u001a\u00020\u0011H\u0002J\u0010\u0010(\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0006H\u0002J\b\u0010)\u001a\u00020\u0011H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;", "Landroidx/media3/session/MediaSessionService;", "<init>", "()V", "mediaSessions", "", "Landroidx/media3/exoplayer/ExoPlayer;", "Landroidx/media3/session/MediaSession;", "binder", "Lexpo/modules/video/playbackService/PlaybackServiceBinder;", "commandSeekForward", "Landroidx/media3/session/SessionCommand;", "commandSeekBackward", "seekForwardButton", "Landroidx/media3/session/CommandButton;", "seekBackwardButton", "setShowNotification", "", ExpoVideoPlaybackService.SESSION_SHOW_NOTIFICATION, "", "player", "registerPlayer", "videoPlayer", "Lexpo/modules/video/player/VideoPlayer;", "unregisterPlayer", "onBind", "Landroid/os/IBinder;", SDKConstants.PARAM_INTENT, "Landroid/content/Intent;", "onUpdateNotification", EnvelopeCache.PREFIX_CURRENT_SESSION_FILE, "startInForegroundRequired", "onTaskRemoved", "rootIntent", "onGetSession", "controllerInfo", "Landroidx/media3/session/MediaSession$ControllerInfo;", "onDestroy", "createNotification", "cleanup", "hidePlayerNotification", "hideAllNotifications", "Companion", "expo-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ExpoVideoPlaybackService extends MediaSessionService {
    public static final String CHANNEL_ID = "PlaybackService";

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String SEEK_BACKWARD_COMMAND = "SEEK_REWIND";
    public static final String SEEK_FORWARD_COMMAND = "SEEK_FORWARD";
    public static final long SEEK_INTERVAL_MS = 10000;
    public static final String SESSION_SHOW_NOTIFICATION = "showNotification";
    private final SessionCommand commandSeekBackward;
    private final SessionCommand commandSeekForward;
    private final CommandButton seekBackwardButton;
    private final CommandButton seekForwardButton;
    private final Map<ExoPlayer, MediaSession> mediaSessions = new LinkedHashMap();
    private final PlaybackServiceBinder binder = new PlaybackServiceBinder(this);

    @Override // androidx.media3.session.MediaSessionService
    public MediaSession onGetSession(MediaSession.ControllerInfo controllerInfo) {
        Intrinsics.checkNotNullParameter(controllerInfo, "controllerInfo");
        return null;
    }

    public ExpoVideoPlaybackService() {
        SessionCommand sessionCommand = new SessionCommand(SEEK_FORWARD_COMMAND, Bundle.EMPTY);
        this.commandSeekForward = sessionCommand;
        SessionCommand sessionCommand2 = new SessionCommand(SEEK_BACKWARD_COMMAND, Bundle.EMPTY);
        this.commandSeekBackward = sessionCommand2;
        CommandButton build = new CommandButton.Builder().setDisplayName("rewind").setSessionCommand(sessionCommand).setIconResId(R.drawable.seek_forwards_10s).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.seekForwardButton = build;
        CommandButton build2 = new CommandButton.Builder().setDisplayName("forward").setSessionCommand(sessionCommand2).setIconResId(R.drawable.seek_backwards_10s).build();
        Intrinsics.checkNotNullExpressionValue(build2, "build(...)");
        this.seekBackwardButton = build2;
    }

    public final void setShowNotification(boolean showNotification, ExoPlayer player) {
        Bundle bundle;
        Bundle sessionExtras;
        Intrinsics.checkNotNullParameter(player, "player");
        if (Build.VERSION.SDK_INT >= 26) {
            MediaSession mediaSession = this.mediaSessions.get(player);
            if (mediaSession == null || (sessionExtras = mediaSession.getSessionExtras()) == null || (bundle = sessionExtras.deepCopy()) == null) {
                bundle = new Bundle();
            }
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean(SESSION_SHOW_NOTIFICATION, showNotification);
        MediaSession mediaSession2 = this.mediaSessions.get(player);
        if (mediaSession2 != null) {
            mediaSession2.setSessionExtras(bundle);
            onUpdateNotification(mediaSession2, showNotification);
        }
    }

    public final void registerPlayer(VideoPlayer videoPlayer) {
        Intrinsics.checkNotNullParameter(videoPlayer, "videoPlayer");
        ExoPlayer player = videoPlayer.getPlayer();
        if (this.mediaSessions.get(player) != null) {
            return;
        }
        MediaSession build = new MediaSession.Builder(this, player).setId("ExpoVideoPlaybackService_" + player.hashCode()).setCallback((MediaSession.Callback) new VideoMediaSessionCallback()).setCustomLayout((List<CommandButton>) ImmutableList.of(this.seekBackwardButton, this.seekForwardButton)).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.mediaSessions.put(player, build);
        addSession(build);
        setShowNotification(videoPlayer.getShowNowPlayingNotification(), player);
    }

    public final void unregisterPlayer(ExoPlayer player) {
        Intrinsics.checkNotNullParameter(player, "player");
        hidePlayerNotification(player);
        MediaSession remove = this.mediaSessions.remove(player);
        if (remove != null) {
            remove.release();
        }
        if (this.mediaSessions.isEmpty()) {
            cleanup();
            stopSelf();
        }
    }

    @Override // androidx.media3.session.MediaSessionService, android.app.Service
    public IBinder onBind(Intent intent) {
        super.onBind(intent);
        return this.binder;
    }

    @Override // androidx.media3.session.MediaSessionService
    public void onUpdateNotification(MediaSession session, boolean startInForegroundRequired) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (session.getSessionExtras().getBoolean(SESSION_SHOW_NOTIFICATION, false)) {
            createNotification(session);
            return;
        }
        Player player = session.getPlayer();
        ExoPlayer exoPlayer = player instanceof ExoPlayer ? (ExoPlayer) player : null;
        if (exoPlayer != null) {
            hidePlayerNotification(exoPlayer);
        }
    }

    @Override // androidx.media3.session.MediaSessionService, android.app.Service
    public void onTaskRemoved(Intent rootIntent) {
        cleanup();
        stopSelf();
    }

    @Override // androidx.media3.session.MediaSessionService, android.app.Service
    public void onDestroy() {
        cleanup();
        super.onDestroy();
    }

    private final void createNotification(MediaSession session) {
        String str;
        MediaMetadata mediaMetadata;
        if (session.getPlayer().getCurrentMediaItem() == null) {
            return;
        }
        Object systemService = getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel(CHANNEL_ID, CHANNEL_ID, 2));
        }
        MediaItem currentMediaItem = session.getPlayer().getCurrentMediaItem();
        if (currentMediaItem == null || (mediaMetadata = currentMediaItem.mediaMetadata) == null || (str = mediaMetadata.title) == null) {
        }
        Notification build = new NotificationCompat.Builder(this, CHANNEL_ID).setSmallIcon(androidx.media3.session.R.drawable.media3_icon_circular_play).setContentTitle(str).setStyle(new MediaStyleNotificationHelper.MediaStyle(session)).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        notificationManager.notify(session.getPlayer().hashCode(), build);
    }

    private final void cleanup() {
        hideAllNotifications();
        List list = CollectionsKt.toList(this.mediaSessions.values());
        this.mediaSessions.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((MediaSession) it.next()).release();
        }
    }

    private final void hidePlayerNotification(ExoPlayer player) {
        Object systemService = getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).cancel(player.hashCode());
    }

    private final void hideAllNotifications() {
        Object systemService = getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        notificationManager.cancelAll();
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.deleteNotificationChannel(CHANNEL_ID);
        }
    }

    /* compiled from: ExpoVideoPlaybackService.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;", "", "<init>", "()V", "SEEK_FORWARD_COMMAND", "", "SEEK_BACKWARD_COMMAND", "CHANNEL_ID", "SESSION_SHOW_NOTIFICATION", "SEEK_INTERVAL_MS", "", "startService", "", "appContext", "Lexpo/modules/kotlin/AppContext;", "context", "Landroid/content/Context;", "serviceConnection", "Lexpo/modules/video/playbackService/PlaybackServiceConnection;", "expo-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void startService(AppContext appContext, Context context, PlaybackServiceConnection serviceConnection) {
            Intrinsics.checkNotNullParameter(appContext, "appContext");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(serviceConnection, "serviceConnection");
            Context reactContext = appContext.getReactContext();
            if (reactContext != null) {
                Intent intent = new Intent(context, (Class<?>) ExpoVideoPlaybackService.class);
                intent.setAction(MediaSessionService.SERVICE_INTERFACE);
                reactContext.startService(intent);
                reactContext.bindService(intent, serviceConnection, Build.VERSION.SDK_INT >= 29 ? FragmentTransaction.TRANSIT_FRAGMENT_OPEN : 1);
            }
        }
    }
}
