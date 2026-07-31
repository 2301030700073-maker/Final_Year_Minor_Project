.class public final Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;
.super Lnet/thunderbird/feature/notification/api/command/NotificationCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final featureFlagKey:Ljava/lang/String;

.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public final logTag:Ljava/lang/String;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/NotificationRegistry;Lnet/thunderbird/feature/notification/api/content/Notification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V
    .locals 0

    .line 24
    invoke-direct {p0, p5, p6}, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;-><init>(Lnet/thunderbird/feature/notification/api/content/Notification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 25
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->logTag:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 27
    iput-object p3, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 28
    iput-object p4, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/NotificationRegistry;Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->$r8$classId:I

    .line 3
    .line 4
    const-string v2, "DismissSystemNotificationCommand"

    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-direct/range {v1 .. v7}, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;-><init>(Ljava/lang/String;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/NotificationRegistry;Lnet/thunderbird/feature/notification/api/content/Notification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo p0, "use_notification_sender_for_system_notifications"

    .line 16
    .line 17
    .line 18
    iput-object p0, v1, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->featureFlagKey:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/NotificationRegistry;Lnet/thunderbird/feature/notification/api/content/InAppNotification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->$r8$classId:I

    .line 21
    const-string v2, "DismissInAppNotificationCommand"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 22
    invoke-direct/range {v1 .. v7}, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;-><init>(Ljava/lang/String;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/NotificationRegistry;Lnet/thunderbird/feature/notification/api/content/Notification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 23
    const-string p0, "display_in_app_notifications"

    iput-object p0, v1, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->featureFlagKey:Ljava/lang/String;

    return-void
.end method

.method public static execute$suspendImpl(Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;-><init>(Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget p0, v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;->I$0:I

    .line 36
    .line 37
    iget-object v0, v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;->L$0:Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 54
    .line 55
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notification:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 56
    .line 57
    iget-object v4, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 58
    .line 59
    iget-object v5, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->logTag:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v6, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/16 v7, 0x10

    .line 64
    .line 65
    invoke-direct {v6, v7, p0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 v7, 0x2

    .line 69
    invoke-static {p1, v5, v3, v6, v7}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 73
    .line 74
    invoke-virtual {p0}, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->getFeatureFlagKey-MdUMsqc()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {p1, v5}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isDisabledOrUnavailable()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    new-instance p1, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand;

    .line 89
    .line 90
    new-instance v0, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand$Reason$FeatureFlagDisabled;

    .line 91
    .line 92
    invoke-virtual {p0}, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->getFeatureFlagKey-MdUMsqc()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand$Reason$FeatureFlagDisabled;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, p0, v0}, Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand;-><init>(Lnet/thunderbird/feature/notification/api/command/NotificationCommand;Lnet/thunderbird/feature/notification/api/command/outcome/UnsupportedCommand$Reason$FeatureFlagDisabled;)V

    .line 100
    .line 101
    .line 102
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 103
    .line 104
    invoke-direct {p0, p1, v3}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object p0

    .line 108
    :cond_3
    move-object p1, v4

    .line 109
    check-cast p1, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object v5, p1, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->internalRegistrar:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 118
    .line 119
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v5, v5, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;->byNotification:Ljava/util/Map;

    .line 129
    .line 130
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_8

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->get-_qXnNqc(Lnet/thunderbird/feature/notification/api/content/Notification;)Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-nez p1, :cond_6

    .line 141
    .line 142
    instance-of p0, v4, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 143
    .line 144
    if-eqz p0, :cond_4

    .line 145
    .line 146
    check-cast v4, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    move-object v4, v3

    .line 150
    :goto_1
    if-eqz v4, :cond_5

    .line 151
    .line 152
    iget-object p0, v4, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->registrar:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 153
    .line 154
    if-eqz p0, :cond_5

    .line 155
    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v0, ", Registrar = "

    .line 159
    .line 160
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    goto :goto_2

    .line 171
    :cond_5
    move-object p0, v3

    .line 172
    :goto_2
    const-string p1, "Unexpected state when trying to dismiss a notification. The required notification was not found in registry.This might have been caused by a concurrent modification of the registry.Please report this issue.Notification = "

    .line 173
    .line 174
    invoke-static {v1, p0, p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-object v3

    .line 178
    :cond_6
    iget p1, p1, Lnet/thunderbird/feature/notification/api/NotificationId;->value:I

    .line 179
    .line 180
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->notifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 181
    .line 182
    iput-object p0, v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;->L$0:Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;

    .line 183
    .line 184
    iput p1, v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;->I$0:I

    .line 185
    .line 186
    iput v2, v0, Lnet/thunderbird/feature/notification/impl/command/DismissNotificationCommand$execute$1;->label:I

    .line 187
    .line 188
    invoke-interface {v1, p1}, Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;->dismiss-XSUv0x4(I)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 192
    .line 193
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 194
    .line 195
    if-ne v0, v1, :cond_7

    .line 196
    .line 197
    return-object v1

    .line 198
    :cond_7
    move-object v0, p0

    .line 199
    move p0, p1

    .line 200
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    new-instance p1, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;

    .line 204
    .line 205
    invoke-direct {p1, p0, v0}, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;-><init>(ILnet/thunderbird/feature/notification/api/command/NotificationCommand;)V

    .line 206
    .line 207
    .line 208
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 209
    .line 210
    invoke-direct {p0, p1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    return-object p0

    .line 214
    :cond_8
    new-instance p1, Lnet/thunderbird/feature/notification/api/command/outcome/CommandExecutionFailed;

    .line 215
    .line 216
    const/4 v0, 0x4

    .line 217
    invoke-direct {p1, v0, p0}, Lnet/thunderbird/feature/notification/api/command/outcome/CommandExecutionFailed;-><init>(ILnet/thunderbird/feature/notification/api/command/NotificationCommand;)V

    .line 218
    .line 219
    .line 220
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 221
    .line 222
    invoke-direct {p0, p1, v3}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    return-object p0
.end method


# virtual methods
.method public final execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->execute$suspendImpl(Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getFeatureFlagKey-MdUMsqc()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->featureFlagKey:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;->featureFlagKey:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
