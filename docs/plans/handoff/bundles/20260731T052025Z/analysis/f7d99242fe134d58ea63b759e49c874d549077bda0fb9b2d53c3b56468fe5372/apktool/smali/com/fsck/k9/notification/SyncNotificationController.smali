.class public final Lcom/fsck/k9/notification/SyncNotificationController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final actionBuilder:Lcom/fsck/k9/notification/K9NotificationActionCreator;

.field public final notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

.field public final outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

.field public final resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationHelper;Lcom/fsck/k9/notification/K9NotificationActionCreator;Lcom/fsck/k9/notification/K9NotificationResourceProvider;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lapp/k9mail/provider/K9AppNotificationIconProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/SyncNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/SyncNotificationController;->actionBuilder:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/notification/SyncNotificationController;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/notification/SyncNotificationController;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final createFetchingMailLockScreenNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Landroid/app/Notification;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/notification/SyncNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 2
    .line 3
    sget-object v1, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MISCELLANEOUS:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 10
    .line 11
    const v2, 0x7f08011c

    .line 12
    .line 13
    .line 14
    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 15
    .line 16
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, v0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 27
    .line 28
    iget-object p0, p0, Lcom/fsck/k9/notification/SyncNotificationController;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 31
    .line 32
    const p1, 0x7f1204f6

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iput-object p0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    return-object p0
.end method
