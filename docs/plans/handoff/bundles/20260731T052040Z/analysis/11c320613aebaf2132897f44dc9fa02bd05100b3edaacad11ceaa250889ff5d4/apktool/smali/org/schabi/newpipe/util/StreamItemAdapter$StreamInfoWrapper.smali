.class public final Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;


# instance fields
.field private final streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

.field private final streamSizes:[J

.field private final streamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownSize:Ljava/lang/String;


# direct methods
.method public static $r8$lambda$KFQ3t7UqdVQV7GmJ2mbefzhTed0(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Ljava/lang/Boolean;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_13

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(Lorg/schabi/newpipe/extractor/stream/Stream;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    const-wide/16 v6, -0x2

    .line 26
    .line 27
    cmp-long v4, v4, v6

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-gtz v4, :cond_1

    .line 31
    .line 32
    move v4, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v4, v1

    .line 35
    :goto_1
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    move v6, v5

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v6, v1

    .line 44
    :goto_2
    if-nez v4, :cond_3

    .line 45
    .line 46
    if-nez v6, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    sget-object v7, Lorg/schabi/newpipe/DownloaderImpl;->instance:Lorg/schabi/newpipe/DownloaderImpl;

    .line 50
    .line 51
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v9, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 59
    .line 60
    invoke-direct {v9}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v10, "HEAD"

    .line 64
    .line 65
    iput-object v10, v9, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 66
    .line 67
    iput-object v8, v9, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 68
    .line 69
    iget-object v8, v9, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v8, Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clear()V

    .line 74
    .line 75
    .line 76
    new-instance v8, Lorg/schabi/newpipe/extractor/downloader/Request;

    .line 77
    .line 78
    invoke-direct {v8, v9}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Lorg/schabi/newpipe/streams/WebMReader$Segment;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v8}, Lorg/schabi/newpipe/DownloaderImpl;->execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Landroidx/recyclerview/widget/ChildHelper;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    const-string v4, "Content-Length"

    .line 88
    .line 89
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/ChildHelper;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-nez v8, :cond_4

    .line 98
    .line 99
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v8

    .line 103
    iget-object v2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    .line 104
    .line 105
    iget-object v4, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    aput-wide v8, v2, v4

    .line 112
    .line 113
    move v2, v5

    .line 114
    :cond_4
    if-eqz v6, :cond_0

    .line 115
    .line 116
    iget-object v4, v7, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v4, Ljava/util/Map;

    .line 119
    .line 120
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    new-instance v6, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda2;

    .line 129
    .line 130
    invoke-direct {v6, v5}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda2;-><init>(I)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v4, v6}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-interface {v4, v6}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_6

    .line 152
    .line 153
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_6

    .line 162
    .line 163
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/ChildHelper;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v6}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    if-eqz v6, :cond_5

    .line 178
    .line 179
    iget-object v2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 180
    .line 181
    iget-object v4, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 182
    .line 183
    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    aput-object v6, v2, v3

    .line 188
    .line 189
    goto/16 :goto_8

    .line 190
    .line 191
    :cond_6
    const-string v4, "Content-Disposition"

    .line 192
    .line 193
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/ChildHelper;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    if-nez v4, :cond_7

    .line 198
    .line 199
    goto/16 :goto_5

    .line 200
    .line 201
    :cond_7
    :try_start_0
    sget-object v6, Lorg/schabi/newpipe/extractor/utils/Utils;->M_PATTERN:Ljava/util/regex/Pattern;

    .line 202
    .line 203
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 204
    .line 205
    invoke-static {v4, v6}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    const-string v6, ";"

    .line 210
    .line 211
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    array-length v6, v4

    .line 216
    move v8, v1

    .line 217
    :goto_3
    if-ge v8, v6, :cond_c

    .line 218
    .line 219
    aget-object v9, v4, v8

    .line 220
    .line 221
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    const-string v10, "filename="

    .line 226
    .line 227
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    if-eqz v10, :cond_8

    .line 232
    .line 233
    const/16 v10, 0x9

    .line 234
    .line 235
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 240
    .line 241
    invoke-static {v9, v10}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    goto :goto_4

    .line 246
    :cond_8
    const-string v10, "filename*="

    .line 247
    .line 248
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    if-eqz v10, :cond_b

    .line 253
    .line 254
    const/16 v10, 0xa

    .line 255
    .line 256
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 261
    .line 262
    invoke-static {v9, v10}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    :goto_4
    const-string v10, "\\."

    .line 267
    .line 268
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    array-length v10, v9

    .line 273
    sub-int/2addr v10, v5

    .line 274
    aget-object v9, v9, v10

    .line 275
    .line 276
    const-string v10, "\""

    .line 277
    .line 278
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    if-nez v10, :cond_9

    .line 283
    .line 284
    const-string v10, "\'"

    .line 285
    .line 286
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    if-eqz v10, :cond_a

    .line 291
    .line 292
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    sub-int/2addr v10, v5

    .line 297
    invoke-virtual {v9, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    :cond_a
    invoke-static {v9}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    if-eqz v9, :cond_b

    .line 306
    .line 307
    iget-object v4, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 308
    .line 309
    iget-object v6, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 310
    .line 311
    invoke-interface {v6, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    aput-object v9, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :catch_0
    :cond_c
    :goto_5
    const-string v4, "Content-Type"

    .line 322
    .line 323
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/ChildHelper;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    if-nez v4, :cond_d

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_d
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-static {v6}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    new-instance v7, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;

    .line 339
    .line 340
    const/4 v8, 0x2

    .line 341
    invoke-direct {v7, v4, v8}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-interface {v4, v6}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    check-cast v4, Ljava/util/List;

    .line 357
    .line 358
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    const/4 v6, 0x0

    .line 363
    :cond_e
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    if-eqz v7, :cond_10

    .line 368
    .line 369
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    check-cast v7, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 374
    .line 375
    if-nez v6, :cond_f

    .line 376
    .line 377
    move-object v6, v7

    .line 378
    goto :goto_6

    .line 379
    :cond_f
    iget v8, v6, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    .line 380
    .line 381
    iget v7, v7, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    .line 382
    .line 383
    if-eq v8, v7, :cond_e

    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_10
    if-eqz v6, :cond_11

    .line 387
    .line 388
    iget-object v2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 389
    .line 390
    iget-object v4, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 391
    .line 392
    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    aput-object v6, v2, v3

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_11
    :goto_7
    if-eqz v2, :cond_12

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_12
    move v5, v1

    .line 403
    :goto_8
    move v2, v5

    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :cond_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->EMPTY:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    iput-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "--.-"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v0, 0x7f13050e

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->unknownSize:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    new-array p1, p1, [Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 33
    .line 34
    iput-object p1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->resetInfo()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static fetchMoreInfoForWrapper(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;
    .locals 3

    .line 1
    new-instance v0, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {p0, v0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, v0, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Scheduler;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method


# virtual methods
.method public final getFormat(I)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    return-object p0
.end method

.method public final getFormattedSize(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    const-wide/16 v3, -0x1

    .line 6
    .line 7
    cmp-long p1, v1, v3

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    invoke-static {v1, v2}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->unknownSize:Ljava/lang/String;

    .line 17
    .line 18
    return-object p0
.end method

.method public final getSizeInBytes(I)J
    .locals 2

    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public final getSizeInBytes(Lorg/schabi/newpipe/extractor/stream/Stream;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    aget-wide p0, v0, p0

    .line 10
    .line 11
    return-wide p0
.end method

.method public final getStreamsList()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final resetInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    .line 2
    .line 3
    const-wide/16 v1, -0x2

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 36
    .line 37
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_1
    aput-object v2, v1, v0

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method
