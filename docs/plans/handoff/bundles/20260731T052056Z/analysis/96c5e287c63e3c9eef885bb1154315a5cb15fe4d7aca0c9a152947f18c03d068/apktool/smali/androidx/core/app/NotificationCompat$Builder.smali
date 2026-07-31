.class public final Landroidx/core/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final mActions:Ljava/util/ArrayList;

.field public final mAllowSystemGeneratedContextualActions:Z

.field public final mBadgeIcon:I

.field public final mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

.field public final mCategory:Ljava/lang/String;

.field public final mChannelId:Ljava/lang/String;

.field public mColor:I

.field public final mColorized:Z

.field public final mColorizedSet:Z

.field public mContentInfo:Ljava/lang/CharSequence;

.field public mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;

.field public mContentTitle:Ljava/lang/CharSequence;

.field public final mContext:Landroid/content/Context;

.field public mExtras:Landroid/os/Bundle;

.field public final mFullScreenIntent:Landroid/app/PendingIntent;

.field public final mGroupKey:Ljava/lang/String;

.field public final mGroupSummary:Z

.field public final mInvisibleActions:Ljava/util/ArrayList;

.field public mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public final mLocalOnly:Z

.field public final mLocusId:Landroidx/core/content/LocusIdCompat;

.field public final mNotification:Landroid/app/Notification;

.field public final mNumber:I

.field public final mPeople:Ljava/util/ArrayList;

.field public final mPersonList:Ljava/util/ArrayList;

.field public mPriority:I

.field public mProgress:I

.field public mProgressIndeterminate:Z

.field public mProgressMax:I

.field public final mPublicVersion:Landroid/app/Notification;

.field public final mSettingsText:Ljava/lang/CharSequence;

.field public final mShortCriticalText:Ljava/lang/String;

.field public final mShortcutId:Ljava/lang/String;

.field public final mShowWhen:Z

.field public final mSilent:Z

.field public final mSmallIcon:Landroid/graphics/drawable/Icon;

.field public final mSortKey:Ljava/lang/String;

.field public mStyle:Landroidx/core/app/NotificationCompat$Style;

.field public mSubText:Ljava/lang/CharSequence;

.field public mTimeout:J

.field public final mUseChronometer:Z

