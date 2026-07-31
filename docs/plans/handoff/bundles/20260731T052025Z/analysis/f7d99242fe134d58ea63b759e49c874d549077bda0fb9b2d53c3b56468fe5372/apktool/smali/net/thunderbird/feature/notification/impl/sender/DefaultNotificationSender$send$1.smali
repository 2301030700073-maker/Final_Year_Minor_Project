.class public final Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $notification:Lnet/thunderbird/feature/notification/api/content/Notification;

.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$3:Ljava/util/Iterator;

.field public L$6:Lkotlinx/coroutines/flow/FlowCollector;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->$notification:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->$notification:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;

    .line 11
    .line 12
    check-cast p0, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, p0, v1, p2, v2}, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;-><init>(Ljava/lang/Object;Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/Continuation;I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_0
    new-instance v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;

    .line 22
    .line 23
    check-cast p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v0, p0, v1, p2, v2}, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;-><init>(Ljava/lang/Object;Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/Continuation;I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    return-object v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 8
    .line 9
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    iget-object v7, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->$notification:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x2

    .line 19
    const/4 v11, 0x3

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v7, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;

    .line 24
    .line 25
    iget-object v15, v7, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 26
    .line 27
    iget-object v1, v7, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;->notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 28
    .line 29
    iget-object v14, v7, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 30
    .line 31
    iget-object v13, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v13, Lkotlinx/coroutines/flow/FlowCollector;

    .line 34
    .line 35
    iget v4, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->label:I

    .line 36
    .line 37
    const/4 v12, 0x4

    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    if-eq v4, v9, :cond_3

    .line 41
    .line 42
    if-eq v4, v10, :cond_2

    .line 43
    .line 44
    if-eq v4, v11, :cond_1

    .line 45
    .line 46
    if-ne v4, v12, :cond_0

    .line 47
    .line 48
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_1
    iget-object v1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$3:Ljava/util/Iterator;

    .line 60
    .line 61
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    move-object v5, v13

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_2
    iget-object v1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$6:Lkotlinx/coroutines/flow/FlowCollector;

    .line 68
    .line 69
    iget-object v3, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$3:Ljava/util/Iterator;

    .line 70
    .line 71
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    move-object v5, v13

    .line 75
    move-object v13, v1

    .line 76
    move-object v1, v3

    .line 77
    move-object/from16 v3, p1

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    move-object v5, v13

    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    new-instance v4, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    const/16 v5, 0x13

    .line 93
    .line 94
    invoke-direct {v4, v5, v8}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const-string v5, "DefaultNotificationDismisser"

    .line 98
    .line 99
    const/4 v12, 0x0

    .line 100
    invoke-static {v14, v5, v12, v4, v10}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 101
    .line 102
    .line 103
    move-object v4, v1

    .line 104
    check-cast v4, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 105
    .line 106
    iget-object v4, v4, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->internalRegistrar:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 107
    .line 108
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object v4, v4, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;->byNotification:Ljava/util/Map;

    .line 118
    .line 119
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_b

    .line 124
    .line 125
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    instance-of v5, v8, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 130
    .line 131
    if-eqz v5, :cond_5

    .line 132
    .line 133
    move-object v5, v13

    .line 134
    new-instance v13, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;

    .line 135
    .line 136
    move-object/from16 v17, v8

    .line 137
    .line 138
    check-cast v17, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 139
    .line 140
    iget-object v12, v7, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;->systemNotificationNotifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 141
    .line 142
    move-object/from16 v16, v1

    .line 143
    .line 144
    move-object/from16 v18, v12

    .line 145
    .line 146
    invoke-direct/range {v13 .. v18}, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/NotificationRegistry;Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v13}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    move-object/from16 v16, v1

    .line 154
    .line 155
    move-object v5, v13

    .line 156
    :goto_0
    instance-of v1, v8, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 157
    .line 158
    if-eqz v1, :cond_6

    .line 159
    .line 160
    new-instance v13, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;

    .line 161
    .line 162
    move-object/from16 v17, v8

    .line 163
    .line 164
    check-cast v17, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 165
    .line 166
    iget-object v1, v7, Lnet/thunderbird/feature/notification/impl/dismisser/DefaultNotificationDismisser;->inAppNotificationNotifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 167
    .line 168
    move-object/from16 v18, v1

    .line 169
    .line 170
    invoke-direct/range {v13 .. v18}, Lnet/thunderbird/feature/notification/impl/command/DismissInAppNotificationCommand;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/NotificationRegistry;Lnet/thunderbird/feature/notification/api/content/InAppNotification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v13}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_7

    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v4, "The notification is present in the registrar; however no commands where found to execute for notification "

    .line 189
    .line 190
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v4, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 201
    .line 202
    const/16 v7, 0xd

    .line 203
    .line 204
    invoke-direct {v4, v1, v7}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    const/4 v12, 0x0

    .line 208
    invoke-static {v14, v12, v4, v11}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 209
    .line 210
    .line 211
    new-instance v4, Lnet/thunderbird/feature/notification/api/command/outcome/CommandNotCreated;

    .line 212
    .line 213
    invoke-direct {v4, v1}, Lnet/thunderbird/feature/notification/api/command/outcome/CommandNotCreated;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 217
    .line 218
    invoke-direct {v1, v4, v12}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iput-object v5, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 222
    .line 223
    iput v9, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->label:I

    .line 224
    .line 225
    invoke-interface {v5, v1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-ne v1, v6, :cond_8

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_7
    move-object v3, v1

    .line 233
    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_c

    .line 242
    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;

    .line 248
    .line 249
    iput-object v5, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 250
    .line 251
    iput-object v1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$3:Ljava/util/Iterator;

    .line 252
    .line 253
    iput-object v5, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$6:Lkotlinx/coroutines/flow/FlowCollector;

    .line 254
    .line 255
    iput v10, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->label:I

    .line 256
    .line 257
    invoke-virtual {v3, v0}, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    if-ne v3, v6, :cond_a

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_a
    move-object v13, v5

    .line 265
    :goto_3
    iput-object v5, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 266
    .line 267
    iput-object v1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$3:Ljava/util/Iterator;

    .line 268
    .line 269
    const/4 v12, 0x0

    .line 270
    iput-object v12, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$6:Lkotlinx/coroutines/flow/FlowCollector;

    .line 271
    .line 272
    iput v11, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->label:I

    .line 273
    .line 274
    invoke-interface {v13, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    if-ne v3, v6, :cond_9

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_b
    move-object v5, v13

    .line 282
    new-instance v1, Lnet/thunderbird/feature/notification/api/command/outcome/Success$NoOperation;

    .line 283
    .line 284
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 285
    .line 286
    .line 287
    new-instance v3, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 288
    .line 289
    invoke-direct {v3, v1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    const/4 v12, 0x0

    .line 293
    iput-object v12, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 294
    .line 295
    const/4 v1, 0x4

    .line 296
    iput v1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->label:I

    .line 297
    .line 298
    invoke-interface {v5, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-ne v0, v6, :cond_c

    .line 303
    .line 304
    :goto_4
    move-object v2, v6

    .line 305
    :cond_c
    :goto_5
    return-object v2

    .line 306
    :pswitch_0
    check-cast v7, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;

    .line 307
    .line 308
    iget-object v1, v7, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 309
    .line 310
    iget-object v4, v7, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 311
    .line 312
    iget-object v12, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v12, Lkotlinx/coroutines/flow/FlowCollector;

    .line 315
    .line 316
    iget v13, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->label:I

    .line 317
    .line 318
    if-eqz v13, :cond_10

    .line 319
    .line 320
    if-eq v13, v9, :cond_f

    .line 321
    .line 322
    if-eq v13, v10, :cond_e

    .line 323
    .line 324
    if-ne v13, v11, :cond_d

    .line 325
    .line 326
    iget-object v1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$3:Ljava/util/Iterator;

    .line 327
    .line 328
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    const/4 v7, 0x0

    .line 332
    goto/16 :goto_7

    .line 333
    .line 334
    :cond_d
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const/4 v2, 0x0

    .line 338
    goto/16 :goto_a

    .line 339
    .line 340
    :cond_e
    iget-object v1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$6:Lkotlinx/coroutines/flow/FlowCollector;

    .line 341
    .line 342
    iget-object v3, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$3:Ljava/util/Iterator;

    .line 343
    .line 344
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    move-object v4, v3

    .line 348
    move-object/from16 v3, p1

    .line 349
    .line 350
    goto/16 :goto_8

    .line 351
    .line 352
    :cond_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    instance-of v13, v8, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 364
    .line 365
    if-eqz v13, :cond_11

    .line 366
    .line 367
    new-instance v13, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;

    .line 368
    .line 369
    move-object v14, v8

    .line 370
    check-cast v14, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 371
    .line 372
    iget-object v15, v7, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;->systemNotificationNotifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 373
    .line 374
    invoke-direct {v13, v4, v1, v14, v15}, Lnet/thunderbird/feature/notification/impl/command/DisplaySystemNotificationCommand;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v5, v13}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    :cond_11
    instance-of v13, v8, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 381
    .line 382
    if-eqz v13, :cond_12

    .line 383
    .line 384
    new-instance v13, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand;

    .line 385
    .line 386
    move-object v14, v8

    .line 387
    check-cast v14, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 388
    .line 389
    iget-object v7, v7, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender;->inAppNotificationNotifier:Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;

    .line 390
    .line 391
    invoke-direct {v13, v4, v1, v14, v7}, Lnet/thunderbird/feature/notification/impl/command/DisplayInAppNotificationCommand;-><init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/notification/api/content/InAppNotification;Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v5, v13}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    :cond_12
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder;->isEmpty()Z

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    if-eqz v5, :cond_13

    .line 406
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v5, "No commands to execute for notification "

    .line 410
    .line 411
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    new-instance v5, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 422
    .line 423
    const/16 v7, 0xd

    .line 424
    .line 425
    invoke-direct {v5, v1, v7}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 426
    .line 427
    .line 428
    const/4 v7, 0x0

    .line 429
    invoke-static {v4, v7, v5, v11}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 430
    .line 431
    .line 432
    new-instance v4, Lnet/thunderbird/feature/notification/api/command/outcome/CommandNotCreated;

    .line 433
    .line 434
    invoke-direct {v4, v1}, Lnet/thunderbird/feature/notification/api/command/outcome/CommandNotCreated;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 438
    .line 439
    invoke-direct {v1, v4, v7}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    iput-object v12, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 443
    .line 444
    iput v9, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->label:I

    .line 445
    .line 446
    invoke-interface {v12, v1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    if-ne v1, v6, :cond_14

    .line 451
    .line 452
    goto :goto_9

    .line 453
    :cond_13
    move-object v3, v1

    .line 454
    :cond_14
    :goto_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-eqz v3, :cond_17

    .line 463
    .line 464
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    check-cast v3, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;

    .line 469
    .line 470
    iput-object v12, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 471
    .line 472
    iput-object v1, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$3:Ljava/util/Iterator;

    .line 473
    .line 474
    iput-object v12, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$6:Lkotlinx/coroutines/flow/FlowCollector;

    .line 475
    .line 476
    iput v10, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->label:I

    .line 477
    .line 478
    invoke-virtual {v3, v0}, Lnet/thunderbird/feature/notification/api/command/NotificationCommand;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    if-ne v3, v6, :cond_15

    .line 483
    .line 484
    goto :goto_9

    .line 485
    :cond_15
    move-object v4, v1

    .line 486
    move-object v1, v12

    .line 487
    :goto_8
    iput-object v12, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$0:Ljava/lang/Object;

    .line 488
    .line 489
    iput-object v4, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$3:Ljava/util/Iterator;

    .line 490
    .line 491
    const/4 v7, 0x0

    .line 492
    iput-object v7, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->L$6:Lkotlinx/coroutines/flow/FlowCollector;

    .line 493
    .line 494
    iput v11, v0, Lnet/thunderbird/feature/notification/impl/sender/DefaultNotificationSender$send$1;->label:I

    .line 495
    .line 496
    invoke-interface {v1, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    if-ne v1, v6, :cond_16

    .line 501
    .line 502
    :goto_9
    move-object v2, v6

    .line 503
    goto :goto_a

    .line 504
    :cond_16
    move-object v1, v4

    .line 505
    goto :goto_7

    .line 506
    :cond_17
    :goto_a
    return-object v2

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
