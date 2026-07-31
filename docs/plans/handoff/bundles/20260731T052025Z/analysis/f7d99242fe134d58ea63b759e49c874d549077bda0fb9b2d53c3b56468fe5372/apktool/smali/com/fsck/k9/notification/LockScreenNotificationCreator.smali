.class public final Lcom/fsck/k9/notification/LockScreenNotificationCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

.field public final resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationHelper;Lcom/fsck/k9/notification/K9NotificationResourceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/LockScreenNotificationCreator;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/LockScreenNotificationCreator;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final configureLockScreenNotification(Landroidx/core/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/BaseNotificationData;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/fsck/k9/notification/BaseNotificationData;->lockScreenNotificationData:Lcom/fsck/k9/notification/LockScreenNotificationData;

    .line 2
    .line 3
    sget-object v1, Lcom/fsck/k9/notification/LockScreenNotificationData$None;->INSTANCE:Lcom/fsck/k9/notification/LockScreenNotificationData$None;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    iput p0, p1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v1, Lcom/fsck/k9/notification/LockScreenNotificationData$None;->INSTANCE$1:Lcom/fsck/k9/notification/LockScreenNotificationData$None;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    iput p0, p1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    sget-object v1, Lcom/fsck/k9/notification/LockScreenNotificationData$None;->INSTANCE$3:Lcom/fsck/k9/notification/LockScreenNotificationData$None;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    iput p0, p1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    instance-of v1, v0, Lcom/fsck/k9/notification/LockScreenNotificationData$SenderNames;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    check-cast v0, Lcom/fsck/k9/notification/LockScreenNotificationData$SenderNames;

    .line 44
    .line 45
    invoke-virtual {p0, p2}, Lcom/fsck/k9/notification/LockScreenNotificationCreator;->createPublicNotification(Lcom/fsck/k9/notification/BaseNotificationData;)Landroidx/core/app/NotificationCompat$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object p2, v0, Lcom/fsck/k9/notification/LockScreenNotificationData$SenderNames;->senderNames:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iput-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    sget-object v1, Lcom/fsck/k9/notification/LockScreenNotificationData$None;->INSTANCE$2:Lcom/fsck/k9/notification/LockScreenNotificationData$None;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lcom/fsck/k9/notification/LockScreenNotificationCreator;->createPublicNotification(Lcom/fsck/k9/notification/BaseNotificationData;)Landroidx/core/app/NotificationCompat$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    iget-object p2, p2, Lcom/fsck/k9/notification/BaseNotificationData;->accountName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iput-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final createPublicNotification(Lcom/fsck/k9/notification/BaseNotificationData;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/notification/BaseNotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    iget v1, p1, Lcom/fsck/k9/notification/BaseNotificationData;->newMessagesCount:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/notification/LockScreenNotificationCreator;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x1

    .line 18
    new-array v4, v4, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-object v3, v4, v5

    .line 22
    .line 23
    const v3, 0x7f100008

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/fsck/k9/notification/LockScreenNotificationCreator;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 34
    .line 35
    sget-object v3, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MESSAGES:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v3}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const v0, 0x7f0800fb

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 45
    .line 46
    iput v0, v3, Landroid/app/Notification;->icon:I

    .line 47
    .line 48
    iget p1, p1, Lcom/fsck/k9/notification/BaseNotificationData;->color:I

    .line 49
    .line 50
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 51
    .line 52
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 53
    .line 54
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 59
    .line 60
    const-string p1, "email"

    .line 61
    .line 62
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 63
    .line 64
    return-object p0
.end method
