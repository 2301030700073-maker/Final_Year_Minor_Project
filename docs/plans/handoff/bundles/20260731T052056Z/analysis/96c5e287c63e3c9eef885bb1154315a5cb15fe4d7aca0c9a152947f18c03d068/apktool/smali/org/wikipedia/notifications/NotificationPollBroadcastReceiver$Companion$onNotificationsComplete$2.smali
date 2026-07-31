.class public final Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $dbWikiNameMap:Ljava/util/Map;

.field public final synthetic $dbWikiSiteMap:Ljava/util/Map;

.field public final synthetic $notifications:Ljava/util/List;

.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/util/List;

.field public L$2:Ljava/util/Collection;

.field public L$3:Ljava/util/Iterator;

.field public L$4:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$notifications:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$dbWikiNameMap:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$dbWikiSiteMap:Ljava/util/Map;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;

    .line 2
    .line 3
    iget-object v3, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$dbWikiNameMap:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$dbWikiSiteMap:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$notifications:Ljava/util/List;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$context:Landroid/content/Context;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->label:I

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    if-eq v2, v5, :cond_1

    .line 16
    .line 17
    if-ne v2, v4, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$0:Ljava/util/List;

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v7

    .line 32
    :cond_1
    iget v2, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->I$1:I

    .line 33
    .line 34
    iget v8, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->I$0:I

    .line 35
    .line 36
    iget-object v9, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$4:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v10, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$3:Ljava/util/Iterator;

    .line 39
    .line 40
    iget-object v11, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$2:Ljava/util/Collection;

    .line 41
    .line 42
    check-cast v11, Ljava/util/Collection;

    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object/from16 v4, p1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v8, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$notifications:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    move-object v11, v2

    .line 65
    move v2, v6

    .line 66
    move-object v10, v8

    .line 67
    move v8, v2

    .line 68
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_5

    .line 73
    .line 74
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    move-object v12, v9

    .line 79
    check-cast v12, Lorg/wikipedia/notifications/db/Notification;

    .line 80
    .line 81
    sget-object v13, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 82
    .line 83
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-virtual {v13}, Lorg/wikipedia/database/AppDatabase;->notificationDao()Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    iget-object v14, v12, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 92
    .line 93
    iget-wide v4, v12, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 94
    .line 95
    iput-object v7, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$0:Ljava/util/List;

    .line 96
    .line 97
    move-object v12, v11

    .line 98
    check-cast v12, Ljava/util/Collection;

    .line 99
    .line 100
    iput-object v12, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$2:Ljava/util/Collection;

    .line 101
    .line 102
    iput-object v10, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$3:Ljava/util/Iterator;

    .line 103
    .line 104
    iput-object v9, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$4:Ljava/lang/Object;

    .line 105
    .line 106
    iput v8, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->I$0:I

    .line 107
    .line 108
    iput v2, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->I$1:I

    .line 109
    .line 110
    const/4 v12, 0x1

    .line 111
    iput v12, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->label:I

    .line 112
    .line 113
    iget-object v15, v13, Lorg/wikipedia/notifications/db/NotificationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 114
    .line 115
    new-instance v7, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;

    .line 116
    .line 117
    invoke-direct {v7, v14, v4, v5, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;JLorg/wikipedia/notifications/db/NotificationDao_Impl;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v15, v12, v6, v7, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-ne v4, v1, :cond_3

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 128
    .line 129
    invoke-interface {v11, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    :cond_4
    const/4 v4, 0x2

    .line 133
    const/4 v5, 0x1

    .line 134
    const/4 v7, 0x0

    .line 135
    goto :goto_0

    .line 136
    :cond_5
    move-object v2, v11

    .line 137
    check-cast v2, Ljava/util/List;

    .line 138
    .line 139
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 140
    .line 141
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->notificationDao()Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iput-object v2, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$0:Ljava/util/List;

    .line 150
    .line 151
    const/4 v5, 0x0

    .line 152
    iput-object v5, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$2:Ljava/util/Collection;

    .line 153
    .line 154
    iput-object v5, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$3:Ljava/util/Iterator;

    .line 155
    .line 156
    iput-object v5, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->L$4:Ljava/lang/Object;

    .line 157
    .line 158
    const/4 v15, 0x2

    .line 159
    iput v15, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->label:I

    .line 160
    .line 161
    iget-object v5, v4, Lorg/wikipedia/notifications/db/NotificationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 162
    .line 163
    new-instance v7, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 164
    .line 165
    const/16 v8, 0x15

    .line 166
    .line 167
    invoke-direct {v7, v8, v4, v2}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    const/4 v12, 0x1

    .line 171
    invoke-static {v5, v6, v12, v7, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 176
    .line 177
    if-ne v4, v5, :cond_6

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    move-object v4, v3

    .line 181
    :goto_2
    if-ne v4, v1, :cond_7

    .line 182
    .line 183
    :goto_3
    return-object v1

    .line 184
    :cond_7
    move-object v1, v2

    .line 185
    :goto_4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_8

    .line 190
    .line 191
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 192
    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    const v4, 0x7f120630

    .line 198
    .line 199
    .line 200
    invoke-static {v4, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 201
    .line 202
    .line 203
    new-instance v2, Lorg/wikipedia/events/UnreadNotificationsEvent;

    .line 204
    .line 205
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-static {v2}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iget-object v4, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$context:Landroid/content/Context;

    .line 216
    .line 217
    const/4 v15, 0x2

    .line 218
    if-le v2, v15, :cond_9

    .line 219
    .line 220
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    int-to-long v1, v0

    .line 228
    const/16 v5, 0x8

    .line 229
    .line 230
    const/4 v7, 0x0

    .line 231
    invoke-static {v4, v1, v2, v7, v5}, Lorg/wikipedia/notifications/NotificationPresenter;->getDefaultBuilder$default(Landroid/content/Context;JLorg/wikipedia/notifications/NotificationCategory;I)Landroidx/core/app/NotificationCompat$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v18

    .line 235
    const v5, 0x7f120084

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v20

    .line 242
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    const/4 v12, 0x1

    .line 250
    new-array v7, v12, [Ljava/lang/Object;

    .line 251
    .line 252
    aput-object v5, v7, v6

    .line 253
    .line 254
    const v5, 0x7f120473

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v21

    .line 261
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    new-array v7, v12, [Ljava/lang/Object;

    .line 269
    .line 270
    aput-object v0, v7, v6

    .line 271
    .line 272
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v22

    .line 276
    const v0, 0x7f0801b9

    .line 277
    .line 278
    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v24

    .line 283
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 284
    .line 285
    invoke-static {v4}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const-string v5, "multiple"

    .line 290
    .line 291
    invoke-static {v0, v1, v2, v5}, Lorg/wikipedia/notifications/NotificationPresenter;->addIntentExtras(Landroid/content/Intent;JLjava/lang/String;)Landroid/content/Intent;

    .line 292
    .line 293
    .line 294
    move-result-object v26

    .line 295
    const/16 v19, 0x0

    .line 296
    .line 297
    const/16 v23, 0x0

    .line 298
    .line 299
    const v25, 0x7f06002b

    .line 300
    .line 301
    .line 302
    move-object/from16 v17, v4

    .line 303
    .line 304
    invoke-static/range {v17 .. v26}, Lorg/wikipedia/notifications/NotificationPresenter;->showNotification(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILandroid/content/Intent;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_f

    .line 308
    .line 309
    :cond_9
    move-object v2, v4

    .line 310
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_19

    .line 319
    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    check-cast v4, Lorg/wikipedia/notifications/db/Notification;

    .line 325
    .line 326
    iget-object v5, v4, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 327
    .line 328
    iget-object v7, v4, Lorg/wikipedia/notifications/db/Notification;->type:Ljava/lang/String;

    .line 329
    .line 330
    iget-wide v8, v4, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 331
    .line 332
    iget-object v10, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$dbWikiNameMap:Ljava/util/Map;

    .line 333
    .line 334
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    if-nez v10, :cond_a

    .line 339
    .line 340
    move-object v10, v5

    .line 341
    :cond_a
    check-cast v10, Ljava/lang/String;

    .line 342
    .line 343
    iget-object v11, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;->$dbWikiSiteMap:Ljava/util/Map;

    .line 344
    .line 345
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v11

    .line 349
    if-nez v11, :cond_b

    .line 350
    .line 351
    sget-object v11, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 352
    .line 353
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    invoke-virtual {v11}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    :cond_b
    check-cast v11, Lorg/wikipedia/dataclient/WikiSite;

    .line 362
    .line 363
    iget-object v11, v11, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    sget-object v12, Lorg/wikipedia/notifications/NotificationCategory;->Companion:Lorg/wikipedia/notifications/NotificationCategory$Companion;

    .line 375
    .line 376
    iget-object v13, v4, Lorg/wikipedia/notifications/db/Notification;->category:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    invoke-static {v13}, Lorg/wikipedia/notifications/NotificationCategory$Companion;->find(Ljava/lang/String;)Lorg/wikipedia/notifications/NotificationCategory;

    .line 382
    .line 383
    .line 384
    move-result-object v12

    .line 385
    sget v14, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 386
    .line 387
    invoke-static {v2}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 388
    .line 389
    .line 390
    move-result-object v14

    .line 391
    invoke-static {v14, v8, v9, v7}, Lorg/wikipedia/notifications/NotificationPresenter;->addIntentExtras(Landroid/content/Intent;JLjava/lang/String;)Landroid/content/Intent;

    .line 392
    .line 393
    .line 394
    move-result-object v14

    .line 395
    invoke-static {v2, v8, v9, v7, v12}, Lorg/wikipedia/notifications/NotificationPresenter;->getDefaultBuilder(Landroid/content/Context;JLjava/lang/String;Lorg/wikipedia/notifications/NotificationCategory;)Landroidx/core/app/NotificationCompat$Builder;

    .line 396
    .line 397
    .line 398
    move-result-object v15

    .line 399
    iget-object v6, v4, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 400
    .line 401
    if-eqz v6, :cond_c

    .line 402
    .line 403
    iget-object v0, v6, Lorg/wikipedia/notifications/db/Notification$Contents;->header:Ljava/lang/String;

    .line 404
    .line 405
    goto :goto_6

    .line 406
    :cond_c
    const/4 v0, 0x0

    .line 407
    :goto_6
    if-nez v0, :cond_d

    .line 408
    .line 409
    const-string v0, ""

    .line 410
    .line 411
    :cond_d
    sget-object v17, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 412
    .line 413
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v21

    .line 425
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    move-object/from16 p1, v1

    .line 430
    .line 431
    int-to-long v0, v0

    .line 432
    add-long/2addr v0, v8

    .line 433
    long-to-int v0, v0

    .line 434
    if-eqz v6, :cond_13

    .line 435
    .line 436
    iget-object v1, v6, Lorg/wikipedia/notifications/db/Notification$Contents;->links:Lorg/wikipedia/notifications/db/Notification$Links;

    .line 437
    .line 438
    if-eqz v1, :cond_13

    .line 439
    .line 440
    invoke-virtual {v1}, Lorg/wikipedia/notifications/db/Notification$Links;->getPrimary()Lorg/wikipedia/notifications/db/Notification$Link;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    if-eqz v5, :cond_f

    .line 445
    .line 446
    iget-object v6, v5, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 447
    .line 448
    sget-object v17, Lorg/wikipedia/notifications/NotificationCategory;->EDIT_USER_TALK:Lorg/wikipedia/notifications/NotificationCategory;

    .line 449
    .line 450
    move/from16 v19, v0

    .line 451
    .line 452
    invoke-virtual/range {v17 .. v17}, Lorg/wikipedia/notifications/NotificationCategory;->getId()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    if-eqz v0, :cond_e

    .line 461
    .line 462
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 463
    .line 464
    invoke-direct {v0, v6}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    sget-object v13, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 468
    .line 469
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 470
    .line 471
    .line 472
    move-result-object v14

    .line 473
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    invoke-static {v14, v0}, Lorg/wikipedia/page/PageTitle$Companion;->titleForUri(Landroid/net/Uri;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    sget v13, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 484
    .line 485
    sget-object v13, Lorg/wikipedia/Constants$InvokeSource;->NOTIFICATION:Lorg/wikipedia/Constants$InvokeSource;

    .line 486
    .line 487
    invoke-static {v2, v0, v13}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-static {v0, v8, v9, v7}, Lorg/wikipedia/notifications/NotificationPresenter;->addIntentExtras(Landroid/content/Intent;JLjava/lang/String;)Landroid/content/Intent;

    .line 492
    .line 493
    .line 494
    move-result-object v14

    .line 495
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 496
    .line 497
    invoke-direct {v0, v6}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    invoke-static {v6, v0}, Lorg/wikipedia/page/PageTitle$Companion;->titleForUri(Landroid/net/Uri;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-static {v2, v0, v13}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-static {v0, v8, v9, v7}, Lorg/wikipedia/notifications/NotificationPresenter;->addIntentExtras(Landroid/content/Intent;JLjava/lang/String;)Landroid/content/Intent;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    const/high16 v6, 0x8000000

    .line 520
    .line 521
    const/4 v7, 0x0

    .line 522
    invoke-static {v2, v7, v0, v6}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    iget-object v5, v5, Lorg/wikipedia/notifications/db/Notification$Link;->label:Ljava/lang/String;

    .line 527
    .line 528
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 529
    .line 530
    .line 531
    move-result-object v5

    .line 532
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    invoke-virtual {v15, v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 537
    .line 538
    .line 539
    goto :goto_7

    .line 540
    :cond_e
    invoke-static {v2, v15, v5, v4}, Lorg/wikipedia/notifications/NotificationPresenter;->addAction(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/db/Notification$Link;Lorg/wikipedia/notifications/db/Notification;)V

    .line 541
    .line 542
    .line 543
    goto :goto_7

    .line 544
    :cond_f
    move/from16 v19, v0

    .line 545
    .line 546
    :goto_7
    iget-object v0, v1, Lorg/wikipedia/notifications/db/Notification$Links;->secondary:Ljava/util/List;

    .line 547
    .line 548
    if-eqz v0, :cond_11

    .line 549
    .line 550
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    const/4 v7, 0x0

    .line 555
    if-nez v1, :cond_10

    .line 556
    .line 557
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    check-cast v1, Lorg/wikipedia/notifications/db/Notification$Link;

    .line 562
    .line 563
    invoke-static {v2, v15, v1, v4}, Lorg/wikipedia/notifications/NotificationPresenter;->addAction(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/db/Notification$Link;Lorg/wikipedia/notifications/db/Notification;)V

    .line 564
    .line 565
    .line 566
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    const/4 v5, 0x1

    .line 571
    if-le v1, v5, :cond_12

    .line 572
    .line 573
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    check-cast v0, Lorg/wikipedia/notifications/db/Notification$Link;

    .line 578
    .line 579
    invoke-static {v2, v15, v0, v4}, Lorg/wikipedia/notifications/NotificationPresenter;->addAction(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/db/Notification$Link;Lorg/wikipedia/notifications/db/Notification;)V

    .line 580
    .line 581
    .line 582
    goto :goto_9

    .line 583
    :cond_11
    :goto_8
    const/4 v7, 0x0

    .line 584
    :cond_12
    :goto_9
    move-object/from16 v26, v14

    .line 585
    .line 586
    goto :goto_a

    .line 587
    :cond_13
    move/from16 v19, v0

    .line 588
    .line 589
    goto :goto_8

    .line 590
    :goto_a
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 591
    .line 592
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 593
    .line 594
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 599
    .line 600
    sget-object v5, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    .line 601
    .line 602
    if-ne v1, v5, :cond_14

    .line 603
    .line 604
    const v1, 0x7f130024

    .line 605
    .line 606
    .line 607
    goto :goto_b

    .line 608
    :cond_14
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 613
    .line 614
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->getResourceId()I

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    :goto_b
    invoke-direct {v0, v2, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 619
    .line 620
    .line 621
    iget-object v1, v4, Lorg/wikipedia/notifications/db/Notification;->agent:Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 622
    .line 623
    if-eqz v1, :cond_16

    .line 624
    .line 625
    iget-object v1, v1, Lorg/wikipedia/notifications/db/Notification$Agent;->name:Ljava/lang/String;

    .line 626
    .line 627
    if-nez v1, :cond_15

    .line 628
    .line 629
    goto :goto_c

    .line 630
    :cond_15
    move-object/from16 v20, v1

    .line 631
    .line 632
    goto :goto_d

    .line 633
    :cond_16
    :goto_c
    move-object/from16 v20, v10

    .line 634
    .line 635
    :goto_d
    invoke-virtual {v12}, Lorg/wikipedia/notifications/NotificationCategory;->getIconResId()I

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 640
    .line 641
    .line 642
    move-result-object v24

    .line 643
    invoke-virtual {v12}, Lorg/wikipedia/notifications/NotificationCategory;->getIconColor()I

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    new-instance v5, Landroid/util/TypedValue;

    .line 648
    .line 649
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v0}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    const/4 v12, 0x1

    .line 657
    invoke-virtual {v0, v1, v5, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-eqz v0, :cond_17

    .line 662
    .line 663
    goto :goto_e

    .line 664
    :cond_17
    const/4 v5, 0x0

    .line 665
    :goto_e
    if-eqz v5, :cond_18

    .line 666
    .line 667
    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    .line 668
    .line 669
    move-object/from16 v22, v21

    .line 670
    .line 671
    move/from16 v25, v0

    .line 672
    .line 673
    move-object/from16 v17, v2

    .line 674
    .line 675
    move-object/from16 v23, v11

    .line 676
    .line 677
    move-object/from16 v18, v15

    .line 678
    .line 679
    invoke-static/range {v17 .. v26}, Lorg/wikipedia/notifications/NotificationPresenter;->showNotification(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILandroid/content/Intent;)V

    .line 680
    .line 681
    .line 682
    move-object/from16 v0, p0

    .line 683
    .line 684
    move-object/from16 v1, p1

    .line 685
    .line 686
    move v6, v7

    .line 687
    goto/16 :goto_5

    .line 688
    .line 689
    :cond_18
    const-string v0, "Attribute not found; ID="

    .line 690
    .line 691
    invoke-static {v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    const/16 v16, 0x0

    .line 699
    .line 700
    return-object v16

    .line 701
    :cond_19
    :goto_f
    return-object v3
.end method
