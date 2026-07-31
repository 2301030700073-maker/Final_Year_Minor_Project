.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 67

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v0, Lokhttp3/Dispatcher;

    .line 12
    .line 13
    iget-object v0, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroid/widget/LinearLayout;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    check-cast v0, Lorg/jsoup/parser/TokenData;

    .line 19
    .line 20
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_1
    check-cast v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 26
    .line 27
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_2
    check-cast v0, Lj$/util/Optional;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_3
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 36
    .line 37
    const-string v1, "microformat"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "microformatDataRenderer"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "title"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :pswitch_4
    check-cast v0, Lorg/schabi/newpipe/player/Player;

    .line 61
    .line 62
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 63
    .line 64
    sget-object v3, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 65
    .line 66
    if-ne v1, v3, :cond_0

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_0
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 71
    .line 72
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const v1, 0x7f0d00d9

    .line 77
    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const v1, 0x7f0a0057

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    move-object v6, v3

    .line 92
    check-cast v6, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 93
    .line 94
    if-eqz v6, :cond_1

    .line 95
    .line 96
    const v1, 0x7f0a006f

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    move-object v7, v3

    .line 104
    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 105
    .line 106
    if-eqz v7, :cond_1

    .line 107
    .line 108
    const v1, 0x7f0a0087

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    move-object v8, v3

    .line 116
    check-cast v8, Landroid/widget/LinearLayout;

    .line 117
    .line 118
    if-eqz v8, :cond_1

    .line 119
    .line 120
    const v1, 0x7f0a0088

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    move-object v9, v3

    .line 128
    check-cast v9, Landroid/widget/LinearLayout;

    .line 129
    .line 130
    if-eqz v9, :cond_1

    .line 131
    .line 132
    const v1, 0x7f0a008f

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    move-object v10, v3

    .line 140
    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    .line 141
    .line 142
    if-eqz v10, :cond_1

    .line 143
    .line 144
    const v1, 0x7f0a0090

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    move-object v11, v3

    .line 152
    check-cast v11, Landroid/widget/ProgressBar;

    .line 153
    .line 154
    if-eqz v11, :cond_1

    .line 155
    .line 156
    const v1, 0x7f0a0091

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    move-object v12, v3

    .line 164
    check-cast v12, Landroid/widget/RelativeLayout;

    .line 165
    .line 166
    if-eqz v12, :cond_1

    .line 167
    .line 168
    const v1, 0x7f0a009d

    .line 169
    .line 170
    .line 171
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    move-object v13, v3

    .line 176
    check-cast v13, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 177
    .line 178
    if-eqz v13, :cond_1

    .line 179
    .line 180
    const v1, 0x7f0a00a7

    .line 181
    .line 182
    .line 183
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    move-object v14, v3

    .line 188
    check-cast v14, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 189
    .line 190
    if-eqz v14, :cond_1

    .line 191
    .line 192
    const v1, 0x7f0a00bb

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Landroid/widget/Button;

    .line 200
    .line 201
    if-eqz v3, :cond_1

    .line 202
    .line 203
    const v1, 0x7f0a00bd

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    if-eqz v15, :cond_1

    .line 211
    .line 212
    const v1, 0x7f0a00dc

    .line 213
    .line 214
    .line 215
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    move-object/from16 v16, v3

    .line 220
    .line 221
    check-cast v16, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 222
    .line 223
    if-eqz v16, :cond_1

    .line 224
    .line 225
    const v1, 0x7f0a00dd

    .line 226
    .line 227
    .line 228
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    move-object/from16 v17, v3

    .line 233
    .line 234
    check-cast v17, Landroid/widget/ImageView;

    .line 235
    .line 236
    if-eqz v17, :cond_1

    .line 237
    .line 238
    const v1, 0x7f0a0146

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    move-object/from16 v18, v3

    .line 246
    .line 247
    check-cast v18, Landroid/widget/ImageView;

    .line 248
    .line 249
    if-eqz v18, :cond_1

    .line 250
    .line 251
    const v1, 0x7f0a0192

    .line 252
    .line 253
    .line 254
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    move-object/from16 v19, v3

    .line 259
    .line 260
    check-cast v19, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 261
    .line 262
    if-eqz v19, :cond_1

    .line 263
    .line 264
    const v1, 0x7f0a01ad

    .line 265
    .line 266
    .line 267
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    move-object/from16 v20, v3

    .line 272
    .line 273
    check-cast v20, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 274
    .line 275
    if-eqz v20, :cond_1

    .line 276
    .line 277
    const v1, 0x7f0a0200

    .line 278
    .line 279
    .line 280
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    move-object/from16 v21, v3

    .line 285
    .line 286
    check-cast v21, Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    .line 288
    if-eqz v21, :cond_1

    .line 289
    .line 290
    const v1, 0x7f0a0201

    .line 291
    .line 292
    .line 293
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    move-object/from16 v22, v3

    .line 298
    .line 299
    check-cast v22, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 300
    .line 301
    if-eqz v22, :cond_1

    .line 302
    .line 303
    const v1, 0x7f0a0202

    .line 304
    .line 305
    .line 306
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 311
    .line 312
    if-eqz v3, :cond_1

    .line 313
    .line 314
    const v1, 0x7f0a0203

    .line 315
    .line 316
    .line 317
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    move-object/from16 v23, v3

    .line 322
    .line 323
    check-cast v23, Landroidx/appcompat/widget/AppCompatTextView;

    .line 324
    .line 325
    if-eqz v23, :cond_1

    .line 326
    .line 327
    const v1, 0x7f0a0204

    .line 328
    .line 329
    .line 330
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    move-object/from16 v24, v3

    .line 335
    .line 336
    check-cast v24, Landroidx/appcompat/widget/AppCompatTextView;

    .line 337
    .line 338
    if-eqz v24, :cond_1

    .line 339
    .line 340
    const v1, 0x7f0a0205

    .line 341
    .line 342
    .line 343
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    move-object/from16 v25, v3

    .line 348
    .line 349
    check-cast v25, Landroid/widget/RelativeLayout;

    .line 350
    .line 351
    if-eqz v25, :cond_1

    .line 352
    .line 353
    const v1, 0x7f0a0217

    .line 354
    .line 355
    .line 356
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    move-object/from16 v26, v3

    .line 361
    .line 362
    check-cast v26, Landroid/widget/RelativeLayout;

    .line 363
    .line 364
    if-eqz v26, :cond_1

    .line 365
    .line 366
    const v1, 0x7f0a0256

    .line 367
    .line 368
    .line 369
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    move-object/from16 v27, v3

    .line 374
    .line 375
    check-cast v27, Landroid/widget/LinearLayout;

    .line 376
    .line 377
    if-eqz v27, :cond_1

    .line 378
    .line 379
    const v1, 0x7f0a0263

    .line 380
    .line 381
    .line 382
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    move-object/from16 v28, v3

    .line 387
    .line 388
    check-cast v28, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 389
    .line 390
    if-eqz v28, :cond_1

    .line 391
    .line 392
    const v1, 0x7f0a02af

    .line 393
    .line 394
    .line 395
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    move-object/from16 v29, v3

    .line 400
    .line 401
    check-cast v29, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 402
    .line 403
    if-eqz v29, :cond_1

    .line 404
    .line 405
    const v1, 0x7f0a02f2

    .line 406
    .line 407
    .line 408
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    move-object/from16 v30, v3

    .line 413
    .line 414
    check-cast v30, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 415
    .line 416
    if-eqz v30, :cond_1

    .line 417
    .line 418
    const v1, 0x7f0a02f3

    .line 419
    .line 420
    .line 421
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    move-object/from16 v31, v3

    .line 426
    .line 427
    check-cast v31, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 428
    .line 429
    if-eqz v31, :cond_1

    .line 430
    .line 431
    const v1, 0x7f0a02f4

    .line 432
    .line 433
    .line 434
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    move-object/from16 v32, v3

    .line 439
    .line 440
    check-cast v32, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 441
    .line 442
    if-eqz v32, :cond_1

    .line 443
    .line 444
    const v1, 0x7f0a02f5

    .line 445
    .line 446
    .line 447
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    move-object/from16 v33, v3

    .line 452
    .line 453
    check-cast v33, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 454
    .line 455
    if-eqz v33, :cond_1

    .line 456
    .line 457
    const v1, 0x7f0a02f7

    .line 458
    .line 459
    .line 460
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    move-object/from16 v34, v3

    .line 465
    .line 466
    check-cast v34, Landroid/widget/RelativeLayout;

    .line 467
    .line 468
    if-eqz v34, :cond_1

    .line 469
    .line 470
    const v1, 0x7f0a02f8

    .line 471
    .line 472
    .line 473
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 474
    .line 475
    .line 476
    move-result-object v35

    .line 477
    if-eqz v35, :cond_1

    .line 478
    .line 479
    const v1, 0x7f0a02f9

    .line 480
    .line 481
    .line 482
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    move-object/from16 v36, v3

    .line 487
    .line 488
    check-cast v36, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 489
    .line 490
    if-eqz v36, :cond_1

    .line 491
    .line 492
    const v1, 0x7f0a02fa

    .line 493
    .line 494
    .line 495
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    move-object/from16 v37, v3

    .line 500
    .line 501
    check-cast v37, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 502
    .line 503
    if-eqz v37, :cond_1

    .line 504
    .line 505
    const v1, 0x7f0a02fb

    .line 506
    .line 507
    .line 508
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    move-object/from16 v38, v3

    .line 513
    .line 514
    check-cast v38, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 515
    .line 516
    if-eqz v38, :cond_1

    .line 517
    .line 518
    const v1, 0x7f0a02fc

    .line 519
    .line 520
    .line 521
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    move-object/from16 v39, v3

    .line 526
    .line 527
    check-cast v39, Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 528
    .line 529
    if-eqz v39, :cond_1

    .line 530
    .line 531
    const v1, 0x7f0a02fd

    .line 532
    .line 533
    .line 534
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    move-object/from16 v40, v3

    .line 539
    .line 540
    check-cast v40, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 541
    .line 542
    if-eqz v40, :cond_1

    .line 543
    .line 544
    const v1, 0x7f0a02fe

    .line 545
    .line 546
    .line 547
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    move-object/from16 v41, v3

    .line 552
    .line 553
    check-cast v41, Landroid/widget/RelativeLayout;

    .line 554
    .line 555
    if-eqz v41, :cond_1

    .line 556
    .line 557
    const v1, 0x7f0a0303

    .line 558
    .line 559
    .line 560
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 561
    .line 562
    .line 563
    move-result-object v42

    .line 564
    if-eqz v42, :cond_1

    .line 565
    .line 566
    const v1, 0x7f0a0304

    .line 567
    .line 568
    .line 569
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    move-object/from16 v43, v3

    .line 574
    .line 575
    check-cast v43, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 576
    .line 577
    if-eqz v43, :cond_1

    .line 578
    .line 579
    const v1, 0x7f0a0306

    .line 580
    .line 581
    .line 582
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    move-object/from16 v44, v3

    .line 587
    .line 588
    check-cast v44, Landroid/widget/RelativeLayout;

    .line 589
    .line 590
    if-eqz v44, :cond_1

    .line 591
    .line 592
    const v1, 0x7f0a0305

    .line 593
    .line 594
    .line 595
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 596
    .line 597
    .line 598
    move-result-object v45

    .line 599
    if-eqz v45, :cond_1

    .line 600
    .line 601
    const v1, 0x7f0a031c

    .line 602
    .line 603
    .line 604
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    move-object/from16 v46, v3

    .line 609
    .line 610
    check-cast v46, Landroid/widget/LinearLayout;

    .line 611
    .line 612
    if-eqz v46, :cond_1

    .line 613
    .line 614
    const v1, 0x7f0a031e

    .line 615
    .line 616
    .line 617
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    move-object/from16 v47, v3

    .line 622
    .line 623
    check-cast v47, Landroid/widget/ProgressBar;

    .line 624
    .line 625
    if-eqz v47, :cond_1

    .line 626
    .line 627
    const v1, 0x7f0a0322

    .line 628
    .line 629
    .line 630
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    move-object/from16 v48, v3

    .line 635
    .line 636
    check-cast v48, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 637
    .line 638
    if-eqz v48, :cond_1

    .line 639
    .line 640
    const v1, 0x7f0a0325

    .line 641
    .line 642
    .line 643
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    move-object/from16 v49, v3

    .line 648
    .line 649
    check-cast v49, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 650
    .line 651
    if-eqz v49, :cond_1

    .line 652
    .line 653
    const v1, 0x7f0a0331

    .line 654
    .line 655
    .line 656
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    move-object/from16 v50, v3

    .line 661
    .line 662
    check-cast v50, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 663
    .line 664
    if-eqz v50, :cond_1

    .line 665
    .line 666
    const v1, 0x7f0a0334

    .line 667
    .line 668
    .line 669
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    move-object/from16 v51, v3

    .line 674
    .line 675
    check-cast v51, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 676
    .line 677
    if-eqz v51, :cond_1

    .line 678
    .line 679
    const v1, 0x7f0a0344

    .line 680
    .line 681
    .line 682
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    move-object/from16 v52, v3

    .line 687
    .line 688
    check-cast v52, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 689
    .line 690
    if-eqz v52, :cond_1

    .line 691
    .line 692
    const v1, 0x7f0a0357

    .line 693
    .line 694
    .line 695
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    move-object/from16 v53, v3

    .line 700
    .line 701
    check-cast v53, Landroid/widget/LinearLayout;

    .line 702
    .line 703
    if-eqz v53, :cond_1

    .line 704
    .line 705
    const v1, 0x7f0a035c

    .line 706
    .line 707
    .line 708
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    move-object/from16 v54, v3

    .line 713
    .line 714
    check-cast v54, Landroid/widget/LinearLayout;

    .line 715
    .line 716
    if-eqz v54, :cond_1

    .line 717
    .line 718
    const v1, 0x7f0a035e

    .line 719
    .line 720
    .line 721
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    move-object/from16 v55, v3

    .line 726
    .line 727
    check-cast v55, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 728
    .line 729
    if-eqz v55, :cond_1

    .line 730
    .line 731
    const v1, 0x7f0a036e

    .line 732
    .line 733
    .line 734
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    move-object/from16 v56, v3

    .line 739
    .line 740
    check-cast v56, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 741
    .line 742
    if-eqz v56, :cond_1

    .line 743
    .line 744
    const v1, 0x7f0a0375

    .line 745
    .line 746
    .line 747
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    move-object/from16 v57, v3

    .line 752
    .line 753
    check-cast v57, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 754
    .line 755
    if-eqz v57, :cond_1

    .line 756
    .line 757
    const v1, 0x7f0a03b0

    .line 758
    .line 759
    .line 760
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    move-object/from16 v58, v3

    .line 765
    .line 766
    check-cast v58, Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 767
    .line 768
    if-eqz v58, :cond_1

    .line 769
    .line 770
    const v1, 0x7f0a03b8

    .line 771
    .line 772
    .line 773
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 774
    .line 775
    .line 776
    move-result-object v59

    .line 777
    if-eqz v59, :cond_1

    .line 778
    .line 779
    const v1, 0x7f0a03b9

    .line 780
    .line 781
    .line 782
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    move-object/from16 v60, v3

    .line 787
    .line 788
    check-cast v60, Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 789
    .line 790
    if-eqz v60, :cond_1

    .line 791
    .line 792
    const v1, 0x7f0a03bc

    .line 793
    .line 794
    .line 795
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    move-object/from16 v61, v3

    .line 800
    .line 801
    check-cast v61, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 802
    .line 803
    if-eqz v61, :cond_1

    .line 804
    .line 805
    const v1, 0x7f0a03f9

    .line 806
    .line 807
    .line 808
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    move-object/from16 v62, v3

    .line 813
    .line 814
    check-cast v62, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 815
    .line 816
    if-eqz v62, :cond_1

    .line 817
    .line 818
    const v1, 0x7f0a0404

    .line 819
    .line 820
    .line 821
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    move-object/from16 v63, v3

    .line 826
    .line 827
    check-cast v63, Landroid/widget/LinearLayout;

    .line 828
    .line 829
    if-eqz v63, :cond_1

    .line 830
    .line 831
    const v1, 0x7f0a0432

    .line 832
    .line 833
    .line 834
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    move-object/from16 v64, v3

    .line 839
    .line 840
    check-cast v64, Landroidx/appcompat/widget/AppCompatImageView;

    .line 841
    .line 842
    if-eqz v64, :cond_1

    .line 843
    .line 844
    const v1, 0x7f0a0433

    .line 845
    .line 846
    .line 847
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    move-object/from16 v65, v3

    .line 852
    .line 853
    check-cast v65, Landroid/widget/ProgressBar;

    .line 854
    .line 855
    if-eqz v65, :cond_1

    .line 856
    .line 857
    const v1, 0x7f0a0434

    .line 858
    .line 859
    .line 860
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    move-object/from16 v66, v3

    .line 865
    .line 866
    check-cast v66, Landroid/widget/RelativeLayout;

    .line 867
    .line 868
    if-eqz v66, :cond_1

    .line 869
    .line 870
    new-instance v4, Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 871
    .line 872
    move-object v5, v0

    .line 873
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 874
    .line 875
    invoke-direct/range {v4 .. v66}, Lorg/schabi/newpipe/databinding/PlayerBinding;-><init>(Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/FocusAwareSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Lcom/google/android/exoplayer2/ui/SubtitleView;Landroid/view/View;Lorg/schabi/newpipe/views/ExpandableSurfaceView;Landroidx/appcompat/widget/AppCompatImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;)V

    .line 876
    .line 877
    .line 878
    move-object v2, v4

    .line 879
    goto :goto_0

    .line 880
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    const-string v1, "Missing required view with ID: "

    .line 889
    .line 890
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    :goto_0
    return-object v2

    .line 898
    nop

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
