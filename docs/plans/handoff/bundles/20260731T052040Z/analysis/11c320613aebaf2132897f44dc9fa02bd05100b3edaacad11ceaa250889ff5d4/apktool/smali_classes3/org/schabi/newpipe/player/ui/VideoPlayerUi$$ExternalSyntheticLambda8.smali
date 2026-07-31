.class public final synthetic Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    const-wide/16 v2, 0x12c

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x2

    .line 9
    const-wide/16 v6, 0xc8

    .line 10
    .line 11
    const-string v8, "MenuPopupHelper cannot be used without an anchor"

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v10, 0x1

    .line 15
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideSystemUIIfNeeded()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    invoke-virtual {v0, v10}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updatePlayPauseButton(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v6, v7, v10}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->animatePlayButtons(JZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isAnyListViewOpen()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 37
    .line 38
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    :pswitch_1
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updatePlayPauseButton(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v6, v7, v10}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->animatePlayButtons(JZ)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isAnyListViewOpen()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 57
    .line 58
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void

    .line 64
    :pswitch_2
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 65
    .line 66
    iget-object v2, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 67
    .line 68
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 69
    .line 70
    invoke-virtual {v2}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->getResizeMode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    if-eq v2, v4, :cond_2

    .line 77
    .line 78
    move v4, v9

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 v4, 0x4

    .line 81
    :cond_3
    :goto_0
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 82
    .line 83
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 88
    .line 89
    const v3, 0x7f13023a

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setResizeMode(I)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_3
    sget v1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 108
    .line 109
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->captionPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 110
    .line 111
    iget-object v1, v1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v1, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    iget-object v2, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    invoke-virtual {v1, v9, v9, v9, v9}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 127
    .line 128
    .line 129
    :goto_1
    iput-boolean v10, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    return-void

    .line 136
    :pswitch_4
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onPlaybackSpeedClicked()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_5
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 141
    .line 142
    iget-object v1, v1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    iget-object v2, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 154
    .line 155
    if-eqz v2, :cond_7

    .line 156
    .line 157
    invoke-virtual {v1, v9, v9, v9, v9}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 158
    .line 159
    .line 160
    :goto_3
    iput-boolean v10, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_4
    return-void

    .line 167
    :pswitch_6
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 168
    .line 169
    new-instance v1, Landroid/content/Intent;

    .line 170
    .line 171
    const-string v2, "org.schabi.newpipe.VideoDetailFragment.ACTION_HIDE_MAIN_PLAYER"

    .line 172
    .line 173
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string v2, "org.schabi.newpipe"

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_7
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 187
    .line 188
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;

    .line 193
    .line 194
    invoke-direct {v2, v0, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_8
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 202
    .line 203
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 204
    .line 205
    if-eqz v2, :cond_9

    .line 206
    .line 207
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->pause()V

    .line 208
    .line 209
    .line 210
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 211
    .line 212
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 213
    .line 214
    if-nez v2, :cond_8

    .line 215
    .line 216
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 217
    .line 218
    const v2, 0x7f13050e

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    goto :goto_5

    .line 226
    :cond_8
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    :goto_5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->playWithKore(Landroid/content/Context;Landroid/net/Uri;)V

    .line 235
    .line 236
    .line 237
    :cond_9
    return-void

    .line 238
    :pswitch_9
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 239
    .line 240
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 241
    .line 242
    .line 243
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 244
    .line 245
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 246
    .line 247
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    invoke-static {v0, v1, v10}, Landroidx/sqlite/SQLite;->playOnMainPlayer(Landroid/content/ContextWrapper;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_a
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 255
    .line 256
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 257
    .line 258
    if-eqz v2, :cond_a

    .line 259
    .line 260
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 261
    .line 262
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getVideoUrlAtCurrentTime()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-static {v0, v3, v1, v2}, Landroidx/transition/Transition$Impl26;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 275
    .line 276
    .line 277
    :cond_a
    return-void

    .line 278
    :pswitch_b
    sget v1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 279
    .line 280
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 281
    .line 282
    iget-object v4, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    .line 283
    .line 284
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-nez v4, :cond_b

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_b
    move v10, v9

    .line 292
    :goto_6
    iget-object v4, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 293
    .line 294
    if-eqz v10, :cond_c

    .line 295
    .line 296
    move v5, v9

    .line 297
    goto :goto_7

    .line 298
    :cond_c
    const/16 v5, 0xb4

    .line 299
    .line 300
    :goto_7
    invoke-static {v5, v4}, Lnet/newpipe/app/AppKt;->animateRotation(ILandroid/view/View;)V

    .line 301
    .line 302
    .line 303
    iget-object v11, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    .line 304
    .line 305
    xor-int/lit8 v12, v10, 0x1

    .line 306
    .line 307
    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda43;

    .line 308
    .line 309
    invoke-direct {v1, v9, v0, v10}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda43;-><init>(ILjava/lang/Object;Z)V

    .line 310
    .line 311
    .line 312
    const-wide/16 v13, 0x12c

    .line 313
    .line 314
    sget-object v15, Lorg/schabi/newpipe/ktx/AnimationType;->SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 315
    .line 316
    const-wide/16 v16, 0x0

    .line 317
    .line 318
    move-object/from16 v18, v1

    .line 319
    .line 320
    invoke-static/range {v11 .. v18}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControls(J)V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :pswitch_c
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 328
    .line 329
    iget-object v1, v1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v1, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 332
    .line 333
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_d

    .line 338
    .line 339
    goto :goto_8

    .line 340
    :cond_d
    iget-object v2, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 341
    .line 342
    if-eqz v2, :cond_e

    .line 343
    .line 344
    invoke-virtual {v1, v9, v9, v9, v9}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 345
    .line 346
    .line 347
    :goto_8
    iput-boolean v10, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    .line 348
    .line 349
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 350
    .line 351
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getSelectedVideoStream()Lj$/util/Optional;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    new-instance v2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 356
    .line 357
    const/16 v3, 0xa

    .line 358
    .line 359
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 367
    .line 368
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 369
    .line 370
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 371
    .line 372
    const/16 v3, 0x13

    .line 373
    .line 374
    invoke-direct {v2, v0, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 378
    .line 379
    .line 380
    goto :goto_9

    .line 381
    :cond_e
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :goto_9
    return-void

    .line 385
    :pswitch_d
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updatePlayPauseButton(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v2, v3, v10}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->animatePlayButtons(JZ)V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    nop

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
.end method
