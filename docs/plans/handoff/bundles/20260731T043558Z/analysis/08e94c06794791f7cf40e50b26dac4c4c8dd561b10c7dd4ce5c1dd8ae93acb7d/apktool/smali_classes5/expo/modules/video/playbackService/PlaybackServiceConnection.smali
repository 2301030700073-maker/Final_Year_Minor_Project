.class public final Lexpo/modules/video/playbackService/PlaybackServiceConnection;
.super Ljava/lang/Object;
.source "PlaybackServiceConnection.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/video/playbackService/PlaybackServiceConnection;",
        "Landroid/content/ServiceConnection;",
        "player",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/video/player/VideoPlayer;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;)V",
        "getPlayer",
        "()Ljava/lang/ref/WeakReference;",
        "playbackServiceBinder",
        "Lexpo/modules/video/playbackService/PlaybackServiceBinder;",
        "getPlaybackServiceBinder",
        "()Lexpo/modules/video/playbackService/PlaybackServiceBinder;",
        "setPlaybackServiceBinder",
        "(Lexpo/modules/video/playbackService/PlaybackServiceBinder;)V",
        "onServiceConnected",
        "",
        "componentName",
        "Landroid/content/ComponentName;",
        "binder",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "onNullBinding",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private playbackServiceBinder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

.field private final player:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->player:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getPlaybackServiceBinder()Lexpo/modules/video/playbackService/PlaybackServiceBinder;
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->playbackServiceBinder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    return-object v0
.end method

.method public final getPlayer()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->player:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string p1, "ExpoVideo"

    .line 35
    const-string v0, "Expo Video could not bind to the playback service. This will cause issues with playback notifications and sustaining background playback."

    .line 33
    invoke-static {p1, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->player:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/player/VideoPlayer;

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    instance-of v0, p2, Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    if-eqz v0, :cond_1

    check-cast p2, Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->playbackServiceBinder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    if-eqz p2, :cond_2

    .line 19
    invoke-virtual {p2}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->registerPlayer(Lexpo/modules/video/player/VideoPlayer;)V

    goto :goto_1

    :cond_2
    move-object p1, p0

    check-cast p1, Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    .line 21
    const-string p1, "ExpoVideo"

    .line 22
    const-string p2, "Expo Video could not bind to the playback service. This will cause issues with playback notifications and sustaining background playback."

    .line 20
    invoke-static {p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->playbackServiceBinder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    return-void
.end method

.method public final setPlaybackServiceBinder(Lexpo/modules/video/playbackService/PlaybackServiceBinder;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->playbackServiceBinder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    return-void
.end method
