.class public final synthetic Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;->f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;->$r8$classId:I

    .line 4
    .line 5
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;->f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 13
    .line 14
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 15
    .line 16
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 17
    .line 18
    iget-object v1, v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    move-object/from16 v1, p1

    .line 25
    .line 26
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 27
    .line 28
    iget-object v2, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 29
    .line 30
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/Localization;->audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    move-object/from16 v1, p1

    .line 43
    .line 44
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 45
    .line 46
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 47
    .line 48
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    move-object/from16 v1, p1

    .line 59
    .line 60
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 61
    .line 62
    iget-object v2, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 63
    .line 64
    iget-object v3, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 65
    .line 66
    iget-object v4, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 67
    .line 68
    iget-object v5, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    .line 69
    .line 70
    iget-object v6, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 71
    .line 72
    const/16 v7, 0x8

    .line 73
    .line 74
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 78
    .line 79
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object v8, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 83
    .line 84
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object v9, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackEndTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 88
    .line 89
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object v10, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 93
    .line 94
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    const/4 v12, 0x0

    .line 106
    packed-switch v11, :pswitch_data_1

    .line 107
    .line 108
    .line 109
    move v11, v7

    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :pswitch_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :pswitch_4
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_5

    .line 133
    .line 134
    :pswitch_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_5

    .line 144
    .line 145
    :pswitch_6
    iget-object v10, v2, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 146
    .line 147
    if-eqz v10, :cond_0

    .line 148
    .line 149
    invoke-interface {v10}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeQuality()Lj$/util/Optional;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-virtual {v10}, Lj$/util/Optional;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    if-nez v10, :cond_9

    .line 158
    .line 159
    :cond_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-eqz v10, :cond_1

    .line 168
    .line 169
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_1

    .line 178
    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_1
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 182
    .line 183
    const/4 v10, 0x0

    .line 184
    if-nez v1, :cond_2

    .line 185
    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :cond_2
    iget-object v1, v1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 191
    .line 192
    const/16 v11, 0x45

    .line 193
    .line 194
    invoke-virtual {v1, v11}, Landroidx/appcompat/view/menu/MenuBuilder;->removeGroup(I)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v2, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 198
    .line 199
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    new-instance v13, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 204
    .line 205
    const/16 v14, 0xd

    .line 206
    .line 207
    invoke-direct {v13, v14}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v13}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    new-instance v13, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 215
    .line 216
    const/16 v14, 0xb

    .line 217
    .line 218
    invoke-direct {v13, v14}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v13}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1, v10}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Ljava/util/List;

    .line 230
    .line 231
    if-nez v1, :cond_3

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_3
    move v13, v12

    .line 235
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v14

    .line 239
    if-ge v13, v14, :cond_4

    .line 240
    .line 241
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    check-cast v14, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 246
    .line 247
    iget-object v15, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 248
    .line 249
    iget-object v15, v15, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v15, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 252
    .line 253
    new-instance v10, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormatId()I

    .line 259
    .line 260
    .line 261
    move-result v16

    .line 262
    invoke-static/range {v16 .. v16}, Lorg/schabi/newpipe/extractor/MediaFormat;->getNameById(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v7, " "

    .line 270
    .line 271
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget-object v7, v14, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    invoke-virtual {v15, v11, v13, v12, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 284
    .line 285
    .line 286
    add-int/lit8 v13, v13, 0x1

    .line 287
    .line 288
    const/16 v7, 0x8

    .line 289
    .line 290
    const/4 v10, 0x0

    .line 291
    goto :goto_0

    .line 292
    :cond_4
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 293
    .line 294
    iput-object v0, v1, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 295
    .line 296
    iput-object v0, v1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 297
    .line 298
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getSelectedVideoStream()Lj$/util/Optional;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    new-instance v7, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;

    .line 303
    .line 304
    const/4 v10, 0x4

    .line 305
    invoke-direct {v7, v0, v10}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v7}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 309
    .line 310
    .line 311
    :goto_1
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 312
    .line 313
    if-nez v1, :cond_5

    .line 314
    .line 315
    goto/16 :goto_3

    .line 316
    .line 317
    :cond_5
    iget-object v1, v1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 320
    .line 321
    const/16 v7, 0x46

    .line 322
    .line 323
    invoke-virtual {v1, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->removeGroup(I)V

    .line 324
    .line 325
    .line 326
    iget-object v1, v2, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 327
    .line 328
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    new-instance v10, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 333
    .line 334
    const/16 v11, 0x8

    .line 335
    .line 336
    invoke-direct {v10, v11}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v10}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    new-instance v10, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 344
    .line 345
    const/16 v11, 0x9

    .line 346
    .line 347
    invoke-direct {v10, v11}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v10}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    const/4 v10, 0x0

    .line 355
    invoke-virtual {v1, v10}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    check-cast v1, Ljava/util/List;

    .line 360
    .line 361
    if-eqz v1, :cond_8

    .line 362
    .line 363
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 364
    .line 365
    .line 366
    move-result v10

    .line 367
    const/4 v11, 0x2

    .line 368
    if-ge v10, v11, :cond_6

    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_6
    move v10, v12

    .line 372
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    if-ge v10, v11, :cond_7

    .line 377
    .line 378
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v11

    .line 382
    check-cast v11, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 383
    .line 384
    iget-object v13, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 385
    .line 386
    iget-object v13, v13, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v13, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 389
    .line 390
    iget-object v14, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 391
    .line 392
    invoke-static {v14, v11}, Lorg/schabi/newpipe/util/Localization;->audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v11

    .line 396
    invoke-virtual {v13, v7, v10, v12, v11}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 397
    .line 398
    .line 399
    add-int/lit8 v10, v10, 0x1

    .line 400
    .line 401
    goto :goto_2

    .line 402
    :cond_7
    iget-object v1, v2, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 403
    .line 404
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    new-instance v7, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 409
    .line 410
    const/16 v11, 0x8

    .line 411
    .line 412
    invoke-direct {v7, v11}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v7}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    new-instance v7, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 420
    .line 421
    invoke-direct {v7, v12}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v7}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    new-instance v7, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;

    .line 429
    .line 430
    const/4 v10, 0x3

    .line 431
    invoke-direct {v7, v0, v10}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v7}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 441
    .line 442
    iput-object v0, v1, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 443
    .line 444
    iput-object v0, v1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 445
    .line 446
    :cond_8
    :goto_3
    iget-object v1, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 447
    .line 448
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 452
    .line 453
    .line 454
    const/16 v11, 0x8

    .line 455
    .line 456
    :goto_4
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 460
    .line 461
    .line 462
    :cond_9
    :goto_5
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 463
    .line 464
    if-nez v1, :cond_a

    .line 465
    .line 466
    goto :goto_7

    .line 467
    :cond_a
    iget-object v1, v1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 470
    .line 471
    const/16 v3, 0x4f

    .line 472
    .line 473
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->removeGroup(I)V

    .line 474
    .line 475
    .line 476
    move v1, v12

    .line 477
    :goto_6
    const/4 v4, 0x7

    .line 478
    if-ge v1, v4, :cond_b

    .line 479
    .line 480
    iget-object v4, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 481
    .line 482
    iget-object v4, v4, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v4, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 485
    .line 486
    sget-object v5, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->PLAYBACK_SPEEDS:[F

    .line 487
    .line 488
    aget v5, v5, v1

    .line 489
    .line 490
    float-to-double v5, v5

    .line 491
    invoke-static {v5, v6}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    invoke-virtual {v4, v3, v1, v12, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 496
    .line 497
    .line 498
    add-int/lit8 v1, v1, 0x1

    .line 499
    .line 500
    goto :goto_6

    .line 501
    :cond_b
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 506
    .line 507
    float-to-double v1, v1

    .line 508
    invoke-static {v1, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    .line 514
    .line 515
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 516
    .line 517
    iput-object v0, v1, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 518
    .line 519
    iput-object v0, v1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 520
    .line 521
    :goto_7
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :pswitch_7
    move-object/from16 v1, p1

    .line 526
    .line 527
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 528
    .line 529
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 530
    .line 531
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 532
    .line 533
    iget-object v1, v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 534
    .line 535
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    .line 537
    .line 538
    return-void

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
