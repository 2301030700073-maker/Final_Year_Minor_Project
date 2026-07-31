package expo.modules.video.playbackService;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import expo.modules.video.player.VideoPlayer;
import io.sentry.android.core.SentryLogcatAdapter;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlaybackServiceConnection.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Lexpo/modules/video/playbackService/PlaybackServiceConnection;", "Landroid/content/ServiceConnection;", "player", "Ljava/lang/ref/WeakReference;", "Lexpo/modules/video/player/VideoPlayer;", "<init>", "(Ljava/lang/ref/WeakReference;)V", "getPlayer", "()Ljava/lang/ref/WeakReference;", "playbackServiceBinder", "Lexpo/modules/video/playbackService/PlaybackServiceBinder;", "getPlaybackServiceBinder", "()Lexpo/modules/video/playbackService/PlaybackServiceBinder;", "setPlaybackServiceBinder", "(Lexpo/modules/video/playbackService/PlaybackServiceBinder;)V", "onServiceConnected", "", "componentName", "Landroid/content/ComponentName;", "binder", "Landroid/os/IBinder;", "onServiceDisconnected", "onNullBinding", "expo-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class PlaybackServiceConnection implements ServiceConnection {
    private PlaybackServiceBinder playbackServiceBinder;
    private final WeakReference<VideoPlayer> player;

    public PlaybackServiceConnection(WeakReference<VideoPlayer> player) {
        Intrinsics.checkNotNullParameter(player, "player");
        this.player = player;
    }

    public final WeakReference<VideoPlayer> getPlayer() {
        return this.player;
    }

    public final PlaybackServiceBinder getPlaybackServiceBinder() {
        return this.playbackServiceBinder;
    }

    public final void setPlaybackServiceBinder(PlaybackServiceBinder playbackServiceBinder) {
        this.playbackServiceBinder = playbackServiceBinder;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder binder) {
        ExpoVideoPlaybackService service;
        Intrinsics.checkNotNullParameter(componentName, "componentName");
        Intrinsics.checkNotNullParameter(binder, "binder");
        VideoPlayer videoPlayer = this.player.get();
        if (videoPlayer == null) {
            return;
        }
        PlaybackServiceBinder playbackServiceBinder = binder instanceof PlaybackServiceBinder ? (PlaybackServiceBinder) binder : null;
        this.playbackServiceBinder = playbackServiceBinder;
        if (playbackServiceBinder == null || (service = playbackServiceBinder.getService()) == null) {
            SentryLogcatAdapter.w("ExpoVideo", "Expo Video could not bind to the playback service. This will cause issues with playback notifications and sustaining background playback.");
        } else {
            service.registerPlayer(videoPlayer);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        Intrinsics.checkNotNullParameter(componentName, "componentName");
        this.playbackServiceBinder = null;
    }

    @Override // android.content.ServiceConnection
    public void onNullBinding(ComponentName componentName) {
        Intrinsics.checkNotNullParameter(componentName, "componentName");
        SentryLogcatAdapter.w("ExpoVideo", "Expo Video could not bind to the playback service. This will cause issues with playback notifications and sustaining background playback.");
    }
}
