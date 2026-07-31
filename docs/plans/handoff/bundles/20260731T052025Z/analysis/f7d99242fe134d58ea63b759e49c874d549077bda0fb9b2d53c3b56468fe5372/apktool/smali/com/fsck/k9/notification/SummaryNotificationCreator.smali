.class public final Lcom/fsck/k9/notification/SummaryNotificationCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

.field public final lockScreenNotificationCreator:Lcom/fsck/k9/notification/LockScreenNotificationCreator;

.field public final notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

.field public final resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

.field public final singleMessageNotificationCreator:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationHelper;Lcom/fsck/k9/notification/K9NotificationActionCreator;Lcom/fsck/k9/notification/LockScreenNotificationCreator;Lcom/fsck/k9/notification/SingleMessageNotificationCreator;Lcom/fsck/k9/notification/K9NotificationResourceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/SummaryNotificationCreator;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/SummaryNotificationCreator;->actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/notification/SummaryNotificationCreator;->lockScreenNotificationCreator:Lcom/fsck/k9/notification/LockScreenNotificationCreator;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/notification/SummaryNotificationCreator;->singleMessageNotificationCreator:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/notification/SummaryNotificationCreator;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 13
    .line 14
    return-void
.end method
