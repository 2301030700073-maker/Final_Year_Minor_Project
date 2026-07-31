.class public final Lcoil3/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# instance fields
.field public final cacheStrategy:Lkotlin/Lazy;

.field public final concurrentRequestStrategy:Lkotlin/Lazy;

.field public final connectivityChecker:Lkotlin/InitializedLazyImpl;

.field public final diskCache:Lkotlin/SynchronizedLazyImpl;

.field public final networkClient:Lkotlin/Lazy;

.field public final options:Lcoil3/request/Options;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/SynchronizedLazyImpl;Lkotlin/SynchronizedLazyImpl;Lkotlin/SynchronizedLazyImpl;Lkotlin/InitializedLazyImpl;Lkotlin/SynchronizedLazyImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/network/NetworkFetcher;->networkClient:Lkotlin/Lazy;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/network/NetworkFetcher;->diskCache:Lkotlin/SynchronizedLazyImpl;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/network/NetworkFetcher;->cacheStrategy:Lkotlin/Lazy;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/network/NetworkFetcher;->connectivityChecker:Lkotlin/InitializedLazyImpl;

    .line 15
    .line 16
    iput-object p7, p0, Lcoil3/network/NetworkFetcher;->concurrentRequestStrategy:Lkotlin/Lazy;

    .line 17
    .line 18
    return-void
.end method

