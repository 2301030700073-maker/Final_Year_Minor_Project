.class public final Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;
.super Lorg/schabi/newpipe/player/ui/PlayerUi;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/app/NavUtils;->stopForeground(Landroid/app/Service;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const v2, 0x1e38d

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 24
    .line 25
    iput-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 26
    .line 27
    return-void
.end method

.method public final onBlocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onBroadcastReceived(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_RECREATE_NOTIFICATION"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onBuffering()V
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationSlots:[I

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x3

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x1

    .line 21
    aget v2, v0, v1

    .line 22
    .line 23
    const/16 v3, 0x8

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 28
    .line 29
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/core/app/NotificationCompat$Action;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    :cond_2
    const/4 v1, 0x2

    .line 42
    aget v0, v0, v1

    .line 43
    .line 44
    if-ne v0, v3, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 47
    .line 48
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/core/app/NotificationCompat$Action;

    .line 55
    .line 56
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_1
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onPaused()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getMinimizeOnExitAction(Lorg/schabi/newpipe/player/PlayerService;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object p0, v1, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    .line 22
    .line 23
    invoke-static {p0}, Landroidx/core/app/NavUtils;->stopForeground(Landroid/app/Service;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v1, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const v2, 0x1e38d

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iput-object v0, v1, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 40
    .line 41
    iput-object v0, v1, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onPausedSeek()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onPlayQueueEdited()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onPlaying()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotificationIfNeededAndUpdate(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onThumbnailLoaded(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->setLargeIcon(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 20
    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, 0x1e38d

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method
