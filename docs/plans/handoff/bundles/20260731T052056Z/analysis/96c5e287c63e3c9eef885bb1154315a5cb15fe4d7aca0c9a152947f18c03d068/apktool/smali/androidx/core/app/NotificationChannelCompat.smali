.class public final Landroidx/core/app/NotificationChannelCompat;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final mAudioAttributes:Landroid/media/AudioAttributes;

.field public final mConversationId:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mGroupId:Ljava/lang/String;

.field public final mId:Ljava/lang/String;

.field public final mImportance:I

.field public mLightColor:I

.field public final mLights:Z

.field public mName:Ljava/lang/CharSequence;

.field public final mParentId:Ljava/lang/String;

.field public final mShowBadge:Z

.field public final mSound:Landroid/net/Uri;

.field public mVibrationEnabled:Z

.field public final mVibrationPattern:[J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    .line 111
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 113
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    iput-object p2, p0, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    .line 115
    iput p1, p0, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    .line 116
    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/app/NotificationChannel;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getImportance(Landroid/app/NotificationChannel;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v1, v0}, Landroidx/core/app/NotificationChannelCompat;-><init>(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getName(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getDescription(Landroid/app/NotificationChannel;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getGroup(Landroid/app/NotificationChannel;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->canShowBadge(Landroid/app/NotificationChannel;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    .line 35
    .line 36
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getSound(Landroid/app/NotificationChannel;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    .line 41
    .line 42
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getAudioAttributes(Landroid/app/NotificationChannel;)Landroid/media/AudioAttributes;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 47
    .line 48
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->shouldShowLights(Landroid/app/NotificationChannel;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    .line 53
    .line 54
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getLightColor(Landroid/app/NotificationChannel;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 59
    .line 60
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->shouldVibrate(Landroid/app/NotificationChannel;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    .line 65
    .line 66
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getVibrationPattern(Landroid/app/NotificationChannel;)[J

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    .line 71
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    const/16 v1, 0x1e

    .line 75
    .line 76
    if-lt v0, v1, :cond_0

    .line 77
    .line 78
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api30Impl;->getParentChannelId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iput-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api30Impl;->getConversationId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iput-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    .line 89
    .line 90
    :cond_0
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->canBypassDnd(Landroid/app/NotificationChannel;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getLockscreenVisibility(Landroid/app/NotificationChannel;)V

    .line 94
    .line 95
    .line 96
    const/16 p0, 0x1d

    .line 97
    .line 98
    if-lt v0, p0, :cond_1

    .line 99
    .line 100
    invoke-static {p1}, Landroidx/core/app/RemoteInput$Api29Impl;->canBubble(Landroid/app/NotificationChannel;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    if-lt v0, v1, :cond_2

    .line 104
    .line 105
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$Api30Impl;->isImportantConversation(Landroid/app/NotificationChannel;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method
