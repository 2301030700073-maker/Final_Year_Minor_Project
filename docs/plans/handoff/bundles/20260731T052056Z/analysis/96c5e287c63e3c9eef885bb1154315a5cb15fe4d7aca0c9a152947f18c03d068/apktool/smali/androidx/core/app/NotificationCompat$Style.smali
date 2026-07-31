.class public abstract Landroidx/core/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public mBigContentTitle:Ljava/lang/CharSequence;

.field public mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field public mSummaryText:Ljava/lang/CharSequence;

.field public mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    .line 6
    .line 7
    return-void
.end method

.method public static extractStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;
    .locals 6

    .line 1
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_8

    .line 7
    .line 8
    :cond_0
    const-string v1, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_9

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, -0x1

    .line 23
    sparse-switch v4, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :sswitch_0
    const-string v4, "androidx.core.app.NotificationCompat$MessagingStyle"

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v5, 0x7

    .line 38
    goto :goto_0

    .line 39
    :sswitch_1
    const-string v4, "androidx.core.app.NotificationCompat$BigTextStyle"

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v5, 0x6

    .line 49
    goto :goto_0

    .line 50
    :sswitch_2
    const-string v4, "androidx.core.app.NotificationCompat$InboxStyle"

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v5, 0x5

    .line 60
    goto :goto_0

    .line 61
    :sswitch_3
    const-string v4, "androidx.core.app.NotificationCompat$CallStyle"

    .line 62
    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v5, 0x4

    .line 71
    goto :goto_0

    .line 72
    :sswitch_4
    const-string v4, "androidx.core.app.NotificationCompat$MetricStyle"

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    const/4 v5, 0x3

    .line 82
    goto :goto_0

    .line 83
    :sswitch_5
    const-string v4, "androidx.core.app.NotificationCompat$BigPictureStyle"

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_6

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    const/4 v5, 0x2

    .line 93
    goto :goto_0

    .line 94
    :sswitch_6
    const-string v4, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    .line 95
    .line 96
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_7

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    move v5, v2

    .line 104
    goto :goto_0

    .line 105
    :sswitch_7
    const-string v4, "androidx.core.app.NotificationCompat$ProgressStyle"

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_8

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_8
    move v5, v3

    .line 115
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :pswitch_0
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 120
    .line 121
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :pswitch_1
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 126
    .line 127
    invoke-direct {v1, v2}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :pswitch_2
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 132
    .line 133
    invoke-direct {v1, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :pswitch_3
    new-instance v1, Landroidx/core/app/NotificationCompat$CallStyle;

    .line 138
    .line 139
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :pswitch_4
    new-instance v1, Landroidx/core/app/NotificationCompat$MetricStyle;

    .line 144
    .line 145
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$MetricStyle;-><init>()V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :pswitch_5
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 150
    .line 151
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :pswitch_6
    new-instance v1, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    .line 156
    .line 157
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :pswitch_7
    new-instance v1, Landroidx/core/app/NotificationCompat$ProgressStyle;

    .line 162
    .line 163
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$ProgressStyle;-><init>()V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_9
    :goto_1
    move-object v1, v0

    .line 168
    :goto_2
    if-eqz v1, :cond_a

    .line 169
    .line 170
    goto/16 :goto_7

    .line 171
    .line 172
    :cond_a
    const-string v1, "android.selfDisplayName"

    .line 173
    .line 174
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_1c

    .line 179
    .line 180
    const-string v1, "android.messagingStyleUser"

    .line 181
    .line 182
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_b

    .line 187
    .line 188
    goto/16 :goto_6

    .line 189
    .line 190
    :cond_b
    const-string v1, "android.picture"

    .line 191
    .line 192
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_1b

    .line 197
    .line 198
    const-string v1, "android.pictureIcon"

    .line 199
    .line 200
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_c

    .line 205
    .line 206
    goto/16 :goto_5

    .line 207
    .line 208
    :cond_c
    const-string v1, "android.bigText"

    .line 209
    .line 210
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_d

    .line 215
    .line 216
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 217
    .line 218
    invoke-direct {v1, v2}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_7

    .line 222
    .line 223
    :cond_d
    const-string v1, "android.textLines"

    .line 224
    .line 225
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_e

    .line 230
    .line 231
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 232
    .line 233
    invoke-direct {v1, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_7

    .line 237
    .line 238
    :cond_e
    const-string v1, "android.callType"

    .line 239
    .line 240
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_f

    .line 245
    .line 246
    new-instance v1, Landroidx/core/app/NotificationCompat$CallStyle;

    .line 247
    .line 248
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_7

    .line 252
    .line 253
    :cond_f
    const-string v1, "android.progressSegments"

    .line 254
    .line 255
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_1a

    .line 260
    .line 261
    const-string v1, "android.progressPoints"

    .line 262
    .line 263
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_10

    .line 268
    .line 269
    goto/16 :goto_4

    .line 270
    .line 271
    :cond_10
    const-string v1, "android.metrics"

    .line 272
    .line 273
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_11

    .line 278
    .line 279
    new-instance v1, Landroidx/core/app/NotificationCompat$MetricStyle;

    .line 280
    .line 281
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$MetricStyle;-><init>()V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_7

    .line 285
    .line 286
    :cond_11
    const-string v1, "android.template"

    .line 287
    .line 288
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    if-nez v1, :cond_12

    .line 293
    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :cond_12
    const-class v4, Landroid/app/Notification$BigPictureStyle;

    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-eqz v4, :cond_13

    .line 307
    .line 308
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 309
    .line 310
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_7

    .line 314
    .line 315
    :cond_13
    const-class v4, Landroid/app/Notification$BigTextStyle;

    .line 316
    .line 317
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_14

    .line 326
    .line 327
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 328
    .line 329
    invoke-direct {v1, v2}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_7

    .line 333
    .line 334
    :cond_14
    const-class v2, Landroid/app/Notification$InboxStyle;

    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eqz v2, :cond_15

    .line 345
    .line 346
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 347
    .line 348
    invoke-direct {v1, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_7

    .line 352
    .line 353
    :cond_15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 354
    .line 355
    const/16 v3, 0x24

    .line 356
    .line 357
    if-lt v2, v3, :cond_16

    .line 358
    .line 359
    const-class v3, Landroid/app/Notification$ProgressStyle;

    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_16

    .line 370
    .line 371
    new-instance v1, Landroidx/core/app/NotificationCompat$ProgressStyle;

    .line 372
    .line 373
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$ProgressStyle;-><init>()V

    .line 374
    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_16
    const/16 v3, 0x18

    .line 378
    .line 379
    if-lt v2, v3, :cond_18

    .line 380
    .line 381
    const-class v3, Landroid/app/Notification$MessagingStyle;

    .line 382
    .line 383
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    if-eqz v3, :cond_17

    .line 392
    .line 393
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 394
    .line 395
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    .line 396
    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_17
    const-class v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-eqz v3, :cond_18

    .line 410
    .line 411
    new-instance v1, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    .line 412
    .line 413
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 414
    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_18
    const/16 v3, 0x25

    .line 418
    .line 419
    if-lt v2, v3, :cond_19

    .line 420
    .line 421
    const-class v2, Landroid/app/Notification$MetricStyle;

    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-eqz v1, :cond_19

    .line 432
    .line 433
    new-instance v1, Landroidx/core/app/NotificationCompat$MetricStyle;

    .line 434
    .line 435
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$MetricStyle;-><init>()V

    .line 436
    .line 437
    .line 438
    goto :goto_7

    .line 439
    :cond_19
    :goto_3
    move-object v1, v0

    .line 440
    goto :goto_7

    .line 441
    :cond_1a
    :goto_4
    new-instance v1, Landroidx/core/app/NotificationCompat$ProgressStyle;

    .line 442
    .line 443
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$ProgressStyle;-><init>()V

    .line 444
    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_1b
    :goto_5
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 448
    .line 449
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 450
    .line 451
    .line 452
    goto :goto_7

    .line 453
    :cond_1c
    :goto_6
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 454
    .line 455
    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    .line 456
    .line 457
    .line 458
    :goto_7
    if-nez v1, :cond_1d

    .line 459
    .line 460
    :goto_8
    return-object v0

    .line 461
    :cond_1d
    :try_start_0
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .line 463
    .line 464
    return-object v1

    .line 465
    :catch_0
    return-object v0

    .line 466
    nop

    .line 467
    :sswitch_data_0
    .sparse-switch
        -0x722bb13c -> :sswitch_7
        -0x2ab80d9c -> :sswitch_6
        -0xa3fb04d -> :sswitch_5
        -0x7af5adf -> :sswitch_4
        0x2a94ad33 -> :sswitch_3
        0x366a678b -> :sswitch_2
        0x36cfe824 -> :sswitch_1
        0x7c9f11cd -> :sswitch_0
    .end sparse-switch

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "android.summaryText"

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v1, "android.title.big"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Style;->getClassName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 26
    .line 27
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public abstract apply(Lokhttp3/Dispatcher;)V
.end method

.method public clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p0, "android.summaryText"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "android.title.big"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public makeBigContentView()V
    .locals 0

    .line 1
    return-void
.end method

.method public makeContentView()V
    .locals 0

    .line 1
    return-void
.end method

.method public makeHeadsUpContentView()V
    .locals 0

    .line 1
    return-void
.end method

.method public restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "android.summaryText"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    .line 17
    .line 18
    :cond_0
    const-string v0, "android.title.big"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 25
    .line 26
    return-void
.end method
