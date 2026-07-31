.class public final Lorg/schabi/newpipe/player/notification/NotificationUtil;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field public notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field public final notificationSlots:[I

.field public final player:Lorg/schabi/newpipe/player/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_DEFAULTS:[I

    .line 5
    .line 6
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, [I

    .line 11
    .line 12
    iput-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationSlots:[I

    .line 13
    .line 14
    iput-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 15
    .line 16
    return-void
.end method

.method public static setupNotificationBuilder(Lorg/schabi/newpipe/player/PlayerService;Landroidx/media/app/NotificationCompat$MediaStyle;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 2
    .line 3
    const v1, 0x7f130385

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput p1, v0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 18
    .line 19
    iput p1, v0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 20
    .line 21
    const-string/jumbo p1, "transport"

    .line 22
    .line 23
    .line 24
    iput-object p1, v0, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, v0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 28
    .line 29
    iget-object p1, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 30
    .line 31
    const v1, 0x7f08012d

    .line 32
    .line 33
    .line 34
    iput v1, p1, Landroid/app/Notification;->icon:I

    .line 35
    .line 36
    const v1, 0x7f06003f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 44
    .line 45
    new-instance v1, Landroid/content/Intent;

    .line 46
    .line 47
    const-string v2, "org.schabi.newpipe.player.MainPlayer.CLOSE"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/high16 v2, 0xc000000

    .line 53
    .line 54
    const v3, 0x1e38d

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iput-object p0, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 62
    .line 63
    return-object v0
.end method

.method public static startForeground(Lorg/schabi/newpipe/player/PlayerService;Landroid/app/Notification;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/16 v3, 0x22

    .line 11
    .line 12
    if-lt v0, v3, :cond_1

    .line 13
    .line 14
    invoke-static {p0, p1, v2}, Landroidx/core/app/ServiceCompat$Api29Impl;->startForeground$1(Lorg/schabi/newpipe/player/PlayerService;Landroid/app/Notification;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    if-lt v0, v1, :cond_2

    .line 19
    .line 20
    invoke-static {p0, p1, v2}, Landroidx/core/app/ServiceCompat$Api29Impl;->startForeground(Lorg/schabi/newpipe/player/PlayerService;Landroid/app/Notification;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    const v0, 0x1e38d

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final declared-synchronized createNotification()Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 3
    .line 4
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 5
    .line 6
    new-instance v1, Landroidx/core/app/NotificationManagerCompat;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 12
    .line 13
    new-instance v0, Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x21

    .line 21
    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->initializeNotificationSlots()[I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Landroidx/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 34
    .line 35
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 36
    .line 37
    const-class v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 44
    .line 45
    const/16 v3, 0x1d

    .line 46
    .line 47
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    const/16 v3, 0x11

    .line 57
    .line 58
    invoke-direct {v2, v0, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 65
    .line 66
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 67
    .line 68
    invoke-static {v1, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->setupNotificationBuilder(Lorg/schabi/newpipe/player/PlayerService;Landroidx/media/app/NotificationCompat$MediaStyle;)Landroidx/core/app/NotificationCompat$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 73
    .line 74
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 75
    .line 76
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 77
    .line 78
    const v3, 0x7f130387

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/4 v3, 0x1

    .line 86
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    .line 91
    .line 92
    iput-boolean v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->setLargeIcon(Landroidx/core/app/NotificationCompat$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    monitor-exit p0

    .line 98
    return-object v0

    .line 99
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw v0
.end method

.method public final declared-synchronized createNotificationIfNeededAndUpdate(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotification()Landroidx/core/app/NotificationCompat$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->updateNotification()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 29
    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v1, 0x1e38d

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :cond_2
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

.method public final getIntentForNotification()Landroid/content/Intent;
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 6
    .line 7
    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 8
    .line 9
    const/high16 v2, 0x10000000

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 15
    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    const-class v1, Lorg/schabi/newpipe/player/PlayQueueActivity;

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v1, 0x18

    .line 28
    .line 29
    if-ge p0, v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    :cond_1
    return-object v0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 37
    .line 38
    const-class v3, Lorg/schabi/newpipe/MainActivity;

    .line 39
    .line 40
    invoke-static {p0, v3, v0, v1}, Landroidx/sqlite/SQLite;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "resume_playback"

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string v0, "android.intent.action.MAIN"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string v0, "android.intent.category.LAUNCHER"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    return-object p0
.end method

.method public final initializeNotificationSlots()[I
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/schabi/newpipe/player/notification/NotificationConstants;->getCompactSlotsFromPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    move v5, v4

    .line 18
    :goto_0
    const/4 v6, 0x5

    .line 19
    if-ge v4, v6, :cond_2

    .line 20
    .line 21
    iget-object v6, v0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 22
    .line 23
    sget-object v7, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_PREF_KEYS:[I

    .line 24
    .line 25
    aget v7, v7, v4

    .line 26
    .line 27
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    sget-object v7, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_DEFAULTS:[I

    .line 32
    .line 33
    aget v7, v7, v4

    .line 34
    .line 35
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    iget-object v7, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationSlots:[I

    .line 40
    .line 41
    aput v6, v7, v4

    .line 42
    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-interface {v1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_0

    .line 54
    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;

    .line 72
    .line 73
    const/4 v1, 0x4

    .line 74
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0}, Lj$/util/stream/IntStream;->toArray()[I

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public final setLargeIcon(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 6
    .line 7
    const v2, 0x7f1304b1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentThumbnail:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    const v0, 0x7f130437

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    sub-int/2addr p0, v1

    .line 55
    div-int/lit8 p0, p0, 0x2

    .line 56
    .line 57
    sub-int/2addr v0, v1

    .line 58
    div-int/lit8 v0, v0, 0x2

    .line 59
    .line 60
    invoke-static {v2, p0, v0, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 73
    iput-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 74
    .line 75
    return-void
.end method

.method public final updateActions(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    const/4 v1, 0x5

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationSlots:[I

    .line 11
    .line 12
    aget v1, v1, v0

    .line 13
    .line 14
    iget-object v2, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 15
    .line 16
    invoke-static {v2, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;->fromNotificationActionEnum(Lorg/schabi/newpipe/player/Player;I)Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v2, v2, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 24
    .line 25
    new-instance v3, Landroid/content/Intent;

    .line 26
    .line 27
    iget-object v4, v1, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/high16 v4, 0xc000000

    .line 33
    .line 34
    const v5, 0x1e38d

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Landroidx/core/app/NotificationCompat$Action;

    .line 42
    .line 43
    iget v4, v1, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon:I

    .line 44
    .line 45
    iget-object v1, v1, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v3, v4, v1, v2}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public final declared-synchronized updateNotification()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->getIntentForNotification()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/high16 v3, 0x8000000

    .line 13
    .line 14
    const v4, 0x1e38d

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v4, v2, v3}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 22
    .line 23
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 26
    .line 27
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 28
    .line 29
    const v3, 0x7f13050e

    .line 30
    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 49
    .line 50
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 51
    .line 52
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getUploaderName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 71
    .line 72
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 73
    .line 74
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 75
    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_2
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 90
    .line 91
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 96
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .line 99
    const/16 v1, 0x21

    .line 100
    .line 101
    if-ge v0, v1, :cond_3

    .line 102
    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->updateActions(Landroidx/core/app/NotificationCompat$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto :goto_4

    .line 111
    :cond_3
    :goto_3
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    throw v0
.end method