.method public static final access$doFetch(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v6, v2, Lcoil3/network/NetworkFetcher;->networkClient:Lkotlin/Lazy;

    .line 6
    .line 7
    iget-object v1, v2, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v2, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 10
    .line 11
    instance-of v4, v0, Lcoil3/network/NetworkFetcher$doFetch$1;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    move-object v4, v0

    .line 16
    check-cast v4, Lcoil3/network/NetworkFetcher$doFetch$1;

    .line 17
    .line 18
    iget v5, v4, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 19
    .line 20
    const/high16 v7, -0x80000000

    .line 21
    .line 22
    and-int v8, v5, v7

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v5, v7

    .line 27
    iput v5, v4, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 28
    .line 29
    :goto_0
    move-object v7, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v4, Lcoil3/network/NetworkFetcher$doFetch$1;

    .line 32
    .line 33
    invoke-direct {v4, v2, v0}, Lcoil3/network/NetworkFetcher$doFetch$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    iget-object v0, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->result:Ljava/lang/Object;

    .line 38
    .line 39
    iget v4, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 40
    .line 41
    sget-object v5, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    .line 42
    .line 43
    const/4 v8, 0x3

    .line 44
    const/4 v9, 0x2

    .line 45
    const/4 v10, 0x1

    .line 46
    const/4 v11, 0x0

    .line 47
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    if-eq v4, v10, :cond_3

    .line 52
    .line 53
    if-eq v4, v9, :cond_2

    .line 54
    .line 55
    if-ne v4, v8, :cond_1

    .line 56
    .line 57
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$4:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lcoil3/fetch/SourceFetchResult;

    .line 60
    .line 61
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$3:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lcoil3/network/NetworkRequest;

    .line 64
    .line 65
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$2:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Lcoil3/network/CacheStrategy$ReadResult;

    .line 72
    .line 73
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto/16 :goto_a

    .line 81
    .line 82
    :catch_0
    move-exception v0

    .line 83
    goto/16 :goto_b

    .line 84
    .line 85
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 86
    .line 87
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v11

    .line 91
    :cond_2
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$3:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, Lcoil3/network/NetworkRequest;

    .line 94
    .line 95
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$2:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 98
    .line 99
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$1:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Lcoil3/network/CacheStrategy$ReadResult;

    .line 102
    .line 103
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 106
    .line 107
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    .line 109
    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    :cond_3
    iget-object v4, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$1:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 115
    .line 116
    iget-object v10, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 119
    .line 120
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    .line 122
    .line 123
    move-object/from16 v17, v10

    .line 124
    .line 125
    move-object v10, v4

    .line 126
    move-object/from16 v4, v17

    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :catch_1
    move-exception v0

    .line 131
    move-object v1, v10

    .line 132
    goto/16 :goto_b

    .line 133
    .line 134
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 138
    .line 139
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object v0, v3, Lcoil3/request/Options;->diskCachePolicy:Lcoil3/request/CachePolicy;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->getReadEnabled()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    iget-object v0, v2, Lcoil3/network/NetworkFetcher;->diskCache:Lkotlin/SynchronizedLazyImpl;

    .line 151
    .line 152
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 157
    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    iget-object v13, v3, Lcoil3/request/Options;->diskCacheKey:Ljava/lang/String;

    .line 161
    .line 162
    if-nez v13, :cond_5

    .line 163
    .line 164
    move-object v13, v1

    .line 165
    :cond_5
    iget-object v0, v0, Lcoil3/disk/RealDiskCache;->cache:Lcoil3/disk/DiskLruCache;

    .line 166
    .line 167
    sget-object v14, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 168
    .line 169
    invoke-static {v13}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    const-string v14, "SHA-256"

    .line 174
    .line 175
    invoke-virtual {v13, v14}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    invoke-virtual {v13}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v13

    .line 183
    invoke-virtual {v0, v13}, Lcoil3/disk/DiskLruCache;->get(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Snapshot;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    new-instance v13, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 190
    .line 191
    invoke-direct {v13, v0}, Lcoil3/disk/RealDiskCache$RealSnapshot;-><init>(Lcoil3/disk/DiskLruCache$Snapshot;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_6
    move-object v13, v11

    .line 196
    :goto_2
    iput-object v13, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 197
    .line 198
    :try_start_3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 201
    .line 202
    .line 203
    if-eqz v13, :cond_d

    .line 204
    .line 205
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    iget-object v14, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v14, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 212
    .line 213
    iget-object v14, v14, Lcoil3/disk/RealDiskCache$RealSnapshot;->snapshot:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 214
    .line 215
    iget-boolean v15, v14, Lcoil3/disk/DiskLruCache$Snapshot;->closed:Z

    .line 216
    .line 217
    if-nez v15, :cond_e

    .line 218
    .line 219
    iget-object v14, v14, Lcoil3/disk/DiskLruCache$Snapshot;->entry:Lcoil3/disk/DiskLruCache$Entry;

    .line 220
    .line 221
    iget-object v14, v14, Lcoil3/disk/DiskLruCache$Entry;->cleanFiles:Ljava/util/ArrayList;

    .line 222
    .line 223
    const/4 v15, 0x0

    .line 224
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    check-cast v14, Lokio/Path;

    .line 229
    .line 230
    invoke-virtual {v13, v14}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    .line 231
    .line 232
    .line 233
    move-result-object v13

    .line 234
    iget-object v13, v13, Lokio/FileMetadata;->size:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v13, Ljava/lang/Long;

    .line 237
    .line 238
    if-nez v13, :cond_7

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_7
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 242
    .line 243
    .line 244
    move-result-wide v13

    .line 245
    const-wide/16 v15, 0x0

    .line 246
    .line 247
    cmp-long v13, v13, v15

    .line 248
    .line 249
    if-nez v13, :cond_8

    .line 250
    .line 251
    new-instance v0, Lcoil3/fetch/SourceFetchResult;

    .line 252
    .line 253
    iget-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v3, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 256
    .line 257
    invoke-virtual {v2, v3}, Lcoil3/network/NetworkFetcher;->toImageSource(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/decode/FileImageSource;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-static {v1, v11}, Lcoil3/network/NetworkFetcher;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-direct {v0, v2, v1, v5}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 266
    .line 267
    .line 268
    return-object v0

    .line 269
    :catch_2
    move-exception v0

    .line 270
    move-object v1, v4

    .line 271
    goto/16 :goto_b

    .line 272
    .line 273
    :cond_8
    :goto_3
    iget-object v13, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v13, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 276
    .line 277
    invoke-virtual {v2, v13}, Lcoil3/network/NetworkFetcher;->toNetworkResponseOrNull(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/network/NetworkResponse;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    iput-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 282
    .line 283
    if-eqz v13, :cond_d

    .line 284
    .line 285
    iget-object v13, v2, Lcoil3/network/NetworkFetcher;->cacheStrategy:Lkotlin/Lazy;

    .line 286
    .line 287
    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    check-cast v13, Lcoil3/network/CacheStrategy;

    .line 292
    .line 293
    iget-object v14, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v14, Lcoil3/network/NetworkResponse;

    .line 296
    .line 297
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->newRequest()Lcoil3/network/NetworkRequest;

    .line 298
    .line 299
    .line 300
    iput-object v4, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Ljava/lang/Object;

    .line 301
    .line 302
    iput-object v0, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$1:Ljava/lang/Object;

    .line 303
    .line 304
    iput v10, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 305
    .line 306
    check-cast v13, Lcoil3/network/internal/DefaultCacheStrategy;

    .line 307
    .line 308
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    new-instance v10, Lcoil3/network/CacheStrategy$ReadResult;

    .line 312
    .line 313
    invoke-direct {v10, v14}, Lcoil3/network/CacheStrategy$ReadResult;-><init>(Lcoil3/network/NetworkResponse;)V

    .line 314
    .line 315
    .line 316
    if-ne v10, v12, :cond_9

    .line 317
    .line 318
    goto/16 :goto_9

    .line 319
    .line 320
    :cond_9
    move-object/from16 v17, v10

    .line 321
    .line 322
    move-object v10, v0

    .line 323
    move-object/from16 v0, v17

    .line 324
    .line 325
    :goto_4
    check-cast v0, Lcoil3/network/CacheStrategy$ReadResult;

    .line 326
    .line 327
    iget-object v13, v0, Lcoil3/network/CacheStrategy$ReadResult;->response:Lcoil3/network/NetworkResponse;

    .line 328
    .line 329
    if-eqz v13, :cond_c

    .line 330
    .line 331
    iget v3, v13, Lcoil3/network/NetworkResponse;->code:I

    .line 332
    .line 333
    const/16 v6, 0xc8

    .line 334
    .line 335
    if-gt v6, v3, :cond_a

    .line 336
    .line 337
    const/16 v6, 0x12c

    .line 338
    .line 339
    if-ge v3, v6, :cond_a

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_a
    const/16 v6, 0x130

    .line 343
    .line 344
    if-ne v3, v6, :cond_b

    .line 345
    .line 346
    :goto_5
    new-instance v3, Lcoil3/fetch/SourceFetchResult;

    .line 347
    .line 348
    iget-object v6, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v6, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 351
    .line 352
    invoke-virtual {v2, v6}, Lcoil3/network/NetworkFetcher;->toImageSource(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/decode/FileImageSource;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    iget-object v0, v0, Lcoil3/network/CacheStrategy$ReadResult;->response:Lcoil3/network/NetworkResponse;

    .line 357
    .line 358
    iget-object v0, v0, Lcoil3/network/NetworkResponse;->headers:Lcoil3/network/NetworkHeaders;

    .line 359
    .line 360
    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders;->get()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-static {v1, v0}, Lcoil3/network/NetworkFetcher;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-direct {v3, v2, v0, v5}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 369
    .line 370
    .line 371
    return-object v3

    .line 372
    :cond_b
    new-instance v0, Lcoil3/network/HttpException;

    .line 373
    .line 374
    invoke-direct {v0, v13}, Lcoil3/network/HttpException;-><init>(Lcoil3/network/NetworkResponse;)V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :cond_c
    move-object v0, v10

    .line 379
    :cond_d
    move-object v1, v4

    .line 380
    goto :goto_6

    .line 381
    :cond_e
    const-string/jumbo v0, "snapshot is closed"

    .line 382
    .line 383
    .line 384
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 385
    .line 386
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 390
    :goto_6
    :try_start_4
    iget-object v3, v3, Lcoil3/request/Options;->networkCachePolicy:Lcoil3/request/CachePolicy;

    .line 391
    .line 392
    invoke-virtual {v3}, Lcoil3/request/CachePolicy;->getReadEnabled()Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-eqz v3, :cond_10

    .line 397
    .line 398
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-nez v3, :cond_f

    .line 411
    .line 412
    goto :goto_7

    .line 413
    :cond_f
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    .line 414
    .line 415
    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 416
    .line 417
    .line 418
    throw v0

    .line 419
    :cond_10
    :goto_7
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->newRequest()Lcoil3/network/NetworkRequest;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    move-object v10, v3

    .line 428
    check-cast v10, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 429
    .line 430
    move-object v3, v0

    .line 431
    new-instance v0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;

    .line 432
    .line 433
    const/4 v5, 0x0

    .line 434
    invoke-direct/range {v0 .. v5}, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkFetcher;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkRequest;Lkotlin/coroutines/Continuation;)V

    .line 435
    .line 436
    .line 437
    iput-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Ljava/lang/Object;

    .line 438
    .line 439
    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$1:Ljava/lang/Object;

    .line 440
    .line 441
    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$2:Ljava/lang/Object;

    .line 442
    .line 443
    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$3:Ljava/lang/Object;

    .line 444
    .line 445
    iput v9, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 446
    .line 447
    iget-object v3, v10, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->callFactory:Lokhttp3/OkHttpClient;

    .line 448
    .line 449
    invoke-static {v3, v4, v0, v7}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->executeRequest-impl(Lokhttp3/OkHttpClient;Lcoil3/network/NetworkRequest;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    if-ne v0, v12, :cond_11

    .line 454
    .line 455
    goto :goto_9

    .line 456
    :cond_11
    :goto_8
    check-cast v0, Lcoil3/fetch/SourceFetchResult;

    .line 457
    .line 458
    if-nez v0, :cond_13

    .line 459
    .line 460
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 465
    .line 466
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->newRequest()Lcoil3/network/NetworkRequest;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    new-instance v4, Lcoil3/network/NetworkFetcher$doFetch$2;

    .line 471
    .line 472
    invoke-direct {v4, v2, v11}, Lcoil3/network/NetworkFetcher$doFetch$2;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)V

    .line 473
    .line 474
    .line 475
    iput-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Ljava/lang/Object;

    .line 476
    .line 477
    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$1:Ljava/lang/Object;

    .line 478
    .line 479
    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$2:Ljava/lang/Object;

    .line 480
    .line 481
    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$3:Ljava/lang/Object;

    .line 482
    .line 483
    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$4:Ljava/lang/Object;

    .line 484
    .line 485
    iput v8, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 486
    .line 487
    iget-object v0, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->callFactory:Lokhttp3/OkHttpClient;

    .line 488
    .line 489
    invoke-static {v0, v3, v4, v7}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->executeRequest-impl(Lokhttp3/OkHttpClient;Lcoil3/network/NetworkRequest;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    if-ne v0, v12, :cond_12

    .line 494
    .line 495
    :goto_9
    return-object v12

    .line 496
    :cond_12
    :goto_a
    check-cast v0, Lcoil3/fetch/SourceFetchResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 497
    .line 498
    :cond_13
    return-object v0

    .line 499
    :goto_b
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v1, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 502
    .line 503
    if-eqz v1, :cond_14

    .line 504
    .line 505
    :try_start_5
    invoke-static {v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 506
    .line 507
    .line 508
    goto :goto_c

    .line 509
    :catch_3
    move-exception v0

    .line 510
    throw v0

    .line 511
    :catch_4
    :cond_14
    :goto_c
    throw v0
.end method

.method public static final access$toImageSource(Lcoil3/network/NetworkFetcher;Lcoil3/network/SourceResponseBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lcoil3/network/NetworkFetcher$toImageSource$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    check-cast v0, Lcoil3/network/NetworkFetcher$toImageSource$1;

    .line 10
    .line 11
    iget v1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->label:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->label:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcoil3/network/NetworkFetcher$toImageSource$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, Lcoil3/network/NetworkFetcher$toImageSource$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    iget v1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->label:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-ne v1, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lokio/Buffer;

    .line 41
    .line 42
    iget-object v0, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcoil3/network/SourceResponseBody;

    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lokio/Buffer;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->L$1:Ljava/lang/Object;

    .line 67
    .line 68
    iput v3, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->label:I

    .line 69
    .line 70
    iget-object p1, p1, Lcoil3/network/SourceResponseBody;->source:Lokio/BufferedSource;

    .line 71
    .line 72
    invoke-interface {p1, p2}, Lokio/BufferedSource;->readAll(Lokio/BufferedSink;)J

    .line 73
    .line 74
    .line 75
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    .line 77
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 78
    .line 79
    if-ne p1, v0, :cond_3

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_3
    move-object p1, p2

    .line 83
    :goto_1
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance p2, Lcoil3/decode/SourceImageSource;

    .line 88
    .line 89
    invoke-direct {p2, p1, p0, v2}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Landroidx/room/Room;)V

    .line 90
    .line 91
    .line 92
    return-object p2
.end method

.method public static final access$writeToDiskCache(Lcoil3/network/NetworkFetcher;Lcoil3/disk/RealDiskCache$RealSnapshot;Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkResponse;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    instance-of v5, v4, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    move-object v5, v4

    .line 19
    check-cast v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    .line 20
    .line 21
    iget v6, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->label:I

    .line 22
    .line 23
    const/high16 v7, -0x80000000

    .line 24
    .line 25
    and-int v8, v6, v7

    .line 26
    .line 27
    if-eqz v8, :cond_0

    .line 28
    .line 29
    sub-int/2addr v6, v7

    .line 30
    iput v6, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->label:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    .line 34
    .line 35
    invoke-direct {v5, v1, v4}, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v4, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->result:Ljava/lang/Object;

    .line 39
    .line 40
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 41
    .line 42
    iget v7, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->label:I

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    const/4 v9, 0x1

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    if-eq v7, v9, :cond_2

    .line 51
    .line 52
    if-ne v7, v8, :cond_1

    .line 53
    .line 54
    iget-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$6:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v1, v0

    .line 57
    check-cast v1, Lcoil3/disk/RealDiskCache$RealEditor;

    .line 58
    .line 59
    iget-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$5:Ljava/lang/Object;

    .line 60
    .line 61
    move-object v2, v0

    .line 62
    check-cast v2, Lcoil3/network/NetworkResponse;

    .line 63
    .line 64
    iget-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$4:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lcoil3/network/CacheStrategy$WriteResult;

    .line 67
    .line 68
    iget-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$3:Ljava/lang/Object;

    .line 69
    .line 70
    move-object v3, v0

    .line 71
    check-cast v3, Lcoil3/network/NetworkResponse;

    .line 72
    .line 73
    iget-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$2:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lcoil3/network/NetworkRequest;

    .line 76
    .line 77
    iget-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lcoil3/network/NetworkResponse;

    .line 80
    .line 81
    iget-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 84
    .line 85
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto/16 :goto_e

    .line 89
    .line 90
    :catch_0
    move-exception v0

    .line 91
    goto/16 :goto_12

    .line 92
    .line 93
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 94
    .line 95
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v11

    .line 99
    :cond_2
    iget-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$3:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lcoil3/network/NetworkResponse;

    .line 102
    .line 103
    iget-object v2, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$2:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v2, Lcoil3/network/NetworkRequest;

    .line 106
    .line 107
    iget-object v2, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$1:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v2, Lcoil3/network/NetworkResponse;

    .line 110
    .line 111
    iget-object v2, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$0:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v2, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 114
    .line 115
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    move-object v3, v0

    .line 119
    move-object v0, v2

    .line 120
    move-object/from16 p4, v11

    .line 121
    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v4, v1, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 128
    .line 129
    iget-object v4, v4, Lcoil3/request/Options;->diskCachePolicy:Lcoil3/request/CachePolicy;

    .line 130
    .line 131
    invoke-virtual {v4}, Lcoil3/request/CachePolicy;->getWriteEnabled()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_5

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    :try_start_1
    invoke-static {v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .line 141
    .line 142
    :catch_1
    return-object v11

    .line 143
    :catch_2
    move-exception v0

    .line 144
    throw v0

    .line 145
    :cond_4
    move-object/from16 p4, v11

    .line 146
    .line 147
    goto/16 :goto_8

    .line 148
    .line 149
    :cond_5
    iget-object v4, v1, Lcoil3/network/NetworkFetcher;->cacheStrategy:Lkotlin/Lazy;

    .line 150
    .line 151
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Lcoil3/network/CacheStrategy;

    .line 156
    .line 157
    iput-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v11, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$1:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v11, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$2:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v3, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$3:Ljava/lang/Object;

    .line 164
    .line 165
    iput v9, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->label:I

    .line 166
    .line 167
    check-cast v4, Lcoil3/network/internal/DefaultCacheStrategy;

    .line 168
    .line 169
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    iget v4, v3, Lcoil3/network/NetworkResponse;->code:I

    .line 173
    .line 174
    const/16 v7, 0x130

    .line 175
    .line 176
    if-ne v4, v7, :cond_8

    .line 177
    .line 178
    if-eqz v2, :cond_8

    .line 179
    .line 180
    iget-object v2, v2, Lcoil3/network/NetworkResponse;->headers:Lcoil3/network/NetworkHeaders;

    .line 181
    .line 182
    iget-object v4, v3, Lcoil3/network/NetworkResponse;->headers:Lcoil3/network/NetworkHeaders;

    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    iget-object v2, v2, Lcoil3/network/NetworkHeaders;->data:Ljava/util/Map;

    .line 188
    .line 189
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 190
    .line 191
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Ljava/lang/Iterable;

    .line 199
    .line 200
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    if-eqz v12, :cond_6

    .line 209
    .line 210
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    check-cast v12, Ljava/util/Map$Entry;

    .line 215
    .line 216
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    check-cast v12, Ljava/util/Collection;

    .line 225
    .line 226
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_6
    iget-object v2, v4, Lcoil3/network/NetworkHeaders;->data:Ljava/util/Map;

    .line 235
    .line 236
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_7

    .line 249
    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    check-cast v4, Ljava/util/Map$Entry;

    .line 255
    .line 256
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    check-cast v12, Ljava/lang/String;

    .line 261
    .line 262
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    check-cast v4, Ljava/util/List;

    .line 267
    .line 268
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 269
    .line 270
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v12

    .line 274
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-interface {v7, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_7
    new-instance v2, Lcoil3/network/NetworkHeaders;

    .line 286
    .line 287
    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-direct {v2, v4}, Lcoil3/network/NetworkHeaders;-><init>(Ljava/util/Map;)V

    .line 292
    .line 293
    .line 294
    new-instance v4, Lcoil3/network/CacheStrategy$WriteResult;

    .line 295
    .line 296
    iget v14, v3, Lcoil3/network/NetworkResponse;->code:I

    .line 297
    .line 298
    iget-wide v12, v3, Lcoil3/network/NetworkResponse;->requestMillis:J

    .line 299
    .line 300
    move-object/from16 p4, v11

    .line 301
    .line 302
    move-wide v15, v12

    .line 303
    iget-wide v11, v3, Lcoil3/network/NetworkResponse;->responseMillis:J

    .line 304
    .line 305
    iget-object v7, v3, Lcoil3/network/NetworkResponse;->delegate:Ljava/lang/Object;

    .line 306
    .line 307
    new-instance v13, Lcoil3/network/NetworkResponse;

    .line 308
    .line 309
    const/16 v20, 0x0

    .line 310
    .line 311
    move-object/from16 v19, v2

    .line 312
    .line 313
    move-object/from16 v21, v7

    .line 314
    .line 315
    move-wide/from16 v17, v11

    .line 316
    .line 317
    invoke-direct/range {v13 .. v21}, Lcoil3/network/NetworkResponse;-><init>(IJJLcoil3/network/NetworkHeaders;Lcoil3/network/SourceResponseBody;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-direct {v4, v13}, Lcoil3/network/CacheStrategy$WriteResult;-><init>(Lcoil3/network/NetworkResponse;)V

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_8
    move-object/from16 p4, v11

    .line 325
    .line 326
    const/16 v2, 0xc8

    .line 327
    .line 328
    if-gt v2, v4, :cond_9

    .line 329
    .line 330
    const/16 v2, 0x12c

    .line 331
    .line 332
    if-ge v4, v2, :cond_9

    .line 333
    .line 334
    goto :goto_3

    .line 335
    :cond_9
    sget-object v2, Lcoil3/network/internal/DefaultCacheStrategy;->CACHEABLE_STATUS_CODES:Ljava/util/Set;

    .line 336
    .line 337
    new-instance v7, Ljava/lang/Integer;

    .line 338
    .line 339
    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    if-eqz v2, :cond_a

    .line 347
    .line 348
    :goto_3
    new-instance v2, Lcoil3/network/CacheStrategy$WriteResult;

    .line 349
    .line 350
    invoke-direct {v2, v3}, Lcoil3/network/CacheStrategy$WriteResult;-><init>(Lcoil3/network/NetworkResponse;)V

    .line 351
    .line 352
    .line 353
    :goto_4
    move-object v4, v2

    .line 354
    goto :goto_5

    .line 355
    :cond_a
    sget-object v2, Lcoil3/network/CacheStrategy$WriteResult;->DISABLED:Lcoil3/network/CacheStrategy$WriteResult;

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :goto_5
    if-ne v4, v6, :cond_b

    .line 359
    .line 360
    goto/16 :goto_11

    .line 361
    .line 362
    :cond_b
    :goto_6
    check-cast v4, Lcoil3/network/CacheStrategy$WriteResult;

    .line 363
    .line 364
    iget-object v2, v4, Lcoil3/network/CacheStrategy$WriteResult;->response:Lcoil3/network/NetworkResponse;

    .line 365
    .line 366
    if-nez v2, :cond_c

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_c
    if-eqz v0, :cond_d

    .line 370
    .line 371
    iget-object v0, v0, Lcoil3/disk/RealDiskCache$RealSnapshot;->snapshot:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 372
    .line 373
    iget-object v4, v0, Lcoil3/disk/DiskLruCache$Snapshot;->this$0:Lcoil3/disk/DiskLruCache;

    .line 374
    .line 375
    iget-object v7, v4, Lcoil3/disk/DiskLruCache;->lock:Ljava/lang/Object;

    .line 376
    .line 377
    monitor-enter v7

    .line 378
    :try_start_2
    invoke-virtual {v0}, Lcoil3/disk/DiskLruCache$Snapshot;->close()V

    .line 379
    .line 380
    .line 381
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$Snapshot;->entry:Lcoil3/disk/DiskLruCache$Entry;

    .line 382
    .line 383
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {v4, v0}, Lcoil3/disk/DiskLruCache;->edit(Ljava/lang/String;)Landroidx/compose/runtime/Latch;

    .line 386
    .line 387
    .line 388
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    monitor-exit v7

    .line 390
    if-eqz v0, :cond_f

    .line 391
    .line 392
    new-instance v4, Lcoil3/disk/RealDiskCache$RealEditor;

    .line 393
    .line 394
    invoke-direct {v4, v0}, Lcoil3/disk/RealDiskCache$RealEditor;-><init>(Landroidx/compose/runtime/Latch;)V

    .line 395
    .line 396
    .line 397
    goto :goto_7

    .line 398
    :catchall_0
    move-exception v0

    .line 399
    monitor-exit v7

    .line 400
    throw v0

    .line 401
    :cond_d
    iget-object v0, v1, Lcoil3/network/NetworkFetcher;->diskCache:Lkotlin/SynchronizedLazyImpl;

    .line 402
    .line 403
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 408
    .line 409
    if-eqz v0, :cond_f

    .line 410
    .line 411
    iget-object v4, v1, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 412
    .line 413
    iget-object v4, v4, Lcoil3/request/Options;->diskCacheKey:Ljava/lang/String;

    .line 414
    .line 415
    if-nez v4, :cond_e

    .line 416
    .line 417
    iget-object v4, v1, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 418
    .line 419
    :cond_e
    iget-object v0, v0, Lcoil3/disk/RealDiskCache;->cache:Lcoil3/disk/DiskLruCache;

    .line 420
    .line 421
    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 422
    .line 423
    invoke-static {v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    const-string v7, "SHA-256"

    .line 428
    .line 429
    invoke-virtual {v4, v7}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-virtual {v0, v4}, Lcoil3/disk/DiskLruCache;->edit(Ljava/lang/String;)Landroidx/compose/runtime/Latch;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    if-eqz v0, :cond_f

    .line 442
    .line 443
    new-instance v4, Lcoil3/disk/RealDiskCache$RealEditor;

    .line 444
    .line 445
    invoke-direct {v4, v0}, Lcoil3/disk/RealDiskCache$RealEditor;-><init>(Landroidx/compose/runtime/Latch;)V

    .line 446
    .line 447
    .line 448
    goto :goto_7

    .line 449
    :cond_f
    move-object/from16 v4, p4

    .line 450
    .line 451
    :goto_7
    if-nez v4, :cond_10

    .line 452
    .line 453
    :goto_8
    return-object p4

    .line 454
    :cond_10
    :try_start_3
    invoke-virtual {v1}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    iget-object v7, v4, Lcoil3/disk/RealDiskCache$RealEditor;->editor:Landroidx/compose/runtime/Latch;

    .line 459
    .line 460
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/Latch;->file(I)Lokio/Path;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    invoke-virtual {v0, v7, v10}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    new-instance v7, Lokio/RealBufferedSink;

    .line 472
    .line 473
    invoke-direct {v7, v0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 474
    .line 475
    .line 476
    :try_start_4
    invoke-static {v2, v7}, Lkotlin/text/UStringsKt;->writeTo(Lcoil3/network/NetworkResponse;Lokio/RealBufferedSink;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 477
    .line 478
    .line 479
    :try_start_5
    invoke-virtual {v7}, Lokio/RealBufferedSink;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 480
    .line 481
    .line 482
    move-object/from16 v0, p4

    .line 483
    .line 484
    goto :goto_a

    .line 485
    :catchall_1
    move-exception v0

    .line 486
    goto :goto_a

    .line 487
    :catchall_2
    move-exception v0

    .line 488
    move-object v11, v0

    .line 489
    :try_start_6
    invoke-virtual {v7}, Lokio/RealBufferedSink;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 490
    .line 491
    .line 492
    goto :goto_9

    .line 493
    :catchall_3
    move-exception v0

    .line 494
    :try_start_7
    invoke-static {v11, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 495
    .line 496
    .line 497
    :goto_9
    move-object v0, v11

    .line 498
    :goto_a
    if-nez v0, :cond_14

    .line 499
    .line 500
    iget-object v0, v2, Lcoil3/network/NetworkResponse;->body:Lcoil3/network/SourceResponseBody;

    .line 501
    .line 502
    if-eqz v0, :cond_13

    .line 503
    .line 504
    invoke-virtual {v1}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    iget-object v7, v4, Lcoil3/disk/RealDiskCache$RealEditor;->editor:Landroidx/compose/runtime/Latch;

    .line 509
    .line 510
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/Latch;->file(I)Lokio/Path;

    .line 511
    .line 512
    .line 513
    move-result-object v7

    .line 514
    move-object/from16 v9, p4

    .line 515
    .line 516
    iput-object v9, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$0:Ljava/lang/Object;

    .line 517
    .line 518
    iput-object v9, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$1:Ljava/lang/Object;

    .line 519
    .line 520
    iput-object v9, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$2:Ljava/lang/Object;

    .line 521
    .line 522
    iput-object v3, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$3:Ljava/lang/Object;

    .line 523
    .line 524
    iput-object v9, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$4:Ljava/lang/Object;

    .line 525
    .line 526
    iput-object v2, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$5:Ljava/lang/Object;

    .line 527
    .line 528
    iput-object v4, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$6:Ljava/lang/Object;

    .line 529
    .line 530
    iput v8, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->label:I

    .line 531
    .line 532
    iget-object v0, v0, Lcoil3/network/SourceResponseBody;->source:Lokio/BufferedSource;

    .line 533
    .line 534
    invoke-virtual {v1, v7, v10}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    new-instance v5, Lokio/RealBufferedSink;

    .line 542
    .line 543
    invoke-direct {v5, v1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 544
    .line 545
    .line 546
    :try_start_8
    invoke-interface {v0, v5}, Lokio/BufferedSource;->readAll(Lokio/BufferedSink;)J

    .line 547
    .line 548
    .line 549
    move-result-wide v0

    .line 550
    new-instance v7, Ljava/lang/Long;

    .line 551
    .line 552
    invoke-direct {v7, v0, v1}, Ljava/lang/Long;-><init>(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 553
    .line 554
    .line 555
    :try_start_9
    invoke-virtual {v5}, Lokio/RealBufferedSink;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 556
    .line 557
    .line 558
    move-object v11, v9

    .line 559
    goto :goto_d

    .line 560
    :catchall_4
    move-exception v0

    .line 561
    move-object v11, v0

    .line 562
    goto :goto_d

    .line 563
    :goto_b
    move-object v11, v0

    .line 564
    goto :goto_c

    .line 565
    :catchall_5
    move-exception v0

    .line 566
    goto :goto_b

    .line 567
    :goto_c
    :try_start_a
    invoke-virtual {v5}, Lokio/RealBufferedSink;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 568
    .line 569
    .line 570
    goto :goto_d

    .line 571
    :catchall_6
    move-exception v0

    .line 572
    :try_start_b
    invoke-static {v11, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 573
    .line 574
    .line 575
    :goto_d
    if-nez v11, :cond_12

    .line 576
    .line 577
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 578
    .line 579
    if-ne v0, v6, :cond_11

    .line 580
    .line 581
    goto :goto_11

    .line 582
    :cond_11
    move-object v1, v4

    .line 583
    move-object v4, v0

    .line 584
    :goto_e
    :try_start_c
    check-cast v4, Lkotlin/Unit;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 585
    .line 586
    goto :goto_10

    .line 587
    :cond_12
    :try_start_d
    throw v11
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 588
    :goto_f
    move-object v1, v4

    .line 589
    goto :goto_12

    .line 590
    :catch_3
    move-exception v0

    .line 591
    goto :goto_f

    .line 592
    :cond_13
    move-object v1, v4

    .line 593
    :goto_10
    :try_start_e
    invoke-virtual {v1}, Lcoil3/disk/RealDiskCache$RealEditor;->commitAndOpenSnapshot$1()Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 594
    .line 595
    .line 596
    move-result-object v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 597
    :goto_11
    return-object v6

    .line 598
    :cond_14
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 599
    :goto_12
    :try_start_10
    iget-object v1, v1, Lcoil3/disk/RealDiskCache$RealEditor;->editor:Landroidx/compose/runtime/Latch;

    .line 600
    .line 601
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/Latch;->complete(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 602
    .line 603
    .line 604
    :catch_4
    iget-object v1, v3, Lcoil3/network/NetworkResponse;->body:Lcoil3/network/SourceResponseBody;

    .line 605
    .line 606
    if-eqz v1, :cond_15

    .line 607
    .line 608
    :try_start_11
    invoke-static {v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 609
    .line 610
    .line 611
    goto :goto_13

    .line 612
    :catch_5
    move-exception v0

    .line 613
    throw v0

    .line 614
    :catch_6
    :cond_15
    :goto_13
    iget-object v1, v2, Lcoil3/network/NetworkResponse;->body:Lcoil3/network/SourceResponseBody;

    .line 615
    .line 616
    if-eqz v1, :cond_16

    .line 617
    .line 618
    :try_start_12
    invoke-static {v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 619
    .line 620
    .line 621
    goto :goto_14

    .line 622
    :catch_7
    move-exception v0

    .line 623
    throw v0

    .line 624
    :catch_8
    :cond_16
    :goto_14
    throw v0
.end method

.method public static getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string/jumbo v1, "text/plain"

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :goto_0
    move-object v1, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/16 v1, 0x23

    .line 23
    .line 24
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/16 v1, 0x3f

    .line 29
    .line 30
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/16 v1, 0x2f

    .line 35
    .line 36
    invoke-static {v1, p0, p0}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/16 v1, 0x2e

    .line 41
    .line 42
    const-string v2, ""

    .line 43
    .line 44
    invoke-static {v1, p0, v2}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget-object v1, Lcoil3/util/MimeTypesKt;->mimeTypeData:Lkotlin/collections/builders/MapBuilder;

    .line 65
    .line 66
    invoke-virtual {v1, p0}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_4
    if-eqz p1, :cond_5

    .line 86
    .line 87
    const/16 p0, 0x3b

    .line 88
    .line 89
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_5
    return-object v0
.end method


# virtual methods
.method public final fetch(Lcoil3/intercept/EngineInterceptor$fetch$1;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcoil3/network/NetworkFetcher;->concurrentRequestStrategy:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil3/network/UncoordinatedConcurrentRequestStrategy;

    .line 8
    .line 9
    iget-object v1, p0, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 10
    .line 11
    iget-object v1, v1, Lcoil3/request/Options;->diskCacheKey:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Lcoil3/network/NetworkFetcher$fetch$2;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const-class v5, Lcoil3/network/NetworkFetcher;

    .line 19
    .line 20
    const-string v6, "doFetch"

    .line 21
    .line 22
    const-string v7, "doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 23
    .line 24
    move-object v4, p0

    .line 25
    invoke-direct/range {v2 .. v9}, Lcoil3/network/NetworkFetcher$fetch$2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lcoil3/network/NetworkFetcher$fetch$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final getFileSystem()Lokio/FileSystem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/network/NetworkFetcher;->diskCache:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lcoil3/disk/RealDiskCache;->fileSystem:Lokio/FileSystem;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0

    .line 17
    :cond_1
    :goto_0
    iget-object p0, p0, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 18
    .line 19
    iget-object p0, p0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 20
    .line 21
    return-object p0
.end method

.method public final newRequest()Lcoil3/network/NetworkRequest;
    .locals 5

    .line 1
    sget-object v0, Lcoil3/network/ImageRequestsKt;->httpHeadersKey:Lcoil3/Extras$Key;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcoil3/network/NetworkHeaders;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroidx/work/Data$Builder;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Landroidx/work/Data$Builder;-><init>(Lcoil3/network/NetworkHeaders;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Lcoil3/request/Options;->diskCachePolicy:Lcoil3/request/CachePolicy;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->getReadEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, v1, Lcoil3/request/Options;->networkCachePolicy:Lcoil3/request/CachePolicy;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcoil3/request/CachePolicy;->getReadEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget-object v4, p0, Lcoil3/network/NetworkFetcher;->connectivityChecker:Lkotlin/InitializedLazyImpl;

    .line 34
    .line 35
    invoke-virtual {v4}, Lkotlin/InitializedLazyImpl;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcoil3/network/ConnectivityChecker;

    .line 40
    .line 41
    invoke-interface {v4}, Lcoil3/network/ConnectivityChecker;->isOnline()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v4, 0x0

    .line 50
    :goto_0
    if-nez v4, :cond_1

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    const-string v0, "only-if-cached, max-stale=2147483647"

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroidx/work/Data$Builder;->set(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    if-eqz v4, :cond_3

    .line 61
    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->getWriteEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    const-string v0, "no-cache"

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Landroidx/work/Data$Builder;->set(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const-string v0, "no-cache, no-store"

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Landroidx/work/Data$Builder;->set(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    if-nez v4, :cond_4

    .line 83
    .line 84
    if-nez v3, :cond_4

    .line 85
    .line 86
    const-string v0, "no-cache, only-if-cached"

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Landroidx/work/Data$Builder;->set(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_1
    new-instance v0, Lcoil3/network/NetworkRequest;

    .line 92
    .line 93
    sget-object v3, Lcoil3/network/ImageRequestsKt;->httpMethodKey:Lcoil3/Extras$Key;

    .line 94
    .line 95
    invoke-static {v1, v3}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Ljava/lang/String;

    .line 100
    .line 101
    new-instance v4, Lcoil3/network/NetworkHeaders;

    .line 102
    .line 103
    iget-object v2, v2, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 104
    .line 105
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-direct {v4, v2}, Lcoil3/network/NetworkHeaders;-><init>(Ljava/util/Map;)V

    .line 110
    .line 111
    .line 112
    sget-object v2, Lcoil3/network/ImageRequestsKt;->httpBodyKey:Lcoil3/Extras$Key;

    .line 113
    .line 114
    invoke-static {v1, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    iget-object v1, v1, Lcoil3/request/Options;->extras:Lcoil3/Extras;

    .line 121
    .line 122
    iget-object p0, p0, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 123
    .line 124
    invoke-direct {v0, p0, v3, v4, v1}, Lcoil3/network/NetworkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcoil3/network/NetworkHeaders;Lcoil3/Extras;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_5
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 129
    .line 130
    .line 131
    const/4 p0, 0x0

    .line 132
    return-object p0
.end method

.method public final toImageSource(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/decode/FileImageSource;
    .locals 3

    .line 1
    iget-object v0, p1, Lcoil3/disk/RealDiskCache$RealSnapshot;->snapshot:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcoil3/disk/DiskLruCache$Snapshot;->closed:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$Snapshot;->entry:Lcoil3/disk/DiskLruCache$Entry;

    .line 8
    .line 9
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$Entry;->cleanFiles:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lokio/Path;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 23
    .line 24
    iget-object v2, v2, Lcoil3/request/Options;->diskCacheKey:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    const/16 p0, 0x10

    .line 31
    .line 32
    invoke-static {v0, v1, v2, p1, p0}, Lnet/newpipe/app/AppKt;->ImageSource$default(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/RealDiskCache$RealSnapshot;I)Lcoil3/decode/FileImageSource;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    const-string/jumbo p0, "snapshot is closed"

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public final toNetworkResponseOrNull(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/network/NetworkResponse;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iget-object p1, p1, Lcoil3/disk/RealDiskCache$RealSnapshot;->snapshot:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 7
    .line 8
    iget-boolean v1, p1, Lcoil3/disk/DiskLruCache$Snapshot;->closed:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lcoil3/disk/DiskLruCache$Snapshot;->entry:Lcoil3/disk/DiskLruCache$Entry;

    .line 13
    .line 14
    iget-object p1, p1, Lcoil3/disk/DiskLruCache$Entry;->cleanFiles:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lokio/Path;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance p1, Lokio/RealBufferedSource;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-static {p1}, Lkotlin/text/UStringsKt;->readFrom(Lokio/RealBufferedSource;)Lcoil3/network/NetworkResponse;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    invoke-virtual {p1}, Lokio/RealBufferedSource;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    move-object p1, v0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    :try_start_3
    invoke-virtual {p1}, Lokio/RealBufferedSource;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_2
    move-exception p1

    .line 52
    :try_start_4
    invoke-static {p0, p1}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    move-object p1, p0

    .line 56
    move-object p0, v0

    .line 57
    :goto_1
    if-nez p1, :cond_0

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_0
    throw p1

    .line 61
    :cond_1
    const-string/jumbo p0, "snapshot is closed"

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    :catch_0
    return-object v0
.end method