.field public final mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x1a

    .line 9
    .line 10
    if-lt v2, v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    :goto_0
    move-object/from16 v6, p1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    move-object v5, v3

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    invoke-direct {v0, v6, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v5, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Style;->extractStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iget-object v7, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 31
    .line 32
    const-string v8, "android.title"

    .line 33
    .line 34
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iput-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 43
    .line 44
    iget-object v7, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 45
    .line 46
    const-string v9, "android.text"

    .line 47
    .line 48
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    iput-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 57
    .line 58
    iget-object v7, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 59
    .line 60
    const-string v10, "android.infoText"

    .line 61
    .line 62
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    iput-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 71
    .line 72
    iget-object v7, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 73
    .line 74
    const-string v11, "android.subText"

    .line 75
    .line 76
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    iput-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 85
    .line 86
    if-lt v2, v4, :cond_1

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    goto :goto_2

    .line 93
    :cond_1
    move-object v7, v3

    .line 94
    :goto_2
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    iput-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    .line 99
    .line 100
    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    iput-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 108
    .line 109
    iget v7, v1, Landroid/app/Notification;->flags:I

    .line 110
    .line 111
    and-int/lit16 v7, v7, 0x200

    .line 112
    .line 113
    if-eqz v7, :cond_2

    .line 114
    .line 115
    const/4 v7, 0x1

    .line 116
    goto :goto_3

    .line 117
    :cond_2
    const/4 v7, 0x0

    .line 118
    :goto_3
    iput-boolean v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 119
    .line 120
    const/16 v7, 0x1d

    .line 121
    .line 122
    if-lt v2, v7, :cond_3

    .line 123
    .line 124
    invoke-static {v1}, Landroidx/core/app/RemoteInput$Api29Impl;->getLocusId(Landroid/app/Notification;)Landroid/content/LocusId;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    if-nez v14, :cond_4

    .line 129
    .line 130
    :cond_3
    move-object v15, v3

    .line 131
    goto :goto_4

    .line 132
    :cond_4
    new-instance v15, Landroidx/core/content/LocusIdCompat;

    .line 133
    .line 134
    invoke-static {v14}, Lorg/wikipedia/util/FileUtil;->getId(Landroid/content/LocusId;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v16

    .line 142
    if-nez v16, :cond_5

    .line 143
    .line 144
    invoke-direct {v15, v14}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_5
    const-string v0, "id cannot be empty"

    .line 149
    .line 150
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v3

    .line 154
    :goto_4
    iput-object v15, v0, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 155
    .line 156
    iget-wide v14, v1, Landroid/app/Notification;->when:J

    .line 157
    .line 158
    move-object/from16 v16, v3

    .line 159
    .line 160
    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 161
    .line 162
    iput-wide v14, v3, Landroid/app/Notification;->when:J

    .line 163
    .line 164
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 165
    .line 166
    const-string v14, "android.showWhen"

    .line 167
    .line 168
    invoke-virtual {v3, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    iput-boolean v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 173
    .line 174
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 175
    .line 176
    const-string v15, "android.showChronometer"

    .line 177
    .line 178
    invoke-virtual {v3, v15}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    iput-boolean v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 183
    .line 184
    iget v3, v1, Landroid/app/Notification;->flags:I

    .line 185
    .line 186
    const/16 v15, 0x10

    .line 187
    .line 188
    and-int/2addr v3, v15

    .line 189
    if-eqz v3, :cond_6

    .line 190
    .line 191
    const/4 v3, 0x1

    .line 192
    goto :goto_5

    .line 193
    :cond_6
    const/4 v3, 0x0

    .line 194
    :goto_5
    invoke-virtual {v0, v15, v3}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 195
    .line 196
    .line 197
    iget v3, v1, Landroid/app/Notification;->flags:I

    .line 198
    .line 199
    const/16 v15, 0x8

    .line 200
    .line 201
    and-int/2addr v3, v15

    .line 202
    if-eqz v3, :cond_7

    .line 203
    .line 204
    const/4 v3, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_7
    const/4 v3, 0x0

    .line 207
    :goto_6
    invoke-virtual {v0, v15, v3}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 208
    .line 209
    .line 210
    iget v3, v1, Landroid/app/Notification;->flags:I

    .line 211
    .line 212
    const/4 v15, 0x2

    .line 213
    and-int/2addr v3, v15

    .line 214
    if-eqz v3, :cond_8

    .line 215
    .line 216
    const/4 v3, 0x1

    .line 217
    goto :goto_7

    .line 218
    :cond_8
    const/4 v3, 0x0

    .line 219
    :goto_7
    invoke-virtual {v0, v15, v3}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 220
    .line 221
    .line 222
    iget v3, v1, Landroid/app/Notification;->flags:I

    .line 223
    .line 224
    and-int/lit16 v3, v3, 0x100

    .line 225
    .line 226
    if-eqz v3, :cond_9

    .line 227
    .line 228
    const/4 v3, 0x1

    .line 229
    goto :goto_8

    .line 230
    :cond_9
    const/4 v3, 0x0

    .line 231
    :goto_8
    iput-boolean v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 232
    .line 233
    iget-object v3, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 234
    .line 235
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 236
    .line 237
    .line 238
    if-lt v2, v4, :cond_a

    .line 239
    .line 240
    invoke-virtual {v1}, Landroid/app/Notification;->getBadgeIconType()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    goto :goto_9

    .line 245
    :cond_a
    const/4 v3, 0x0

    .line 246
    :goto_9
    iput v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 247
    .line 248
    iget-object v3, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 249
    .line 250
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 251
    .line 252
    if-lt v2, v7, :cond_d

    .line 253
    .line 254
    invoke-static {v1}, Landroidx/core/app/RemoteInput$Api29Impl;->getBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    if-nez v3, :cond_b

    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_b
    const/16 v13, 0x1e

    .line 262
    .line 263
    if-lt v2, v13, :cond_c

    .line 264
    .line 265
    invoke-static {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    goto :goto_b

    .line 270
    :cond_c
    if-ne v2, v7, :cond_d

    .line 271
    .line 272
    invoke-static {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;->fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    goto :goto_b

    .line 277
    :cond_d
    :goto_a
    move-object/from16 v3, v16

    .line 278
    .line 279
    :goto_b
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 280
    .line 281
    iget v3, v1, Landroid/app/Notification;->number:I

    .line 282
    .line 283
    iput v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 284
    .line 285
    iget-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 286
    .line 287
    iget-object v13, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 288
    .line 289
    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    iput-object v3, v13, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 294
    .line 295
    iget-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 296
    .line 297
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 298
    .line 299
    iget-object v3, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 300
    .line 301
    iget-object v13, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 302
    .line 303
    iput-object v3, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 304
    .line 305
    iget-object v3, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 306
    .line 307
    iget v13, v1, Landroid/app/Notification;->flags:I

    .line 308
    .line 309
    const/16 v7, 0x80

    .line 310
    .line 311
    and-int/2addr v13, v7

    .line 312
    if-eqz v13, :cond_e

    .line 313
    .line 314
    const/4 v13, 0x1

    .line 315
    goto :goto_c

    .line 316
    :cond_e
    const/4 v13, 0x0

    .line 317
    :goto_c
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 318
    .line 319
    invoke-virtual {v0, v7, v13}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 320
    .line 321
    .line 322
    iget-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 323
    .line 324
    iget v7, v1, Landroid/app/Notification;->audioStreamType:I

    .line 325
    .line 326
    iget-object v13, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 327
    .line 328
    iput-object v3, v13, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 329
    .line 330
    iput v7, v13, Landroid/app/Notification;->audioStreamType:I

    .line 331
    .line 332
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 333
    .line 334
    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 335
    .line 336
    .line 337
    const/4 v12, 0x4

    .line 338
    invoke-virtual {v3, v12}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-virtual {v3, v7}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    iput-object v3, v13, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 351
    .line 352
    if-lt v2, v4, :cond_14

    .line 353
    .line 354
    const-string v3, "silent"

    .line 355
    .line 356
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-eqz v3, :cond_f

    .line 365
    .line 366
    :goto_d
    const/4 v7, 0x1

    .line 367
    goto :goto_11

    .line 368
    :cond_f
    iget v3, v1, Landroid/app/Notification;->flags:I

    .line 369
    .line 370
    and-int/lit16 v3, v3, 0x200

    .line 371
    .line 372
    if-eqz v3, :cond_12

    .line 373
    .line 374
    if-lt v2, v4, :cond_10

    .line 375
    .line 376
    invoke-static {v1}, Landroidx/core/app/RemoteInput$Api26Impl;->getGroupAlertBehavior(Landroid/app/Notification;)I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    goto :goto_e

    .line 381
    :cond_10
    const/4 v3, 0x0

    .line 382
    :goto_e
    if-ne v3, v15, :cond_11

    .line 383
    .line 384
    goto :goto_d

    .line 385
    :cond_11
    const/4 v7, 0x0

    .line 386
    goto :goto_11

    .line 387
    :cond_12
    if-lt v2, v4, :cond_13

    .line 388
    .line 389
    invoke-static {v1}, Landroidx/core/app/RemoteInput$Api26Impl;->getGroupAlertBehavior(Landroid/app/Notification;)I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    :goto_f
    const/4 v7, 0x1

    .line 394
    goto :goto_10

    .line 395
    :cond_13
    const/4 v3, 0x0

    .line 396
    goto :goto_f

    .line 397
    :goto_10
    if-ne v3, v7, :cond_11

    .line 398
    .line 399
    goto :goto_d

    .line 400
    :cond_14
    iget v3, v1, Landroid/app/Notification;->defaults:I

    .line 401
    .line 402
    and-int/lit8 v7, v3, 0x1

    .line 403
    .line 404
    if-nez v7, :cond_11

    .line 405
    .line 406
    and-int/2addr v3, v15

    .line 407
    if-nez v3, :cond_11

    .line 408
    .line 409
    iget-object v3, v1, Landroid/app/Notification;->vibrate:[J

    .line 410
    .line 411
    if-nez v3, :cond_11

    .line 412
    .line 413
    iget-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 414
    .line 415
    if-nez v3, :cond_11

    .line 416
    .line 417
    goto :goto_d

    .line 418
    :goto_11
    iput-boolean v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    .line 419
    .line 420
    iget-object v3, v1, Landroid/app/Notification;->vibrate:[J

    .line 421
    .line 422
    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 423
    .line 424
    iput-object v3, v7, Landroid/app/Notification;->vibrate:[J

    .line 425
    .line 426
    iget v3, v1, Landroid/app/Notification;->ledARGB:I

    .line 427
    .line 428
    iget v12, v1, Landroid/app/Notification;->ledOnMS:I

    .line 429
    .line 430
    iget v13, v1, Landroid/app/Notification;->ledOffMS:I

    .line 431
    .line 432
    iput v3, v7, Landroid/app/Notification;->ledARGB:I

    .line 433
    .line 434
    iput v12, v7, Landroid/app/Notification;->ledOnMS:I

    .line 435
    .line 436
    iput v13, v7, Landroid/app/Notification;->ledOffMS:I

    .line 437
    .line 438
    if-eqz v12, :cond_15

    .line 439
    .line 440
    if-eqz v13, :cond_15

    .line 441
    .line 442
    const/4 v3, 0x1

    .line 443
    goto :goto_12

    .line 444
    :cond_15
    const/4 v3, 0x0

    .line 445
    :goto_12
    iget v12, v7, Landroid/app/Notification;->flags:I

    .line 446
    .line 447
    and-int/lit8 v12, v12, -0x2

    .line 448
    .line 449
    or-int/2addr v3, v12

    .line 450
    iput v3, v7, Landroid/app/Notification;->flags:I

    .line 451
    .line 452
    iget v3, v1, Landroid/app/Notification;->defaults:I

    .line 453
    .line 454
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)V

    .line 455
    .line 456
    .line 457
    iget v3, v1, Landroid/app/Notification;->priority:I

    .line 458
    .line 459
    iput v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 460
    .line 461
    iget v3, v1, Landroid/app/Notification;->color:I

    .line 462
    .line 463
    iput v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 464
    .line 465
    iget v3, v1, Landroid/app/Notification;->visibility:I

    .line 466
    .line 467
    iput v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 468
    .line 469
    iget-object v3, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 470
    .line 471
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 472
    .line 473
    invoke-virtual {v1}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 478
    .line 479
    if-lt v2, v4, :cond_16

    .line 480
    .line 481
    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    .line 482
    .line 483
    .line 484
    move-result-wide v12

    .line 485
    goto :goto_13

    .line 486
    :cond_16
    const-wide/16 v12, 0x0

    .line 487
    .line 488
    :goto_13
    iput-wide v12, v0, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    .line 489
    .line 490
    if-lt v2, v4, :cond_17

    .line 491
    .line 492
    invoke-virtual {v1}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    goto :goto_14

    .line 497
    :cond_17
    move-object/from16 v3, v16

    .line 498
    .line 499
    :goto_14
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    .line 500
    .line 501
    const-string v3, "android.progressMax"

    .line 502
    .line 503
    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    move-result v7

    .line 507
    const-string v12, "android.progress"

    .line 508
    .line 509
    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    move-result v13

    .line 513
    const-string v4, "android.progressIndeterminate"

    .line 514
    .line 515
    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 516
    .line 517
    .line 518
    move-result v15

    .line 519
    iput v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    .line 520
    .line 521
    iput v13, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    .line 522
    .line 523
    iput-boolean v15, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 524
    .line 525
    const/16 v7, 0x1d

    .line 526
    .line 527
    if-lt v2, v7, :cond_18

    .line 528
    .line 529
    invoke-static {v1}, Landroidx/core/app/RemoteInput$Api29Impl;->getAllowSystemGeneratedContextualActions(Landroid/app/Notification;)Z

    .line 530
    .line 531
    .line 532
    move-result v7

    .line 533
    goto :goto_15

    .line 534
    :cond_18
    const/4 v7, 0x0

    .line 535
    :goto_15
    iput-boolean v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    .line 536
    .line 537
    iget v7, v1, Landroid/app/Notification;->icon:I

    .line 538
    .line 539
    iget v13, v1, Landroid/app/Notification;->iconLevel:I

    .line 540
    .line 541
    iget-object v15, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 542
    .line 543
    iput v7, v15, Landroid/app/Notification;->icon:I

    .line 544
    .line 545
    iput v13, v15, Landroid/app/Notification;->iconLevel:I

    .line 546
    .line 547
    iget-object v7, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 548
    .line 549
    const-string v13, "invisible_actions"

    .line 550
    .line 551
    const-string v15, "android.people"

    .line 552
    .line 553
    move-object/from16 v17, v7

    .line 554
    .line 555
    const-string v7, "android.people.list"

    .line 556
    .line 557
    move-object/from16 v18, v5

    .line 558
    .line 559
    const-string v5, "android.car.EXTENSIONS"

    .line 560
    .line 561
    const-string v0, "android.colorized"

    .line 562
    .line 563
    move-object/from16 v19, v6

    .line 564
    .line 565
    const-string v6, "android.chronometerCountDown"

    .line 566
    .line 567
    move-object/from16 v20, v13

    .line 568
    .line 569
    const-string v13, "android.shortCriticalText"

    .line 570
    .line 571
    if-nez v17, :cond_19

    .line 572
    .line 573
    move-object v3, v5

    .line 574
    move-object v2, v15

    .line 575
    move-object/from16 v5, v16

    .line 576
    .line 577
    move-object/from16 v4, v20

    .line 578
    .line 579
    goto/16 :goto_17

    .line 580
    .line 581
    :cond_19
    move-object/from16 v17, v5

    .line 582
    .line 583
    new-instance v5, Landroid/os/Bundle;

    .line 584
    .line 585
    move-object/from16 v21, v15

    .line 586
    .line 587
    iget-object v15, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 588
    .line 589
    invoke-direct {v5, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    const/16 v8, 0x24

    .line 605
    .line 606
    if-lt v2, v8, :cond_1a

    .line 607
    .line 608
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    :cond_1a
    const-string v2, "android.intent.extra.CHANNEL_ID"

    .line 612
    .line 613
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    const-string v2, "android.intent.extra.CHANNEL_GROUP_ID"

    .line 617
    .line 618
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    move-object/from16 v2, v21

    .line 643
    .line 644
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    const-string v3, "android.support.sortKey"

    .line 648
    .line 649
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    const-string v3, "android.support.groupKey"

    .line 653
    .line 654
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    const-string v3, "android.support.isGroupSummary"

    .line 658
    .line 659
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    const-string v3, "android.support.localOnly"

    .line 663
    .line 664
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    const-string v3, "android.support.actionExtras"

    .line 668
    .line 669
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    move-object/from16 v3, v17

    .line 673
    .line 674
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    if-eqz v4, :cond_1b

    .line 679
    .line 680
    new-instance v8, Landroid/os/Bundle;

    .line 681
    .line 682
    invoke-direct {v8, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 683
    .line 684
    .line 685
    move-object/from16 v4, v20

    .line 686
    .line 687
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v5, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 691
    .line 692
    .line 693
    goto :goto_16

    .line 694
    :cond_1b
    move-object/from16 v4, v20

    .line 695
    .line 696
    :goto_16
    if-eqz v19, :cond_1c

    .line 697
    .line 698
    move-object/from16 v8, v19

    .line 699
    .line 700
    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    .line 701
    .line 702
    .line 703
    :cond_1c
    :goto_17
    if-eqz v5, :cond_1e

    .line 704
    .line 705
    move-object/from16 v8, p0

    .line 706
    .line 707
    iget-object v9, v8, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 708
    .line 709
    if-nez v9, :cond_1d

    .line 710
    .line 711
    new-instance v9, Landroid/os/Bundle;

    .line 712
    .line 713
    invoke-direct {v9, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 714
    .line 715
    .line 716
    iput-object v9, v8, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 717
    .line 718
    goto :goto_18

    .line 719
    :cond_1d
    invoke-virtual {v9, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 720
    .line 721
    .line 722
    goto :goto_18

    .line 723
    :cond_1e
    move-object/from16 v8, p0

    .line 724
    .line 725
    :goto_18
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 726
    .line 727
    .line 728
    move-result-object v5

    .line 729
    iput-object v5, v8, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 730
    .line 731
    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    if-eqz v5, :cond_1f

    .line 736
    .line 737
    sget-object v9, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 738
    .line 739
    invoke-static {v5}, Lcoil3/util/UtilsKt;->createFromIconInner(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    .line 740
    .line 741
    .line 742
    move-result-object v5

    .line 743
    iput-object v5, v8, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 744
    .line 745
    :cond_1f
    iget-object v5, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 746
    .line 747
    if-eqz v5, :cond_2e

    .line 748
    .line 749
    array-length v11, v5

    .line 750
    if-eqz v11, :cond_2e

    .line 751
    .line 752
    array-length v11, v5

    .line 753
    const/4 v12, 0x0

    .line 754
    :goto_19
    if-ge v12, v11, :cond_2e

    .line 755
    .line 756
    aget-object v14, v5, v12

    .line 757
    .line 758
    invoke-virtual {v14}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 759
    .line 760
    .line 761
    move-result-object v15

    .line 762
    if-eqz v15, :cond_21

    .line 763
    .line 764
    invoke-virtual {v14}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 765
    .line 766
    .line 767
    move-result-object v15

    .line 768
    sget-object v17, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 769
    .line 770
    invoke-static {v15}, Lcoil3/util/UtilsKt;->getType(Ljava/lang/Object;)I

    .line 771
    .line 772
    .line 773
    move-result v9

    .line 774
    const/4 v10, 0x2

    .line 775
    if-ne v9, v10, :cond_20

    .line 776
    .line 777
    invoke-static {v15}, Lcoil3/util/UtilsKt;->getResId(Ljava/lang/Object;)I

    .line 778
    .line 779
    .line 780
    move-result v9

    .line 781
    if-nez v9, :cond_20

    .line 782
    .line 783
    move-object/from16 v9, v16

    .line 784
    .line 785
    goto :goto_1a

    .line 786
    :cond_20
    invoke-static {v15}, Lcoil3/util/UtilsKt;->createFromIconInner(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    .line 787
    .line 788
    .line 789
    move-result-object v9

    .line 790
    :goto_1a
    new-instance v15, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 791
    .line 792
    iget-object v10, v14, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 793
    .line 794
    move-object/from16 v20, v5

    .line 795
    .line 796
    iget-object v5, v14, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 797
    .line 798
    invoke-direct {v15, v9, v10, v5}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 799
    .line 800
    .line 801
    goto :goto_1b

    .line 802
    :cond_21
    move-object/from16 v20, v5

    .line 803
    .line 804
    new-instance v15, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 805
    .line 806
    iget v5, v14, Landroid/app/Notification$Action;->icon:I

    .line 807
    .line 808
    iget-object v9, v14, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 809
    .line 810
    iget-object v10, v14, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 811
    .line 812
    invoke-direct {v15, v5, v9, v10}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 813
    .line 814
    .line 815
    :goto_1b
    invoke-virtual {v14}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 816
    .line 817
    .line 818
    move-result-object v5

    .line 819
    if-eqz v5, :cond_27

    .line 820
    .line 821
    array-length v9, v5

    .line 822
    if-eqz v9, :cond_27

    .line 823
    .line 824
    array-length v9, v5

    .line 825
    const/4 v10, 0x0

    .line 826
    :goto_1c
    if-ge v10, v9, :cond_27

    .line 827
    .line 828
    aget-object v21, v5, v10

    .line 829
    .line 830
    invoke-virtual/range {v21 .. v21}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v23

    .line 834
    move-object/from16 v30, v5

    .line 835
    .line 836
    new-instance v5, Ljava/util/HashSet;

    .line 837
    .line 838
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 839
    .line 840
    .line 841
    move/from16 v31, v9

    .line 842
    .line 843
    new-instance v9, Landroid/os/Bundle;

    .line 844
    .line 845
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 846
    .line 847
    .line 848
    if-eqz v23, :cond_26

    .line 849
    .line 850
    invoke-virtual/range {v21 .. v21}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    .line 851
    .line 852
    .line 853
    move-result-object v24

    .line 854
    invoke-virtual/range {v21 .. v21}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    .line 855
    .line 856
    .line 857
    move-result-object v25

    .line 858
    invoke-virtual/range {v21 .. v21}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    .line 859
    .line 860
    .line 861
    move-result v26

    .line 862
    move/from16 v32, v10

    .line 863
    .line 864
    invoke-virtual/range {v21 .. v21}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    .line 865
    .line 866
    .line 867
    move-result-object v10

    .line 868
    if-eqz v10, :cond_22

    .line 869
    .line 870
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 871
    .line 872
    .line 873
    :cond_22
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 874
    .line 875
    move-object/from16 v28, v9

    .line 876
    .line 877
    const/16 v9, 0x1a

    .line 878
    .line 879
    if-lt v10, v9, :cond_23

    .line 880
    .line 881
    invoke-virtual/range {v21 .. v21}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    .line 882
    .line 883
    .line 884
    move-result-object v9

    .line 885
    if-eqz v9, :cond_23

    .line 886
    .line 887
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 888
    .line 889
    .line 890
    move-result-object v9

    .line 891
    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 892
    .line 893
    .line 894
    move-result v10

    .line 895
    if-eqz v10, :cond_23

    .line 896
    .line 897
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v10

    .line 901
    check-cast v10, Ljava/lang/String;

    .line 902
    .line 903
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    goto :goto_1d

    .line 907
    :cond_23
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 908
    .line 909
    const/16 v10, 0x1d

    .line 910
    .line 911
    if-lt v9, v10, :cond_24

    .line 912
    .line 913
    invoke-static/range {v21 .. v21}, Landroidx/core/app/RemoteInput$Api29Impl;->getEditChoicesBeforeSending(Landroid/app/RemoteInput;)I

    .line 914
    .line 915
    .line 916
    move-result v9

    .line 917
    move/from16 v27, v9

    .line 918
    .line 919
    goto :goto_1e

    .line 920
    :cond_24
    const/16 v27, 0x0

    .line 921
    .line 922
    :goto_1e
    new-instance v22, Landroidx/core/app/RemoteInput;

    .line 923
    .line 924
    move-object/from16 v29, v5

    .line 925
    .line 926
    invoke-direct/range {v22 .. v29}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/HashSet;)V

    .line 927
    .line 928
    .line 929
    move-object/from16 v5, v22

    .line 930
    .line 931
    iget-object v9, v15, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 932
    .line 933
    if-nez v9, :cond_25

    .line 934
    .line 935
    new-instance v9, Ljava/util/ArrayList;

    .line 936
    .line 937
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .line 939
    .line 940
    iput-object v9, v15, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 941
    .line 942
    :cond_25
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    add-int/lit8 v10, v32, 0x1

    .line 946
    .line 947
    move-object/from16 v5, v30

    .line 948
    .line 949
    move/from16 v9, v31

    .line 950
    .line 951
    goto :goto_1c

    .line 952
    :cond_26
    const-string v0, "Result key can\'t be null"

    .line 953
    .line 954
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    throw v16

    .line 958
    :cond_27
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 959
    .line 960
    const/16 v9, 0x18

    .line 961
    .line 962
    if-lt v5, v9, :cond_28

    .line 963
    .line 964
    invoke-static {v14}, Landroidx/core/app/NotificationCompat$Action$Builder$Api24Impl;->getAllowGeneratedReplies(Landroid/app/Notification$Action;)Z

    .line 965
    .line 966
    .line 967
    move-result v9

    .line 968
    iput-boolean v9, v15, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 969
    .line 970
    :cond_28
    const/16 v9, 0x1c

    .line 971
    .line 972
    if-lt v5, v9, :cond_29

    .line 973
    .line 974
    invoke-static {v14}, Landroidx/core/app/NotificationCompat$Action$Builder$Api28Impl;->getSemanticAction(Landroid/app/Notification$Action;)I

    .line 975
    .line 976
    .line 977
    move-result v9

    .line 978
    iput v9, v15, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    .line 979
    .line 980
    :cond_29
    const/16 v10, 0x1d

    .line 981
    .line 982
    if-lt v5, v10, :cond_2a

    .line 983
    .line 984
    invoke-static {v14}, Landroidx/core/app/NotificationCompat$Action$Builder$Api29Impl;->isContextual(Landroid/app/Notification$Action;)Z

    .line 985
    .line 986
    .line 987
    move-result v9

    .line 988
    iput-boolean v9, v15, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    .line 989
    .line 990
    :cond_2a
    const/16 v9, 0x1f

    .line 991
    .line 992
    if-lt v5, v9, :cond_2b

    .line 993
    .line 994
    invoke-static {v14}, Landroidx/core/app/NotificationCompat$Action$Builder$Api31Impl;->isAuthenticationRequired(Landroid/app/Notification$Action;)Z

    .line 995
    .line 996
    .line 997
    move-result v9

    .line 998
    iput-boolean v9, v15, Landroidx/core/app/NotificationCompat$Action$Builder;->mAuthenticationRequired:Z

    .line 999
    .line 1000
    :cond_2b
    const/16 v9, 0x25

    .line 1001
    .line 1002
    if-lt v5, v9, :cond_2c

    .line 1003
    .line 1004
    invoke-static {v14}, Landroidx/core/app/NotificationCompat$Action$Builder$Api37Impl;->getStyleHint(Landroid/app/Notification$Action;)I

    .line 1005
    .line 1006
    .line 1007
    move-result v5

    .line 1008
    iput v5, v15, Landroidx/core/app/NotificationCompat$Action$Builder;->mStyleHint:I

    .line 1009
    .line 1010
    invoke-static {v14}, Landroidx/core/app/NotificationCompat$Action$Builder$Api37Impl;->getEmphasisHint(Landroid/app/Notification$Action;)I

    .line 1011
    .line 1012
    .line 1013
    move-result v5

    .line 1014
    iput v5, v15, Landroidx/core/app/NotificationCompat$Action$Builder;->mEmphasisHint:I

    .line 1015
    .line 1016
    :cond_2c
    invoke-virtual {v14}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v5

    .line 1020
    if-eqz v5, :cond_2d

    .line 1021
    .line 1022
    iget-object v9, v15, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    .line 1023
    .line 1024
    invoke-virtual {v9, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1025
    .line 1026
    .line 1027
    :cond_2d
    invoke-virtual {v15}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v5

    .line 1031
    iget-object v9, v8, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 1032
    .line 1033
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    add-int/lit8 v12, v12, 0x1

    .line 1037
    .line 1038
    move-object/from16 v5, v20

    .line 1039
    .line 1040
    goto/16 :goto_19

    .line 1041
    .line 1042
    :cond_2e
    new-instance v5, Ljava/util/ArrayList;

    .line 1043
    .line 1044
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .line 1046
    .line 1047
    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1048
    .line 1049
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v3

    .line 1053
    if-nez v3, :cond_2f

    .line 1054
    .line 1055
    goto/16 :goto_26

    .line 1056
    .line 1057
    :cond_2f
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v3

    .line 1061
    if-eqz v3, :cond_36

    .line 1062
    .line 1063
    const/4 v4, 0x0

    .line 1064
    :goto_1f
    invoke-virtual {v3}, Landroid/os/BaseBundle;->size()I

    .line 1065
    .line 1066
    .line 1067
    move-result v9

    .line 1068
    if-ge v4, v9, :cond_36

    .line 1069
    .line 1070
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v9

    .line 1074
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v9

    .line 1078
    const-string v10, "extras"

    .line 1079
    .line 1080
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v11

    .line 1084
    if-eqz v11, :cond_30

    .line 1085
    .line 1086
    const-string v12, "android.support.allowGeneratedReplies"

    .line 1087
    .line 1088
    const/4 v14, 0x0

    .line 1089
    invoke-virtual {v11, v12, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v11

    .line 1093
    move/from16 v26, v11

    .line 1094
    .line 1095
    goto :goto_20

    .line 1096
    :cond_30
    const/4 v14, 0x0

    .line 1097
    move/from16 v26, v14

    .line 1098
    .line 1099
    :goto_20
    new-instance v20, Landroidx/core/app/NotificationCompat$Action;

    .line 1100
    .line 1101
    const-string v11, "icon"

    .line 1102
    .line 1103
    invoke-virtual {v9, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 1104
    .line 1105
    .line 1106
    move-result v11

    .line 1107
    const-string v12, "title"

    .line 1108
    .line 1109
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v22

    .line 1113
    const-string v12, "actionIntent"

    .line 1114
    .line 1115
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v12

    .line 1119
    move-object/from16 v23, v12

    .line 1120
    .line 1121
    check-cast v23, Landroid/app/PendingIntent;

    .line 1122
    .line 1123
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v24

    .line 1127
    const-string v10, "remoteInputs"

    .line 1128
    .line 1129
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v12

    .line 1133
    instance-of v15, v12, [Landroid/os/Bundle;

    .line 1134
    .line 1135
    const-class v14, [Landroid/os/Bundle;

    .line 1136
    .line 1137
    if-nez v15, :cond_32

    .line 1138
    .line 1139
    if-nez v12, :cond_31

    .line 1140
    .line 1141
    goto :goto_21

    .line 1142
    :cond_31
    array-length v15, v12

    .line 1143
    invoke-static {v12, v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v12

    .line 1147
    check-cast v12, [Landroid/os/Bundle;

    .line 1148
    .line 1149
    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1150
    .line 1151
    .line 1152
    goto :goto_22

    .line 1153
    :cond_32
    :goto_21
    check-cast v12, [Landroid/os/Bundle;

    .line 1154
    .line 1155
    :goto_22
    invoke-static {v12}, Landroidx/core/app/NavUtils;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v25

    .line 1159
    const-string v10, "dataOnlyRemoteInputs"

    .line 1160
    .line 1161
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v12

    .line 1165
    instance-of v15, v12, [Landroid/os/Bundle;

    .line 1166
    .line 1167
    if-nez v15, :cond_34

    .line 1168
    .line 1169
    if-nez v12, :cond_33

    .line 1170
    .line 1171
    goto :goto_23

    .line 1172
    :cond_33
    array-length v15, v12

    .line 1173
    invoke-static {v12, v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v12

    .line 1177
    check-cast v12, [Landroid/os/Bundle;

    .line 1178
    .line 1179
    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1180
    .line 1181
    .line 1182
    goto :goto_24

    .line 1183
    :cond_34
    :goto_23
    check-cast v12, [Landroid/os/Bundle;

    .line 1184
    .line 1185
    :goto_24
    invoke-static {v12}, Landroidx/core/app/NavUtils;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    .line 1186
    .line 1187
    .line 1188
    const-string v10, "semanticAction"

    .line 1189
    .line 1190
    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 1191
    .line 1192
    .line 1193
    move-result v27

    .line 1194
    const-string v10, "showsUserInterface"

    .line 1195
    .line 1196
    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v28

    .line 1200
    if-nez v11, :cond_35

    .line 1201
    .line 1202
    move-object/from16 v10, v16

    .line 1203
    .line 1204
    move-object/from16 v21, v10

    .line 1205
    .line 1206
    goto :goto_25

    .line 1207
    :cond_35
    const-string v9, ""

    .line 1208
    .line 1209
    move-object/from16 v10, v16

    .line 1210
    .line 1211
    invoke-static {v10, v9, v11}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v9

    .line 1215
    move-object/from16 v21, v9

    .line 1216
    .line 1217
    :goto_25
    const/16 v29, 0x0

    .line 1218
    .line 1219
    const/16 v30, 0x0

    .line 1220
    .line 1221
    const/16 v31, 0x0

    .line 1222
    .line 1223
    const/16 v32, 0x0

    .line 1224
    .line 1225
    invoke-direct/range {v20 .. v32}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZIIZ)V

    .line 1226
    .line 1227
    .line 1228
    move-object/from16 v9, v20

    .line 1229
    .line 1230
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    .line 1232
    .line 1233
    add-int/lit8 v4, v4, 0x1

    .line 1234
    .line 1235
    move-object/from16 v16, v10

    .line 1236
    .line 1237
    goto/16 :goto_1f

    .line 1238
    .line 1239
    :cond_36
    :goto_26
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1240
    .line 1241
    .line 1242
    move-result v3

    .line 1243
    if-nez v3, :cond_38

    .line 1244
    .line 1245
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v3

    .line 1249
    :cond_37
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1250
    .line 1251
    .line 1252
    move-result v4

    .line 1253
    if-eqz v4, :cond_38

    .line 1254
    .line 1255
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v4

    .line 1259
    check-cast v4, Landroidx/core/app/NotificationCompat$Action;

    .line 1260
    .line 1261
    if-eqz v4, :cond_37

    .line 1262
    .line 1263
    iget-object v5, v8, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 1264
    .line 1265
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    .line 1267
    .line 1268
    goto :goto_27

    .line 1269
    :cond_38
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1270
    .line 1271
    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v2

    .line 1275
    if-eqz v2, :cond_3a

    .line 1276
    .line 1277
    array-length v3, v2

    .line 1278
    if-eqz v3, :cond_3a

    .line 1279
    .line 1280
    array-length v3, v2

    .line 1281
    const/4 v4, 0x0

    .line 1282
    :goto_28
    if-ge v4, v3, :cond_3a

    .line 1283
    .line 1284
    aget-object v5, v2, v4

    .line 1285
    .line 1286
    if-eqz v5, :cond_39

    .line 1287
    .line 1288
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1289
    .line 1290
    .line 1291
    move-result v9

    .line 1292
    if-nez v9, :cond_39

    .line 1293
    .line 1294
    iget-object v9, v8, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 1295
    .line 1296
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    .line 1298
    .line 1299
    :cond_39
    add-int/lit8 v4, v4, 0x1

    .line 1300
    .line 1301
    goto :goto_28

    .line 1302
    :cond_3a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1303
    .line 1304
    const/16 v9, 0x1c

    .line 1305
    .line 1306
    if-lt v2, v9, :cond_3b

    .line 1307
    .line 1308
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1309
    .line 1310
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v1

    .line 1314
    if-eqz v1, :cond_3b

    .line 1315
    .line 1316
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1317
    .line 1318
    .line 1319
    move-result v2

    .line 1320
    if-nez v2, :cond_3b

    .line 1321
    .line 1322
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1327
    .line 1328
    .line 1329
    move-result v2

    .line 1330
    if-eqz v2, :cond_3b

    .line 1331
    .line 1332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v2

    .line 1336
    invoke-static {v2}, Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)Landroid/app/Person;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v2

    .line 1340
    invoke-static {v2}, Landroidx/core/app/Person$Api28Impl;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    iget-object v3, v8, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 1345
    .line 1346
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    .line 1348
    .line 1349
    goto :goto_29

    .line 1350
    :cond_3b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1351
    .line 1352
    const/16 v9, 0x18

    .line 1353
    .line 1354
    move-object/from16 v2, v18

    .line 1355
    .line 1356
    if-lt v1, v9, :cond_3d

    .line 1357
    .line 1358
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1359
    .line 1360
    .line 1361
    move-result v3

    .line 1362
    if-eqz v3, :cond_3d

    .line 1363
    .line 1364
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1365
    .line 1366
    .line 1367
    move-result v3

    .line 1368
    iget-object v4, v8, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1369
    .line 1370
    if-nez v4, :cond_3c

    .line 1371
    .line 1372
    new-instance v4, Landroid/os/Bundle;

    .line 1373
    .line 1374
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1375
    .line 1376
    .line 1377
    iput-object v4, v8, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1378
    .line 1379
    :cond_3c
    invoke-virtual {v4, v6, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1380
    .line 1381
    .line 1382
    :cond_3d
    const/16 v9, 0x1a

    .line 1383
    .line 1384
    if-lt v1, v9, :cond_3e

    .line 1385
    .line 1386
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1387
    .line 1388
    .line 1389
    move-result v3

    .line 1390
    if-eqz v3, :cond_3e

    .line 1391
    .line 1392
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1393
    .line 1394
    .line 1395
    move-result v0

    .line 1396
    iput-boolean v0, v8, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    .line 1397
    .line 1398
    const/4 v7, 0x1

    .line 1399
    iput-boolean v7, v8, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    .line 1400
    .line 1401
    :cond_3e
    const/16 v0, 0x24

    .line 1402
    .line 1403
    if-lt v1, v0, :cond_40

    .line 1404
    .line 1405
    invoke-virtual {v2, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v3

    .line 1409
    if-eqz v3, :cond_40

    .line 1410
    .line 1411
    invoke-virtual {v2, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v2

    .line 1415
    iput-object v2, v8, Landroidx/core/app/NotificationCompat$Builder;->mShortCriticalText:Ljava/lang/String;

    .line 1416
    .line 1417
    if-ge v1, v0, :cond_40

    .line 1418
    .line 1419
    iget-object v0, v8, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1420
    .line 1421
    if-nez v0, :cond_3f

    .line 1422
    .line 1423
    new-instance v0, Landroid/os/Bundle;

    .line 1424
    .line 1425
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1426
    .line 1427
    .line 1428
    iput-object v0, v8, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1429
    .line 1430
    :cond_3f
    invoke-virtual {v0, v13, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    .line 1432
    .line 1433
    :cond_40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 1436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 1437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1438
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    const/4 v1, 0x0

    .line 1439
    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 1440
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 1441
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 1442
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 1443
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 1444
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 1445
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 1446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    .line 1447
    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    .line 1448
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 1449
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 1450
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method public static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1400

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    return-object p0
.end method

.method public static safeCharSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x1400

    .line 17
    .line 18
    if-le v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_2
    return-object p0
.end method


# virtual methods
.method public final addAction(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 13

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    .line 2
    .line 3
    new-instance v4, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v11, 0x0

    .line 9
    const/4 v12, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    invoke-direct/range {v0 .. v12}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZIIZ)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final build()Landroid/app/Notification;
    .locals 8

    .line 1
    new-instance v0, Lokhttp3/Dispatcher;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lokhttp3/Dispatcher;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Style;->apply(Lokhttp3/Dispatcher;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Style;->makeContentView()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Landroid/app/Notification$Builder;

    .line 25
    .line 26
    iget v3, v0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 27
    .line 28
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v5, 0x1a

    .line 31
    .line 32
    if-lt v4, v5, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v5, 0x18

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    const/4 v7, 0x2

    .line 43
    if-lt v4, v5, :cond_4

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v3, :cond_6

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 58
    .line 59
    and-int/lit16 v2, v2, 0x200

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    if-ne v3, v7, :cond_3

    .line 64
    .line 65
    invoke-static {v0}, Lokhttp3/Dispatcher;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 75
    .line 76
    and-int/lit16 v2, v2, 0x200

    .line 77
    .line 78
    if-nez v2, :cond_6

    .line 79
    .line 80
    if-ne v3, v6, :cond_6

    .line 81
    .line 82
    invoke-static {v0}, Lokhttp3/Dispatcher;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iget-object v0, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v3, :cond_6

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 106
    .line 107
    and-int/lit16 v2, v2, 0x200

    .line 108
    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    if-ne v3, v7, :cond_5

    .line 112
    .line 113
    invoke-static {v0}, Lokhttp3/Dispatcher;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 123
    .line 124
    and-int/lit16 v2, v2, 0x200

    .line 125
    .line 126
    if-nez v2, :cond_6

    .line 127
    .line 128
    if-ne v3, v6, :cond_6

    .line 129
    .line 130
    invoke-static {v0}, Lokhttp3/Dispatcher;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    .line 134
    .line 135
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Style;->makeBigContentView()V

    .line 136
    .line 137
    .line 138
    :cond_7
    if-eqz v1, :cond_8

    .line 139
    .line 140
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Style;->makeHeadsUpContentView()V

    .line 143
    .line 144
    .line 145
    :cond_8
    if-eqz v1, :cond_9

    .line 146
    .line 147
    iget-object p0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 148
    .line 149
    if-eqz p0, :cond_9

    .line 150
    .line 151
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 152
    .line 153
    .line 154
    :cond_9
    return-object v0
.end method

.method public final setDefaults(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 2
    .line 3
    iput p1, p0, Landroid/app/Notification;->defaults:I

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Landroid/app/Notification;->flags:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final setFlag(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p2, p0, Landroid/app/Notification;->flags:I

    .line 6
    .line 7
    or-int/2addr p1, p2

    .line 8
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget p2, p0, Landroid/app/Notification;->flags:I

    .line 12
    .line 13
    not-int p1, p1

    .line 14
    and-int/2addr p1, p2

    .line 15
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 16
    .line 17
    return-void
.end method

.method public final setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_1

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1b

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f070065

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const v3, 0x7f070064

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-gt v3, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-gt v3, v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    int-to-double v3, v1

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    int-to-double v5, v1

    .line 56
    div-double/2addr v3, v5

    .line 57
    int-to-double v0, v0

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    int-to-double v5, v5

    .line 67
    div-double/2addr v0, v5

    .line 68
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    int-to-double v3, v3

    .line 77
    mul-double/2addr v3, v0

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    double-to-int v3, v3

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    int-to-double v4, v4

    .line 88
    mul-double/2addr v4, v0

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    double-to-int v0, v0

    .line 94
    invoke-static {p1, v3, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_0
    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 104
    .line 105
    invoke-direct {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 106
    .line 107
    .line 108
    iput-object p1, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 109
    .line 110
    move-object p1, v0

    .line 111
    :goto_1
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 112
    .line 113
    return-void
.end method

.method public final setStyle(Landroidx/core/app/NotificationCompat$Style;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 10
    .line 11
    if-eq v0, p0, :cond_0

    .line 12
    .line 13
    iput-object p0, p1, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
