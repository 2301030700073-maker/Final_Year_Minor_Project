.class public final Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;
.super Landroidx/media3/session/MediaSessionService;
.source "ExpoVideoPlaybackService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0006J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0013H\u0016J\u0012\u0010 \u001a\u00020\u00112\u0008\u0010!\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00072\u0006\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u0011H\u0016J\u0010\u0010&\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0007H\u0002J\u0008\u0010\'\u001a\u00020\u0011H\u0002J\u0010\u0010(\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0006H\u0002J\u0008\u0010)\u001a\u00020\u0011H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;",
        "Landroidx/media3/session/MediaSessionService;",
        "<init>",
        "()V",
        "mediaSessions",
        "",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "Landroidx/media3/session/MediaSession;",
        "binder",
        "Lexpo/modules/video/playbackService/PlaybackServiceBinder;",
        "commandSeekForward",
        "Landroidx/media3/session/SessionCommand;",
        "commandSeekBackward",
        "seekForwardButton",
        "Landroidx/media3/session/CommandButton;",
        "seekBackwardButton",
        "setShowNotification",
        "",
        "showNotification",
        "",
        "player",
        "registerPlayer",
        "videoPlayer",
        "Lexpo/modules/video/player/VideoPlayer;",
        "unregisterPlayer",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onUpdateNotification",
        "session",
        "startInForegroundRequired",
        "onTaskRemoved",
        "rootIntent",
        "onGetSession",
        "controllerInfo",
        "Landroidx/media3/session/MediaSession$ControllerInfo;",
        "onDestroy",
        "createNotification",
        "cleanup",
        "hidePlayerNotification",
        "hideAllNotifications",
        "Companion",
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


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "PlaybackService"

.field public static final Companion:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;

.field public static final SEEK_BACKWARD_COMMAND:Ljava/lang/String; = "SEEK_REWIND"

.field public static final SEEK_FORWARD_COMMAND:Ljava/lang/String; = "SEEK_FORWARD"

.field public static final SEEK_INTERVAL_MS:J = 0x2710L

.field public static final SESSION_SHOW_NOTIFICATION:Ljava/lang/String; = "showNotification"


# instance fields
.field private final binder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

.field private final commandSeekBackward:Landroidx/media3/session/SessionCommand;

.field private final commandSeekForward:Landroidx/media3/session/SessionCommand;

.field private final mediaSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media3/exoplayer/ExoPlayer;",
            "Landroidx/media3/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field

.field private final seekBackwardButton:Landroidx/media3/session/CommandButton;

.field private final seekForwardButton:Landroidx/media3/session/CommandButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->Companion:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    .line 30
    new-instance v0, Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    invoke-direct {v0, p0}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;-><init>(Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;)V

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->binder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    .line 32
    new-instance v0, Landroidx/media3/session/SessionCommand;

    const-string v1, "SEEK_FORWARD"

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->commandSeekForward:Landroidx/media3/session/SessionCommand;

    .line 33
    new-instance v1, Landroidx/media3/session/SessionCommand;

    const-string v2, "SEEK_REWIND"

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->commandSeekBackward:Landroidx/media3/session/SessionCommand;

    .line 34
    new-instance v2, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v2}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    .line 35
    const-string v3, "rewind"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v0}, Landroidx/media3/session/CommandButton$Builder;->setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 37
    sget v2, Lexpo/modules/video/R$drawable;->seek_forwards_10s:I

    invoke-virtual {v0, v2}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->seekForwardButton:Landroidx/media3/session/CommandButton;

    .line 40
    new-instance v0, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v0}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    .line 41
    const-string v3, "forward"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroidx/media3/session/CommandButton$Builder;->setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 43
    sget v1, Lexpo/modules/video/R$drawable;->seek_backwards_10s:I

    invoke-virtual {v0, v1}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->seekBackwardButton:Landroidx/media3/session/CommandButton;

    return-void
.end method

