.class public final Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/sender/NotificationSender;


# instance fields
.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public final inAppNotificationNotifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final systemNotificationNotifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;->systemNotificationNotifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;->inAppNotificationNotifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final send(Lnet/thunderbird/feature/notification/api/content/Notification;)Lkotlinx/coroutines/flow/Flow;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, p0, p1, v1, v2}, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;-><init>(Ljava/lang/Object;Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/Continuation;I)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 12
    .line 13
    invoke-direct {p0, v2, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method
