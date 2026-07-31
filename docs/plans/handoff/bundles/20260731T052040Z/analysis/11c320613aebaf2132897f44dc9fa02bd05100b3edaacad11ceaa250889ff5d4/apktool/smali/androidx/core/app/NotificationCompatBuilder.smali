.class public final Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlinx/serialization/json/internal/InternalJsonWriter;
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public mBuilder:Ljava/lang/Object;

.field public mBuilderCompat:Ljava/lang/Object;

.field public mExtras:Ljava/lang/Object;

.field public mGroupAlertBehavior:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1081
    const/4 v0, 0x4

    iput v0, p0, Landroidx/core/app/NotificationCompatBuilder;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Landroidx/core/app/NotificationCompatBuilder;->$r8$classId:I

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
    iput-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

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
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v9, 0x1a

    .line 33
    .line 34
    if-lt v8, v9, :cond_0

    .line 35
    .line 36
    invoke-static {v3, v6}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->createBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    iput-object v8, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v8, Landroid/app/Notification$Builder;

    .line 44
    .line 45
    invoke-direct {v8, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v8, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 49
    .line 50
    :goto_0
    iget-object v8, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 51
    .line 52
    iget-object v10, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v10, Landroid/app/Notification$Builder;

    .line 55
    .line 56
    iget-wide v11, v8, Landroid/app/Notification;->when:J

    .line 57
    .line 58
    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    iget v11, v8, Landroid/app/Notification;->icon:I

    .line 63
    .line 64
    iget v12, v8, Landroid/app/Notification;->iconLevel:I

    .line 65
    .line 66
    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 71
    .line 72
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    iget-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 77
    .line 78
    const/4 v12, 0x0

    .line 79
    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    iget-object v11, v8, Landroid/app/Notification;->vibrate:[J

    .line 84
    .line 85
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    iget v11, v8, Landroid/app/Notification;->ledARGB:I

    .line 90
    .line 91
    iget v13, v8, Landroid/app/Notification;->ledOnMS:I

    .line 92
    .line 93
    iget v14, v8, Landroid/app/Notification;->ledOffMS:I

    .line 94
    .line 95
    invoke-virtual {v10, v11, v13, v14}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    iget v11, v8, Landroid/app/Notification;->flags:I

    .line 100
    .line 101
    const/4 v13, 0x2

    .line 102
    and-int/2addr v11, v13

    .line 103
    if-eqz v11, :cond_1

    .line 104
    .line 105
    const/4 v11, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move v11, v2

    .line 108
    :goto_1
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    iget v11, v8, Landroid/app/Notification;->flags:I

    .line 113
    .line 114
    and-int/lit8 v11, v11, 0x8

    .line 115
    .line 116
    if-eqz v11, :cond_2

    .line 117
    .line 118
    const/4 v11, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    move v11, v2

    .line 121
    :goto_2
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    iget v11, v8, Landroid/app/Notification;->flags:I

    .line 126
    .line 127
    and-int/lit8 v11, v11, 0x10

    .line 128
    .line 129
    if-eqz v11, :cond_3

    .line 130
    .line 131
    const/4 v11, 0x1

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    move v11, v2

    .line 134
    :goto_3
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    iget v11, v8, Landroid/app/Notification;->defaults:I

    .line 139
    .line 140
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 145
    .line 146
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 151
    .line 152
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 157
    .line 158
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 163
    .line 164
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    iget-object v11, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 169
    .line 170
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    iget v11, v8, Landroid/app/Notification;->flags:I

    .line 175
    .line 176
    and-int/lit16 v11, v11, 0x80

    .line 177
    .line 178
    if-eqz v11, :cond_4

    .line 179
    .line 180
    const/4 v11, 0x1

    .line 181
    goto :goto_4

    .line 182
    :cond_4
    move v11, v2

    .line 183
    :goto_4
    invoke-virtual {v10, v12, v11}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    iget v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 188
    .line 189
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    iget v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    .line 194
    .line 195
    iget v15, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    .line 196
    .line 197
    iget-boolean v14, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 198
    .line 199
    invoke-virtual {v10, v11, v15, v14}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 200
    .line 201
    .line 202
    iget-object v10, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v10, Landroid/app/Notification$Builder;

    .line 205
    .line 206
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 207
    .line 208
    if-nez v11, :cond_5

    .line 209
    .line 210
    move-object v3, v12

    .line 211
    goto :goto_5

    .line 212
    :cond_5
    invoke-virtual {v11, v3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    :goto_5
    invoke-virtual {v10, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 217
    .line 218
    .line 219
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v3, Landroid/app/Notification$Builder;

    .line 222
    .line 223
    iget-object v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 224
    .line 225
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    iget-boolean v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 230
    .line 231
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    iget v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 236
    .line 237
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 238
    .line 239
    .line 240
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    const-string v13, "android.support.allowGeneratedReplies"

    .line 251
    .line 252
    if-eqz v10, :cond_e

    .line 253
    .line 254
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    check-cast v10, Landroidx/core/app/NotificationCompat$Action;

    .line 259
    .line 260
    iget-object v11, v10, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 261
    .line 262
    if-nez v11, :cond_6

    .line 263
    .line 264
    iget v11, v10, Landroidx/core/app/NotificationCompat$Action;->icon:I

    .line 265
    .line 266
    if-eqz v11, :cond_6

    .line 267
    .line 268
    invoke-static {v11}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    iput-object v11, v10, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 273
    .line 274
    :cond_6
    iget-object v11, v10, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 275
    .line 276
    iget-boolean v14, v10, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 277
    .line 278
    iget-object v9, v10, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 279
    .line 280
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 281
    .line 282
    if-eqz v11, :cond_7

    .line 283
    .line 284
    invoke-virtual {v11, v12}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    goto :goto_7

    .line 289
    :cond_7
    move-object v11, v12

    .line 290
    :goto_7
    iget-object v12, v10, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 291
    .line 292
    iget-object v15, v10, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 293
    .line 294
    invoke-direct {v2, v11, v12, v15}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 295
    .line 296
    .line 297
    if-eqz v9, :cond_8

    .line 298
    .line 299
    new-instance v11, Landroid/os/Bundle;

    .line 300
    .line 301
    invoke-direct {v11, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 302
    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_8
    new-instance v11, Landroid/os/Bundle;

    .line 306
    .line 307
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 308
    .line 309
    .line 310
    :goto_8
    invoke-virtual {v11, v13, v14}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    .line 312
    .line 313
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 314
    .line 315
    const/16 v12, 0x18

    .line 316
    .line 317
    if-lt v9, v12, :cond_9

    .line 318
    .line 319
    invoke-static {v2, v14}, Landroidx/core/app/ServiceCompat$Api24Impl;->setAllowGeneratedReplies(Landroid/app/Notification$Action$Builder;Z)V

    .line 320
    .line 321
    .line 322
    :cond_9
    const-string v12, "android.support.action.semanticAction"

    .line 323
    .line 324
    const/4 v13, 0x0

    .line 325
    invoke-virtual {v11, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 326
    .line 327
    .line 328
    const/16 v12, 0x1c

    .line 329
    .line 330
    if-lt v9, v12, :cond_a

    .line 331
    .line 332
    invoke-static {v2}, Landroidx/core/app/NotificationCompatBuilder$Api28Impl;->setSemanticAction(Landroid/app/Notification$Action$Builder;)V

    .line 333
    .line 334
    .line 335
    :cond_a
    const/16 v12, 0x1d

    .line 336
    .line 337
    if-lt v9, v12, :cond_b

    .line 338
    .line 339
    invoke-static {v2}, Landroidx/core/app/ServiceCompat$Api29Impl;->setContextual(Landroid/app/Notification$Action$Builder;)V

    .line 340
    .line 341
    .line 342
    :cond_b
    const/16 v12, 0x1f

    .line 343
    .line 344
    if-lt v9, v12, :cond_c

    .line 345
    .line 346
    invoke-static {v2}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->setAuthenticationRequired(Landroid/app/Notification$Action$Builder;)V

    .line 347
    .line 348
    .line 349
    :cond_c
    const/16 v12, 0x25

    .line 350
    .line 351
    if-lt v9, v12, :cond_d

    .line 352
    .line 353
    invoke-static {v2}, Landroidx/core/app/NotificationCompatBuilder$Api37Impl;->setEmphasisHint(Landroid/app/Notification$Action$Builder;)V

    .line 354
    .line 355
    .line 356
    invoke-static {v2}, Landroidx/core/app/NotificationCompatBuilder$Api37Impl;->setStyleHint(Landroid/app/Notification$Action$Builder;)V

    .line 357
    .line 358
    .line 359
    :cond_d
    const-string v9, "android.support.action.showsUserInterface"

    .line 360
    .line 361
    iget-boolean v10, v10, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 362
    .line 363
    invoke-virtual {v11, v9, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v11}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 367
    .line 368
    .line 369
    iget-object v9, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v9, Landroid/app/Notification$Builder;

    .line 372
    .line 373
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 378
    .line 379
    .line 380
    const/4 v2, 0x0

    .line 381
    const/16 v9, 0x1a

    .line 382
    .line 383
    const/4 v12, 0x0

    .line 384
    const/4 v13, 0x2

    .line 385
    goto/16 :goto_6

    .line 386
    .line 387
    :cond_e
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 388
    .line 389
    if-eqz v2, :cond_f

    .line 390
    .line 391
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v3, Landroid/os/Bundle;

    .line 394
    .line 395
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 396
    .line 397
    .line 398
    :cond_f
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v2, Landroid/app/Notification$Builder;

    .line 401
    .line 402
    iget-boolean v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 403
    .line 404
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 405
    .line 406
    .line 407
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v2, Landroid/app/Notification$Builder;

    .line 410
    .line 411
    const/4 v3, 0x0

    .line 412
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 413
    .line 414
    .line 415
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v2, Landroid/app/Notification$Builder;

    .line 418
    .line 419
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 422
    .line 423
    .line 424
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast v2, Landroid/app/Notification$Builder;

    .line 427
    .line 428
    const/4 v3, 0x0

    .line 429
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 430
    .line 431
    .line 432
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v2, Landroid/app/Notification$Builder;

    .line 435
    .line 436
    iget-boolean v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 437
    .line 438
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 439
    .line 440
    .line 441
    iget v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 442
    .line 443
    iput v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 444
    .line 445
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v2, Landroid/app/Notification$Builder;

    .line 448
    .line 449
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 452
    .line 453
    .line 454
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v2, Landroid/app/Notification$Builder;

    .line 457
    .line 458
    iget v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 459
    .line 460
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 461
    .line 462
    .line 463
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v2, Landroid/app/Notification$Builder;

    .line 466
    .line 467
    iget v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 468
    .line 469
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 470
    .line 471
    .line 472
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v2, Landroid/app/Notification$Builder;

    .line 475
    .line 476
    const/4 v3, 0x0

    .line 477
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 478
    .line 479
    .line 480
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v2, Landroid/app/Notification$Builder;

    .line 483
    .line 484
    iget-object v3, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 485
    .line 486
    iget-object v9, v8, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 487
    .line 488
    invoke-virtual {v2, v3, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 489
    .line 490
    .line 491
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 492
    .line 493
    const/16 v12, 0x1c

    .line 494
    .line 495
    if-ge v2, v12, :cond_14

    .line 496
    .line 497
    if-nez v5, :cond_10

    .line 498
    .line 499
    const/4 v2, 0x0

    .line 500
    goto :goto_9

    .line 501
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    .line 502
    .line 503
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 515
    .line 516
    .line 517
    move-result v9

    .line 518
    if-nez v9, :cond_13

    .line 519
    .line 520
    :goto_9
    if-nez v2, :cond_11

    .line 521
    .line 522
    goto :goto_a

    .line 523
    :cond_11
    if-nez v4, :cond_12

    .line 524
    .line 525
    move-object v4, v2

    .line 526
    goto :goto_a

    .line 527
    :cond_12
    new-instance v3, Landroidx/collection/ArraySet;

    .line 528
    .line 529
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 530
    .line 531
    .line 532
    move-result v9

    .line 533
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 534
    .line 535
    .line 536
    move-result v10

    .line 537
    add-int/2addr v10, v9

    .line 538
    invoke-direct {v3, v10}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v2}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 545
    .line 546
    .line 547
    new-instance v4, Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 550
    .line 551
    .line 552
    goto :goto_a

    .line 553
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 561
    .line 562
    .line 563
    const/16 v16, 0x0

    .line 564
    .line 565
    throw v16

    .line 566
    :cond_14
    :goto_a
    if-eqz v4, :cond_15

    .line 567
    .line 568
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    if-nez v2, :cond_15

    .line 573
    .line 574
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-eqz v3, :cond_15

    .line 583
    .line 584
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    check-cast v3, Ljava/lang/String;

    .line 589
    .line 590
    iget-object v4, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v4, Landroid/app/Notification$Builder;

    .line 593
    .line 594
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 595
    .line 596
    .line 597
    goto :goto_b

    .line 598
    :cond_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    if-lez v2, :cond_1d

    .line 603
    .line 604
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 605
    .line 606
    if-nez v2, :cond_16

    .line 607
    .line 608
    new-instance v2, Landroid/os/Bundle;

    .line 609
    .line 610
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 611
    .line 612
    .line 613
    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 614
    .line 615
    :cond_16
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 616
    .line 617
    const-string v3, "android.car.EXTENSIONS"

    .line 618
    .line 619
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    if-nez v2, :cond_17

    .line 624
    .line 625
    new-instance v2, Landroid/os/Bundle;

    .line 626
    .line 627
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 628
    .line 629
    .line 630
    :cond_17
    new-instance v4, Landroid/os/Bundle;

    .line 631
    .line 632
    invoke-direct {v4, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 633
    .line 634
    .line 635
    new-instance v9, Landroid/os/Bundle;

    .line 636
    .line 637
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 638
    .line 639
    .line 640
    const/4 v10, 0x0

    .line 641
    :goto_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 642
    .line 643
    .line 644
    move-result v11

    .line 645
    if-ge v10, v11, :cond_1b

    .line 646
    .line 647
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v11

    .line 651
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v12

    .line 655
    check-cast v12, Landroidx/core/app/NotificationCompat$Action;

    .line 656
    .line 657
    new-instance v14, Landroid/os/Bundle;

    .line 658
    .line 659
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 660
    .line 661
    .line 662
    iget-object v15, v12, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 663
    .line 664
    if-nez v15, :cond_18

    .line 665
    .line 666
    iget v15, v12, Landroidx/core/app/NotificationCompat$Action;->icon:I

    .line 667
    .line 668
    if-eqz v15, :cond_18

    .line 669
    .line 670
    invoke-static {v15}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 671
    .line 672
    .line 673
    move-result-object v15

    .line 674
    iput-object v15, v12, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 675
    .line 676
    :cond_18
    iget-object v15, v12, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 677
    .line 678
    move-object/from16 v17, v5

    .line 679
    .line 680
    iget-object v5, v12, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 681
    .line 682
    if-eqz v15, :cond_19

    .line 683
    .line 684
    invoke-virtual {v15}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    .line 685
    .line 686
    .line 687
    move-result v15

    .line 688
    :goto_d
    move-object/from16 v18, v6

    .line 689
    .line 690
    goto :goto_e

    .line 691
    :cond_19
    const/4 v15, 0x0

    .line 692
    goto :goto_d

    .line 693
    :goto_e
    const-string v6, "icon"

    .line 694
    .line 695
    invoke-virtual {v14, v6, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 696
    .line 697
    .line 698
    const-string/jumbo v6, "title"

    .line 699
    .line 700
    .line 701
    iget-object v15, v12, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 702
    .line 703
    invoke-virtual {v14, v6, v15}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 704
    .line 705
    .line 706
    const-string v6, "actionIntent"

    .line 707
    .line 708
    iget-object v15, v12, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 709
    .line 710
    invoke-virtual {v14, v6, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 711
    .line 712
    .line 713
    if-eqz v5, :cond_1a

    .line 714
    .line 715
    new-instance v6, Landroid/os/Bundle;

    .line 716
    .line 717
    invoke-direct {v6, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 718
    .line 719
    .line 720
    goto :goto_f

    .line 721
    :cond_1a
    new-instance v6, Landroid/os/Bundle;

    .line 722
    .line 723
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 724
    .line 725
    .line 726
    :goto_f
    iget-boolean v5, v12, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 727
    .line 728
    invoke-virtual {v6, v13, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 729
    .line 730
    .line 731
    const-string v5, "extras"

    .line 732
    .line 733
    invoke-virtual {v14, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 734
    .line 735
    .line 736
    const-string v5, "remoteInputs"

    .line 737
    .line 738
    const/4 v6, 0x0

    .line 739
    invoke-virtual {v14, v5, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 740
    .line 741
    .line 742
    const-string/jumbo v5, "showsUserInterface"

    .line 743
    .line 744
    .line 745
    iget-boolean v6, v12, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 746
    .line 747
    invoke-virtual {v14, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 748
    .line 749
    .line 750
    const-string v5, "semanticAction"

    .line 751
    .line 752
    const/4 v6, 0x0

    .line 753
    invoke-virtual {v14, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v9, v11, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 757
    .line 758
    .line 759
    add-int/lit8 v10, v10, 0x1

    .line 760
    .line 761
    move-object/from16 v5, v17

    .line 762
    .line 763
    move-object/from16 v6, v18

    .line 764
    .line 765
    goto :goto_c

    .line 766
    :cond_1b
    move-object/from16 v17, v5

    .line 767
    .line 768
    move-object/from16 v18, v6

    .line 769
    .line 770
    const-string v5, "invisible_actions"

    .line 771
    .line 772
    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 776
    .line 777
    .line 778
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 779
    .line 780
    if-nez v5, :cond_1c

    .line 781
    .line 782
    new-instance v5, Landroid/os/Bundle;

    .line 783
    .line 784
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 785
    .line 786
    .line 787
    iput-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 788
    .line 789
    :cond_1c
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 790
    .line 791
    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 792
    .line 793
    .line 794
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 795
    .line 796
    check-cast v2, Landroid/os/Bundle;

    .line 797
    .line 798
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 799
    .line 800
    .line 801
    goto :goto_10

    .line 802
    :cond_1d
    move-object/from16 v17, v5

    .line 803
    .line 804
    move-object/from16 v18, v6

    .line 805
    .line 806
    :goto_10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 807
    .line 808
    const/16 v12, 0x18

    .line 809
    .line 810
    if-lt v2, v12, :cond_1e

    .line 811
    .line 812
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v3, Landroid/app/Notification$Builder;

    .line 815
    .line 816
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 817
    .line 818
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 819
    .line 820
    .line 821
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 822
    .line 823
    check-cast v3, Landroid/app/Notification$Builder;

    .line 824
    .line 825
    invoke-static {v3}, Landroidx/core/app/ServiceCompat$Api24Impl;->setRemoteInputHistory(Landroid/app/Notification$Builder;)V

    .line 826
    .line 827
    .line 828
    :cond_1e
    const/16 v3, 0x1a

    .line 829
    .line 830
    if-lt v2, v3, :cond_20

    .line 831
    .line 832
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 833
    .line 834
    check-cast v3, Landroid/app/Notification$Builder;

    .line 835
    .line 836
    iget v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 837
    .line 838
    invoke-static {v3, v4}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setBadgeIconType(Landroid/app/Notification$Builder;I)V

    .line 839
    .line 840
    .line 841
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 842
    .line 843
    check-cast v3, Landroid/app/Notification$Builder;

    .line 844
    .line 845
    invoke-static {v3}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setSettingsText(Landroid/app/Notification$Builder;)V

    .line 846
    .line 847
    .line 848
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v3, Landroid/app/Notification$Builder;

    .line 851
    .line 852
    invoke-static {v3}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setShortcutId(Landroid/app/Notification$Builder;)V

    .line 853
    .line 854
    .line 855
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v3, Landroid/app/Notification$Builder;

    .line 858
    .line 859
    invoke-static {v3}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setTimeoutAfter(Landroid/app/Notification$Builder;)V

    .line 860
    .line 861
    .line 862
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 863
    .line 864
    check-cast v3, Landroid/app/Notification$Builder;

    .line 865
    .line 866
    iget v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 867
    .line 868
    invoke-static {v3, v4}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)V

    .line 869
    .line 870
    .line 871
    iget-boolean v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    .line 872
    .line 873
    if-eqz v3, :cond_1f

    .line 874
    .line 875
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 876
    .line 877
    check-cast v3, Landroid/app/Notification$Builder;

    .line 878
    .line 879
    iget-boolean v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    .line 880
    .line 881
    invoke-static {v3, v4}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setColorized(Landroid/app/Notification$Builder;Z)V

    .line 882
    .line 883
    .line 884
    :cond_1f
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    if-nez v3, :cond_20

    .line 889
    .line 890
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 891
    .line 892
    check-cast v3, Landroid/app/Notification$Builder;

    .line 893
    .line 894
    const/4 v6, 0x0

    .line 895
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    const/4 v13, 0x0

    .line 900
    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    invoke-virtual {v3, v13, v13, v13}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 905
    .line 906
    .line 907
    move-result-object v3

    .line 908
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 909
    .line 910
    .line 911
    :cond_20
    const/16 v12, 0x1c

    .line 912
    .line 913
    if-lt v2, v12, :cond_21

    .line 914
    .line 915
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 920
    .line 921
    .line 922
    move-result v4

    .line 923
    if-nez v4, :cond_22

    .line 924
    .line 925
    :cond_21
    const/16 v12, 0x1d

    .line 926
    .line 927
    goto :goto_11

    .line 928
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 933
    .line 934
    .line 935
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 936
    .line 937
    .line 938
    const/16 v16, 0x0

    .line 939
    .line 940
    throw v16

    .line 941
    :goto_11
    if-lt v2, v12, :cond_23

    .line 942
    .line 943
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 944
    .line 945
    check-cast v3, Landroid/app/Notification$Builder;

    .line 946
    .line 947
    iget-boolean v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    .line 948
    .line 949
    invoke-static {v3, v4}, Landroidx/core/app/ServiceCompat$Api29Impl;->setAllowSystemGeneratedContextualActions(Landroid/app/Notification$Builder;Z)V

    .line 950
    .line 951
    .line 952
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 953
    .line 954
    check-cast v3, Landroid/app/Notification$Builder;

    .line 955
    .line 956
    invoke-static {v3}, Landroidx/core/app/ServiceCompat$Api29Impl;->setBubbleMetadata(Landroid/app/Notification$Builder;)V

    .line 957
    .line 958
    .line 959
    :cond_23
    const/16 v12, 0x1f

    .line 960
    .line 961
    if-lt v2, v12, :cond_24

    .line 962
    .line 963
    iget v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    .line 964
    .line 965
    if-eqz v3, :cond_24

    .line 966
    .line 967
    iget-object v4, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 968
    .line 969
    check-cast v4, Landroid/app/Notification$Builder;

    .line 970
    .line 971
    invoke-static {v4, v3}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->setForegroundServiceBehavior(Landroid/app/Notification$Builder;I)V

    .line 972
    .line 973
    .line 974
    :cond_24
    const/16 v3, 0x24

    .line 975
    .line 976
    if-lt v2, v3, :cond_25

    .line 977
    .line 978
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 979
    .line 980
    check-cast v3, Landroid/app/Notification$Builder;

    .line 981
    .line 982
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api36Impl;->setShortCriticalText(Landroid/app/Notification$Builder;)V

    .line 983
    .line 984
    .line 985
    :cond_25
    iget-boolean v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    .line 986
    .line 987
    if-eqz v1, :cond_28

    .line 988
    .line 989
    iget-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 990
    .line 991
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 992
    .line 993
    iget-boolean v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 994
    .line 995
    if-eqz v1, :cond_26

    .line 996
    .line 997
    const/4 v1, 0x2

    .line 998
    iput v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 999
    .line 1000
    goto :goto_12

    .line 1001
    :cond_26
    const/4 v1, 0x1

    .line 1002
    iput v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 1003
    .line 1004
    :goto_12
    iget-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 1005
    .line 1006
    check-cast v1, Landroid/app/Notification$Builder;

    .line 1007
    .line 1008
    const/4 v3, 0x0

    .line 1009
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1010
    .line 1011
    .line 1012
    iget-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 1013
    .line 1014
    check-cast v1, Landroid/app/Notification$Builder;

    .line 1015
    .line 1016
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1017
    .line 1018
    .line 1019
    iget v1, v8, Landroid/app/Notification;->defaults:I

    .line 1020
    .line 1021
    and-int/lit8 v1, v1, -0x4

    .line 1022
    .line 1023
    iput v1, v8, Landroid/app/Notification;->defaults:I

    .line 1024
    .line 1025
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 1026
    .line 1027
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1028
    .line 1029
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1030
    .line 1031
    .line 1032
    const/16 v3, 0x1a

    .line 1033
    .line 1034
    if-lt v2, v3, :cond_28

    .line 1035
    .line 1036
    iget-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 1037
    .line 1038
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 1039
    .line 1040
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 1041
    .line 1042
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v1

    .line 1046
    if-eqz v1, :cond_27

    .line 1047
    .line 1048
    iget-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 1049
    .line 1050
    check-cast v1, Landroid/app/Notification$Builder;

    .line 1051
    .line 1052
    const-string/jumbo v2, "silent"

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1056
    .line 1057
    .line 1058
    :cond_27
    iget-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 1059
    .line 1060
    check-cast v1, Landroid/app/Notification$Builder;

    .line 1061
    .line 1062
    iget v0, v0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 1063
    .line 1064
    invoke-static {v1, v0}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)V

    .line 1065
    .line 1066
    .line 1067
    :cond_28
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/app/NotificationCompatBuilder;->$r8$classId:I

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 1070
    sget-object p1, Lkotlinx/serialization/json/internal/ByteArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool;

    const/16 v0, 0x200

    .line 1071
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->take(I)[B

    move-result-object p1

    .line 1072
    iput-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 1073
    sget-object p1, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    const/16 v0, 0x80

    .line 1074
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->take(I)[C

    move-result-object p1

    .line 1075
    iput-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/app/NotificationCompatBuilder;->$r8$classId:I

    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    iput-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 1078
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 1079
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, p1, :cond_0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 1080
    iput v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/core/app/NotificationCompatBuilder;->$r8$classId:I

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    iput p4, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    return-void
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
.method public accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/util/List;

    .line 21
    .line 22
    iget p0, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    add-int/2addr p0, v3

    .line 26
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-interface {v2, p0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object v2, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const v4, 0x7f1301e6

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-direct {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    const v7, 0x7f1301ce

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 69
    .line 70
    .line 71
    new-instance v7, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;

    .line 72
    .line 73
    const/4 v8, 0x3

    .line 74
    invoke-direct {v7, v8, v0, p1, p0}, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const p0, 0x7f130513

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, p0, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const v6, 0x7f130076

    .line 85
    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    invoke-virtual {p0, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    iget-object p1, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 93
    .line 94
    new-array v3, v3, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object p1, v3, v5

    .line 97
    .line 98
    const p1, 0x7f1301cf

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    instance-of v3, v1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    .line 109
    .line 110
    const-string v5, "\n"

    .line 111
    .line 112
    if-eqz v3, :cond_0

    .line 113
    .line 114
    const v1, 0x7f1301d1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p1, v5, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    instance-of v3, v1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 127
    .line 128
    if-eqz v3, :cond_2

    .line 129
    .line 130
    if-eqz v4, :cond_1

    .line 131
    .line 132
    const v1, 0x7f1301d0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {p1, v5, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    .line 144
    .line 145
    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    .line 146
    .line 147
    .line 148
    const v0, 0x7f1301e3

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    check-cast v1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_2

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {p1, v5, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 176
    .line 177
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public ensureTotalCapacity(II)V
    .locals 2

    .line 1
    add-int/2addr p2, p1

    .line 2
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, [C

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    if-gt v1, p2, :cond_1

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    if-ge p2, p1, :cond_0

    .line 12
    .line 13
    move p2, p1

    .line 14
    :cond_0
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/OutputStream;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [B

    .line 8
    .line 9
    iget v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 13
    .line 14
    .line 15
    iput v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 16
    .line 17
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "$"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_4

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, [Ljava/lang/Object;

    .line 18
    .line 19
    aget-object v3, v3, v2

    .line 20
    .line 21
    instance-of v4, v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 26
    .line 27
    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lorg/jsoup/Jsoup;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget-object v5, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$2:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 32
    .line 33
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v5, [I

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    aget v3, v5, v2

    .line 44
    .line 45
    const/4 v4, -0x1

    .line 46
    if-eq v3, v4, :cond_3

    .line 47
    .line 48
    const-string v3, "["

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, [I

    .line 56
    .line 57
    aget v3, v3, v2

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, "]"

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    aget v4, v5, v2

    .line 69
    .line 70
    if-ltz v4, :cond_3

    .line 71
    .line 72
    const-string v5, "."

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-interface {v3, v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    sget-object v4, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE$1:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    .line 86
    .line 87
    if-ne v3, v4, :cond_2

    .line 88
    .line 89
    const-string v3, "[<debug info disabled>]"

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    sget-object v4, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    .line 96
    .line 97
    if-eq v3, v4, :cond_3

    .line 98
    .line 99
    const-string v4, "[\'"

    .line 100
    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v3, "\']"

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0
.end method

.method public resize()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 14
    .line 15
    new-array v1, v0, [I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v0, :cond_0

    .line 20
    .line 21
    const/4 v4, -0x1

    .line 22
    aput v4, v1, v3

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, [I

    .line 30
    .line 31
    const/16 v3, 0xe

    .line 32
    .line 33
    invoke-static {v2, v2, v3, v0, v1}, Lkotlin/collections/ArraysKt;->copyInto$default(III[I[I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 37
    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompatBuilder;->$r8$classId:I

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
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroidx/core/app/NotificationCompatBuilder;->ensureTotalCapacity(II)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, [C

    .line 15
    .line 16
    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, [C

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Landroidx/core/app/NotificationCompatBuilder;->writeUtf8([CI)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public writeChar(C)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x80

    .line 7
    .line 8
    if-ge p1, v2, :cond_1

    .line 9
    .line 10
    array-length v2, v0

    .line 11
    iget v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 12
    .line 13
    sub-int/2addr v2, v3

    .line 14
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 20
    .line 21
    add-int/lit8 v2, v1, 0x1

    .line 22
    .line 23
    iput v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 24
    .line 25
    int-to-byte p0, p1

    .line 26
    aput-byte p0, v0, v1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/16 v3, 0x800

    .line 30
    .line 31
    const/16 v4, 0x3f

    .line 32
    .line 33
    if-ge p1, v3, :cond_3

    .line 34
    .line 35
    array-length v1, v0

    .line 36
    iget v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 37
    .line 38
    sub-int/2addr v1, v3

    .line 39
    const/4 v3, 0x2

    .line 40
    if-ge v1, v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 43
    .line 44
    .line 45
    :cond_2
    shr-int/lit8 v1, p1, 0x6

    .line 46
    .line 47
    or-int/lit16 v1, v1, 0xc0

    .line 48
    .line 49
    iget v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 50
    .line 51
    add-int/lit8 v6, v5, 0x1

    .line 52
    .line 53
    iput v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 54
    .line 55
    int-to-byte v1, v1

    .line 56
    aput-byte v1, v0, v5

    .line 57
    .line 58
    and-int/2addr p1, v4

    .line 59
    or-int/2addr p1, v2

    .line 60
    add-int/2addr v5, v3

    .line 61
    iput v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 62
    .line 63
    int-to-byte p0, p1

    .line 64
    aput-byte p0, v0, v6

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    const v3, 0xd800

    .line 68
    .line 69
    .line 70
    if-gt v3, p1, :cond_5

    .line 71
    .line 72
    const v3, 0xe000

    .line 73
    .line 74
    .line 75
    if-ge p1, v3, :cond_5

    .line 76
    .line 77
    array-length p1, v0

    .line 78
    iget v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 79
    .line 80
    sub-int/2addr p1, v2

    .line 81
    if-ge p1, v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 87
    .line 88
    add-int/lit8 v1, p1, 0x1

    .line 89
    .line 90
    iput v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 91
    .line 92
    aput-byte v4, v0, p1

    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    const/high16 v1, 0x10000

    .line 96
    .line 97
    if-ge p1, v1, :cond_7

    .line 98
    .line 99
    array-length v1, v0

    .line 100
    iget v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 101
    .line 102
    sub-int/2addr v1, v3

    .line 103
    const/4 v3, 0x3

    .line 104
    if-ge v1, v3, :cond_6

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 107
    .line 108
    .line 109
    :cond_6
    shr-int/lit8 v1, p1, 0xc

    .line 110
    .line 111
    or-int/lit16 v1, v1, 0xe0

    .line 112
    .line 113
    iget v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 114
    .line 115
    add-int/lit8 v6, v5, 0x1

    .line 116
    .line 117
    iput v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 118
    .line 119
    int-to-byte v1, v1

    .line 120
    aput-byte v1, v0, v5

    .line 121
    .line 122
    shr-int/lit8 v1, p1, 0x6

    .line 123
    .line 124
    and-int/2addr v1, v4

    .line 125
    or-int/2addr v1, v2

    .line 126
    add-int/lit8 v7, v5, 0x2

    .line 127
    .line 128
    iput v7, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 129
    .line 130
    int-to-byte v1, v1

    .line 131
    aput-byte v1, v0, v6

    .line 132
    .line 133
    and-int/2addr p1, v4

    .line 134
    or-int/2addr p1, v2

    .line 135
    add-int/2addr v5, v3

    .line 136
    iput v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 137
    .line 138
    int-to-byte p0, p1

    .line 139
    aput-byte p0, v0, v7

    .line 140
    .line 141
    return-void

    .line 142
    :cond_7
    const v1, 0x10ffff

    .line 143
    .line 144
    .line 145
    if-gt p1, v1, :cond_9

    .line 146
    .line 147
    array-length v1, v0

    .line 148
    iget v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 149
    .line 150
    sub-int/2addr v1, v3

    .line 151
    const/4 v3, 0x4

    .line 152
    if-ge v1, v3, :cond_8

    .line 153
    .line 154
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 155
    .line 156
    .line 157
    :cond_8
    shr-int/lit8 v1, p1, 0x12

    .line 158
    .line 159
    or-int/lit16 v1, v1, 0xf0

    .line 160
    .line 161
    iget v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 162
    .line 163
    add-int/lit8 v6, v5, 0x1

    .line 164
    .line 165
    iput v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 166
    .line 167
    int-to-byte v1, v1

    .line 168
    aput-byte v1, v0, v5

    .line 169
    .line 170
    shr-int/lit8 v1, p1, 0xc

    .line 171
    .line 172
    and-int/2addr v1, v4

    .line 173
    or-int/2addr v1, v2

    .line 174
    add-int/lit8 v7, v5, 0x2

    .line 175
    .line 176
    iput v7, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 177
    .line 178
    int-to-byte v1, v1

    .line 179
    aput-byte v1, v0, v6

    .line 180
    .line 181
    shr-int/lit8 v1, p1, 0x6

    .line 182
    .line 183
    and-int/2addr v1, v4

    .line 184
    or-int/2addr v1, v2

    .line 185
    add-int/lit8 v6, v5, 0x3

    .line 186
    .line 187
    iput v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 188
    .line 189
    int-to-byte v1, v1

    .line 190
    aput-byte v1, v0, v7

    .line 191
    .line 192
    and-int/2addr p1, v4

    .line 193
    or-int/2addr p1, v2

    .line 194
    add-int/2addr v5, v3

    .line 195
    iput v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 196
    .line 197
    int-to-byte p0, p1

    .line 198
    aput-byte p0, v0, v6

    .line 199
    .line 200
    return-void

    .line 201
    :cond_9
    new-instance p0, Lkotlinx/serialization/json/JsonEncodingException;

    .line 202
    .line 203
    const-string v0, "Unexpected code point: "

    .line 204
    .line 205
    const-string v1, ". Check your strings for malformed UTF-8 sequences."

    .line 206
    .line 207
    invoke-static {v0, p1, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    const/4 v0, 0x0

    .line 212
    const/4 v1, 0x6

    .line 213
    invoke-direct {p0, p1, v0, v1}, Lkotlinx/serialization/json/JsonEncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    throw p0
.end method

.method public writeLong(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompatBuilder;->write(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public writeQuoted(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    add-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v2, v0}, Landroidx/core/app/NotificationCompatBuilder;->ensureTotalCapacity(II)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, [C

    .line 17
    .line 18
    const/16 v3, 0x22

    .line 19
    .line 20
    aput-char v3, v0, v2

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-virtual {p1, v2, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v6, v4, 0x1

    .line 31
    .line 32
    move v7, v5

    .line 33
    :goto_0
    if-ge v7, v6, :cond_5

    .line 34
    .line 35
    aget-char v8, v0, v7

    .line 36
    .line 37
    sget-object v9, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_MARKERS:[B

    .line 38
    .line 39
    array-length v10, v9

    .line 40
    if-ge v8, v10, :cond_4

    .line 41
    .line 42
    aget-byte v8, v9, v8

    .line 43
    .line 44
    if-eqz v8, :cond_4

    .line 45
    .line 46
    add-int/lit8 v0, v7, -0x1

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :goto_1
    if-ge v0, v4, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, v7, v1}, Landroidx/core/app/NotificationCompatBuilder;->ensureTotalCapacity(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    sget-object v8, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_MARKERS:[B

    .line 62
    .line 63
    array-length v9, v8

    .line 64
    if-ge v6, v9, :cond_2

    .line 65
    .line 66
    aget-byte v8, v8, v6

    .line 67
    .line 68
    if-nez v8, :cond_0

    .line 69
    .line 70
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v8, [C

    .line 73
    .line 74
    add-int/lit8 v9, v7, 0x1

    .line 75
    .line 76
    int-to-char v6, v6

    .line 77
    aput-char v6, v8, v7

    .line 78
    .line 79
    :goto_2
    move v7, v9

    .line 80
    goto :goto_3

    .line 81
    :cond_0
    if-ne v8, v5, :cond_1

    .line 82
    .line 83
    sget-object v8, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_STRINGS:[Ljava/lang/String;

    .line 84
    .line 85
    aget-object v6, v8, v6

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    invoke-virtual {p0, v7, v8}, Landroidx/core/app/NotificationCompatBuilder;->ensureTotalCapacity(II)V

    .line 95
    .line 96
    .line 97
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v8, [C

    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    invoke-virtual {v6, v2, v9, v8, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    add-int/2addr v6, v7

    .line 113
    move v7, v6

    .line 114
    goto :goto_3

    .line 115
    :cond_1
    iget-object v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v6, [C

    .line 118
    .line 119
    const/16 v9, 0x5c

    .line 120
    .line 121
    aput-char v9, v6, v7

    .line 122
    .line 123
    add-int/lit8 v9, v7, 0x1

    .line 124
    .line 125
    int-to-char v8, v8

    .line 126
    aput-char v8, v6, v9

    .line 127
    .line 128
    add-int/lit8 v7, v7, 0x2

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_2
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v8, [C

    .line 134
    .line 135
    add-int/lit8 v9, v7, 0x1

    .line 136
    .line 137
    int-to-char v6, v6

    .line 138
    aput-char v6, v8, v7

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {p0, v7, v5}, Landroidx/core/app/NotificationCompatBuilder;->ensureTotalCapacity(II)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p1, [C

    .line 150
    .line 151
    add-int/lit8 v0, v7, 0x1

    .line 152
    .line 153
    aput-char v3, p1, v7

    .line 154
    .line 155
    invoke-virtual {p0, p1, v0}, Landroidx/core/app/NotificationCompatBuilder;->writeUtf8([CI)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_5
    aput-char v3, v0, v6

    .line 167
    .line 168
    add-int/2addr v4, v1

    .line 169
    invoke-virtual {p0, v0, v4}, Landroidx/core/app/NotificationCompatBuilder;->writeUtf8([CI)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public writeUtf8([CI)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    if-ltz p2, :cond_e

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    if-gt p2, v1, :cond_d

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :cond_0
    :goto_0
    if-ge v2, p2, :cond_c

    .line 13
    .line 14
    aget-char v3, p1, v2

    .line 15
    .line 16
    const/16 v4, 0x80

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-ge v3, v4, :cond_2

    .line 20
    .line 21
    array-length v6, v0

    .line 22
    iget v7, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 23
    .line 24
    sub-int/2addr v6, v7

    .line 25
    if-ge v6, v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 31
    .line 32
    add-int/lit8 v6, v5, 0x1

    .line 33
    .line 34
    iput v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 35
    .line 36
    int-to-byte v3, v3

    .line 37
    aput-byte v3, v0, v5

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    array-length v3, v0

    .line 42
    sub-int/2addr v3, v6

    .line 43
    add-int/2addr v3, v2

    .line 44
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    :goto_1
    if-ge v2, v3, :cond_0

    .line 49
    .line 50
    aget-char v5, p1, v2

    .line 51
    .line 52
    if-ge v5, v4, :cond_0

    .line 53
    .line 54
    iget v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 55
    .line 56
    add-int/lit8 v7, v6, 0x1

    .line 57
    .line 58
    iput v7, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 59
    .line 60
    int-to-byte v5, v5

    .line 61
    aput-byte v5, v0, v6

    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/16 v6, 0x800

    .line 67
    .line 68
    if-ge v3, v6, :cond_4

    .line 69
    .line 70
    array-length v5, v0

    .line 71
    iget v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 72
    .line 73
    sub-int/2addr v5, v6

    .line 74
    const/4 v6, 0x2

    .line 75
    if-ge v5, v6, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 78
    .line 79
    .line 80
    :cond_3
    shr-int/lit8 v5, v3, 0x6

    .line 81
    .line 82
    or-int/lit16 v5, v5, 0xc0

    .line 83
    .line 84
    iget v7, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 85
    .line 86
    add-int/lit8 v8, v7, 0x1

    .line 87
    .line 88
    iput v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 89
    .line 90
    int-to-byte v5, v5

    .line 91
    aput-byte v5, v0, v7

    .line 92
    .line 93
    and-int/lit8 v3, v3, 0x3f

    .line 94
    .line 95
    or-int/2addr v3, v4

    .line 96
    add-int/2addr v7, v6

    .line 97
    iput v7, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 98
    .line 99
    int-to-byte v3, v3

    .line 100
    aput-byte v3, v0, v8

    .line 101
    .line 102
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const v6, 0xd800

    .line 106
    .line 107
    .line 108
    const/16 v7, 0x3f

    .line 109
    .line 110
    if-lt v3, v6, :cond_a

    .line 111
    .line 112
    const v6, 0xdfff

    .line 113
    .line 114
    .line 115
    if-le v3, v6, :cond_5

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    add-int/lit8 v6, v2, 0x1

    .line 119
    .line 120
    if-ge v6, p2, :cond_6

    .line 121
    .line 122
    aget-char v8, p1, v6

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    move v8, v1

    .line 126
    :goto_3
    const v9, 0xdbff

    .line 127
    .line 128
    .line 129
    if-gt v3, v9, :cond_8

    .line 130
    .line 131
    const v9, 0xdc00

    .line 132
    .line 133
    .line 134
    if-gt v9, v8, :cond_8

    .line 135
    .line 136
    const v9, 0xe000

    .line 137
    .line 138
    .line 139
    if-ge v8, v9, :cond_8

    .line 140
    .line 141
    and-int/lit16 v3, v3, 0x3ff

    .line 142
    .line 143
    shl-int/lit8 v3, v3, 0xa

    .line 144
    .line 145
    and-int/lit16 v5, v8, 0x3ff

    .line 146
    .line 147
    or-int/2addr v3, v5

    .line 148
    const/high16 v5, 0x10000

    .line 149
    .line 150
    add-int/2addr v3, v5

    .line 151
    array-length v5, v0

    .line 152
    iget v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 153
    .line 154
    sub-int/2addr v5, v6

    .line 155
    const/4 v6, 0x4

    .line 156
    if-ge v5, v6, :cond_7

    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 159
    .line 160
    .line 161
    :cond_7
    shr-int/lit8 v5, v3, 0x12

    .line 162
    .line 163
    or-int/lit16 v5, v5, 0xf0

    .line 164
    .line 165
    iget v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 166
    .line 167
    add-int/lit8 v9, v8, 0x1

    .line 168
    .line 169
    iput v9, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 170
    .line 171
    int-to-byte v5, v5

    .line 172
    aput-byte v5, v0, v8

    .line 173
    .line 174
    shr-int/lit8 v5, v3, 0xc

    .line 175
    .line 176
    and-int/2addr v5, v7

    .line 177
    or-int/2addr v5, v4

    .line 178
    add-int/lit8 v10, v8, 0x2

    .line 179
    .line 180
    iput v10, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 181
    .line 182
    int-to-byte v5, v5

    .line 183
    aput-byte v5, v0, v9

    .line 184
    .line 185
    shr-int/lit8 v5, v3, 0x6

    .line 186
    .line 187
    and-int/2addr v5, v7

    .line 188
    or-int/2addr v5, v4

    .line 189
    add-int/lit8 v9, v8, 0x3

    .line 190
    .line 191
    iput v9, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 192
    .line 193
    int-to-byte v5, v5

    .line 194
    aput-byte v5, v0, v10

    .line 195
    .line 196
    and-int/2addr v3, v7

    .line 197
    or-int/2addr v3, v4

    .line 198
    add-int/2addr v8, v6

    .line 199
    iput v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 200
    .line 201
    int-to-byte v3, v3

    .line 202
    aput-byte v3, v0, v9

    .line 203
    .line 204
    add-int/lit8 v2, v2, 0x2

    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_8
    array-length v2, v0

    .line 209
    iget v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 210
    .line 211
    sub-int/2addr v2, v3

    .line 212
    if-ge v2, v5, :cond_9

    .line 213
    .line 214
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 215
    .line 216
    .line 217
    :cond_9
    iget v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 218
    .line 219
    add-int/lit8 v3, v2, 0x1

    .line 220
    .line 221
    iput v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 222
    .line 223
    aput-byte v7, v0, v2

    .line 224
    .line 225
    move v2, v6

    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_a
    :goto_4
    array-length v5, v0

    .line 229
    iget v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 230
    .line 231
    sub-int/2addr v5, v6

    .line 232
    const/4 v6, 0x3

    .line 233
    if-ge v5, v6, :cond_b

    .line 234
    .line 235
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->flush()V

    .line 236
    .line 237
    .line 238
    :cond_b
    shr-int/lit8 v5, v3, 0xc

    .line 239
    .line 240
    or-int/lit16 v5, v5, 0xe0

    .line 241
    .line 242
    iget v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 243
    .line 244
    add-int/lit8 v9, v8, 0x1

    .line 245
    .line 246
    iput v9, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 247
    .line 248
    int-to-byte v5, v5

    .line 249
    aput-byte v5, v0, v8

    .line 250
    .line 251
    shr-int/lit8 v5, v3, 0x6

    .line 252
    .line 253
    and-int/2addr v5, v7

    .line 254
    or-int/2addr v5, v4

    .line 255
    add-int/lit8 v7, v8, 0x2

    .line 256
    .line 257
    iput v7, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 258
    .line 259
    int-to-byte v5, v5

    .line 260
    aput-byte v5, v0, v9

    .line 261
    .line 262
    and-int/lit8 v3, v3, 0x3f

    .line 263
    .line 264
    or-int/2addr v3, v4

    .line 265
    add-int/2addr v8, v6

    .line 266
    iput v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 267
    .line 268
    int-to-byte v3, v3

    .line 269
    aput-byte v3, v0, v7

    .line 270
    .line 271
    goto/16 :goto_2

    .line 272
    .line 273
    :cond_c
    return-void

    .line 274
    :cond_d
    const-string p0, "count > string.length: "

    .line 275
    .line 276
    const-string v0, " > "

    .line 277
    .line 278
    invoke-static {p0, p2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    array-length p1, p1

    .line 283
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 291
    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p1

    .line 300
    :cond_e
    const-string p0, "count < 0"

    .line 301
    .line 302
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-void
.end method
