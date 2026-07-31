.class public final Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;


# instance fields
.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/notification/api/NotificationRegistry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;->notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dismiss-XSUv0x4(I)V
    .locals 5

    .line 1
    new-instance v0, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    iget-object v2, p0, Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 9
    .line 10
    const-string v3, "InAppNotificationNotifier"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v2, v3, v4, v0, v1}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;->notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 17
    .line 18
    check-cast p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->get-RiqCqwk(I)Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    instance-of v0, p1, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->unregister(Lnet/thunderbird/feature/notification/api/content/Notification;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final show-MQcfKRA(Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;
    .locals 5

    .line 1
    check-cast p1, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 2
    .line 3
    new-instance v0, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/16 v1, 0x14

    .line 6
    .line 7
    invoke-direct {v0, v1, p1}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iget-object v2, p0, Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 12
    .line 13
    const-string v3, "InAppNotificationNotifier"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v2, v3, v4, v0, v1}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/receiver/InAppNotificationNotifier;->notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 20
    .line 21
    check-cast p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->get-_qXnNqc(Lnet/thunderbird/feature/notification/api/content/Notification;)Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget p0, v0, Lnet/thunderbird/feature/notification/api/NotificationId;->value:I

    .line 30
    .line 31
    new-instance p1, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lnet/thunderbird/feature/notification/api/NotificationId;-><init>(I)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->register-MQcfKRA(Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
