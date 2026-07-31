.class public final Lokhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;


# instance fields
.field public final synthetic $r8$classId:I

.field public executorServiceOrNull:Ljava/lang/Object;

.field public maxRequestsPerHost:I

.field public final readyAsyncCalls:Ljava/lang/Object;

.field public runningAsyncCalls:Ljava/lang/Object;

.field public runningSyncCalls:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/Dispatcher;->$r8$classId:I

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 1319
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 1320
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1321
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 1322
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/Dispatcher;->$r8$classId:I

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 1324
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    const/4 v1, 0x0

    .line 1325
    invoke-direct {v0, v1, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    .line 1326
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1327
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 1328
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iput v2, v0, Lokhttp3/Dispatcher;->$r8$classId:I

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v3, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v3, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object v1, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v7, v1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 29
    .line 30
    iput-object v3, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 31
    .line 32
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v9, 0x1a

    .line 35
    .line 36
    if-lt v8, v9, :cond_0

    .line 37
    .line 38
    invoke-static {v3, v6}, Landroidx/core/app/RemoteInput$Api26Impl;->createBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    iput-object v8, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v8, Landroid/app/Notification$Builder;

    .line 46
    .line 47
    invoke-direct {v8, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    iput-object v8, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 51
    .line 52
    :goto_0
    iget-object v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 53
    .line 54
    iget-wide v11, v10, Landroid/app/Notification;->when:J

    .line 55
    .line 56
    invoke-virtual {v8, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    iget v12, v10, Landroid/app/Notification;->icon:I

    .line 61
    .line 62
    iget v13, v10, Landroid/app/Notification;->iconLevel:I

    .line 63
    .line 64
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    iget-object v12, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 69
    .line 70
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    iget-object v12, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    iget-object v12, v10, Landroid/app/Notification;->vibrate:[J

    .line 82
    .line 83
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    iget v12, v10, Landroid/app/Notification;->ledARGB:I

    .line 88
    .line 89
    iget v14, v10, Landroid/app/Notification;->ledOnMS:I

    .line 90
    .line 91
    iget v15, v10, Landroid/app/Notification;->ledOffMS:I

    .line 92
    .line 93
    invoke-virtual {v11, v12, v14, v15}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    iget v12, v10, Landroid/app/Notification;->flags:I

    .line 98
    .line 99
    and-int/2addr v12, v2

    .line 100
    const/4 v14, 0x0

    .line 101
    const/4 v15, 0x1

    .line 102
    if-eqz v12, :cond_1

    .line 103
    .line 104
    move v12, v15

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    move v12, v14

    .line 107
    :goto_1
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    iget v12, v10, Landroid/app/Notification;->flags:I

    .line 112
    .line 113
    and-int/lit8 v12, v12, 0x8

    .line 114
    .line 115
    if-eqz v12, :cond_2

    .line 116
    .line 117
    move v12, v15

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    move v12, v14

    .line 120
    :goto_2
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    iget v12, v10, Landroid/app/Notification;->flags:I

    .line 125
    .line 126
    and-int/lit8 v12, v12, 0x10

    .line 127
    .line 128
    if-eqz v12, :cond_3

    .line 129
    .line 130
    move v12, v15

    .line 131
    goto :goto_3

    .line 132
    :cond_3
    move v12, v14

    .line 133
    :goto_3
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    iget v12, v10, Landroid/app/Notification;->defaults:I

    .line 138
    .line 139
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 144
    .line 145
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 150
    .line 151
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 156
    .line 157
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 162
    .line 163
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    iget-object v12, v10, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 168
    .line 169
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 174
    .line 175
    iget v2, v10, Landroid/app/Notification;->flags:I

    .line 176
    .line 177
    and-int/lit16 v2, v2, 0x80

    .line 178
    .line 179
    if-eqz v2, :cond_4

    .line 180
    .line 181
    move v2, v15

    .line 182
    goto :goto_4

    .line 183
    :cond_4
    move v2, v14

    .line 184
    :goto_4
    invoke-virtual {v11, v12, v2}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    iget v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 189
    .line 190
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    iget v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    .line 195
    .line 196
    iget v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    .line 197
    .line 198
    iget-boolean v13, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 199
    .line 200
    invoke-virtual {v2, v11, v12, v13}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 201
    .line 202
    .line 203
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 204
    .line 205
    if-nez v2, :cond_5

    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    goto :goto_5

    .line 209
    :cond_5
    invoke-static {v2, v3}, Lcoil3/util/UtilsKt;->toIcon(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    :goto_5
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 214
    .line 215
    .line 216
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 217
    .line 218
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iget-boolean v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    iget v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 229
    .line 230
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 231
    .line 232
    .line 233
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 234
    .line 235
    instance-of v3, v2, Landroidx/core/app/NotificationCompat$CallStyle;

    .line 236
    .line 237
    if-eqz v3, :cond_10

    .line 238
    .line 239
    check-cast v2, Landroidx/core/app/NotificationCompat$CallStyle;

    .line 240
    .line 241
    iget-object v3, v2, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    .line 242
    .line 243
    iget-object v8, v2, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    .line 244
    .line 245
    const v17, 0x7f080133

    .line 246
    .line 247
    .line 248
    if-nez v3, :cond_6

    .line 249
    .line 250
    const v20, 0x7f06003a

    .line 251
    .line 252
    .line 253
    iget-object v3, v2, Landroidx/core/app/NotificationCompat$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    .line 254
    .line 255
    const v18, 0x7f1200b0

    .line 256
    .line 257
    .line 258
    move-object/from16 v16, v2

    .line 259
    .line 260
    move-object/from16 v21, v3

    .line 261
    .line 262
    move-object/from16 v19, v8

    .line 263
    .line 264
    invoke-virtual/range {v16 .. v21}, Landroidx/core/app/NotificationCompat$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Action;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    :goto_6
    move-object/from16 v3, v16

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_6
    move-object/from16 v16, v2

    .line 272
    .line 273
    move-object/from16 v19, v8

    .line 274
    .line 275
    const v18, 0x7f1200af

    .line 276
    .line 277
    .line 278
    const v20, 0x7f06003a

    .line 279
    .line 280
    .line 281
    move-object/from16 v21, v3

    .line 282
    .line 283
    invoke-virtual/range {v16 .. v21}, Landroidx/core/app/NotificationCompat$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Action;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    goto :goto_6

    .line 288
    :goto_7
    iget-object v8, v3, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    .line 289
    .line 290
    if-nez v8, :cond_7

    .line 291
    .line 292
    move-object v8, v3

    .line 293
    const/4 v3, 0x0

    .line 294
    goto :goto_c

    .line 295
    :cond_7
    iget-boolean v11, v3, Landroidx/core/app/NotificationCompat$CallStyle;->mIsVideo:Z

    .line 296
    .line 297
    if-eqz v11, :cond_8

    .line 298
    .line 299
    const v12, 0x7f080131

    .line 300
    .line 301
    .line 302
    :goto_8
    move/from16 v17, v12

    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_8
    const v12, 0x7f08012f

    .line 306
    .line 307
    .line 308
    goto :goto_8

    .line 309
    :goto_9
    if-eqz v11, :cond_9

    .line 310
    .line 311
    const v11, 0x7f1200ae

    .line 312
    .line 313
    .line 314
    :goto_a
    move/from16 v18, v11

    .line 315
    .line 316
    goto :goto_b

    .line 317
    :cond_9
    const v11, 0x7f1200ad

    .line 318
    .line 319
    .line 320
    goto :goto_a

    .line 321
    :goto_b
    iget-object v11, v3, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    .line 322
    .line 323
    const v20, 0x7f060039

    .line 324
    .line 325
    .line 326
    move-object/from16 v16, v3

    .line 327
    .line 328
    move-object/from16 v21, v8

    .line 329
    .line 330
    move-object/from16 v19, v11

    .line 331
    .line 332
    invoke-virtual/range {v16 .. v21}, Landroidx/core/app/NotificationCompat$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Action;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    move-object/from16 v8, v16

    .line 337
    .line 338
    :goto_c
    new-instance v11, Ljava/util/ArrayList;

    .line 339
    .line 340
    const/4 v12, 0x3

    .line 341
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    iget-object v2, v8, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 348
    .line 349
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 350
    .line 351
    if-eqz v2, :cond_d

    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    const/4 v8, 0x2

    .line 358
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v12

    .line 362
    if-eqz v12, :cond_e

    .line 363
    .line 364
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v12

    .line 368
    check-cast v12, Landroidx/core/app/NotificationCompat$Action;

    .line 369
    .line 370
    iget-boolean v13, v12, Landroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    .line 371
    .line 372
    if-eqz v13, :cond_a

    .line 373
    .line 374
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    goto :goto_e

    .line 378
    :cond_a
    iget-object v13, v12, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 379
    .line 380
    const-string v9, "key_action_priority"

    .line 381
    .line 382
    invoke-virtual {v13, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v9

    .line 386
    if-eqz v9, :cond_b

    .line 387
    .line 388
    goto :goto_e

    .line 389
    :cond_b
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    add-int/lit8 v8, v8, -0x1

    .line 393
    .line 394
    :goto_e
    if-eqz v3, :cond_c

    .line 395
    .line 396
    if-ne v8, v15, :cond_c

    .line 397
    .line 398
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    add-int/lit8 v8, v8, -0x1

    .line 402
    .line 403
    :cond_c
    const/16 v9, 0x1a

    .line 404
    .line 405
    goto :goto_d

    .line 406
    :cond_d
    const/4 v8, 0x2

    .line 407
    :cond_e
    if-eqz v3, :cond_f

    .line 408
    .line 409
    if-lt v8, v15, :cond_f

    .line 410
    .line 411
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_11

    .line 423
    .line 424
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    check-cast v3, Landroidx/core/app/NotificationCompat$Action;

    .line 429
    .line 430
    invoke-virtual {v0, v3}, Lokhttp3/Dispatcher;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 431
    .line 432
    .line 433
    goto :goto_f

    .line 434
    :cond_10
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    if-eqz v3, :cond_11

    .line 445
    .line 446
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    check-cast v3, Landroidx/core/app/NotificationCompat$Action;

    .line 451
    .line 452
    invoke-virtual {v0, v3}, Lokhttp3/Dispatcher;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 453
    .line 454
    .line 455
    goto :goto_10

    .line 456
    :cond_11
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 457
    .line 458
    if-eqz v2, :cond_12

    .line 459
    .line 460
    iget-object v3, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v3, Landroid/os/Bundle;

    .line 463
    .line 464
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 465
    .line 466
    .line 467
    :cond_12
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v2, Landroid/app/Notification$Builder;

    .line 470
    .line 471
    iget-boolean v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 472
    .line 473
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 474
    .line 475
    .line 476
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v2, Landroid/app/Notification$Builder;

    .line 479
    .line 480
    iget-boolean v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 481
    .line 482
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 483
    .line 484
    .line 485
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v2, Landroid/app/Notification$Builder;

    .line 488
    .line 489
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 490
    .line 491
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 492
    .line 493
    .line 494
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v2, Landroid/app/Notification$Builder;

    .line 497
    .line 498
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 499
    .line 500
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 501
    .line 502
    .line 503
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v2, Landroid/app/Notification$Builder;

    .line 506
    .line 507
    iget-boolean v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 508
    .line 509
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 510
    .line 511
    .line 512
    iput v14, v0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 513
    .line 514
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v2, Landroid/app/Notification$Builder;

    .line 517
    .line 518
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 521
    .line 522
    .line 523
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v2, Landroid/app/Notification$Builder;

    .line 526
    .line 527
    iget v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 528
    .line 529
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 530
    .line 531
    .line 532
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v2, Landroid/app/Notification$Builder;

    .line 535
    .line 536
    iget v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 537
    .line 538
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 539
    .line 540
    .line 541
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v2, Landroid/app/Notification$Builder;

    .line 544
    .line 545
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 546
    .line 547
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 548
    .line 549
    .line 550
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v2, Landroid/app/Notification$Builder;

    .line 553
    .line 554
    iget-object v3, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 555
    .line 556
    iget-object v8, v10, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 557
    .line 558
    invoke-virtual {v2, v3, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 559
    .line 560
    .line 561
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 562
    .line 563
    const/16 v3, 0x1c

    .line 564
    .line 565
    if-ge v2, v3, :cond_19

    .line 566
    .line 567
    if-nez v5, :cond_13

    .line 568
    .line 569
    const/4 v2, 0x0

    .line 570
    goto :goto_13

    .line 571
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    .line 572
    .line 573
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 574
    .line 575
    .line 576
    move-result v8

    .line 577
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 581
    .line 582
    .line 583
    move-result-object v8

    .line 584
    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 585
    .line 586
    .line 587
    move-result v9

    .line 588
    if-eqz v9, :cond_16

    .line 589
    .line 590
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v9

    .line 594
    check-cast v9, Landroidx/core/app/Person;

    .line 595
    .line 596
    iget-object v11, v9, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    .line 597
    .line 598
    iget-object v9, v9, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    .line 599
    .line 600
    if-eqz v9, :cond_14

    .line 601
    .line 602
    goto :goto_12

    .line 603
    :cond_14
    if-eqz v11, :cond_15

    .line 604
    .line 605
    new-instance v9, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    const-string v12, "name:"

    .line 608
    .line 609
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v9

    .line 619
    goto :goto_12

    .line 620
    :cond_15
    const-string v9, ""

    .line 621
    .line 622
    :goto_12
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    goto :goto_11

    .line 626
    :cond_16
    :goto_13
    if-nez v2, :cond_17

    .line 627
    .line 628
    goto :goto_14

    .line 629
    :cond_17
    if-nez v4, :cond_18

    .line 630
    .line 631
    move-object v4, v2

    .line 632
    goto :goto_14

    .line 633
    :cond_18
    new-instance v8, Landroidx/collection/ArraySet;

    .line 634
    .line 635
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 636
    .line 637
    .line 638
    move-result v9

    .line 639
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 640
    .line 641
    .line 642
    move-result v11

    .line 643
    add-int/2addr v11, v9

    .line 644
    invoke-direct {v8, v11}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v8, v2}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 648
    .line 649
    .line 650
    invoke-virtual {v8, v4}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 651
    .line 652
    .line 653
    new-instance v4, Ljava/util/ArrayList;

    .line 654
    .line 655
    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 656
    .line 657
    .line 658
    :cond_19
    :goto_14
    if-eqz v4, :cond_1a

    .line 659
    .line 660
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    if-nez v2, :cond_1a

    .line 665
    .line 666
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 671
    .line 672
    .line 673
    move-result v4

    .line 674
    if-eqz v4, :cond_1a

    .line 675
    .line 676
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    check-cast v4, Ljava/lang/String;

    .line 681
    .line 682
    iget-object v8, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v8, Landroid/app/Notification$Builder;

    .line 685
    .line 686
    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 687
    .line 688
    .line 689
    goto :goto_15

    .line 690
    :cond_1a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 691
    .line 692
    .line 693
    move-result v2

    .line 694
    if-lez v2, :cond_24

    .line 695
    .line 696
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 697
    .line 698
    if-nez v2, :cond_1b

    .line 699
    .line 700
    new-instance v2, Landroid/os/Bundle;

    .line 701
    .line 702
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 703
    .line 704
    .line 705
    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 706
    .line 707
    :cond_1b
    const-string v4, "android.car.EXTENSIONS"

    .line 708
    .line 709
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    if-nez v2, :cond_1c

    .line 714
    .line 715
    new-instance v2, Landroid/os/Bundle;

    .line 716
    .line 717
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 718
    .line 719
    .line 720
    :cond_1c
    new-instance v8, Landroid/os/Bundle;

    .line 721
    .line 722
    invoke-direct {v8, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 723
    .line 724
    .line 725
    new-instance v9, Landroid/os/Bundle;

    .line 726
    .line 727
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 728
    .line 729
    .line 730
    move v11, v14

    .line 731
    :goto_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 732
    .line 733
    .line 734
    move-result v12

    .line 735
    if-ge v11, v12, :cond_22

    .line 736
    .line 737
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v12

    .line 741
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v13

    .line 745
    check-cast v13, Landroidx/core/app/NotificationCompat$Action;

    .line 746
    .line 747
    new-instance v15, Landroid/os/Bundle;

    .line 748
    .line 749
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    .line 753
    .line 754
    .line 755
    move-result-object v18

    .line 756
    iget-object v3, v13, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 757
    .line 758
    if-eqz v18, :cond_1d

    .line 759
    .line 760
    invoke-virtual/range {v18 .. v18}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    .line 761
    .line 762
    .line 763
    move-result v18

    .line 764
    move/from16 v14, v18

    .line 765
    .line 766
    :cond_1d
    move-object/from16 v20, v5

    .line 767
    .line 768
    const-string v5, "icon"

    .line 769
    .line 770
    invoke-virtual {v15, v5, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 771
    .line 772
    .line 773
    const-string v5, "title"

    .line 774
    .line 775
    iget-object v14, v13, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 776
    .line 777
    invoke-virtual {v15, v5, v14}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 778
    .line 779
    .line 780
    const-string v5, "actionIntent"

    .line 781
    .line 782
    iget-object v14, v13, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 783
    .line 784
    invoke-virtual {v15, v5, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 785
    .line 786
    .line 787
    new-instance v5, Landroid/os/Bundle;

    .line 788
    .line 789
    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 790
    .line 791
    .line 792
    const-string v3, "android.support.allowGeneratedReplies"

    .line 793
    .line 794
    iget-boolean v14, v13, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 795
    .line 796
    invoke-virtual {v5, v3, v14}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 797
    .line 798
    .line 799
    const-string v3, "extras"

    .line 800
    .line 801
    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 802
    .line 803
    .line 804
    iget-object v5, v13, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 805
    .line 806
    if-nez v5, :cond_1f

    .line 807
    .line 808
    move-object/from16 v21, v6

    .line 809
    .line 810
    move-object/from16 v22, v7

    .line 811
    .line 812
    const/4 v14, 0x0

    .line 813
    :cond_1e
    move/from16 v25, v11

    .line 814
    .line 815
    goto :goto_19

    .line 816
    :cond_1f
    array-length v14, v5

    .line 817
    new-array v14, v14, [Landroid/os/Bundle;

    .line 818
    .line 819
    move-object/from16 v21, v6

    .line 820
    .line 821
    move-object/from16 v22, v7

    .line 822
    .line 823
    const/4 v6, 0x0

    .line 824
    :goto_17
    array-length v7, v5

    .line 825
    if-ge v6, v7, :cond_1e

    .line 826
    .line 827
    aget-object v7, v5, v6

    .line 828
    .line 829
    move-object/from16 v23, v5

    .line 830
    .line 831
    new-instance v5, Landroid/os/Bundle;

    .line 832
    .line 833
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 834
    .line 835
    .line 836
    move/from16 v24, v6

    .line 837
    .line 838
    const-string v6, "resultKey"

    .line 839
    .line 840
    move/from16 v25, v11

    .line 841
    .line 842
    iget-object v11, v7, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 843
    .line 844
    invoke-virtual {v5, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    const-string v6, "label"

    .line 848
    .line 849
    iget-object v11, v7, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 850
    .line 851
    invoke-virtual {v5, v6, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 852
    .line 853
    .line 854
    const-string v6, "choices"

    .line 855
    .line 856
    iget-object v11, v7, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 857
    .line 858
    invoke-virtual {v5, v6, v11}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 859
    .line 860
    .line 861
    const-string v6, "allowFreeFormInput"

    .line 862
    .line 863
    iget-boolean v11, v7, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    .line 864
    .line 865
    invoke-virtual {v5, v6, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 866
    .line 867
    .line 868
    iget-object v6, v7, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 869
    .line 870
    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 871
    .line 872
    .line 873
    iget-object v6, v7, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/HashSet;

    .line 874
    .line 875
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 876
    .line 877
    .line 878
    move-result v7

    .line 879
    if-nez v7, :cond_21

    .line 880
    .line 881
    new-instance v7, Ljava/util/ArrayList;

    .line 882
    .line 883
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    .line 884
    .line 885
    .line 886
    move-result v11

    .line 887
    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 891
    .line 892
    .line 893
    move-result-object v6

    .line 894
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 895
    .line 896
    .line 897
    move-result v11

    .line 898
    if-eqz v11, :cond_20

    .line 899
    .line 900
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v11

    .line 904
    check-cast v11, Ljava/lang/String;

    .line 905
    .line 906
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    .line 908
    .line 909
    goto :goto_18

    .line 910
    :cond_20
    const-string v6, "allowedDataTypes"

    .line 911
    .line 912
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 913
    .line 914
    .line 915
    :cond_21
    aput-object v5, v14, v24

    .line 916
    .line 917
    add-int/lit8 v6, v24, 0x1

    .line 918
    .line 919
    move-object/from16 v5, v23

    .line 920
    .line 921
    move/from16 v11, v25

    .line 922
    .line 923
    goto :goto_17

    .line 924
    :goto_19
    const-string v3, "remoteInputs"

    .line 925
    .line 926
    invoke-virtual {v15, v3, v14}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 927
    .line 928
    .line 929
    const-string v3, "showsUserInterface"

    .line 930
    .line 931
    iget-boolean v5, v13, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 932
    .line 933
    invoke-virtual {v15, v3, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 934
    .line 935
    .line 936
    const-string v3, "semanticAction"

    .line 937
    .line 938
    iget v5, v13, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    .line 939
    .line 940
    invoke-virtual {v15, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 941
    .line 942
    .line 943
    invoke-virtual {v9, v12, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 944
    .line 945
    .line 946
    add-int/lit8 v11, v25, 0x1

    .line 947
    .line 948
    move-object/from16 v5, v20

    .line 949
    .line 950
    move-object/from16 v6, v21

    .line 951
    .line 952
    move-object/from16 v7, v22

    .line 953
    .line 954
    const/16 v3, 0x1c

    .line 955
    .line 956
    const/4 v14, 0x0

    .line 957
    const/4 v15, 0x1

    .line 958
    goto/16 :goto_16

    .line 959
    .line 960
    :cond_22
    move-object/from16 v20, v5

    .line 961
    .line 962
    move-object/from16 v21, v6

    .line 963
    .line 964
    const-string v3, "invisible_actions"

    .line 965
    .line 966
    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v8, v3, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 970
    .line 971
    .line 972
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 973
    .line 974
    if-nez v3, :cond_23

    .line 975
    .line 976
    new-instance v3, Landroid/os/Bundle;

    .line 977
    .line 978
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 979
    .line 980
    .line 981
    iput-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 982
    .line 983
    :cond_23
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 984
    .line 985
    .line 986
    iget-object v2, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 987
    .line 988
    check-cast v2, Landroid/os/Bundle;

    .line 989
    .line 990
    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 991
    .line 992
    .line 993
    goto :goto_1a

    .line 994
    :cond_24
    move-object/from16 v20, v5

    .line 995
    .line 996
    move-object/from16 v21, v6

    .line 997
    .line 998
    :goto_1a
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 999
    .line 1000
    if-eqz v2, :cond_25

    .line 1001
    .line 1002
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1003
    .line 1004
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1005
    .line 1006
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 1007
    .line 1008
    .line 1009
    :cond_25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1010
    .line 1011
    const/16 v3, 0x18

    .line 1012
    .line 1013
    if-lt v2, v3, :cond_26

    .line 1014
    .line 1015
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1016
    .line 1017
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1018
    .line 1019
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1020
    .line 1021
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 1022
    .line 1023
    .line 1024
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1025
    .line 1026
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1027
    .line 1028
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setRemoteInputHistory(Landroid/app/Notification$Builder;)V

    .line 1029
    .line 1030
    .line 1031
    :cond_26
    const/16 v3, 0x1a

    .line 1032
    .line 1033
    if-lt v2, v3, :cond_28

    .line 1034
    .line 1035
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1036
    .line 1037
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1038
    .line 1039
    iget v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 1040
    .line 1041
    invoke-static {v3, v4}, Landroidx/core/app/RemoteInput$Api26Impl;->setBadgeIconType(Landroid/app/Notification$Builder;I)V

    .line 1042
    .line 1043
    .line 1044
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1045
    .line 1046
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1047
    .line 1048
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    .line 1049
    .line 1050
    invoke-static {v3, v4}, Landroidx/core/app/RemoteInput$Api26Impl;->setSettingsText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    .line 1051
    .line 1052
    .line 1053
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1054
    .line 1055
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1056
    .line 1057
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    .line 1058
    .line 1059
    invoke-static {v3, v4}, Landroidx/core/app/RemoteInput$Api26Impl;->setShortcutId(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1063
    .line 1064
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1065
    .line 1066
    iget-wide v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    .line 1067
    .line 1068
    invoke-static {v3, v4, v5}, Landroidx/core/app/RemoteInput$Api26Impl;->setTimeoutAfter(Landroid/app/Notification$Builder;J)V

    .line 1069
    .line 1070
    .line 1071
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1072
    .line 1073
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1074
    .line 1075
    const/4 v4, 0x0

    .line 1076
    invoke-static {v3, v4}, Landroidx/core/app/RemoteInput$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)V

    .line 1077
    .line 1078
    .line 1079
    iget-boolean v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    .line 1080
    .line 1081
    if-eqz v3, :cond_27

    .line 1082
    .line 1083
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1084
    .line 1085
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1086
    .line 1087
    iget-boolean v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    .line 1088
    .line 1089
    invoke-static {v3, v4}, Landroidx/core/app/RemoteInput$Api26Impl;->setColorized(Landroid/app/Notification$Builder;Z)V

    .line 1090
    .line 1091
    .line 1092
    :cond_27
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v3

    .line 1096
    if-nez v3, :cond_28

    .line 1097
    .line 1098
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1101
    .line 1102
    const/4 v4, 0x0

    .line 1103
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    const/4 v5, 0x0

    .line 1108
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v3

    .line 1112
    invoke-virtual {v3, v5, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v3

    .line 1116
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1117
    .line 1118
    .line 1119
    :cond_28
    const/16 v3, 0x1c

    .line 1120
    .line 1121
    if-lt v2, v3, :cond_29

    .line 1122
    .line 1123
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v2

    .line 1127
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1128
    .line 1129
    .line 1130
    move-result v3

    .line 1131
    if-eqz v3, :cond_29

    .line 1132
    .line 1133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v3

    .line 1137
    check-cast v3, Landroidx/core/app/Person;

    .line 1138
    .line 1139
    iget-object v4, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1140
    .line 1141
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1142
    .line 1143
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1144
    .line 1145
    .line 1146
    invoke-static {v3}, Landroidx/core/app/Person$Api28Impl;->toAndroidPerson(Landroidx/core/app/Person;)Landroid/app/Person;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v3

    .line 1150
    invoke-static {v4, v3}, Landroidx/core/app/Person$Api28Impl;->addPerson(Landroid/app/Notification$Builder;Landroid/app/Person;)V

    .line 1151
    .line 1152
    .line 1153
    goto :goto_1b

    .line 1154
    :cond_29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1155
    .line 1156
    const/16 v3, 0x1d

    .line 1157
    .line 1158
    if-lt v2, v3, :cond_2d

    .line 1159
    .line 1160
    iget-object v4, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1161
    .line 1162
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1163
    .line 1164
    iget-boolean v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    .line 1165
    .line 1166
    invoke-static {v4, v5}, Landroidx/core/app/RemoteInput$Api29Impl;->setAllowSystemGeneratedContextualActions(Landroid/app/Notification$Builder;Z)V

    .line 1167
    .line 1168
    .line 1169
    iget-object v4, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1170
    .line 1171
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1172
    .line 1173
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 1174
    .line 1175
    if-nez v5, :cond_2b

    .line 1176
    .line 1177
    :cond_2a
    const/4 v3, 0x0

    .line 1178
    goto :goto_1c

    .line 1179
    :cond_2b
    const/16 v6, 0x1e

    .line 1180
    .line 1181
    if-lt v2, v6, :cond_2c

    .line 1182
    .line 1183
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v3

    .line 1187
    goto :goto_1c

    .line 1188
    :cond_2c
    if-ne v2, v3, :cond_2a

    .line 1189
    .line 1190
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v3

    .line 1194
    :goto_1c
    invoke-static {v4, v3}, Landroidx/core/app/RemoteInput$Api29Impl;->setBubbleMetadata(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)V

    .line 1195
    .line 1196
    .line 1197
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 1198
    .line 1199
    if-eqz v3, :cond_2d

    .line 1200
    .line 1201
    iget-object v4, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1202
    .line 1203
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1204
    .line 1205
    iget-object v3, v3, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    .line 1206
    .line 1207
    invoke-static {v4, v3}, Landroidx/core/app/RemoteInput$Api29Impl;->setLocusId(Landroid/app/Notification$Builder;Ljava/lang/Object;)V

    .line 1208
    .line 1209
    .line 1210
    :cond_2d
    const/16 v3, 0x24

    .line 1211
    .line 1212
    if-lt v2, v3, :cond_2e

    .line 1213
    .line 1214
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1215
    .line 1216
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1217
    .line 1218
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mShortCriticalText:Ljava/lang/String;

    .line 1219
    .line 1220
    invoke-static {v3, v4}, Landroidx/core/app/NotificationCompatBuilder$Api36Impl;->setShortCriticalText(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    :cond_2e
    iget-boolean v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    .line 1224
    .line 1225
    if-eqz v1, :cond_31

    .line 1226
    .line 1227
    iget-object v1, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 1228
    .line 1229
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 1230
    .line 1231
    iget-boolean v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 1232
    .line 1233
    if-eqz v1, :cond_2f

    .line 1234
    .line 1235
    const/4 v1, 0x2

    .line 1236
    iput v1, v0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 1237
    .line 1238
    goto :goto_1d

    .line 1239
    :cond_2f
    const/4 v1, 0x1

    .line 1240
    iput v1, v0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 1241
    .line 1242
    :goto_1d
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1243
    .line 1244
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1245
    .line 1246
    const/4 v4, 0x0

    .line 1247
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1248
    .line 1249
    .line 1250
    iget-object v3, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1251
    .line 1252
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1253
    .line 1254
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1255
    .line 1256
    .line 1257
    iget v3, v10, Landroid/app/Notification;->defaults:I

    .line 1258
    .line 1259
    and-int/lit8 v3, v3, -0x4

    .line 1260
    .line 1261
    iput v3, v10, Landroid/app/Notification;->defaults:I

    .line 1262
    .line 1263
    iget-object v4, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1264
    .line 1265
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1266
    .line 1267
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1268
    .line 1269
    .line 1270
    const/16 v3, 0x1a

    .line 1271
    .line 1272
    if-lt v2, v3, :cond_31

    .line 1273
    .line 1274
    iget-object v2, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 1275
    .line 1276
    check-cast v2, Landroidx/core/app/NotificationCompat$Builder;

    .line 1277
    .line 1278
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 1279
    .line 1280
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v2

    .line 1284
    if-eqz v2, :cond_30

    .line 1285
    .line 1286
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1287
    .line 1288
    check-cast v2, Landroid/app/Notification$Builder;

    .line 1289
    .line 1290
    const-string v3, "silent"

    .line 1291
    .line 1292
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1293
    .line 1294
    .line 1295
    :cond_30
    iget-object v0, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1296
    .line 1297
    check-cast v0, Landroid/app/Notification$Builder;

    .line 1298
    .line 1299
    invoke-static {v0, v1}, Landroidx/core/app/RemoteInput$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)V

    .line 1300
    .line 1301
    .line 1302
    :cond_31
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavGraph;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lokhttp3/Dispatcher;->$r8$classId:I

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 1317
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object p1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$4;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lokhttp3/Dispatcher;->$r8$classId:I

    .line 1329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1330
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 1331
    iput-object p1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 1332
    new-instance p1, Lokhttp3/internal/http1/HeadersReader;

    invoke-direct {p1}, Lokhttp3/internal/http1/HeadersReader;-><init>()V

    iput-object p1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1333
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaTypeParameterListOwner;I)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/Dispatcher;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    iput-object p1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 1305
    iput-object p2, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1306
    iput p4, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 1307
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaTypeParameterListOwner;->getTypeParameters()Ljava/util/ArrayList;

    move-result-object p1

    .line 1308
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1309
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1310
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    .line 1311
    :cond_0
    iput-object p2, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 1312
    iget-object p1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    check-cast p1, Lokhttp3/Request$Builder;

    .line 1313
    iget-object p1, p1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    check-cast p1, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 1314
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 1315
    new-instance p2, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

    const/16 p3, 0xa

    invoke-direct {p2, p3, p0}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lcoil3/size/ViewSizeResolver$size$3$1;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    return-void
.end method

.method public static promoteAndExecute$default(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealCall$AsyncCall;I)V
    .locals 8

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p4, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 13
    .line 14
    if-eqz p4, :cond_2

    .line 15
    .line 16
    move-object p3, v1

    .line 17
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object p4, Lokhttp3/internal/_UtilJvmKt;->UTC:Ljava/util/TimeZone;

    .line 21
    .line 22
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    invoke-interface {p4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    monitor-enter p0

    .line 31
    if-eqz p2, :cond_4

    .line 32
    .line 33
    :try_start_0
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/util/ArrayDeque;

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const-string p1, "Call wasn\'t in-flight!"

    .line 45
    .line 46
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p2

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_4
    :goto_0
    if-eqz p3, :cond_6

    .line 56
    .line 57
    iget-object v0, p3, Lokhttp3/internal/connection/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/util/ArrayDeque;

    .line 65
    .line 66
    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    const-string p1, "Call wasn\'t in-flight!"

    .line 74
    .line 75
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p2

    .line 81
    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 82
    .line 83
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Ljava/util/ArrayDeque;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-object v0, p1, Lokhttp3/internal/connection/RealCall$AsyncCall;->this$0:Lokhttp3/internal/connection/RealCall;

    .line 91
    .line 92
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    .line 93
    .line 94
    iget-object v0, v0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 95
    .line 96
    iget-object v0, v0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lokhttp3/Dispatcher;->findExistingCallWithHost(Ljava/lang/String;)Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    .line 106
    iput-object v0, p1, Lokhttp3/internal/connection/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    .line 108
    :cond_7
    if-nez p2, :cond_8

    .line 109
    .line 110
    if-eqz p3, :cond_a

    .line 111
    .line 112
    :cond_8
    if-nez p4, :cond_9

    .line 113
    .line 114
    iget-object p2, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p2, Ljava/util/ArrayDeque;

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_a

    .line 123
    .line 124
    :cond_9
    iget-object p2, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p2, Ljava/util/ArrayDeque;

    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    :cond_a
    const/4 p2, 0x0

    .line 132
    if-eqz p4, :cond_b

    .line 133
    .line 134
    iget-object p3, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p3, Ljava/util/ArrayDeque;

    .line 137
    .line 138
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v0, Ljava/util/ArrayDeque;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 147
    .line 148
    .line 149
    new-instance v0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 150
    .line 151
    invoke-direct {v0, p3, p2}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;-><init>(Ljava/util/List;Z)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_b
    new-instance p3, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Ljava/util/ArrayDeque;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    :cond_c
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_d

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 182
    .line 183
    iget-object v3, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v3, Ljava/util/ArrayDeque;

    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    const/16 v4, 0x40

    .line 192
    .line 193
    if-ge v3, v4, :cond_d

    .line 194
    .line 195
    iget-object v3, v2, Lokhttp3/internal/connection/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    iget v4, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 202
    .line 203
    if-ge v3, v4, :cond_c

    .line 204
    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 206
    .line 207
    .line 208
    iget-object v3, v2, Lokhttp3/internal/connection/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    iget-object v3, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v3, Ljava/util/ArrayDeque;

    .line 219
    .line 220
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_d
    new-instance v0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 225
    .line 226
    invoke-direct {v0, p3, p2}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;-><init>(Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .line 228
    .line 229
    :goto_3
    monitor-exit p0

    .line 230
    iget-object p3, v0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->callsToExecute:Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 233
    .line 234
    .line 235
    move-result p3

    .line 236
    :goto_4
    if-ge p2, p3, :cond_10

    .line 237
    .line 238
    iget-object v2, v0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->callsToExecute:Ljava/util/List;

    .line 239
    .line 240
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 245
    .line 246
    if-ne v2, p1, :cond_e

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_e
    iget-object v3, v2, Lokhttp3/internal/connection/RealCall$AsyncCall;->this$0:Lokhttp3/internal/connection/RealCall;

    .line 250
    .line 251
    :goto_5
    if-eqz p4, :cond_f

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    new-instance v3, Ljava/io/InterruptedIOException;

    .line 257
    .line 258
    const-string v4, "executor rejected"

    .line 259
    .line 260
    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 264
    .line 265
    .line 266
    iget-object v4, v2, Lokhttp3/internal/connection/RealCall$AsyncCall;->this$0:Lokhttp3/internal/connection/RealCall;

    .line 267
    .line 268
    invoke-virtual {v4, v3}, Lokhttp3/internal/connection/RealCall;->noMoreExchanges$okhttp(Ljava/io/IOException;)Ljava/io/IOException;

    .line 269
    .line 270
    .line 271
    iget-object v2, v2, Lokhttp3/internal/connection/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    .line 272
    .line 273
    invoke-interface {v2, v4, v3}, Lokhttp3/Callback;->onFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_f
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    iget-object v4, v2, Lokhttp3/internal/connection/RealCall$AsyncCall;->this$0:Lokhttp3/internal/connection/RealCall;

    .line 285
    .line 286
    iget-object v5, v4, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 287
    .line 288
    iget-object v5, v5, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 289
    .line 290
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    const/4 v5, 0x3

    .line 294
    :try_start_1
    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 295
    .line 296
    .line 297
    goto :goto_6

    .line 298
    :catchall_1
    move-exception p0

    .line 299
    goto :goto_7

    .line 300
    :catch_0
    move-exception v3

    .line 301
    :try_start_2
    new-instance v6, Ljava/io/InterruptedIOException;

    .line 302
    .line 303
    const-string v7, "executor rejected"

    .line 304
    .line 305
    invoke-direct {v6, v7}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 309
    .line 310
    .line 311
    iget-object v3, v2, Lokhttp3/internal/connection/RealCall$AsyncCall;->this$0:Lokhttp3/internal/connection/RealCall;

    .line 312
    .line 313
    invoke-virtual {v3, v6}, Lokhttp3/internal/connection/RealCall;->noMoreExchanges$okhttp(Ljava/io/IOException;)Ljava/io/IOException;

    .line 314
    .line 315
    .line 316
    iget-object v7, v2, Lokhttp3/internal/connection/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    .line 317
    .line 318
    invoke-interface {v7, v3, v6}, Lokhttp3/Callback;->onFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    .line 320
    .line 321
    iget-object v3, v4, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 322
    .line 323
    iget-object v3, v3, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-static {v3, v1, v1, v2, v5}, Lokhttp3/Dispatcher;->promoteAndExecute$default(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealCall$AsyncCall;I)V

    .line 329
    .line 330
    .line 331
    :goto_6
    add-int/lit8 p2, p2, 0x1

    .line 332
    .line 333
    goto :goto_4

    .line 334
    :goto_7
    iget-object p1, v4, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 335
    .line 336
    iget-object p1, p1, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    invoke-static {p1, v1, v1, v2, v5}, Lokhttp3/Dispatcher;->promoteAndExecute$default(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealCall$AsyncCall;I)V

    .line 342
    .line 343
    .line 344
    throw p0

    .line 345
    :cond_10
    return-void

    .line 346
    :goto_8
    monitor-exit p0

    .line 347
    throw p1
.end method

.method public static removeSoundAndVibration(Landroid/app/Notification;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 5
    .line 6
    iget v0, p0, Landroid/app/Notification;->defaults:I

    .line 7
    .line 8
    and-int/lit8 v0, v0, -0x4

    .line 9
    .line 10
    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public addAction(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p1, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    .line 6
    .line 7
    iget-boolean v2, p1, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 8
    .line 9
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 10
    .line 11
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v5}, Lcoil3/util/UtilsKt;->toIcon(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    :cond_0
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iget-object v6, p1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 23
    .line 24
    invoke-direct {v4, v5, v0, v6}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 28
    .line 29
    const/16 v5, 0x1d

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    array-length v6, v0

    .line 34
    new-array v6, v6, [Landroid/app/RemoteInput;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    move v8, v7

    .line 38
    :goto_0
    array-length v9, v0

    .line 39
    if-ge v8, v9, :cond_3

    .line 40
    .line 41
    aget-object v9, v0, v8

    .line 42
    .line 43
    new-instance v10, Landroid/app/RemoteInput$Builder;

    .line 44
    .line 45
    iget-object v11, v9, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v10, v11}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v11, v9, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 51
    .line 52
    invoke-virtual {v10, v11}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    iget-object v11, v9, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-virtual {v10, v11}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    iget-boolean v11, v9, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    .line 63
    .line 64
    invoke-virtual {v10, v11}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    iget-object v11, v9, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-virtual {v10, v11}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    .line 76
    const/16 v12, 0x1a

    .line 77
    .line 78
    if-lt v11, v12, :cond_1

    .line 79
    .line 80
    iget-object v11, v9, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-eqz v12, :cond_1

    .line 91
    .line 92
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    check-cast v12, Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v10, v12}, Landroidx/core/app/RemoteInput$Api26Impl;->setAllowDataType(Landroid/app/RemoteInput$Builder;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    if-lt v11, v5, :cond_2

    .line 105
    .line 106
    iget v9, v9, Landroidx/core/app/RemoteInput;->mEditChoicesBeforeSending:I

    .line 107
    .line 108
    invoke-static {v10, v9}, Landroidx/core/app/RemoteInput$Api29Impl;->setEditChoicesBeforeSending(Landroid/app/RemoteInput$Builder;I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {v10}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    aput-object v9, v6, v8

    .line 116
    .line 117
    add-int/lit8 v8, v8, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    array-length v0, v6

    .line 121
    :goto_2
    if-ge v7, v0, :cond_4

    .line 122
    .line 123
    aget-object v8, v6, v7

    .line 124
    .line 125
    invoke-virtual {v4, v8}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 126
    .line 127
    .line 128
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    .line 132
    .line 133
    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 134
    .line 135
    .line 136
    const-string v3, "android.support.allowGeneratedReplies"

    .line 137
    .line 138
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    .line 143
    const/16 v6, 0x18

    .line 144
    .line 145
    if-lt v3, v6, :cond_5

    .line 146
    .line 147
    invoke-static {v4, v2}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setAllowGeneratedReplies(Landroid/app/Notification$Action$Builder;Z)V

    .line 148
    .line 149
    .line 150
    :cond_5
    const-string v2, "android.support.action.semanticAction"

    .line 151
    .line 152
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    const/16 v2, 0x1c

    .line 156
    .line 157
    if-lt v3, v2, :cond_6

    .line 158
    .line 159
    invoke-static {v4, v1}, Landroidx/core/app/Person$Api28Impl;->setSemanticAction(Landroid/app/Notification$Action$Builder;I)V

    .line 160
    .line 161
    .line 162
    :cond_6
    if-lt v3, v5, :cond_7

    .line 163
    .line 164
    iget-boolean v1, p1, Landroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    .line 165
    .line 166
    invoke-static {v4, v1}, Landroidx/core/app/RemoteInput$Api29Impl;->setContextual(Landroid/app/Notification$Action$Builder;Z)V

    .line 167
    .line 168
    .line 169
    :cond_7
    const/16 v1, 0x1f

    .line 170
    .line 171
    if-lt v3, v1, :cond_8

    .line 172
    .line 173
    iget-boolean v1, p1, Landroidx/core/app/NotificationCompat$Action;->mAuthenticationRequired:Z

    .line 174
    .line 175
    invoke-static {v4, v1}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->setAuthenticationRequired(Landroid/app/Notification$Action$Builder;Z)V

    .line 176
    .line 177
    .line 178
    :cond_8
    const/16 v1, 0x25

    .line 179
    .line 180
    if-lt v3, v1, :cond_9

    .line 181
    .line 182
    iget v1, p1, Landroidx/core/app/NotificationCompat$Action;->mEmphasisHint:I

    .line 183
    .line 184
    invoke-static {v4, v1}, Landroidx/core/app/NotificationCompatBuilder$Api37Impl;->setEmphasisHint(Landroid/app/Notification$Action$Builder;I)V

    .line 185
    .line 186
    .line 187
    iget v1, p1, Landroidx/core/app/NotificationCompat$Action;->mStyleHint:I

    .line 188
    .line 189
    invoke-static {v4, v1}, Landroidx/core/app/NotificationCompatBuilder$Api37Impl;->setStyleHint(Landroid/app/Notification$Action$Builder;I)V

    .line 190
    .line 191
    .line 192
    :cond_9
    const-string v1, "android.support.action.showsUserInterface"

    .line 193
    .line 194
    iget-boolean p1, p1, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 195
    .line 196
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p0, Landroid/app/Notification$Builder;

    .line 205
    .line 206
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public addView(Landroid/view/View;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-gez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lokhttp3/Dispatcher;->getOffset(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    :goto_0
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lokhttp3/internal/http1/HeadersReader;

    .line 21
    .line 22
    invoke-virtual {v1, p2, p3}, Lokhttp3/internal/http1/HeadersReader;->insert(IZ)V

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher;->hideViewInternal(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    add-int/lit8 p0, p0, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz p0, :cond_3

    .line 57
    .line 58
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 65
    .line 66
    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 p0, p0, -0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-gez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lokhttp3/Dispatcher;->getOffset(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    :goto_0
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lokhttp3/internal/http1/HeadersReader;

    .line 21
    .line 22
    invoke-virtual {v1, p2, p4}, Lokhttp3/internal/http1/HeadersReader;->insert(IZ)V

    .line 23
    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher;->hideViewInternal(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_5

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    if-nez p4, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    if-eqz p4, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p2, "Called attach on a child which is not detached: "

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    :goto_1
    sget-boolean p4, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 68
    .line 69
    if-eqz p4, :cond_4

    .line 70
    .line 71
    new-instance p4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "reAttach "

    .line 74
    .line 75
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    const-string v1, "RecyclerView"

    .line 86
    .line 87
    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_4
    iget p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 91
    .line 92
    and-int/lit16 p4, p4, -0x101

    .line 93
    .line 94
    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 98
    .line 99
    if-nez p0, :cond_6

    .line 100
    .line 101
    :goto_2
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->access$000(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string p4, "No ViewHolder found for child: "

    .line 110
    .line 111
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string p4, ", index: "

    .line 122
    .line 123
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public detachViewFromParent(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher;->getOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lokhttp3/internal/http1/HeadersReader;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lokhttp3/internal/http1/HeadersReader;->remove(I)Z

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "called detach on an already detached child "

    .line 46
    .line 47
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    :goto_0
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "tmpDetach "

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "RecyclerView"

    .line 80
    .line 81
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_2
    const/16 v1, 0x100

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 91
    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    :cond_4
    :goto_1
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v2, "No view at offset "

    .line 107
    .line 108
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0
.end method

.method public declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lokhttp3/internal/_UtilJvmKt;->okHttpName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " Dispatcher"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v8, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v8, v0, v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    const v3, 0x7fffffff

    .line 44
    .line 45
    .line 46
    const-wide/16 v4, 0x3c

    .line 47
    .line 48
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    move-object v0, v1

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit p0

    .line 58
    return-object v0

    .line 59
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw v0
.end method

.method public findExistingCallWithHost(Ljava/lang/String;)Lokhttp3/internal/connection/RealCall$AsyncCall;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 23
    .line 24
    iget-object v2, v1, Lokhttp3/internal/connection/RealCall$AsyncCall;->this$0:Lokhttp3/internal/connection/RealCall;

    .line 25
    .line 26
    iget-object v2, v2, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    .line 27
    .line 28
    iget-object v2, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 29
    .line 30
    iget-object v2, v2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    iget-object p0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 61
    .line 62
    iget-object v1, v0, Lokhttp3/internal/connection/RealCall$AsyncCall;->this$0:Lokhttp3/internal/connection/RealCall;

    .line 63
    .line 64
    iget-object v1, v1, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    .line 65
    .line 66
    iget-object v1, v1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 67
    .line 68
    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method public findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;
    .locals 3

    .line 94
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    check-cast v0, Landroidx/navigation/NavGraph;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0, p1, v0, v2, v1}, Lokhttp3/Dispatcher;->findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public findNode$navigation_common_release(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 7
    .line 8
    new-instance v1, Lkotlin/UIntArray$Iterator;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, v0}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lkotlin/sequences/ConstrainedOnceSequence;

    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v4, v1

    .line 36
    check-cast v4, Landroidx/navigation/NavDestination;

    .line 37
    .line 38
    iget-object v5, v4, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 39
    .line 40
    iget-object v5, v5, Landroidx/compose/ui/node/RulerTrackingMap;->layoutNodes:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v5, Ljava/lang/String;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static {v5, p1, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_2

    .line 50
    .line 51
    iget-object v4, v4, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 52
    .line 53
    invoke-virtual {v4, p1}, Landroidx/compose/ui/node/RulerTrackingMap;->matchRoute$navigation_common_release(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v1, v3

    .line 61
    :cond_2
    :goto_0
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 62
    .line 63
    if-nez v1, :cond_5

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 70
    .line 71
    iget-object p0, p0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 72
    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    return-object v3

    .line 87
    :cond_3
    invoke-virtual {p0, p1, v2}, Lokhttp3/Dispatcher;->findNode$navigation_common_release(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_4
    return-object v3

    .line 93
    :cond_5
    return-object v1
.end method

.method public findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/collection/SparseArrayCompat;

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/collection/ArraySetKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object v3, v1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 25
    .line 26
    iget-object v4, p3, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 27
    .line 28
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    move-object v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_2
    :goto_0
    if-eqz p4, :cond_6

    .line 41
    .line 42
    new-instance v1, Lkotlin/UIntArray$Iterator;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v1, v3, p0}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lkotlin/sequences/ConstrainedOnceSequence;

    .line 53
    .line 54
    invoke-virtual {p0}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 69
    .line 70
    instance-of v4, v1, Landroidx/navigation/NavGraph;

    .line 71
    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    invoke-virtual {v1, p2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    check-cast v1, Landroidx/navigation/NavGraph;

    .line 81
    .line 82
    iget-object v1, v1, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 83
    .line 84
    invoke-virtual {v1, p1, v0, p3, v3}, Lokhttp3/Dispatcher;->findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    move-object v1, v2

    .line 90
    :goto_1
    if-eqz v1, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    move-object v1, v2

    .line 94
    :cond_6
    :goto_2
    if-nez v1, :cond_8

    .line 95
    .line 96
    iget-object p0, v0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 97
    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, p2}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-nez p0, :cond_7

    .line 105
    .line 106
    iget-object p0, v0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 112
    .line 113
    invoke-virtual {p0, p1, v0, p3, p4}, Lokhttp3/Dispatcher;->findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :cond_7
    return-object v2

    .line 119
    :cond_8
    return-object v1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher;->getOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public getChildCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    sub-int/2addr v0, p0

    .line 20
    return v0
.end method

.method public getLineConfiguration(I)Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .locals 7

    .line 1
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 2
    .line 3
    mul-int/2addr p1, v0

    .line 4
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 5
    .line 6
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->getTotalSize()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sub-int/2addr v2, p1

    .line 11
    if-le v0, v2, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    if-gez v0, :cond_1

    .line 16
    .line 17
    move v0, v2

    .line 18
    :cond_1
    iget-object v3, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ne v0, v3, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Ljava/util/List;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    if-ge v2, v0, :cond_3

    .line 39
    .line 40
    new-instance v4, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 41
    .line 42
    const-wide/16 v5, 0x1

    .line 43
    .line 44
    invoke-direct {v4, v5, v6}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    iput-object v3, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 54
    .line 55
    move-object p0, v3

    .line 56
    :goto_1
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput p1, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 60
    .line 61
    iput-object p0, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 62
    .line 63
    return-object v1
.end method

.method public getLineIndexOfItem(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->getTotalSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->getTotalSize()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string v0, "ItemIndex > total count"

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget p0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 22
    .line 23
    div-int/2addr p1, p0

    .line 24
    return p1
.end method

.method public getOffset(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/http1/HeadersReader;

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    move v1, p1

    .line 19
    :goto_0
    if-ge v1, p0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lokhttp3/internal/http1/HeadersReader;->countOnesBefore(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int v2, v1, v2

    .line 26
    .line 27
    sub-int v2, p1, v2

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    :goto_1
    invoke-virtual {v0, v1}, Lokhttp3/internal/http1/HeadersReader;->get(I)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return v1

    .line 41
    :cond_2
    add-int/2addr v1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_2
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public getTotalSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lokhttp3/internal/http/StatusLine;

    .line 6
    .line 7
    iget p0, p0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 8
    .line 9
    return p0
.end method

.method public getUnfilteredChildAt(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getUnfilteredChildCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public hideViewInternal(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x4

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iput v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public matchDeepLinkComprehensive$navigation_common_release(Landroidx/navigation/NavDestination$DeepLinkMatch;Lcom/caverock/androidsvg/SVG;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 5

    .line 1
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    move-object v2, v1

    .line 15
    check-cast v2, Landroidx/navigation/internal/NavGraphImpl$iterator$1;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/navigation/NavDestination;

    .line 29
    .line 30
    invoke-static {v2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, p2}, Landroidx/navigation/NavDestination;->matchDeepLink(Lcom/caverock/androidsvg/SVG;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    :cond_1
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/util/List;)Ljava/lang/Comparable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    if-eqz p3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1, p4}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-nez p3, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1, p2, p0}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Lcom/caverock/androidsvg/SVG;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    :cond_3
    const/4 p0, 0x3

    .line 69
    new-array p0, p0, [Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    aput-object p1, p0, p2

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    aput-object v0, p0, p1

    .line 76
    .line 77
    const/4 p1, 0x2

    .line 78
    aput-object v4, p0, p1

    .line 79
    .line 80
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/util/List;)Ljava/lang/Comparable;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 89
    .line 90
    return-object p0
.end method

.method public removeViewAt(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget v1, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_3

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v1, v3, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher;->getOffset(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    iput v3, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 28
    .line 29
    iput-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    :try_start_1
    iput v2, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 33
    .line 34
    iput-object v4, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v2, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lokhttp3/internal/http1/HeadersReader;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Lokhttp3/internal/http1/HeadersReader;->remove(I)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v4}, Lokhttp3/Dispatcher;->unhideViewInternal(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$4;->removeViewAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    iput v3, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 56
    .line 57
    iput-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    iput v3, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 61
    .line 62
    iput-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    const-string p0, "Cannot call removeView(At) within removeViewIfHidden"

    .line 66
    .line 67
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    const-string p0, "Cannot call removeView(At) within removeView(At)"

    .line 72
    .line 73
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public resolveTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcoil3/size/ViewSizeResolver$size$3$1;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcoil3/size/ViewSizeResolver$size$3$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lokhttp3/Request$Builder;

    .line 20
    .line 21
    iget-object p0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;->resolveTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/compose/ui/node/RulerTrackingMap;->layoutNodes:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 28
    .line 29
    const-string v0, "android-app://androidx.navigation/"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :goto_0
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 40
    .line 41
    iput-object p1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string p0, "Cannot have an empty start destination route"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    const-string p0, "Start destination "

    .line 51
    .line 52
    const-string v1, " cannot use the same route as the graph "

    .line 53
    .line 54
    invoke-static {p0, p1, v1, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public spanOf(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lokhttp3/internal/http/StatusLine;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lokhttp3/internal/http/StatusLine;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 12
    .line 13
    sub-int/2addr p1, v0

    .line 14
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    .line 15
    .line 16
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;->span:Lkotlin/jvm/functions/Function2;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 25
    .line 26
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 31
    .line 32
    iget-wide p0, p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    .line 33
    .line 34
    long-to-int p0, p0

    .line 35
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/Dispatcher;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lokhttp3/internal/http1/HeadersReader;

    .line 19
    .line 20
    invoke-virtual {v1}, Lokhttp3/internal/http1/HeadersReader;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", hidden list:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public unhideViewInternal(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 p0, 0x0

    .line 45
    iput p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 46
    .line 47
    :cond_1
    return-void
.end method
