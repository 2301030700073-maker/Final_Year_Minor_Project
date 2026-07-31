.class public final Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;
.super Lnet/thunderbird/feature/notification/api/command/NotificationCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public final isAppInBackground:Lkotlin/jvm/functions/Function0;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3, p4}, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;-><init>(Lnet/thunderbird/feature/notification/api/content/Notification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 15
    .line 16
    iput-object p2, p0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 17
    .line 18
    iput-object v0, p0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;->isAppInBackground:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand$execute$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand$execute$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand$execute$1;

    .line 21
    .line 22
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand$execute$1;-><init>(Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand$execute$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand$execute$1;->label:I

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
    goto :goto_2

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
    const/16 v1, 0x12

    .line 53
    .line 54
    invoke-direct {p1, v1, p0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    iget-object v4, p0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 59
    .line 60
    const-string v5, "DisplaySystemNotificationCommand"

    .line 61
    .line 62
    invoke-static {v4, v5, v2, p1, v1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 66
    .line 67
    const-string/jumbo v1, "use_notification_sender_for_system_notifications"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isDisabledOrUnavailable()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    new-instance p1, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand;

    .line 81
    .line 82
    new-instance v0, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand$Reason$FeatureFlagDisabled;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand$Reason$FeatureFlagDisabled;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, p0, v0}, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand;-><init>(Lnet/thunderbird/feature/notification/api/command/NotificationCommand;Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand$Reason$FeatureFlagDisabled;)V

    .line 88
    .line 89
    .line 90
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 91
    .line 92
    invoke-direct {p0, p1, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_3
    iget-object p1, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notification:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 97
    .line 98
    move-object v1, p1

    .line 99
    check-cast v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 100
    .line 101
    iget-object v1, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    if-eq v1, v3, :cond_6

    .line 110
    .line 111
    iget-object v1, p0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;->isAppInBackground:Lkotlin/jvm/functions/Function0;

    .line 112
    .line 113
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    instance-of v1, p1, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 127
    .line 128
    if-nez v1, :cond_5

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    new-instance p1, Lnet/thunderbird/feature/notification/api/command/outcome/CommandExecutionFailed;

    .line 132
    .line 133
    const/4 v0, 0x6

    .line 134
    invoke-direct {p1, v0, p0}, Lnet/thunderbird/feature/notification/api/command/outcome/CommandExecutionFailed;-><init>(ILnet/thunderbird/feature/notification/api/command/NotificationCommand;)V

    .line 135
    .line 136
    .line 137
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 138
    .line 139
    invoke-direct {p0, p1, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-object p0

    .line 143
    :cond_6
    :goto_1
    iput v3, v0, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand$execute$1;->label:I

    .line 144
    .line 145
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 146
    .line 147
    invoke-interface {v1, p1, v0}, Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;->show-MQcfKRA(Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 152
    .line 153
    if-ne p1, v0, :cond_7

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_7
    :goto_2
    check-cast p1, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 157
    .line 158
    iget p1, p1, Lnet/thunderbird/feature/notification/api/NotificationId;->value:I

    .line 159
    .line 160
    new-instance v0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;

    .line 161
    .line 162
    invoke-direct {v0, p1, p0}, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;-><init>(ILnet/thunderbird/feature/notification/api/command/NotificationCommand;)V

    .line 163
    .line 164
    .line 165
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 166
    .line 167
    invoke-direct {p0, v0}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-object p0
.end method
