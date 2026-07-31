.class public final Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand;
.super Lnet/thunderbird/feature/notification/api/command/NotificationCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/content/InAppNotification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p3, p4}, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;-><init>(Lnet/thunderbird/feature/notification/api/content/Notification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand$execute$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand$execute$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand$execute$1;

    .line 21
    .line 22
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand$execute$1;-><init>(Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand$execute$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand$execute$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/16 v1, 0x11

    .line 53
    .line 54
    invoke-direct {p1, v1, p0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    iget-object v4, p0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 59
    .line 60
    const-string v5, "DisplayInAppNotificationCommand"

    .line 61
    .line 62
    invoke-static {v4, v5, v2, p1, v1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 66
    .line 67
    const-string v1, "display_in_app_notifications"

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isDisabledOrUnavailable()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    new-instance p1, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand;

    .line 80
    .line 81
    new-instance v0, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand$Reason$FeatureFlagDisabled;

    .line 82
    .line 83
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand$Reason$FeatureFlagDisabled;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, p0, v0}, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand;-><init>(Lnet/thunderbird/feature/notification/api/command/NotificationCommand;Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand$Reason$FeatureFlagDisabled;)V

    .line 87
    .line 88
    .line 89
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 90
    .line 91
    invoke-direct {p0, p1, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_3
    iput v3, v0, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand$execute$1;->label:I

    .line 96
    .line 97
    iget-object p1, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 98
    .line 99
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notification:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 100
    .line 101
    invoke-interface {p1, v1, v0}, Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;->show-MQcfKRA(Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 106
    .line 107
    if-ne p1, v0, :cond_4

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_4
    :goto_1
    check-cast p1, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 111
    .line 112
    iget p1, p1, Lnet/thunderbird/feature/notification/api/NotificationId;->value:I

    .line 113
    .line 114
    new-instance v0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;

    .line 115
    .line 116
    invoke-direct {v0, p1, p0}, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;-><init>(ILnet/thunderbird/feature/notification/api/command/NotificationCommand;)V

    .line 117
    .line 118
    .line 119
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 120
    .line 121
    invoke-direct {p0, v0}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object p0
.end method
