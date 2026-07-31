.class public final Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final instance:Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;


# instance fields
.field public final notification:Lorg/wikipedia/views/NotificationWithProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->instance:Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 10
    .line 11
    sget-object p0, Lorg/wikipedia/notifications/NotificationCategory;->READING_LIST_SYNCING:Lorg/wikipedia/notifications/NotificationCategory;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationCategory:Lorg/wikipedia/notifications/NotificationCategory;

    .line 17
    .line 18
    const/16 p0, 0x3ea

    .line 19
    .line 20
    iput p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationId:I

    .line 21
    .line 22
    const p0, 0x7f100016

    .line 23
    .line 24
    .line 25
    iput p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationTitle:I

    .line 26
    .line 27
    const p0, 0x7f100015

    .line 28
    .line 29
    .line 30
    iput p0, v0, Lorg/wikipedia/views/NotificationWithProgressBar;->notificationDescription:I

    .line 31
    .line 32
    return-void
.end method