.method private final cleanup()V
    .locals 2

    .line 138
    invoke-direct {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->hideAllNotifications()V

    .line 140
    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaSession;

    .line 143
    invoke-virtual {v1}, Landroidx/media3/session/MediaSession;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final createNotification(Landroidx/media3/session/MediaSession;)V
    .locals 5

    .line 116
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 121
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-string v3, "PlaybackService"

    if-lt v1, v2, :cond_1

    .line 122
    new-instance v1, Landroid/app/NotificationChannel;

    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "\u200e"

    check-cast v1, Ljava/lang/CharSequence;

    .line 127
    :cond_3
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    sget v3, Landroidx/media3/session/R$drawable;->media3_icon_circular_play:I

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 130
    new-instance v2, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;

    invoke-direct {v2, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;-><init>(Landroidx/media3/session/MediaSession;)V

    check-cast v2, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private final hideAllNotifications()V
    .locals 3

    .line 153
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 154
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 156
    const-string v1, "PlaybackService"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final hidePlayerNotification(Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 2

    .line 148
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSessionService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 88
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->binder:Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->cleanup()V

    .line 112
    invoke-super {p0}, Landroidx/media3/session/MediaSessionService;->onDestroy()V

    return-void
.end method

.method public onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;
    .locals 1

    const-string v0, "controllerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->cleanup()V

    .line 103
    invoke-virtual {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->stopSelf()V

    return-void
.end method

.method public onUpdateNotification(Landroidx/media3/session/MediaSession;Z)V
    .locals 2

    const-string p2, "session"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getSessionExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "showNotification"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->createNotification(Landroidx/media3/session/MediaSession;)V

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object p1

    instance-of p2, p1, Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p2, :cond_1

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayer;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 96
    invoke-direct {p0, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->hidePlayerNotification(Landroidx/media3/exoplayer/ExoPlayer;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final registerPlayer(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 5

    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaSession$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    move-object v3, v0

    check-cast v3, Landroidx/media3/common/Player;

    invoke-direct {v1, v2, v3}, Landroidx/media3/session/MediaSession$Builder;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ExpoVideoPlaybackService_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/session/MediaSession$Builder;->setId(Ljava/lang/String;)Landroidx/media3/session/MediaSession$Builder;

    move-result-object v1

    .line 67
    new-instance v2, Lexpo/modules/video/playbackService/VideoMediaSessionCallback;

    invoke-direct {v2}, Lexpo/modules/video/playbackService/VideoMediaSessionCallback;-><init>()V

    check-cast v2, Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {v1, v2}, Landroidx/media3/session/MediaSession$Builder;->setCallback(Landroidx/media3/session/MediaSession$Callback;)Landroidx/media3/session/MediaSession$Builder;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->seekBackwardButton:Landroidx/media3/session/CommandButton;

    iget-object v3, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->seekForwardButton:Landroidx/media3/session/CommandButton;

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Landroidx/media3/session/MediaSession$Builder;->setCustomLayout(Ljava/util/List;)Landroidx/media3/session/MediaSession$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroidx/media3/session/MediaSession$Builder;->build()Landroidx/media3/session/MediaSession;

    move-result-object v1

    .line 66
    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0, v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 73
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getShowNowPlayingNotification()Z

    move-result p1

    invoke-virtual {p0, p1, v0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->setShowNotification(ZLandroidx/media3/exoplayer/ExoPlayer;)V

    return-void
.end method

.method public final setShowNotification(ZLandroidx/media3/exoplayer/ExoPlayer;)V
    .locals 2

    const-string v0, "player"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->getSessionExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    :cond_2
    :goto_0
    const-string v1, "showNotification"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    iget-object v1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/MediaSession;

    if-eqz p2, :cond_3

    .line 54
    invoke-virtual {p2, v0}, Landroidx/media3/session/MediaSession;->setSessionExtras(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0, p2, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->onUpdateNotification(Landroidx/media3/session/MediaSession;Z)V

    :cond_3
    return-void
.end method

.method public final unregisterPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->hidePlayerNotification(Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 78
    iget-object v0, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/MediaSession;

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->release()V

    .line 80
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->mediaSessions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    invoke-direct {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->cleanup()V

    .line 82
    invoke-virtual {p0}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->stopSelf()V

    :cond_1
    return-void
.end method
