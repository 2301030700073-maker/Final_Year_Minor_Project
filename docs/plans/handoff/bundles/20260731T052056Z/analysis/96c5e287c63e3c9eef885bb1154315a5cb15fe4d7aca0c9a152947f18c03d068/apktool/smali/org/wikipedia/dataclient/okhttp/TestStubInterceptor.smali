.class public final Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static getCacheWritingResponse(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "\n"

    .line 6
    .line 7
    const-string v3, "Content-Type"

    .line 8
    .line 9
    const-string v4, "*/*"

    .line 10
    .line 11
    invoke-virtual {v1, v3, v4}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v4, "Content-Length"

    .line 19
    .line 20
    const-string v5, "-1"

    .line 21
    .line 22
    invoke-virtual {v1, v4, v5}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 34
    .line 35
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v6, "offline_files"

    .line 61
    .line 62
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    new-instance v8, Ljava/io/File;

    .line 70
    .line 71
    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 75
    .line 76
    .line 77
    iget-object v8, v0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 78
    .line 79
    iget-object v9, v8, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 80
    .line 81
    const-string v10, "image"

    .line 82
    .line 83
    const/4 v11, 0x0

    .line 84
    invoke-static {v3, v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    const-string v12, "MD5"

    .line 89
    .line 90
    if-eqz v10, :cond_0

    .line 91
    .line 92
    sget-object v10, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 93
    .line 94
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 95
    .line 96
    invoke-static {v9}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-virtual {v9, v12}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {v9}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    move-object/from16 v13, p2

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    sget-object v10, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 112
    .line 113
    new-instance v10, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    move-object/from16 v13, p2

    .line 119
    .line 120
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v14, ":"

    .line 124
    .line 125
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 136
    .line 137
    invoke-static {v9}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-virtual {v9, v12}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v9}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    :goto_0
    invoke-static {v6, v7, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    new-instance v7, Ljava/io/File;

    .line 154
    .line 155
    const-string v9, ".0"

    .line 156
    .line 157
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v9, Ljava/io/File;

    .line 165
    .line 166
    const-string v10, ".1"

    .line 167
    .line 168
    invoke-virtual {v6, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :try_start_0
    new-instance v10, Ljava/io/OutputStreamWriter;

    .line 176
    .line 177
    new-instance v12, Ljava/io/FileOutputStream;

    .line 178
    .line 179
    invoke-direct {v12, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {v10, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .line 184
    .line 185
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v10, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, v0, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 204
    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v10, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, v1, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 224
    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v10, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget v0, v1, Lokhttp3/Response;->code:I

    .line 244
    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v10, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, v1, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 264
    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v10, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, v1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 284
    .line 285
    new-instance v7, Ljava/util/TreeSet;

    .line 286
    .line 287
    sget-object v12, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 288
    .line 289
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-direct {v7, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    move v14, v11

    .line 300
    :goto_1
    if-ge v14, v12, :cond_1

    .line 301
    .line 302
    invoke-static {v0, v14}, Lorg/jsoup/Jsoup;->commonName(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v15

    .line 306
    invoke-virtual {v7, v15}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    add-int/lit8 v14, v14, 0x1

    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_1
    invoke-static {v7}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    check-cast v0, Ljava/lang/Iterable;

    .line 320
    .line 321
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    const/4 v12, 0x0

    .line 330
    if-eqz v7, :cond_2

    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    check-cast v7, Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v1, v7, v12}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v12

    .line 342
    new-instance v14, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v7, ": "

    .line 351
    .line 352
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    invoke-virtual {v10, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    goto :goto_2

    .line 369
    :catchall_0
    move-exception v0

    .line 370
    move-object v2, v0

    .line 371
    goto :goto_3

    .line 372
    :cond_2
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    .line 374
    .line 375
    :try_start_2
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 376
    .line 377
    .line 378
    goto :goto_5

    .line 379
    :catchall_1
    move-exception v0

    .line 380
    move-object v12, v0

    .line 381
    goto :goto_5

    .line 382
    :goto_3
    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 383
    .line 384
    .line 385
    goto :goto_4

    .line 386
    :catchall_2
    move-exception v0

    .line 387
    :try_start_4
    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 388
    .line 389
    .line 390
    :goto_4
    move-object v12, v2

    .line 391
    :goto_5
    if-nez v12, :cond_4

    .line 392
    .line 393
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    .line 394
    .line 395
    invoke-direct {v0, v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 396
    .line 397
    .line 398
    new-instance v2, Lokio/OutputStreamSink;

    .line 399
    .line 400
    new-instance v7, Lokio/Timeout;

    .line 401
    .line 402
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-direct {v2, v0, v7}, Lokio/OutputStreamSink;-><init>(Ljava/io/FileOutputStream;Lokio/Timeout;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Lokio/RealBufferedSink;

    .line 409
    .line 410
    invoke-direct {v0, v2}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 411
    .line 412
    .line 413
    iget-object v2, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 414
    .line 415
    if-eqz v2, :cond_3

    .line 416
    .line 417
    new-instance v13, Lorg/wikipedia/offline/db/OfflineObject;

    .line 418
    .line 419
    iget-object v7, v8, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 420
    .line 421
    const/4 v14, 0x0

    .line 422
    const-string v19, ""

    .line 423
    .line 424
    const/4 v15, 0x0

    .line 425
    move-object/from16 v17, p2

    .line 426
    .line 427
    move-object/from16 v18, v6

    .line 428
    .line 429
    move-object/from16 v16, v7

    .line 430
    .line 431
    invoke-direct/range {v13 .. v19}, Lorg/wikipedia/offline/db/OfflineObject;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    new-instance v6, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;

    .line 435
    .line 436
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    move-object/from16 v7, p3

    .line 441
    .line 442
    invoke-direct {v6, v2, v0, v13, v7}, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;-><init>(Lokio/BufferedSource;Lokio/RealBufferedSink;Lorg/wikipedia/offline/db/OfflineObject;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    new-instance v1, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;

    .line 450
    .line 451
    invoke-direct {v1, v6, v3, v4, v5}, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;-><init>(Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;Ljava/lang/String;J)V

    .line 452
    .line 453
    .line 454
    iput-object v1, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 455
    .line 456
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    goto :goto_6

    .line 461
    :cond_3
    move-object v0, v1

    .line 462
    :goto_6
    return-object v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 465
    .line 466
    .line 467
    return-object v1

    .line 468
    :cond_4
    :try_start_6
    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 469
    :catch_1
    move-exception v0

    .line 470
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 471
    .line 472
    .line 473
    return-object v1
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 12

    .line 1
    iget p0, p0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "Cache-Control"

    .line 4
    .line 5
    const-string v2, "save"

    .line 6
    .line 7
    const-string v3, "X-Offline-Save"

    .line 8
    .line 9
    const-string v0, "+"

    .line 10
    .line 11
    const-string v4, "UTF-8"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    packed-switch p0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p1, p0, Lokhttp3/Response;->code:I

    .line 25
    .line 26
    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 27
    .line 28
    const/16 v1, 0x190

    .line 29
    .line 30
    const/16 v2, 0xcf

    .line 31
    .line 32
    if-ge p1, v1, :cond_0

    .line 33
    .line 34
    if-ne p1, v2, :cond_1

    .line 35
    .line 36
    :cond_0
    if-ne p1, v2, :cond_2

    .line 37
    .line 38
    iget-object v1, v0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 39
    .line 40
    iget-object v1, v1, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 41
    .line 42
    const-string v2, "/events"

    .line 43
    .line 44
    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    :cond_1
    return-object p0

    .line 51
    :cond_2
    new-instance v1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;-><init>(Lokhttp3/Response;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, v0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 60
    .line 61
    iget-object v2, v2, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 62
    .line 63
    const-string v3, "/320px-"

    .line 64
    .line 65
    invoke-static {v2, v3, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 72
    .line 73
    iget-object v2, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const-class v4, Lkotlin/uuid/UuidKt;

    .line 80
    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :cond_3
    move-object v6, v2

    .line 94
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 95
    .line 96
    invoke-virtual {v2, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    iget-object v2, v0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 105
    .line 106
    iget-object v10, v2, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v9, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$Http;

    .line 109
    .line 110
    iget-object v0, v0, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 111
    .line 112
    iget-object p0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 113
    .line 114
    invoke-virtual {p0}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v9, v0, p0, p1}, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$Http;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    .line 124
    .line 125
    new-instance v5, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;

    .line 126
    .line 127
    const/4 v8, 0x0

    .line 128
    const/16 v11, 0xc

    .line 129
    .line 130
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$Http;Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    invoke-static {v5}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    throw v1

    .line 137
    :pswitch_0
    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 138
    .line 139
    iget-object v1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 140
    .line 141
    iget-object v1, v1, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    const/4 v2, 0x2

    .line 148
    if-le v1, v2, :cond_7

    .line 149
    .line 150
    iget-object v1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 151
    .line 152
    iget-object v2, v1, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    move v7, v6

    .line 163
    :goto_0
    if-ge v7, v3, :cond_6

    .line 164
    .line 165
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    check-cast v8, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    :try_start_0
    invoke-static {v8, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    const-string v9, "%20"

    .line 182
    .line 183
    invoke-static {v8, v0, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const-string v9, " \"<>^`{}|/\\?#"

    .line 188
    .line 189
    const/16 v10, 0x73

    .line 190
    .line 191
    invoke-static {v6, v6, v10, v8, v9}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    iget-object v10, v1, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v10, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v10, v7, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    const-string v10, "."

    .line 203
    .line 204
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-nez v10, :cond_5

    .line 209
    .line 210
    const-string v10, "%2e"

    .line 211
    .line 212
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-nez v10, :cond_5

    .line 217
    .line 218
    invoke-static {v9}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-nez v9, :cond_5

    .line 223
    .line 224
    add-int/lit8 v7, v7, 0x1

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_5
    const-string/jumbo p0, "unexpected path segment: "

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    move-object p0, v0

    .line 240
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_6
    invoke-virtual {p0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iput-object v0, p0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 253
    .line 254
    new-instance v0, Lokhttp3/Request;

    .line 255
    .line 256
    invoke-direct {v0, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    goto :goto_1

    .line 264
    :cond_7
    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    :goto_1
    return-object v5

    .line 269
    :pswitch_1
    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 270
    .line 271
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 272
    .line 273
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    iget-object v8, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 280
    .line 281
    const-string v9, "X-Offline-Lang"

    .line 282
    .line 283
    invoke-virtual {v8, v9}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    iput-object v9, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 288
    .line 289
    const-string v9, "X-Offline-Title"

    .line 290
    .line 291
    invoke-virtual {v8, v9}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    const-string v10, ""

    .line 296
    .line 297
    if-nez v9, :cond_8

    .line 298
    .line 299
    move-object v9, v10

    .line 300
    :cond_8
    :try_start_1
    const-string v11, "%2B"

    .line 301
    .line 302
    invoke-static {v9, v0, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    .line 312
    .line 313
    move-object v9, v0

    .line 314
    goto :goto_2

    .line 315
    :catch_1
    move-exception v0

    .line 316
    move-object p0, v0

    .line 317
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_b

    .line 321
    .line 322
    :catch_2
    const-string v0, "URL decoding failed. String was: "

    .line 323
    .line 324
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :goto_2
    :try_start_2
    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    iget-boolean v0, p1, Lokhttp3/Response;->isSuccessful:Z

    .line 336
    .line 337
    if-eqz v0, :cond_a

    .line 338
    .line 339
    iget-object v0, p1, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    .line 340
    .line 341
    if-eqz v0, :cond_a

    .line 342
    .line 343
    const-string v0, "GET"

    .line 344
    .line 345
    iget-object v4, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_a

    .line 352
    .line 353
    invoke-virtual {v8, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_a

    .line 362
    .line 363
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Ljava/lang/CharSequence;

    .line 366
    .line 367
    if-eqz v0, :cond_a

    .line 368
    .line 369
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-nez v0, :cond_9

    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-lez v0, :cond_a

    .line 381
    .line 382
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v0, Ljava/lang/String;

    .line 385
    .line 386
    invoke-static {p0, p1, v0, v9}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;->getCacheWritingResponse(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    .line 387
    .line 388
    .line 389
    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 390
    goto/16 :goto_b

    .line 391
    .line 392
    :catch_3
    move-exception v0

    .line 393
    move-object p1, v0

    .line 394
    goto :goto_4

    .line 395
    :cond_a
    :goto_3
    move-object v5, p1

    .line 396
    goto/16 :goto_b

    .line 397
    .line 398
    :goto_4
    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 399
    .line 400
    iget-object v0, v0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 401
    .line 402
    iget-object v4, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v4, Ljava/lang/CharSequence;

    .line 405
    .line 406
    if-eqz v4, :cond_b

    .line 407
    .line 408
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    if-nez v4, :cond_c

    .line 413
    .line 414
    :cond_b
    const-string v4, "/commons/"

    .line 415
    .line 416
    invoke-static {v0, v4, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_15

    .line 421
    .line 422
    iput-object v10, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 423
    .line 424
    :cond_c
    new-instance v4, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 425
    .line 426
    const/4 v8, 0x5

    .line 427
    invoke-direct {v4, v0, v7, v5, v8}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 428
    .line 429
    .line 430
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 431
    .line 432
    invoke-static {v0, v4}, Lkotlinx/coroutines/AwaitKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    check-cast v0, Lorg/wikipedia/offline/db/OfflineObject;

    .line 437
    .line 438
    if-eqz v0, :cond_14

    .line 439
    .line 440
    iget-object p1, v0, Lorg/wikipedia/offline/db/OfflineObject;->path:Ljava/lang/String;

    .line 441
    .line 442
    new-instance v0, Ljava/io/File;

    .line 443
    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string v7, ".0"

    .line 453
    .line 454
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    new-instance v4, Ljava/io/File;

    .line 465
    .line 466
    new-instance v7, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string p1, ".1"

    .line 475
    .line 476
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 487
    .line 488
    .line 489
    move-result p1

    .line 490
    if-eqz p1, :cond_13

    .line 491
    .line 492
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    if-eqz p1, :cond_13

    .line 497
    .line 498
    new-instance p1, Lokhttp3/Response$Builder;

    .line 499
    .line 500
    invoke-direct {p1}, Lokhttp3/Response$Builder;-><init>()V

    .line 501
    .line 502
    .line 503
    iput-object p0, p1, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 504
    .line 505
    sget-object p0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 506
    .line 507
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    iput-object p0, p1, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    .line 511
    .line 512
    const-string p0, "*/*"

    .line 513
    .line 514
    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    .line 515
    .line 516
    new-instance v8, Ljava/io/InputStreamReader;

    .line 517
    .line 518
    new-instance v9, Ljava/io/FileInputStream;

    .line 519
    .line 520
    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 521
    .line 522
    .line 523
    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 524
    .line 525
    .line 526
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 527
    .line 528
    .line 529
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    .line 544
    .line 545
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    iput v0, p1, Lokhttp3/Response$Builder;->code:I

    .line 550
    .line 551
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    if-eqz v0, :cond_d

    .line 556
    .line 557
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 558
    .line 559
    .line 560
    move-result v8

    .line 561
    if-nez v8, :cond_e

    .line 562
    .line 563
    goto :goto_5

    .line 564
    :catchall_0
    move-exception v0

    .line 565
    move-object v5, v0

    .line 566
    goto :goto_8

    .line 567
    :cond_d
    :goto_5
    const-string v0, "OK"

    .line 568
    .line 569
    :cond_e
    iput-object v0, p1, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 570
    .line 571
    :cond_f
    :goto_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    if-nez v0, :cond_10

    .line 576
    .line 577
    goto :goto_7

    .line 578
    :cond_10
    const-string v8, ":"

    .line 579
    .line 580
    const/4 v9, 0x6

    .line 581
    invoke-static {v0, v8, v6, v6, v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 582
    .line 583
    .line 584
    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 585
    if-gez v8, :cond_11

    .line 586
    .line 587
    :goto_7
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 588
    .line 589
    .line 590
    goto :goto_9

    .line 591
    :catchall_1
    move-exception v0

    .line 592
    move-object v5, v0

    .line 593
    goto :goto_9

    .line 594
    :cond_11
    :try_start_6
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v9

    .line 598
    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 599
    .line 600
    .line 601
    move-result-object v9

    .line 602
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v9

    .line 606
    add-int/lit8 v8, v8, 0x1

    .line 607
    .line 608
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual {p1, v9, v0}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    const-string v8, "content-type"

    .line 624
    .line 625
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 626
    .line 627
    .line 628
    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 629
    if-eqz v8, :cond_f

    .line 630
    .line 631
    move-object p0, v0

    .line 632
    goto :goto_6

    .line 633
    :goto_8
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 634
    .line 635
    .line 636
    goto :goto_9

    .line 637
    :catchall_2
    move-exception v0

    .line 638
    :try_start_8
    invoke-static {v5, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 639
    .line 640
    .line 641
    :goto_9
    if-nez v5, :cond_12

    .line 642
    .line 643
    goto :goto_a

    .line 644
    :cond_12
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 645
    :catch_4
    move-exception v0

    .line 646
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 647
    .line 648
    .line 649
    :goto_a
    const-string v0, "no-cache"

    .line 650
    .line 651
    invoke-virtual {p1, v1, v0}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p1, v3, v2}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CachedResponseBody;

    .line 658
    .line 659
    invoke-direct {v0, v4, p0}, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CachedResponseBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    iput-object v0, p1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 663
    .line 664
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 665
    .line 666
    .line 667
    move-result-object v5

    .line 668
    goto :goto_b

    .line 669
    :cond_13
    const-string p0, "Offline object not present in filesystem."

    .line 670
    .line 671
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    :goto_b
    return-object v5

    .line 675
    :cond_14
    const-string p0, "Offline object not present in database."

    .line 676
    .line 677
    sget-object v0, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 678
    .line 679
    invoke-virtual {v0, p0, v5}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 680
    .line 681
    .line 682
    throw p1

    .line 683
    :cond_15
    throw p1

    .line 684
    :pswitch_2
    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 685
    .line 686
    invoke-virtual {p0}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    iget-boolean v0, v0, Lokhttp3/CacheControl;->noCache:Z

    .line 691
    .line 692
    if-nez v0, :cond_17

    .line 693
    .line 694
    invoke-virtual {p0}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    iget v0, v0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 699
    .line 700
    if-eqz v0, :cond_17

    .line 701
    .line 702
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 703
    .line 704
    new-array v0, v6, [Ljava/lang/Object;

    .line 705
    .line 706
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 707
    .line 708
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    const v2, 0x7f120643

    .line 717
    .line 718
    .line 719
    invoke-static {v0, v6, v1, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    invoke-static {v1, v6, v0, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-nez v0, :cond_16

    .line 732
    .line 733
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    if-nez v0, :cond_17

    .line 742
    .line 743
    :cond_16
    invoke-virtual {p0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 744
    .line 745
    .line 746
    move-result-object p0

    .line 747
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_MAX_STALE:Lokhttp3/CacheControl;

    .line 748
    .line 749
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)V

    .line 750
    .line 751
    .line 752
    new-instance v0, Lokhttp3/Request;

    .line 753
    .line 754
    invoke-direct {v0, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 755
    .line 756
    .line 757
    move-object p0, v0

    .line 758
    :cond_17
    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 759
    .line 760
    .line 761
    move-result-object p0

    .line 762
    return-object p0

    .line 763
    :pswitch_3
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 764
    .line 765
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 766
    .line 767
    .line 768
    move-result-object p0

    .line 769
    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 770
    .line 771
    iget-object v1, v0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 772
    .line 773
    iget-object v1, v1, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->userAgent$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 780
    .line 781
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object p0

    .line 785
    check-cast p0, Ljava/lang/String;

    .line 786
    .line 787
    const-string v2, "User-Agent"

    .line 788
    .line 789
    invoke-virtual {v0, v2, p0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    const-string p0, "X-WMF-UUID"

    .line 793
    .line 794
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getAppInstallID()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    invoke-virtual {v0, p0, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    const-string p0, "page/mobile-html/"

    .line 802
    .line 803
    invoke-static {v1, p0, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 804
    .line 805
    .line 806
    move-result p0

    .line 807
    if-eqz p0, :cond_18

    .line 808
    .line 809
    const-string p0, "Accept"

    .line 810
    .line 811
    const-string v1, "application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/Mobile-HTML/1.2.1\""

    .line 812
    .line 813
    invoke-virtual {v0, p0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    goto :goto_c

    .line 817
    :cond_18
    const-string p0, "maps.wikimedia.org"

    .line 818
    .line 819
    invoke-static {v1, p0, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 820
    .line 821
    .line 822
    move-result p0

    .line 823
    if-eqz p0, :cond_19

    .line 824
    .line 825
    const-string p0, "Referer"

    .line 826
    .line 827
    const-string v1, "https://maps.wikimedia.org/"

    .line 828
    .line 829
    invoke-virtual {v0, p0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    :cond_19
    :goto_c
    new-instance p0, Lokhttp3/Request;

    .line 833
    .line 834
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 838
    .line 839
    .line 840
    move-result-object p0

    .line 841
    return-object p0

    .line 842
    :pswitch_4
    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 843
    .line 844
    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 853
    .line 854
    .line 855
    move-result-object v4

    .line 856
    iget-boolean v4, v4, Lokhttp3/CacheControl;->isPrivate:Z

    .line 857
    .line 858
    if-nez v4, :cond_1b

    .line 859
    .line 860
    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    iget-boolean v4, v4, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 865
    .line 866
    if-eqz v4, :cond_1b

    .line 867
    .line 868
    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    iget v4, v4, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 873
    .line 874
    if-lez v4, :cond_1a

    .line 875
    .line 876
    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 877
    .line 878
    .line 879
    move-result-object p1

    .line 880
    iget v6, p1, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 881
    .line 882
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 883
    .line 884
    const-string v4, "max-age="

    .line 885
    .line 886
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object p1

    .line 896
    invoke-virtual {v0, v1, p1}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    :cond_1b
    iget-object p0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 900
    .line 901
    invoke-virtual {p0, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object p0

    .line 905
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    move-result p0

    .line 909
    if-eqz p0, :cond_1c

    .line 910
    .line 911
    const-string p0, "Vary"

    .line 912
    .line 913
    iget-object p1, v0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 914
    .line 915
    invoke-virtual {p1, p0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    const-string p0, "set-cookie"

    .line 919
    .line 920
    iget-object p1, v0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 921
    .line 922
    invoke-virtual {p1, p0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    :cond_1c
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 926
    .line 927
    .line 928
    move-result-object p0

    .line 929
    return-object p0

    .line 930
    :pswitch_5
    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 931
    .line 932
    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 933
    .line 934
    .line 935
    move-result-object p0

    .line 936
    return-object p0

    .line 937
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
