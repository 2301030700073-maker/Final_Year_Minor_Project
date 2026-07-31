.class public final Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final executorService:Ljava/util/concurrent/ExecutorService;

.field public final jobManager:Lcom/fsck/k9/job/K9JobManager;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;

.field public final notificationChannelManager:Lcom/fsck/k9/notification/NotificationChannelManager;

.field public final notificationController:Lcom/fsck/k9/notification/NotificationController;

.field public final preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Preferences;Lcom/fsck/k9/job/K9JobManager;Ljava/util/concurrent/ExecutorService;Lcom/fsck/k9/notification/NotificationChannelManager;Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/controller/MessagingController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->preferences:Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->jobManager:Lcom/fsck/k9/job/K9JobManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->notificationChannelManager:Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 15
    .line 16
    return-void
.end method
