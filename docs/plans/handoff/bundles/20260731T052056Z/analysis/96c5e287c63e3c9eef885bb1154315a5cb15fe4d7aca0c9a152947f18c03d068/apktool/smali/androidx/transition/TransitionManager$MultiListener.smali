.class public final Landroidx/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public mSceneRoot:Landroid/view/ViewGroup;

.field public mTransition:Landroidx/transition/Transition;


# virtual methods
.method public final onPreDraw()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    .line 16
    .line 17
    sget-object v3, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v6, 0x1

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    return v6

    .line 27
    :cond_0
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/util/ArrayList;

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v7, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-lez v7, :cond_1

    .line 54
    .line 55
    new-instance v7, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance v4, Landroidx/transition/TransitionManager$MultiListener$1;

    .line 64
    .line 65
    invoke-direct {v4, v0, v3}, Landroidx/transition/TransitionManager$MultiListener$1;-><init>(Landroidx/transition/TransitionManager$MultiListener;Landroidx/collection/ArrayMap;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {v1, v2, v0}, Landroidx/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 73
    .line 74
    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Landroidx/transition/Transition;

    .line 92
    .line 93
    invoke-virtual {v4, v2}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v3, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 103
    .line 104
    new-instance v3, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v3, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-object v3, v1, Landroidx/transition/Transition;->mStartValues:Lcoil3/ImageLoader$Builder;

    .line 112
    .line 113
    iget-object v4, v1, Landroidx/transition/Transition;->mEndValues:Lcoil3/ImageLoader$Builder;

    .line 114
    .line 115
    new-instance v7, Landroidx/collection/ArrayMap;

    .line 116
    .line 117
    iget-object v8, v3, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v8, Landroidx/collection/ArrayMap;

    .line 120
    .line 121
    invoke-direct {v7, v8}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 122
    .line 123
    .line 124
    new-instance v8, Landroidx/collection/ArrayMap;

    .line 125
    .line 126
    iget-object v9, v4, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v9, Landroidx/collection/ArrayMap;

    .line 129
    .line 130
    invoke-direct {v8, v9}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 131
    .line 132
    .line 133
    move v9, v0

    .line 134
    :goto_2
    iget-object v10, v1, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 135
    .line 136
    array-length v11, v10

    .line 137
    if-ge v9, v11, :cond_10

    .line 138
    .line 139
    aget v10, v10, v9

    .line 140
    .line 141
    if-eq v10, v6, :cond_d

    .line 142
    .line 143
    const/4 v11, 0x2

    .line 144
    if-eq v10, v11, :cond_b

    .line 145
    .line 146
    const/4 v11, 0x3

    .line 147
    if-eq v10, v11, :cond_9

    .line 148
    .line 149
    const/4 v11, 0x4

    .line 150
    if-eq v10, v11, :cond_5

    .line 151
    .line 152
    :cond_4
    move/from16 p0, v6

    .line 153
    .line 154
    goto/16 :goto_8

    .line 155
    .line 156
    :cond_5
    iget-object v10, v3, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v10, Landroidx/collection/LongSparseArray;

    .line 159
    .line 160
    iget-object v11, v4, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v11, Landroidx/collection/LongSparseArray;

    .line 163
    .line 164
    invoke-virtual {v10}, Landroidx/collection/LongSparseArray;->size()I

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    move v13, v0

    .line 169
    :goto_3
    if-ge v13, v12, :cond_4

    .line 170
    .line 171
    invoke-virtual {v10, v13}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v14

    .line 175
    check-cast v14, Landroid/view/View;

    .line 176
    .line 177
    if-eqz v14, :cond_7

    .line 178
    .line 179
    invoke-virtual {v1, v14}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    if-eqz v15, :cond_7

    .line 184
    .line 185
    move v15, v6

    .line 186
    invoke-virtual {v10, v13}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v5

    .line 190
    invoke-virtual {v11, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    check-cast v5, Landroid/view/View;

    .line 195
    .line 196
    if-eqz v5, :cond_6

    .line 197
    .line 198
    invoke-virtual {v1, v5}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_6

    .line 203
    .line 204
    invoke-virtual {v7, v14}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    check-cast v6, Landroidx/transition/TransitionValues;

    .line 209
    .line 210
    invoke-virtual {v8, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v16

    .line 214
    move/from16 p0, v15

    .line 215
    .line 216
    move-object/from16 v15, v16

    .line 217
    .line 218
    check-cast v15, Landroidx/transition/TransitionValues;

    .line 219
    .line 220
    if-eqz v6, :cond_8

    .line 221
    .line 222
    if-eqz v15, :cond_8

    .line 223
    .line 224
    iget-object v0, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    iget-object v0, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v14}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8, v5}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_6
    move/from16 p0, v15

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_7
    move/from16 p0, v6

    .line 245
    .line 246
    :cond_8
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 247
    .line 248
    const/4 v0, 0x0

    .line 249
    move/from16 v6, p0

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_9
    move/from16 p0, v6

    .line 253
    .line 254
    iget-object v0, v3, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v0, Landroid/util/SparseArray;

    .line 257
    .line 258
    iget-object v5, v4, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v5, Landroid/util/SparseArray;

    .line 261
    .line 262
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    const/4 v10, 0x0

    .line 267
    :goto_5
    if-ge v10, v6, :cond_f

    .line 268
    .line 269
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    check-cast v11, Landroid/view/View;

    .line 274
    .line 275
    if-eqz v11, :cond_a

    .line 276
    .line 277
    invoke-virtual {v1, v11}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 278
    .line 279
    .line 280
    move-result v12

    .line 281
    if-eqz v12, :cond_a

    .line 282
    .line 283
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 284
    .line 285
    .line 286
    move-result v12

    .line 287
    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    check-cast v12, Landroid/view/View;

    .line 292
    .line 293
    if-eqz v12, :cond_a

    .line 294
    .line 295
    invoke-virtual {v1, v12}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    if-eqz v13, :cond_a

    .line 300
    .line 301
    invoke-virtual {v7, v11}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    check-cast v13, Landroidx/transition/TransitionValues;

    .line 306
    .line 307
    invoke-virtual {v8, v12}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v14

    .line 311
    check-cast v14, Landroidx/transition/TransitionValues;

    .line 312
    .line 313
    if-eqz v13, :cond_a

    .line 314
    .line 315
    if-eqz v14, :cond_a

    .line 316
    .line 317
    iget-object v15, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    iget-object v13, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v11}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v8, v12}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_b
    move/from16 p0, v6

    .line 337
    .line 338
    iget-object v0, v3, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v0, Landroidx/collection/ArrayMap;

    .line 341
    .line 342
    iget-object v5, v4, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v5, Landroidx/collection/ArrayMap;

    .line 345
    .line 346
    iget v6, v0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 347
    .line 348
    const/4 v10, 0x0

    .line 349
    :goto_6
    if-ge v10, v6, :cond_f

    .line 350
    .line 351
    invoke-virtual {v0, v10}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    check-cast v11, Landroid/view/View;

    .line 356
    .line 357
    if-eqz v11, :cond_c

    .line 358
    .line 359
    invoke-virtual {v1, v11}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    if-eqz v12, :cond_c

    .line 364
    .line 365
    invoke-virtual {v0, v10}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v12

    .line 369
    check-cast v12, Ljava/lang/String;

    .line 370
    .line 371
    invoke-virtual {v5, v12}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    check-cast v12, Landroid/view/View;

    .line 376
    .line 377
    if-eqz v12, :cond_c

    .line 378
    .line 379
    invoke-virtual {v1, v12}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 380
    .line 381
    .line 382
    move-result v13

    .line 383
    if-eqz v13, :cond_c

    .line 384
    .line 385
    invoke-virtual {v7, v11}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v13

    .line 389
    check-cast v13, Landroidx/transition/TransitionValues;

    .line 390
    .line 391
    invoke-virtual {v8, v12}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v14

    .line 395
    check-cast v14, Landroidx/transition/TransitionValues;

    .line 396
    .line 397
    if-eqz v13, :cond_c

    .line 398
    .line 399
    if-eqz v14, :cond_c

    .line 400
    .line 401
    iget-object v15, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    iget-object v13, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    invoke-virtual {v7, v11}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v8, v12}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 418
    .line 419
    goto :goto_6

    .line 420
    :cond_d
    move/from16 p0, v6

    .line 421
    .line 422
    iget v0, v7, Landroidx/collection/SimpleArrayMap;->size:I

    .line 423
    .line 424
    add-int/lit8 v0, v0, -0x1

    .line 425
    .line 426
    :goto_7
    if-ltz v0, :cond_f

    .line 427
    .line 428
    invoke-virtual {v7, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    check-cast v5, Landroid/view/View;

    .line 433
    .line 434
    if-eqz v5, :cond_e

    .line 435
    .line 436
    invoke-virtual {v1, v5}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    if-eqz v6, :cond_e

    .line 441
    .line 442
    invoke-virtual {v8, v5}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    check-cast v5, Landroidx/transition/TransitionValues;

    .line 447
    .line 448
    if-eqz v5, :cond_e

    .line 449
    .line 450
    iget-object v6, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 451
    .line 452
    invoke-virtual {v1, v6}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    if-eqz v6, :cond_e

    .line 457
    .line 458
    invoke-virtual {v7, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    check-cast v6, Landroidx/transition/TransitionValues;

    .line 463
    .line 464
    iget-object v10, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 465
    .line 466
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    iget-object v6, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    :cond_e
    add-int/lit8 v0, v0, -0x1

    .line 475
    .line 476
    goto :goto_7

    .line 477
    :cond_f
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 478
    .line 479
    const/4 v0, 0x0

    .line 480
    move/from16 v6, p0

    .line 481
    .line 482
    goto/16 :goto_2

    .line 483
    .line 484
    :cond_10
    move/from16 p0, v6

    .line 485
    .line 486
    const/4 v0, 0x0

    .line 487
    :goto_9
    iget v3, v7, Landroidx/collection/SimpleArrayMap;->size:I

    .line 488
    .line 489
    if-ge v0, v3, :cond_12

    .line 490
    .line 491
    invoke-virtual {v7, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    check-cast v3, Landroidx/transition/TransitionValues;

    .line 496
    .line 497
    iget-object v4, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 498
    .line 499
    invoke-virtual {v1, v4}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    if-eqz v4, :cond_11

    .line 504
    .line 505
    iget-object v4, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    iget-object v3, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 511
    .line 512
    const/4 v4, 0x0

    .line 513
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 517
    .line 518
    goto :goto_9

    .line 519
    :cond_12
    const/4 v0, 0x0

    .line 520
    :goto_a
    iget v3, v8, Landroidx/collection/SimpleArrayMap;->size:I

    .line 521
    .line 522
    if-ge v0, v3, :cond_14

    .line 523
    .line 524
    invoke-virtual {v8, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    check-cast v3, Landroidx/transition/TransitionValues;

    .line 529
    .line 530
    iget-object v4, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 531
    .line 532
    invoke-virtual {v1, v4}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    if-eqz v4, :cond_13

    .line 537
    .line 538
    iget-object v4, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 539
    .line 540
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    iget-object v3, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 544
    .line 545
    const/4 v4, 0x0

    .line 546
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    goto :goto_b

    .line 550
    :cond_13
    const/4 v4, 0x0

    .line 551
    :goto_b
    add-int/lit8 v0, v0, 0x1

    .line 552
    .line 553
    goto :goto_a

    .line 554
    :cond_14
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    iget v3, v0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 559
    .line 560
    invoke-virtual {v2}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    new-instance v5, Ljava/util/ArrayList;

    .line 565
    .line 566
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .line 568
    .line 569
    add-int/lit8 v3, v3, -0x1

    .line 570
    .line 571
    :goto_c
    if-ltz v3, :cond_1a

    .line 572
    .line 573
    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    check-cast v6, Landroid/animation/Animator;

    .line 578
    .line 579
    if-eqz v6, :cond_19

    .line 580
    .line 581
    invoke-virtual {v0, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v7

    .line 585
    check-cast v7, Landroidx/transition/Transition$AnimationInfo;

    .line 586
    .line 587
    if-eqz v7, :cond_19

    .line 588
    .line 589
    iget-object v8, v7, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    .line 590
    .line 591
    iget-object v9, v7, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 592
    .line 593
    if-eqz v9, :cond_19

    .line 594
    .line 595
    iget-object v10, v7, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroid/view/WindowId;

    .line 596
    .line 597
    invoke-virtual {v4, v10}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v10

    .line 601
    if-eqz v10, :cond_19

    .line 602
    .line 603
    iget-object v7, v7, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 604
    .line 605
    move/from16 v15, p0

    .line 606
    .line 607
    invoke-virtual {v1, v9, v15}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 608
    .line 609
    .line 610
    move-result-object v10

    .line 611
    invoke-virtual {v1, v9, v15}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 612
    .line 613
    .line 614
    move-result-object v11

    .line 615
    if-nez v10, :cond_15

    .line 616
    .line 617
    if-nez v11, :cond_15

    .line 618
    .line 619
    iget-object v11, v1, Landroidx/transition/Transition;->mEndValues:Lcoil3/ImageLoader$Builder;

    .line 620
    .line 621
    iget-object v11, v11, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 622
    .line 623
    check-cast v11, Landroidx/collection/ArrayMap;

    .line 624
    .line 625
    invoke-virtual {v11, v9}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v9

    .line 629
    move-object v11, v9

    .line 630
    check-cast v11, Landroidx/transition/TransitionValues;

    .line 631
    .line 632
    :cond_15
    if-nez v10, :cond_16

    .line 633
    .line 634
    if-eqz v11, :cond_19

    .line 635
    .line 636
    :cond_16
    invoke-virtual {v8, v7, v11}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    .line 637
    .line 638
    .line 639
    move-result v7

    .line 640
    if-eqz v7, :cond_19

    .line 641
    .line 642
    invoke-virtual {v8}, Landroidx/transition/Transition;->getRootTransition()Landroidx/transition/Transition;

    .line 643
    .line 644
    .line 645
    move-result-object v7

    .line 646
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v6}, Landroid/animation/Animator;->isRunning()Z

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    if-nez v7, :cond_18

    .line 654
    .line 655
    invoke-virtual {v6}, Landroid/animation/Animator;->isStarted()Z

    .line 656
    .line 657
    .line 658
    move-result v7

    .line 659
    if-eqz v7, :cond_17

    .line 660
    .line 661
    goto :goto_d

    .line 662
    :cond_17
    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    goto :goto_e

    .line 666
    :cond_18
    :goto_d
    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 667
    .line 668
    .line 669
    :cond_19
    :goto_e
    add-int/lit8 v3, v3, -0x1

    .line 670
    .line 671
    const/16 p0, 0x1

    .line 672
    .line 673
    goto :goto_c

    .line 674
    :cond_1a
    const/4 v0, 0x0

    .line 675
    :goto_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 676
    .line 677
    .line 678
    move-result v3

    .line 679
    if-ge v0, v3, :cond_1c

    .line 680
    .line 681
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    check-cast v3, Landroidx/transition/Transition;

    .line 686
    .line 687
    sget-object v4, Landroidx/transition/Transition$TransitionNotification;->ON_CANCEL:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 688
    .line 689
    const/4 v6, 0x0

    .line 690
    invoke-virtual {v3, v3, v4, v6}, Landroidx/transition/Transition;->notifyFromTransition(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 691
    .line 692
    .line 693
    iget-boolean v4, v3, Landroidx/transition/Transition;->mEnded:Z

    .line 694
    .line 695
    if-nez v4, :cond_1b

    .line 696
    .line 697
    const/4 v15, 0x1

    .line 698
    iput-boolean v15, v3, Landroidx/transition/Transition;->mEnded:Z

    .line 699
    .line 700
    sget-object v4, Landroidx/transition/Transition$TransitionNotification;->ON_END:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 701
    .line 702
    invoke-virtual {v3, v3, v4, v6}, Landroidx/transition/Transition;->notifyFromTransition(Landroidx/transition/Transition;Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 703
    .line 704
    .line 705
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 706
    .line 707
    goto :goto_f

    .line 708
    :cond_1c
    iget-object v0, v1, Landroidx/transition/Transition;->mStartValues:Lcoil3/ImageLoader$Builder;

    .line 709
    .line 710
    iget-object v3, v1, Landroidx/transition/Transition;->mEndValues:Lcoil3/ImageLoader$Builder;

    .line 711
    .line 712
    iget-object v4, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 713
    .line 714
    iget-object v5, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 715
    .line 716
    move-object/from16 v17, v2

    .line 717
    .line 718
    move-object v2, v0

    .line 719
    move-object v0, v1

    .line 720
    move-object/from16 v1, v17

    .line 721
    .line 722
    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Lcoil3/ImageLoader$Builder;Lcoil3/ImageLoader$Builder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0}, Landroidx/transition/Transition;->runAnimators()V

    .line 726
    .line 727
    .line 728
    const/4 v15, 0x1

    .line 729
    return v15
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-lez v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/transition/Transition;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->clearValues(Z)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
