.class public abstract Lorg/schabi/newpipe/util/ListHelper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

.field public static final AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

.field public static final AUDIO_TRACK_TYPE_RANKING:Ljava/util/List;

.field public static final AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE:Ljava/util/List;

.field public static final HIGH_RESOLUTION_LIST:Ljava/util/Set;

.field public static final SUPPORTED_ITAG_IDS:Ljava/util/List;

.field public static final VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$Ym_K-TWtQOXZPWZ4u_KnchNzCxw(Ljava/util/Comparator;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p0}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/List;

    .line 18
    .line 19
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 66

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v3, v1, v4

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    sget-object v5, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 16
    .line 17
    aput-object v5, v1, v3

    .line 18
    .line 19
    new-instance v5, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    move v6, v2

    .line 25
    :goto_0
    if-ge v6, v0, :cond_0

    .line 26
    .line 27
    aget-object v7, v1, v6

    .line 28
    .line 29
    invoke-static {v7, v5, v7, v6, v4}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sput-object v1, Lorg/schabi/newpipe/util/ListHelper;->VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 39
    .line 40
    new-array v1, v0, [Ljava/lang/Object;

    .line 41
    .line 42
    sget-object v5, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 43
    .line 44
    aput-object v5, v1, v2

    .line 45
    .line 46
    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 47
    .line 48
    aput-object v6, v1, v4

    .line 49
    .line 50
    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 51
    .line 52
    aput-object v7, v1, v3

    .line 53
    .line 54
    new-instance v8, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    move v9, v2

    .line 60
    :goto_1
    if-ge v9, v0, :cond_1

    .line 61
    .line 62
    aget-object v10, v1, v9

    .line 63
    .line 64
    invoke-static {v10, v8, v10, v9, v4}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-static {v8}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sput-object v1, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 74
    .line 75
    new-array v1, v0, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v5, v1, v2

    .line 78
    .line 79
    aput-object v7, v1, v4

    .line 80
    .line 81
    aput-object v6, v1, v3

    .line 82
    .line 83
    new-instance v5, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    move v6, v2

    .line 89
    :goto_2
    if-ge v6, v0, :cond_2

    .line 90
    .line 91
    aget-object v7, v1, v6

    .line 92
    .line 93
    invoke-static {v7, v5, v7, v6, v4}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sput-object v1, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

    .line 103
    .line 104
    new-array v1, v3, [Ljava/lang/Object;

    .line 105
    .line 106
    const-string v5, "1440p"

    .line 107
    .line 108
    aput-object v5, v1, v2

    .line 109
    .line 110
    const-string v5, "2160p"

    .line 111
    .line 112
    aput-object v5, v1, v4

    .line 113
    .line 114
    new-instance v5, Ljava/util/HashSet;

    .line 115
    .line 116
    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 117
    .line 118
    .line 119
    move v6, v2

    .line 120
    :goto_3
    if-ge v6, v3, :cond_4

    .line 121
    .line 122
    aget-object v7, v1, v6

    .line 123
    .line 124
    invoke-static {v7}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_3

    .line 132
    .line 133
    add-int/lit8 v6, v6, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_3
    const-string v0, "duplicate element: "

    .line 137
    .line 138
    invoke-static {v7, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_4
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    sput-object v1, Lorg/schabi/newpipe/util/ListHelper;->HIGH_RESOLUTION_LIST:Ljava/util/Set;

    .line 151
    .line 152
    const/4 v1, 0x4

    .line 153
    new-array v5, v1, [Ljava/lang/Object;

    .line 154
    .line 155
    sget-object v6, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 156
    .line 157
    aput-object v6, v5, v2

    .line 158
    .line 159
    sget-object v7, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->SECONDARY:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 160
    .line 161
    aput-object v7, v5, v4

    .line 162
    .line 163
    sget-object v8, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DUBBED:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 164
    .line 165
    aput-object v8, v5, v3

    .line 166
    .line 167
    sget-object v9, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->ORIGINAL:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 168
    .line 169
    aput-object v9, v5, v0

    .line 170
    .line 171
    new-instance v10, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .line 175
    .line 176
    move v11, v2

    .line 177
    :goto_4
    if-ge v11, v1, :cond_5

    .line 178
    .line 179
    aget-object v12, v5, v11

    .line 180
    .line 181
    invoke-static {v12, v10, v12, v11, v4}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    goto :goto_4

    .line 186
    :cond_5
    invoke-static {v10}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    sput-object v5, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING:Ljava/util/List;

    .line 191
    .line 192
    new-array v5, v1, [Ljava/lang/Object;

    .line 193
    .line 194
    aput-object v7, v5, v2

    .line 195
    .line 196
    aput-object v8, v5, v4

    .line 197
    .line 198
    aput-object v9, v5, v3

    .line 199
    .line 200
    aput-object v6, v5, v0

    .line 201
    .line 202
    new-instance v6, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .line 206
    .line 207
    move v7, v2

    .line 208
    :goto_5
    if-ge v7, v1, :cond_6

    .line 209
    .line 210
    aget-object v8, v5, v7

    .line 211
    .line 212
    invoke-static {v8, v6, v8, v7, v4}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    goto :goto_5

    .line 217
    :cond_6
    invoke-static {v6}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    sput-object v5, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE:Ljava/util/List;

    .line 222
    .line 223
    const/16 v5, 0x11

    .line 224
    .line 225
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    const/16 v7, 0x24

    .line 230
    .line 231
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    const/16 v9, 0x12

    .line 236
    .line 237
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    const/16 v11, 0x22

    .line 242
    .line 243
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    const/16 v13, 0x23

    .line 248
    .line 249
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    const/16 v15, 0x3b

    .line 254
    .line 255
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    const/16 v16, 0x4e

    .line 260
    .line 261
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v16

    .line 265
    const/16 v17, 0x16

    .line 266
    .line 267
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v18

    .line 271
    const/16 v19, 0x25

    .line 272
    .line 273
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v20

    .line 277
    const/16 v21, 0x26

    .line 278
    .line 279
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v22

    .line 283
    const/16 v23, 0x2b

    .line 284
    .line 285
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v24

    .line 289
    const/16 v25, 0x2c

    .line 290
    .line 291
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v26

    .line 295
    const/16 v27, 0x2d

    .line 296
    .line 297
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v28

    .line 301
    const/16 v29, 0x2e

    .line 302
    .line 303
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v30

    .line 307
    const/16 v31, 0xab

    .line 308
    .line 309
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v31

    .line 313
    const/16 v32, 0xac

    .line 314
    .line 315
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v32

    .line 319
    const/16 v33, 0x8b

    .line 320
    .line 321
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v33

    .line 325
    const/16 v34, 0x8c

    .line 326
    .line 327
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v34

    .line 331
    const/16 v35, 0x8d

    .line 332
    .line 333
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    .line 335
    .line 336
    move-result-object v35

    .line 337
    const/16 v36, 0xf9

    .line 338
    .line 339
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v36

    .line 343
    const/16 v37, 0xfa

    .line 344
    .line 345
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v37

    .line 349
    const/16 v38, 0xfb

    .line 350
    .line 351
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v38

    .line 355
    const/16 v39, 0xa0

    .line 356
    .line 357
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v39

    .line 361
    const/16 v40, 0x85

    .line 362
    .line 363
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v40

    .line 367
    const/16 v41, 0x86

    .line 368
    .line 369
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v41

    .line 373
    const/16 v42, 0x87

    .line 374
    .line 375
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v42

    .line 379
    const/16 v43, 0xd4

    .line 380
    .line 381
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v43

    .line 385
    const/16 v44, 0x88

    .line 386
    .line 387
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v44

    .line 391
    const/16 v45, 0x12a

    .line 392
    .line 393
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v45

    .line 397
    const/16 v46, 0x89

    .line 398
    .line 399
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v46

    .line 403
    const/16 v47, 0x12b

    .line 404
    .line 405
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object v47

    .line 409
    const/16 v48, 0x10a

    .line 410
    .line 411
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v48

    .line 415
    const/16 v49, 0x116

    .line 416
    .line 417
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v49

    .line 421
    const/16 v50, 0xf2

    .line 422
    .line 423
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v50

    .line 427
    const/16 v51, 0xf3

    .line 428
    .line 429
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v51

    .line 433
    const/16 v52, 0xf4

    .line 434
    .line 435
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v52

    .line 439
    const/16 v53, 0xf5

    .line 440
    .line 441
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object v53

    .line 445
    const/16 v54, 0xf6

    .line 446
    .line 447
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v54

    .line 451
    const/16 v55, 0xf7

    .line 452
    .line 453
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v55

    .line 457
    const/16 v56, 0xf8

    .line 458
    .line 459
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v56

    .line 463
    const/16 v57, 0x10f

    .line 464
    .line 465
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v57

    .line 469
    const/16 v58, 0x110

    .line 470
    .line 471
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v58

    .line 475
    const/16 v59, 0x12e

    .line 476
    .line 477
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v59

    .line 481
    const/16 v60, 0x12f

    .line 482
    .line 483
    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v60

    .line 487
    const/16 v61, 0x134

    .line 488
    .line 489
    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 490
    .line 491
    .line 492
    move-result-object v61

    .line 493
    const/16 v62, 0x139

    .line 494
    .line 495
    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v62

    .line 499
    const/16 v63, 0x13b

    .line 500
    .line 501
    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 502
    .line 503
    .line 504
    move-result-object v63

    .line 505
    move/from16 v64, v0

    .line 506
    .line 507
    const/16 v0, 0x2f

    .line 508
    .line 509
    move/from16 v65, v1

    .line 510
    .line 511
    new-array v1, v0, [Ljava/lang/Integer;

    .line 512
    .line 513
    aput-object v6, v1, v2

    .line 514
    .line 515
    aput-object v8, v1, v4

    .line 516
    .line 517
    aput-object v10, v1, v3

    .line 518
    .line 519
    aput-object v12, v1, v64

    .line 520
    .line 521
    aput-object v14, v1, v65

    .line 522
    .line 523
    const/4 v3, 0x5

    .line 524
    aput-object v15, v1, v3

    .line 525
    .line 526
    const/4 v3, 0x6

    .line 527
    aput-object v16, v1, v3

    .line 528
    .line 529
    const/4 v3, 0x7

    .line 530
    aput-object v18, v1, v3

    .line 531
    .line 532
    const/16 v3, 0x8

    .line 533
    .line 534
    aput-object v20, v1, v3

    .line 535
    .line 536
    const/16 v3, 0x9

    .line 537
    .line 538
    aput-object v22, v1, v3

    .line 539
    .line 540
    const/16 v3, 0xa

    .line 541
    .line 542
    aput-object v24, v1, v3

    .line 543
    .line 544
    const/16 v3, 0xb

    .line 545
    .line 546
    aput-object v26, v1, v3

    .line 547
    .line 548
    const/16 v3, 0xc

    .line 549
    .line 550
    aput-object v28, v1, v3

    .line 551
    .line 552
    const/16 v3, 0xd

    .line 553
    .line 554
    aput-object v30, v1, v3

    .line 555
    .line 556
    const/16 v3, 0xe

    .line 557
    .line 558
    aput-object v31, v1, v3

    .line 559
    .line 560
    const/16 v3, 0xf

    .line 561
    .line 562
    aput-object v32, v1, v3

    .line 563
    .line 564
    const/16 v3, 0x10

    .line 565
    .line 566
    aput-object v33, v1, v3

    .line 567
    .line 568
    aput-object v34, v1, v5

    .line 569
    .line 570
    aput-object v35, v1, v9

    .line 571
    .line 572
    const/16 v3, 0x13

    .line 573
    .line 574
    aput-object v36, v1, v3

    .line 575
    .line 576
    const/16 v3, 0x14

    .line 577
    .line 578
    aput-object v37, v1, v3

    .line 579
    .line 580
    const/16 v3, 0x15

    .line 581
    .line 582
    aput-object v38, v1, v3

    .line 583
    .line 584
    aput-object v39, v1, v17

    .line 585
    .line 586
    const/16 v3, 0x17

    .line 587
    .line 588
    aput-object v40, v1, v3

    .line 589
    .line 590
    const/16 v3, 0x18

    .line 591
    .line 592
    aput-object v41, v1, v3

    .line 593
    .line 594
    const/16 v3, 0x19

    .line 595
    .line 596
    aput-object v42, v1, v3

    .line 597
    .line 598
    const/16 v3, 0x1a

    .line 599
    .line 600
    aput-object v43, v1, v3

    .line 601
    .line 602
    const/16 v3, 0x1b

    .line 603
    .line 604
    aput-object v44, v1, v3

    .line 605
    .line 606
    const/16 v3, 0x1c

    .line 607
    .line 608
    aput-object v45, v1, v3

    .line 609
    .line 610
    const/16 v3, 0x1d

    .line 611
    .line 612
    aput-object v46, v1, v3

    .line 613
    .line 614
    const/16 v3, 0x1e

    .line 615
    .line 616
    aput-object v47, v1, v3

    .line 617
    .line 618
    const/16 v3, 0x1f

    .line 619
    .line 620
    aput-object v48, v1, v3

    .line 621
    .line 622
    const/16 v3, 0x20

    .line 623
    .line 624
    aput-object v49, v1, v3

    .line 625
    .line 626
    const/16 v3, 0x21

    .line 627
    .line 628
    aput-object v50, v1, v3

    .line 629
    .line 630
    aput-object v51, v1, v11

    .line 631
    .line 632
    aput-object v52, v1, v13

    .line 633
    .line 634
    aput-object v53, v1, v7

    .line 635
    .line 636
    aput-object v54, v1, v19

    .line 637
    .line 638
    aput-object v55, v1, v21

    .line 639
    .line 640
    const/16 v3, 0x27

    .line 641
    .line 642
    aput-object v56, v1, v3

    .line 643
    .line 644
    const/16 v3, 0x28

    .line 645
    .line 646
    aput-object v57, v1, v3

    .line 647
    .line 648
    const/16 v3, 0x29

    .line 649
    .line 650
    aput-object v58, v1, v3

    .line 651
    .line 652
    const/16 v3, 0x2a

    .line 653
    .line 654
    aput-object v59, v1, v3

    .line 655
    .line 656
    aput-object v60, v1, v23

    .line 657
    .line 658
    aput-object v61, v1, v25

    .line 659
    .line 660
    aput-object v62, v1, v27

    .line 661
    .line 662
    aput-object v63, v1, v29

    .line 663
    .line 664
    new-instance v3, Ljava/util/ArrayList;

    .line 665
    .line 666
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    .line 668
    .line 669
    :goto_6
    if-ge v2, v0, :cond_7

    .line 670
    .line 671
    aget-object v4, v1, v2

    .line 672
    .line 673
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    add-int/lit8 v2, v2, 0x1

    .line 680
    .line 681
    goto :goto_6

    .line 682
    :cond_7
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    sput-object v0, Lorg/schabi/newpipe/util/ListHelper;->SUPPORTED_ITAG_IDS:Ljava/util/List;

    .line 687
    .line 688
    return-void
.end method

.method public static compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "[^\\d.]"

    .line 4
    .line 5
    const-string v2, "1"

    .line 6
    .line 7
    const-string v3, "0p\\d+$"

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    sub-int/2addr p0, p1

    .line 34
    return p0

    .line 35
    :catch_0
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public static computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f130062

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    invoke-static {p2, p1}, Lorg/schabi/newpipe/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/4 v0, 0x1

    .line 48
    if-ge p0, v0, :cond_2

    .line 49
    .line 50
    :cond_1
    return-object p2

    .line 51
    :cond_2
    return-object p1
.end method

.method public static getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;
    .locals 2

    const v0, 0x7f1300d3

    const v1, 0x7f1300d5

    .line 56
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    .line 57
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 58
    :goto_0
    invoke-static {v0, p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatComparator(Lorg/schabi/newpipe/extractor/MediaFormat;Z)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioFormatComparator(Lorg/schabi/newpipe/extractor/MediaFormat;Z)Ljava/util/Comparator;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 7
    .line 8
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-static {v1}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/16 v2, 0x1a

    .line 27
    .line 28
    invoke-direct {p1, v2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda8;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0, v1}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance p1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda4;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-direct {p1, v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Lj$/util/Comparator$-EL;->thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static getAudioFormatIndex(Lorg/schabi/newpipe/player/PlayerService;Ljava/util/List;Ljava/lang/String;)I
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    return v0

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public static getAudioTrackComparator(Landroid/content/Context;)Ljava/util/Comparator;
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f1303ed

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const v3, 0x7f1303ea

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    sget-object p0, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE:Ljava/util/List;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING:Ljava/util/List;

    .line 43
    .line 44
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {v1, v3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    invoke-direct {v4, v2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;-><init>(Z)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v4}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    const/16 v4, 0x18

    .line 61
    .line 62
    invoke-direct {v2, v4}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 63
    .line 64
    .line 65
    new-instance v5, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;

    .line 66
    .line 67
    invoke-direct {v5, v0, v3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lj$/util/Comparator$-CC;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v2, v0}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-direct {v1, v3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    new-instance v2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda4;

    .line 91
    .line 92
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lj$/util/Comparator$-CC;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v0, v1, p0}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    const/16 v2, 0x19

    .line 115
    .line 116
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v1}, Lj$/util/Comparator$-CC;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {p0, v0, v1}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method

.method public static getAudioTrackNameComparator()Ljava/util/Comparator;
    .locals 4

    .line 1
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/16 v2, 0x18

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;

    .line 13
    .line 14
    const/16 v3, 0xd

    .line 15
    .line 16
    invoke-direct {v2, v0, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lj$/util/Comparator$-CC;->naturalOrder()Ljava/util/Comparator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0, v1, v2}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public static getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioTrackComparator(Landroid/content/Context;)Ljava/util/Comparator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {v0, p0}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0, p0}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 36
    .line 37
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 43
    return p0
.end method

.method public static getDefaultAudioTrackGroup(Landroid/content/Context;Ljava/util/List;)I
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioTrackComparator(Landroid/content/Context;)Ljava/util/Comparator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda10;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, v2, p0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda10;-><init>(ILjava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public static getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const p2, 0x7f130534

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    const p2, 0x7f130530

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    const p2, 0x7f13052d

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_2
    const p2, 0x7f13004e

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_3
    const p2, 0x7f130045

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_4

    .line 93
    .line 94
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_4
    const/4 p0, 0x0

    .line 98
    return-object p0
.end method

.method public static getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const v3, 0x7f1300e8

    .line 8
    .line 9
    .line 10
    const v4, 0x7f1300ea

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v3, v4}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const v4, 0x7f130062

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, -0x1

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    return v5

    .line 32
    :cond_0
    invoke-static {v2}, Lorg/schabi/newpipe/util/ListHelper;->sortStreamList(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const/16 p0, 0x0

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    const-string v0, "p\\d+$"

    .line 46
    .line 47
    const-string v6, "p"

    .line 48
    .line 49
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    move v9, v5

    .line 54
    move v10, v9

    .line 55
    move v11, v10

    .line 56
    move v12, v11

    .line 57
    move v13, v12

    .line 58
    const/4 v8, 0x0

    .line 59
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    if-ge v8, v14, :cond_8

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    const/4 v14, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    check-cast v14, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 74
    .line 75
    invoke-virtual {v14}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    :goto_1
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    check-cast v15, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 84
    .line 85
    iget-object v15, v15, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 86
    .line 87
    const/16 p0, 0x0

    .line 88
    .line 89
    invoke-virtual {v15, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    if-ne v14, v3, :cond_3

    .line 94
    .line 95
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    if-eqz v16, :cond_3

    .line 100
    .line 101
    move v9, v8

    .line 102
    :cond_3
    if-ne v14, v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    if-eqz v14, :cond_4

    .line 109
    .line 110
    move v10, v8

    .line 111
    :cond_4
    if-ne v11, v5, :cond_5

    .line 112
    .line 113
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    if-eqz v14, :cond_5

    .line 118
    .line 119
    move v11, v8

    .line 120
    :cond_5
    if-ne v12, v5, :cond_6

    .line 121
    .line 122
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    if-eqz v14, :cond_6

    .line 127
    .line 128
    move v12, v8

    .line 129
    :cond_6
    if-ne v13, v5, :cond_7

    .line 130
    .line 131
    invoke-static {v4, v7}, Lorg/schabi/newpipe/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-gez v4, :cond_7

    .line 136
    .line 137
    move v13, v8

    .line 138
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    const/16 p0, 0x0

    .line 142
    .line 143
    if-eq v9, v5, :cond_9

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_9
    if-eq v10, v5, :cond_a

    .line 147
    .line 148
    move v9, v10

    .line 149
    goto :goto_2

    .line 150
    :cond_a
    if-eq v11, v5, :cond_b

    .line 151
    .line 152
    move v9, v11

    .line 153
    goto :goto_2

    .line 154
    :cond_b
    if-eq v12, v5, :cond_c

    .line 155
    .line 156
    move v9, v12

    .line 157
    goto :goto_2

    .line 158
    :cond_c
    move v9, v13

    .line 159
    :goto_2
    if-ne v9, v5, :cond_d

    .line 160
    .line 161
    :goto_3
    return p0

    .line 162
    :cond_d
    return v9
.end method

.method public static getFilteredAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, ""

    .line 24
    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    sget-object v4, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 38
    .line 39
    if-eq v3, v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget-object v4, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 46
    .line 47
    if-ne v3, v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 54
    .line 55
    if-ne v3, v4, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-interface {p0, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-lez v3, :cond_1

    .line 79
    .line 80
    :cond_3
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    const/4 p1, 0x1

    .line 89
    if-le p0, p1, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {}, Lorg/schabi/newpipe/util/ListHelper;->getAudioTrackNameComparator()Ljava/util/Comparator;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Ljava/util/List;

    .line 119
    .line 120
    return-object p0
.end method

.method public static getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/util/List;

    .line 23
    .line 24
    return-object p0
.end method

.method public static getGroupedAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, ""

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 v1, 0x1

    .line 70
    if-le p1, v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-static {}, Lorg/schabi/newpipe/util/ListHelper;->getAudioTrackNameComparator()Ljava/util/Comparator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda10;

    .line 92
    .line 93
    invoke-direct {v2, v1, p1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda10;-><init>(ILjava/util/Comparator;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;

    .line 101
    .line 102
    const/16 v1, 0xc

    .line 103
    .line 104
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Ljava/util/List;

    .line 120
    .line 121
    return-object p0
.end method

.method public static getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move v0, v1

    .line 25
    :goto_1
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const v1, 0x7f130245

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const v2, 0x7f130246

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    return-object p0

    .line 61
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 62
    return-object p0
.end method

.method public static getSortedResolutionList(Landroid/content/res/Resources;IIZ)Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {v0, p1, p0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f130495

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const v1, 0x7f1300e8

    .line 18
    .line 19
    .line 20
    const v3, 0x7f1300ea

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v1, v3}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v3, 0x2

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    new-array p3, v3, [Ljava/util/List;

    .line 32
    .line 33
    aput-object p1, p3, v2

    .line 34
    .line 35
    aput-object p2, p3, v1

    .line 36
    .line 37
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-array p3, v3, [Ljava/util/List;

    .line 43
    .line 44
    aput-object p2, p3, v2

    .line 45
    .line 46
    aput-object p1, p3, v1

    .line 47
    .line 48
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 57
    .line 58
    const/16 p3, 0x19

    .line 59
    .line 60
    invoke-direct {p2, p3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    const/16 p3, 0x17

    .line 70
    .line 71
    invoke-direct {p2, p3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance p2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda14;

    .line 79
    .line 80
    invoke-direct {p2, v0, v2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda14;-><init>(ZI)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/util/List;

    .line 96
    .line 97
    new-instance p2, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 117
    .line 118
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    if-eqz p3, :cond_3

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    check-cast p3, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 139
    .line 140
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-ne v0, p0, :cond_2

    .line 145
    .line 146
    iget-object v0, p3, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->sortStreamList(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    return-object p0
.end method

.method public static getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static sortStreamList(Ljava/util/List;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;

    .line 9
    .line 10
    const/16 v2, 0xc

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lj$/util/Comparator$-EL;->thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
