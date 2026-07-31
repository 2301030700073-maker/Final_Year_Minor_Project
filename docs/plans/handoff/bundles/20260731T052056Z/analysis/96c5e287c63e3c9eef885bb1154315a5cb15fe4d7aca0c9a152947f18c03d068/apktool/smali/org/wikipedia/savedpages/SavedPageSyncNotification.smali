.class public final Lorg/wikipedia/savedpages/SavedPageSyncNotification;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/savedpages/SavedPageSyncNotification;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final instance:Lorg/wikipedia/savedpages/SavedPageSyncNotification;


# instance fields
.field public final notification:Lorg/wikipedia/views/NotificationWithProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->instance:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 10
    .line 11
    sget-object p0, Lorg/wikipedia/notifications/NotificationCategory;->SYNCING:Lorg/wikipedia/notifications/NotificationCategory;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationCategory:Lorg/wikipedia/notifications/NotificationCategory;

    .line 17
    .line 18
    const/16 p0, 0x3e9

    .line 19
    .line 20
    iput p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationId:I

    .line 21
    .line 22
    const p0, 0x7f100017

    .line 23
    .line 24
    .line 25
    iput p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationTitle:I

    .line 26
    .line 27
    const p0, 0x7f100013

    .line 28
    .line 29
    .line 30
    iput p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationDescription:I

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    iput-boolean p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->isEnableCancelButton:Z

    .line 34
    .line 35
    iput-boolean p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->isEnablePauseButton:Z

    .line 36
    .line 37
    const-class p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    .line 38
    .line 39
    iput-object p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->targetClass:Ljava/lang/Class;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string p0, "syncCancel"

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    sget-object v1, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->instance:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object p0, v1, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 20
    .line 21
    iget-boolean p0, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, v1, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 29
    .line 30
    iput-boolean v0, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isCanceled:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-string p0, "syncPauseResume"

    .line 36
    .line 37
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    iget-object p0, v1, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 44
    .line 45
    iput-boolean p1, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isCanceled:Z

    .line 46
    .line 47
    iget-boolean p2, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    iput-boolean p1, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 52
    .line 53
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iput-boolean v0, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final setNotificationPaused(Landroid/content/Context;II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationCategory:Lorg/wikipedia/notifications/NotificationCategory;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/wikipedia/notifications/NotificationCategory;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/wikipedia/views/NotificationWithProgressBar;->build(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;II)V

    .line 20
    .line 21
    .line 22
    iput p2, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    .line 23
    .line 24
    iput p3, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    iput-boolean p2, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 28
    .line 29
    iget-boolean p2, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->isCanceled:Z

    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    const-class p2, Landroid/app/NotificationManager;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/app/NotificationManager;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget p0, p0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationId:I

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :cond_1
    const-string p0, "notificationCategory"

    .line 54
    .line 55
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    throw p0
.end method
