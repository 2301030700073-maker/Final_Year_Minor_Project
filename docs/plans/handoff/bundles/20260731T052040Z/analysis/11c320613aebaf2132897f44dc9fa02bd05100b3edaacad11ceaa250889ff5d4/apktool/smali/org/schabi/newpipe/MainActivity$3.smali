.class public final Lorg/schabi/newpipe/MainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/MainActivity$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/MainActivity$3;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/MainActivity$3;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x5

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x3

    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, -0x1

    .line 11
    const/4 v8, 0x1

    .line 12
    const/4 v9, 0x0

    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity$3;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p0, Lorg/schabi/newpipe/player/Player;

    .line 19
    .line 20
    if-eqz p2, :cond_c

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sparse-switch v0, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    :goto_0
    move v3, v7

    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :sswitch_0
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.REPEAT"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/16 v3, 0xa

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :sswitch_1
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_REWIND"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/16 v3, 0x9

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :sswitch_2
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_FORWARD"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const/16 v3, 0x8

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :sswitch_3
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_SHUFFLE"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    const/4 v3, 0x7

    .line 96
    goto :goto_1

    .line 97
    :sswitch_4
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_PREVIOUS"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    const/4 v3, 0x6

    .line 107
    goto :goto_1

    .line 108
    :sswitch_5
    const-string v0, "org.schabi.newpipe.player.MainPlayer.CLOSE"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_b

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :sswitch_6
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_6

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_6
    move v3, v4

    .line 127
    goto :goto_1

    .line 128
    :sswitch_7
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_7

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_7
    move v3, v5

    .line 138
    goto :goto_1

    .line 139
    :sswitch_8
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_NEXT"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_8

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_8
    move v3, v6

    .line 149
    goto :goto_1

    .line 150
    :sswitch_9
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_9

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_9
    move v3, v8

    .line 160
    goto :goto_1

    .line 161
    :sswitch_a
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_a

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_a
    move v3, v9

    .line 171
    :cond_b
    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :pswitch_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->cycleNextRepeatMode()V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :pswitch_1
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    neg-int p1, p1

    .line 184
    int-to-long v0, p1

    .line 185
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 186
    .line 187
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    add-long/2addr v2, v0

    .line 192
    invoke-virtual {p0, v2, v3}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :pswitch_2
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    int-to-long v0, p1

    .line 204
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 205
    .line 206
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    add-long/2addr v2, v0

    .line 211
    invoke-virtual {p0, v2, v3}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :pswitch_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->toggleShuffleModeEnabled()V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :pswitch_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playPrevious()V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :pswitch_5
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    .line 227
    .line 228
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :pswitch_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->pause()V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :pswitch_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playPause()V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :pswitch_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playNext()V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :pswitch_9
    iput-boolean v8, p0, Lorg/schabi/newpipe/player/Player;->screenOn:Z

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :pswitch_a
    iput-boolean v9, p0, Lorg/schabi/newpipe/player/Player;->screenOn:Z

    .line 248
    .line 249
    :goto_2
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 250
    .line 251
    new-instance p1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda40;

    .line 252
    .line 253
    invoke-direct {p1, p2, v9}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda40;-><init>(Landroid/content/Intent;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 257
    .line 258
    .line 259
    :cond_c
    :goto_3
    return-void

    .line 260
    :pswitch_b
    if-eqz p2, :cond_d

    .line 261
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    goto :goto_4

    .line 267
    :cond_d
    move-object p1, v2

    .line 268
    :goto_4
    const-string p2, "org.schabi.newpipe.local.feed.service.FeedLoadService.CANCEL"

    .line 269
    .line 270
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    if-eqz p1, :cond_f

    .line 275
    .line 276
    check-cast p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    .line 277
    .line 278
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 279
    .line 280
    if-eqz p0, :cond_e

    .line 281
    .line 282
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->cancelSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 283
    .line 284
    invoke-virtual {p0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_e
    const-string p0, "feedLoadManager"

    .line 289
    .line 290
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v2

    .line 294
    :cond_f
    :goto_5
    return-void

    .line 295
    :pswitch_c
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 296
    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 305
    .line 306
    .line 307
    move-result p2

    .line 308
    sparse-switch p2, :sswitch_data_1

    .line 309
    .line 310
    .line 311
    :goto_6
    move v6, v7

    .line 312
    goto :goto_7

    .line 313
    :sswitch_b
    const-string p2, "org.schabi.newpipe.VideoDetailFragment.ACTION_HIDE_MAIN_PLAYER"

    .line 314
    .line 315
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-nez p1, :cond_12

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :sswitch_c
    const-string p2, "org.schabi.newpipe.VideoDetailFragment.ACTION_SHOW_MAIN_PLAYER"

    .line 323
    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-nez p1, :cond_10

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_10
    move v6, v8

    .line 332
    goto :goto_7

    .line 333
    :sswitch_d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-nez p1, :cond_11

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_11
    move v6, v9

    .line 341
    :cond_12
    :goto_7
    packed-switch v6, :pswitch_data_2

    .line 342
    .line 343
    .line 344
    goto :goto_8

    .line 345
    :pswitch_d
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 346
    .line 347
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 348
    .line 349
    .line 350
    goto :goto_8

    .line 351
    :pswitch_e
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 352
    .line 353
    invoke-virtual {p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 354
    .line 355
    .line 356
    goto :goto_8

    .line 357
    :pswitch_f
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 358
    .line 359
    iget p2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 360
    .line 361
    if-ne p2, v3, :cond_13

    .line 362
    .line 363
    invoke-virtual {p1, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 364
    .line 365
    .line 366
    :cond_13
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 367
    .line 368
    iget-boolean p2, p1, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    .line 369
    .line 370
    if-nez p2, :cond_14

    .line 371
    .line 372
    invoke-virtual {p1, v9, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    .line 373
    .line 374
    .line 375
    :cond_14
    :goto_8
    return-void

    .line 376
    :pswitch_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    check-cast p0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;

    .line 383
    .line 384
    invoke-virtual {p0, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->onBroadcastReceive(Landroid/content/Intent;)V

    .line 385
    .line 386
    .line 387
    return-void

    .line 388
    :pswitch_11
    check-cast p0, Landroidx/core/app/NotificationCompat$Style;

    .line 389
    .line 390
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Style;->onChange()V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :pswitch_12
    check-cast p0, Lorg/schabi/newpipe/MainActivity;

    .line 395
    .line 396
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result p1

    .line 404
    if-eqz p1, :cond_15

    .line 405
    .line 406
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    if-eqz p1, :cond_15

    .line 419
    .line 420
    sget p1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 421
    .line 422
    invoke-virtual {p0}, Lorg/schabi/newpipe/MainActivity;->openMiniPlayerIfMissing()V

    .line 423
    .line 424
    .line 425
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity;->broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

    .line 426
    .line 427
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 428
    .line 429
    .line 430
    iput-object v2, p0, Lorg/schabi/newpipe/MainActivity;->broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

    .line 431
    .line 432
    :cond_15
    return-void

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_a
        -0x56ac2893 -> :sswitch_9
        -0x47dd0651 -> :sswitch_8
        -0x4518581b -> :sswitch_7
        -0x20bccddb -> :sswitch_6
        -0xe9f8483 -> :sswitch_5
        -0xb199c4d -> :sswitch_4
        0x165523aa -> :sswitch_3
        0x2cba0391 -> :sswitch_2
        0x57712e4f -> :sswitch_1
        0x7aa46975 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x798f973a -> :sswitch_d
        -0x65801318 -> :sswitch_c
        -0x36a75053 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method
