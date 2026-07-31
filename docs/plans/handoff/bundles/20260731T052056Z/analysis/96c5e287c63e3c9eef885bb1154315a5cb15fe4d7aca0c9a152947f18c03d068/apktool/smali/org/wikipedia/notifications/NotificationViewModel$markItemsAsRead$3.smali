.class public final Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $items:Ljava/util/List;

.field public final synthetic $markUnread:Z

.field public I$0:I

.field public I$1:I

.field public L$1:Lorg/wikipedia/notifications/NotificationViewModel;

.field public L$3:Ljava/util/Collection;

.field public L$4:Ljava/util/Iterator;

.field public L$7:Ljava/util/Collection;

.field public Z$0:Z

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/notifications/NotificationViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/notifications/NotificationViewModel;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->this$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->$items:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->$markUnread:Z

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->$items:Ljava/util/List;

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->$markUnread:Z

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->this$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->label:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object v5, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->this$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    if-eq v2, v6, :cond_1

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v4

    .line 25
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v8

    .line 31
    :cond_1
    iget v2, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->I$1:I

    .line 32
    .line 33
    iget v9, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->I$0:I

    .line 34
    .line 35
    iget-boolean v10, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->Z$0:Z

    .line 36
    .line 37
    iget-object v11, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$7:Ljava/util/Collection;

    .line 38
    .line 39
    check-cast v11, Ljava/util/Collection;

    .line 40
    .line 41
    iget-object v12, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$4:Ljava/util/Iterator;

    .line 42
    .line 43
    iget-object v13, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$3:Ljava/util/Collection;

    .line 44
    .line 45
    check-cast v13, Ljava/util/Collection;

    .line 46
    .line 47
    iget-object v14, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$1:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 48
    .line 49
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_9

    .line 53
    .line 54
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, v5, Lorg/wikipedia/notifications/NotificationViewModel;->notificationList:Ljava/util/ArrayList;

    .line 58
    .line 59
    new-instance v9, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    const/16 v11, 0xa

    .line 73
    .line 74
    if-eqz v10, :cond_9

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    move-object v12, v10

    .line 81
    check-cast v12, Lorg/wikipedia/notifications/db/Notification;

    .line 82
    .line 83
    new-instance v13, Ljava/util/ArrayList;

    .line 84
    .line 85
    iget-object v14, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->$items:Ljava/util/List;

    .line 86
    .line 87
    invoke-static {v14, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    if-eqz v14, :cond_4

    .line 103
    .line 104
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    check-cast v14, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 109
    .line 110
    iget-object v14, v14, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 111
    .line 112
    if-eqz v14, :cond_3

    .line 113
    .line 114
    iget-wide v14, v14, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 115
    .line 116
    new-instance v3, Ljava/lang/Long;

    .line 117
    .line 118
    invoke-direct {v3, v14, v15}, Ljava/lang/Long;-><init>(J)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    move-object v3, v8

    .line 123
    :goto_2
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    const/4 v3, 0x2

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-eqz v11, :cond_7

    .line 137
    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    move-object v13, v11

    .line 143
    check-cast v13, Ljava/lang/Long;

    .line 144
    .line 145
    iget-wide v14, v12, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 146
    .line 147
    if-nez v13, :cond_6

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 151
    .line 152
    .line 153
    move-result-wide v16

    .line 154
    cmp-long v13, v16, v14

    .line 155
    .line 156
    if-nez v13, :cond_5

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_7
    move-object v11, v8

    .line 160
    :goto_4
    if-eqz v11, :cond_8

    .line 161
    .line 162
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    :cond_8
    const/4 v3, 0x2

    .line 166
    goto :goto_0

    .line 167
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    iget-boolean v9, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->$markUnread:Z

    .line 181
    .line 182
    move-object v11, v2

    .line 183
    move-object v12, v3

    .line 184
    move-object v14, v5

    .line 185
    move v2, v7

    .line 186
    move v10, v9

    .line 187
    move v9, v2

    .line 188
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_e

    .line 193
    .line 194
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Lorg/wikipedia/notifications/db/Notification;

    .line 199
    .line 200
    if-eqz v10, :cond_a

    .line 201
    .line 202
    move-object v13, v8

    .line 203
    goto :goto_6

    .line 204
    :cond_a
    new-instance v13, Ljava/util/Date;

    .line 205
    .line 206
    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    :goto_6
    iput-object v13, v3, Lorg/wikipedia/notifications/db/Notification;->read:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v13, v14, Lorg/wikipedia/notifications/NotificationViewModel;->notificationRepository:Lorg/wikipedia/media/AvPlayer;

    .line 216
    .line 217
    iput-object v14, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$1:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 218
    .line 219
    move-object v15, v11

    .line 220
    check-cast v15, Ljava/util/Collection;

    .line 221
    .line 222
    iput-object v15, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$3:Ljava/util/Collection;

    .line 223
    .line 224
    iput-object v12, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$4:Ljava/util/Iterator;

    .line 225
    .line 226
    iput-object v15, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$7:Ljava/util/Collection;

    .line 227
    .line 228
    iput-boolean v10, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->Z$0:Z

    .line 229
    .line 230
    iput v9, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->I$0:I

    .line 231
    .line 232
    iput v2, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->I$1:I

    .line 233
    .line 234
    iput v6, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->label:I

    .line 235
    .line 236
    iget-object v13, v13, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v13, Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 239
    .line 240
    iget-object v15, v13, Lorg/wikipedia/notifications/db/NotificationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 241
    .line 242
    new-instance v8, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 243
    .line 244
    move/from16 v17, v2

    .line 245
    .line 246
    const/16 v2, 0x16

    .line 247
    .line 248
    invoke-direct {v8, v2, v13, v3}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v15, v7, v6, v8, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 256
    .line 257
    if-ne v2, v3, :cond_b

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_b
    move-object v2, v4

    .line 261
    :goto_7
    if-ne v2, v3, :cond_c

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_c
    move-object v2, v4

    .line 265
    :goto_8
    if-ne v2, v1, :cond_d

    .line 266
    .line 267
    goto :goto_a

    .line 268
    :cond_d
    move-object v13, v11

    .line 269
    move/from16 v2, v17

    .line 270
    .line 271
    :goto_9
    invoke-interface {v11, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-object v11, v13

    .line 275
    const/4 v8, 0x0

    .line 276
    goto :goto_5

    .line 277
    :cond_e
    check-cast v11, Ljava/util/List;

    .line 278
    .line 279
    const/4 v2, 0x0

    .line 280
    iput-object v2, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$1:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 281
    .line 282
    iput-object v2, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$3:Ljava/util/Collection;

    .line 283
    .line 284
    iput-object v2, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$4:Ljava/util/Iterator;

    .line 285
    .line 286
    iput-object v2, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->L$7:Ljava/util/Collection;

    .line 287
    .line 288
    const/4 v2, 0x2

    .line 289
    iput v2, v0, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;->label:I

    .line 290
    .line 291
    invoke-virtual {v5, v0}, Lorg/wikipedia/notifications/NotificationViewModel;->filterAndPostNotifications(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-ne v0, v1, :cond_f

    .line 296
    .line 297
    :goto_a
    return-object v1

    .line 298
    :cond_f
    return-object v4
.end method
