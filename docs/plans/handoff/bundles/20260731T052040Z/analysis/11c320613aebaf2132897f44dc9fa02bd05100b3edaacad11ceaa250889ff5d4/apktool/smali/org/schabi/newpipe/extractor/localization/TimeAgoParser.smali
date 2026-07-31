.class public final Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public now:Ljava/lang/Object;

.field public final patternsHolder:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$SP1BbvDhrFN0miwMrbvlG8EzTyg(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Printer;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;Lj$/time/LocalDateTime;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public generateDataFrom(Lorg/schabi/newpipe/extractor/stream/Frameset;Ljava/util/UUID;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "SeekbarPrevThumbHolder"

    .line 6
    .line 7
    const-string v3, "Starting generation of seekbarPreviewData"

    .line 8
    .line 9
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const-string v0, "SeekbarPrevThumbHolder"

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/google/common/base/Stopwatch;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-boolean v6, v0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 28
    .line 29
    xor-int/2addr v6, v5

    .line 30
    const-string v7, "This stopwatch is already running."

    .line 31
    .line 32
    invoke-static {v7, v6}, Lokio/Okio;->checkState(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    iput-boolean v5, v0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    iput-wide v6, v0, Lcom/google/common/base/Stopwatch;->startTick:J

    .line 42
    .line 43
    move-object v6, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v6, 0x0

    .line 46
    :goto_0
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFramesPerPageX()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFramesPerPageY()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    mul-int/2addr v7, v0

    .line 55
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getUrls()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const/4 v9, 0x0

    .line 64
    move v11, v5

    .line 65
    move v10, v9

    .line 66
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    move-object v12, v0

    .line 77
    check-cast v12, Ljava/lang/String;

    .line 78
    .line 79
    const-string v13, "SeekbarPrevThumbHolder"

    .line 80
    .line 81
    const-string v0, "Download of bitmap for seekbarPreview from \'"

    .line 82
    .line 83
    const-string v14, "Downloading bitmap for seekbarPreview from \'"

    .line 84
    .line 85
    if-nez v12, :cond_1

    .line 86
    .line 87
    const-string/jumbo v0, "url is null; This should never happen"

    .line 88
    .line 89
    .line 90
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-object/from16 v19, v6

    .line 94
    .line 95
    move/from16 v18, v10

    .line 96
    .line 97
    :goto_2
    const/4 v3, 0x0

    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_1
    invoke-static {v13, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    if-eqz v15, :cond_2

    .line 105
    .line 106
    new-instance v15, Lcom/google/common/base/Stopwatch;

    .line 107
    .line 108
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-boolean v3, v15, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 112
    .line 113
    xor-int/2addr v3, v5

    .line 114
    const-string v4, "This stopwatch is already running."

    .line 115
    .line 116
    invoke-static {v4, v3}, Lokio/Okio;->checkState(Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    iput-boolean v5, v15, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 120
    .line 121
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    iput-wide v3, v15, Lcom/google/common/base/Stopwatch;->startTick:J

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_2
    const/4 v15, 0x0

    .line 129
    :goto_3
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v4, "\'"

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    sget-object v3, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-static {v3, v9, v12}, Lokhttp3/Cookie$Companion;->loadBitmapBlocking(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    if-eqz v15, :cond_3

    .line 163
    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v0, "\' took "

    .line 173
    .line 174
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 178
    .line 179
    .line 180
    move-result-wide v16

    .line 181
    iget-boolean v0, v15, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 182
    .line 183
    const-string v14, "This stopwatch is already stopped."

    .line 184
    .line 185
    invoke-static {v14, v0}, Lokio/Okio;->checkState(Ljava/lang/String;Z)V

    .line 186
    .line 187
    .line 188
    iput-boolean v9, v15, Lcom/google/common/base/Stopwatch;->isRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 189
    .line 190
    move/from16 v18, v10

    .line 191
    .line 192
    :try_start_1
    iget-wide v9, v15, Lcom/google/common/base/Stopwatch;->elapsedNanos:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .line 194
    move-object/from16 v19, v6

    .line 195
    .line 196
    :try_start_2
    iget-wide v5, v15, Lcom/google/common/base/Stopwatch;->startTick:J

    .line 197
    .line 198
    sub-long v16, v16, v5

    .line 199
    .line 200
    add-long v5, v16, v9

    .line 201
    .line 202
    iput-wide v5, v15, Lcom/google/common/base/Stopwatch;->elapsedNanos:J

    .line 203
    .line 204
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :catch_0
    move-exception v0

    .line 216
    goto :goto_4

    .line 217
    :catch_1
    move-exception v0

    .line 218
    move-object/from16 v19, v6

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :catch_2
    move-exception v0

    .line 222
    move-object/from16 v19, v6

    .line 223
    .line 224
    move/from16 v18, v10

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_3
    move-object/from16 v19, v6

    .line 228
    .line 229
    move/from16 v18, v10

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v4, "Failed to get bitmap for seekbarPreview from url=\'"

    .line 235
    .line 236
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v4, "\' in time"

    .line 243
    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v13, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .line 253
    .line 254
    goto/16 :goto_2

    .line 255
    .line 256
    :goto_5
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 257
    .line 258
    invoke-direct {v0, v7}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 259
    .line 260
    .line 261
    move/from16 v10, v18

    .line 262
    .line 263
    const/4 v4, 0x0

    .line 264
    :goto_6
    if-ge v4, v7, :cond_5

    .line 265
    .line 266
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getTotalCount()I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-le v11, v5, :cond_4

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_4
    int-to-long v5, v10

    .line 274
    invoke-virtual {v2, v5, v6}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameBoundsAt(J)[I

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    new-instance v6, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;

    .line 279
    .line 280
    invoke-direct {v6, v3, v5, v2}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Bitmap;[ILorg/schabi/newpipe/extractor/stream/Frameset;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v10, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getDurationPerFrame()I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    add-int/2addr v10, v5

    .line 291
    add-int/lit8 v11, v11, 0x1

    .line 292
    .line 293
    add-int/lit8 v4, v4, 0x1

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_5
    :goto_7
    iget-object v3, v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v3, Ljava/util/UUID;

    .line 299
    .line 300
    move-object/from16 v4, p2

    .line 301
    .line 302
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_6

    .line 307
    .line 308
    iget-object v3, v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v3, Landroidx/collection/SparseArrayCompat;

    .line 311
    .line 312
    monitor-enter v3

    .line 313
    :try_start_3
    iget-object v5, v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v5, Landroidx/collection/SparseArrayCompat;

    .line 316
    .line 317
    invoke-virtual {v5, v0}, Landroidx/collection/SparseArrayCompat;->putAll(Landroidx/collection/SparseArrayCompat;)V

    .line 318
    .line 319
    .line 320
    monitor-exit v3

    .line 321
    move-object/from16 v6, v19

    .line 322
    .line 323
    const/4 v3, 0x3

    .line 324
    const/4 v5, 0x1

    .line 325
    const/4 v9, 0x0

    .line 326
    goto/16 :goto_1

    .line 327
    .line 328
    :catchall_0
    move-exception v0

    .line 329
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    throw v0

    .line 331
    :cond_6
    const-string v0, "SeekbarPrevThumbHolder"

    .line 332
    .line 333
    const-string v1, "Aborted of generation of seekbarPreviewData"

    .line 334
    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    goto :goto_8

    .line 339
    :cond_7
    move-object/from16 v19, v6

    .line 340
    .line 341
    :goto_8
    if-eqz v19, :cond_8

    .line 342
    .line 343
    const-string v0, "SeekbarPrevThumbHolder"

    .line 344
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v2, "Generation of seekbarPreviewData took "

    .line 348
    .line 349
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 353
    .line 354
    .line 355
    move-result-wide v2

    .line 356
    move-object/from16 v4, v19

    .line 357
    .line 358
    iget-boolean v5, v4, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 359
    .line 360
    const-string v6, "This stopwatch is already stopped."

    .line 361
    .line 362
    invoke-static {v6, v5}, Lokio/Okio;->checkState(Ljava/lang/String;Z)V

    .line 363
    .line 364
    .line 365
    const/4 v14, 0x0

    .line 366
    iput-boolean v14, v4, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 367
    .line 368
    iget-wide v5, v4, Lcom/google/common/base/Stopwatch;->elapsedNanos:J

    .line 369
    .line 370
    iget-wide v7, v4, Lcom/google/common/base/Stopwatch;->startTick:J

    .line 371
    .line 372
    sub-long/2addr v2, v7

    .line 373
    add-long/2addr v2, v5

    .line 374
    iput-wide v2, v4, Lcom/google/common/base/Stopwatch;->elapsedNanos:J

    .line 375
    .line 376
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    :cond_8
    return-void
.end method

.method public getResultFor(ILj$/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 2

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lj$/time/LocalDateTime;

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    int-to-long v0, p1

    .line 10
    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->minusYears(J)Lj$/time/LocalDateTime;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-wide/16 v0, 0x1

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDateTime;->minusDays(J)Lj$/time/LocalDateTime;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    int-to-long v0, p1

    .line 22
    invoke-virtual {p0, v0, v1, p2}, Lj$/time/LocalDateTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    invoke-virtual {p2}, Lj$/time/temporal/ChronoUnit;->isDateBased()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    sget-object p2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lj$/time/LocalDateTime;->truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :cond_1
    new-instance p2, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 39
    .line 40
    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/LocalDateTime;Z)V

    .line 41
    .line 42
    .line 43
    return-object p2
.end method

.method public parse(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->specialCases()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lj$/time/temporal/ChronoUnit;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/util/Map$Entry;

    .line 60
    .line 61
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {p0, p1, v5}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    invoke-virtual {p0, v4, v3}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->getResultFor(ILj$/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_2
    :try_start_0
    const-string v1, "\\D+"

    .line 89
    .line 90
    const-string v2, ""

    .line 91
    .line 92
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 101
    :catch_0
    const/4 v1, 0x1

    .line 102
    :goto_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->asMap()Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v2, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-direct {v2, p0, p1, v3}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v2, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    const/16 v3, 0x16

    .line 127
    .line 128
    invoke-direct {v2, v3}, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v2, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda1;

    .line 140
    .line 141
    const/4 v3, 0x3

    .line 142
    invoke-direct {v2, p1, v3}, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lj$/time/temporal/ChronoUnit;

    .line 150
    .line 151
    invoke-virtual {p0, v1, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->getResultFor(ILj$/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0
.end method

.method public resetFromAsync(ILjava/util/List;Ljava/util/UUID;)V
    .locals 2

    .line 1
    const-string v0, "SeekbarPrevThumbHolder"

    .line 2
    .line 3
    const-string v1, "Clearing seekbarPreviewData"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroidx/collection/SparseArrayCompat;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v0, 0x2

    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    const-string p0, "SeekbarPrevThumbHolder"

    .line 25
    .line 26
    const-string p1, "Not processing seekbarPreviewData due to settings"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string v0, "SeekbarPrevThumbHolder"

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    const-string p1, "Strategy for seekbarPreviewData: high quality"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;

    .line 47
    .line 48
    const/4 v0, 0x5

    .line 49
    invoke-direct {p2, v0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Frameset;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-string p1, "Strategy for seekbarPreviewData: low quality"

    .line 68
    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;

    .line 77
    .line 78
    const/4 v0, 0x6

    .line 79
    invoke-direct {p2, v0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {p2}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->min(Ljava/util/Comparator;)Lj$/util/Optional;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Frameset;

    .line 95
    .line 96
    :goto_0
    if-nez p1, :cond_2

    .line 97
    .line 98
    const-string p0, "SeekbarPrevThumbHolder"

    .line 99
    .line 100
    const-string p1, "No frameset was found to fill seekbarPreviewData"

    .line 101
    .line 102
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    const-string p2, "SeekbarPrevThumbHolder"

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v1, "Frameset quality info: [width="

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ", heigh="

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, "]"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p2, Ljava/util/UUID;

    .line 149
    .line 150
    invoke-virtual {p2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-nez p2, :cond_3

    .line 155
    .line 156
    return-void

    .line 157
    :cond_3
    invoke-virtual {p0, p1, p3}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->generateDataFrom(Lorg/schabi/newpipe/extractor/stream/Frameset;Ljava/util/UUID;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    throw p0
.end method

.method public searchFor(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lorg/jsoup/nodes/Printer;

    .line 13
    .line 14
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;

    .line 17
    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    add-int/2addr v0, v1

    .line 35
    const/4 v2, 0x3

    .line 36
    mul-int/2addr v0, v2

    .line 37
    add-int/lit8 v0, v0, -0x2

    .line 38
    .line 39
    new-instance v3, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;

    .line 40
    .line 41
    const/16 v4, 0x8

    .line 42
    .line 43
    invoke-direct {v3, p1, v4}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance v3, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-direct {v3, v0, v2}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/16 v2, 0xf

    .line 62
    .line 63
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;

    .line 71
    .line 72
    const/16 v2, 0x9

    .line 73
    .line 74
    invoke-direct {v0, p1, v2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    new-instance p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    invoke-direct {p1, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lj$/util/Comparator$-CC;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    new-instance p1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/16 v0, 0x10

    .line 101
    .line 102
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-wide/16 v0, 0x14

    .line 110
    .line 111
    invoke-interface {p0, v0, v1}, Lj$/util/stream/Stream;->limit(J)Lj$/util/stream/Stream;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    check-cast p0, Ljava/util/List;

    .line 124
    .line 125
    return-object p0
.end method

.method public textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, " "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const-string p0, "[ \\t\\xA0\\u1680\\u180e\\u2000-\\u200a\\u202f\\u205f\\u3000\\d]"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, "(^|"

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ")"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p2, "($|"

    .line 86
    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    return p0
.end method
