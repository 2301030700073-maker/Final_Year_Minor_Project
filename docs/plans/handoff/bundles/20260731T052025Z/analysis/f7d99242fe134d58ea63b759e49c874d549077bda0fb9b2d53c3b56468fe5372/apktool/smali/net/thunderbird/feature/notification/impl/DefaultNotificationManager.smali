.class public final Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/sender/NotificationSender;
.implements Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;


# instance fields
.field public final notificationDismisser:Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

.field public final notificationSender:Lnet/thunderbird/feature/notification/api/sender/NotificationSender;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/notification/api/sender/NotificationSender;Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;->notificationSender:Lnet/thunderbird/feature/notification/api/sender/NotificationSender;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;->notificationDismisser:Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dismiss(Lnet/thunderbird/feature/notification/api/content/Notification;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;->notificationDismisser:Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;->dismiss(Lnet/thunderbird/feature/notification/api/content/Notification;)Lkotlinx/coroutines/flow/Flow;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final dismiss-RiqCqwk(I)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;->notificationDismisser:Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;->dismiss-RiqCqwk(I)Lkotlinx/coroutines/flow/Flow;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final send(Lnet/thunderbird/feature/notification/api/content/Notification;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationManager;->notificationSender:Lnet/thunderbird/feature/notification/api/sender/NotificationSender;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Lnet/thunderbird/feature/notification/api/sender/NotificationSender;->send(Lnet/thunderbird/feature/notification/api/content/Notification;)Lkotlinx/coroutines/flow/Flow;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
