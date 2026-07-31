.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public volatile level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public final logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 7
    .line 8
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 9
    .line 10
    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 6
    .line 7
    iget-object v3, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 8
    .line 9
    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 10
    .line 11
    if-ne v2, v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    if-ne v2, v4, :cond_1

    .line 22
    .line 23
    move v4, v6

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v4, 0x0

    .line 26
    :goto_0
    if-nez v4, :cond_3

    .line 27
    .line 28
    sget-object v7, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 29
    .line 30
    if-ne v2, v7, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v6, 0x0

    .line 34
    :cond_3
    :goto_1
    iget-object v2, v3, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 35
    .line 36
    iget-object v7, v0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Landroidx/compose/runtime/Latch;

    .line 37
    .line 38
    if-eqz v7, :cond_4

    .line 39
    .line 40
    invoke-virtual {v7}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    goto :goto_2

    .line 45
    :cond_4
    const/4 v7, 0x0

    .line 46
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v10, "--> "

    .line 49
    .line 50
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v10, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 v10, 0x20

    .line 59
    .line 60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v10, v3, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 64
    .line 65
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v10, v10, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v10, ""

    .line 74
    .line 75
    const-string v11, " "

    .line 76
    .line 77
    if-eqz v7, :cond_5

    .line 78
    .line 79
    new-instance v12, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v7, v7, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 85
    .line 86
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move-object v7, v10

    .line 95
    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    const-string v9, "-byte body)"

    .line 103
    .line 104
    const-string v12, " ("

    .line 105
    .line 106
    if-nez v6, :cond_6

    .line 107
    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    new-instance v13, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    .line 119
    .line 120
    .line 121
    move-result-wide v14

    .line 122
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    :cond_6
    iget-object v13, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 133
    .line 134
    invoke-virtual {v13, v7}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v7, "identity"

    .line 138
    .line 139
    const-string v13, "-byte body omitted)"

    .line 140
    .line 141
    const-string v14, "Content-Encoding"

    .line 142
    .line 143
    const-string v15, "gzip"

    .line 144
    .line 145
    const-wide/16 v16, -0x1

    .line 146
    .line 147
    if-eqz v6, :cond_15

    .line 148
    .line 149
    iget-object v5, v3, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 150
    .line 151
    if-eqz v2, :cond_9

    .line 152
    .line 153
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    move/from16 v18, v4

    .line 158
    .line 159
    if-eqz v8, :cond_7

    .line 160
    .line 161
    const-string v4, "Content-Type"

    .line 162
    .line 163
    invoke-virtual {v5, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    if-nez v4, :cond_7

    .line 168
    .line 169
    iget-object v4, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 170
    .line 171
    move/from16 v19, v6

    .line 172
    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    move-object/from16 v20, v11

    .line 176
    .line 177
    const-string v11, "Content-Type: "

    .line 178
    .line 179
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v4, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_7
    move/from16 v19, v6

    .line 194
    .line 195
    move-object/from16 v20, v11

    .line 196
    .line 197
    :goto_4
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    .line 198
    .line 199
    .line 200
    move-result-wide v21

    .line 201
    cmp-long v4, v21, v16

    .line 202
    .line 203
    if-eqz v4, :cond_8

    .line 204
    .line 205
    const-string v4, "Content-Length"

    .line 206
    .line 207
    invoke-virtual {v5, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    if-nez v4, :cond_8

    .line 212
    .line 213
    iget-object v4, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 214
    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v8, "Content-Length: "

    .line 218
    .line 219
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    move-object v11, v9

    .line 223
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    .line 224
    .line 225
    .line 226
    move-result-wide v8

    .line 227
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v4, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_8
    :goto_5
    move-object v11, v9

    .line 239
    goto :goto_6

    .line 240
    :cond_9
    move/from16 v18, v4

    .line 241
    .line 242
    move/from16 v19, v6

    .line 243
    .line 244
    move-object/from16 v20, v11

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :goto_6
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    const/4 v6, 0x0

    .line 252
    :goto_7
    if-ge v6, v4, :cond_a

    .line 253
    .line 254
    invoke-virtual {v1, v5, v6}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 255
    .line 256
    .line 257
    add-int/lit8 v6, v6, 0x1

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_a
    const-string v4, "--> END "

    .line 261
    .line 262
    if-eqz v18, :cond_14

    .line 263
    .line 264
    if-nez v2, :cond_b

    .line 265
    .line 266
    goto/16 :goto_a

    .line 267
    .line 268
    :cond_b
    iget-object v6, v3, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 269
    .line 270
    invoke-virtual {v6, v14}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    if-nez v6, :cond_c

    .line 275
    .line 276
    goto :goto_8

    .line 277
    :cond_c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-nez v8, :cond_d

    .line 282
    .line 283
    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-nez v6, :cond_d

    .line 288
    .line 289
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 290
    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object v4, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 297
    .line 298
    const-string v6, " (encoded body omitted)"

    .line 299
    .line 300
    invoke-static {v5, v4, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_b

    .line 308
    .line 309
    :cond_d
    :goto_8
    invoke-virtual {v2}, Lokhttp3/RequestBody;->isOneShot()Z

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    if-eqz v6, :cond_e

    .line 314
    .line 315
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 316
    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v4, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 323
    .line 324
    const-string v6, " (one-shot body omitted)"

    .line 325
    .line 326
    invoke-static {v5, v4, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-virtual {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_b

    .line 334
    .line 335
    :cond_e
    new-instance v6, Lokio/Buffer;

    .line 336
    .line 337
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v6}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v5, v14}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    if-eqz v5, :cond_f

    .line 352
    .line 353
    iget-wide v8, v6, Lokio/Buffer;->size:J

    .line 354
    .line 355
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    new-instance v8, Lokio/GzipSource;

    .line 360
    .line 361
    invoke-direct {v8, v6}, Lokio/GzipSource;-><init>(Lokio/BufferedSource;)V

    .line 362
    .line 363
    .line 364
    :try_start_0
    new-instance v6, Lokio/Buffer;

    .line 365
    .line 366
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v8}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .line 371
    .line 372
    invoke-virtual {v8}, Lokio/GzipSource;->close()V

    .line 373
    .line 374
    .line 375
    goto :goto_9

    .line 376
    :catchall_0
    move-exception v0

    .line 377
    move-object v1, v0

    .line 378
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    :catchall_1
    move-exception v0

    .line 380
    invoke-static {v8, v1}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    :cond_f
    const/4 v5, 0x0

    .line 385
    :goto_9
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    if-eqz v8, :cond_10

    .line 390
    .line 391
    sget-object v9, Lokhttp3/MediaType;->TYPE_SUBTYPE:Lkotlin/text/Regex;

    .line 392
    .line 393
    const/4 v9, 0x0

    .line 394
    invoke-virtual {v8, v9}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 395
    .line 396
    .line 397
    move-result-object v8

    .line 398
    if-nez v8, :cond_11

    .line 399
    .line 400
    :cond_10
    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 401
    .line 402
    :cond_11
    iget-object v9, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 403
    .line 404
    invoke-virtual {v9, v10}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-static {v6}, Lokio/Okio__JvmOkioKt;->isProbablyUtf8(Lokio/Buffer;)Z

    .line 408
    .line 409
    .line 410
    move-result v9

    .line 411
    move-object/from16 v21, v2

    .line 412
    .line 413
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 414
    .line 415
    if-nez v9, :cond_12

    .line 416
    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-object v4, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 423
    .line 424
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v4, " (binary "

    .line 428
    .line 429
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual/range {v21 .. v21}, Lokhttp3/RequestBody;->contentLength()J

    .line 433
    .line 434
    .line 435
    move-result-wide v8

    .line 436
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    goto :goto_b

    .line 450
    :cond_12
    if-eqz v5, :cond_13

    .line 451
    .line 452
    new-instance v8, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v4, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    move-object v9, v5

    .line 466
    iget-wide v4, v6, Lokio/Buffer;->size:J

    .line 467
    .line 468
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v4, "-byte, "

    .line 472
    .line 473
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 477
    .line 478
    .line 479
    move-result-wide v4

    .line 480
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v4, "-gzipped-byte body)"

    .line 484
    .line 485
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    goto :goto_b

    .line 496
    :cond_13
    invoke-virtual {v6, v8}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v5

    .line 500
    invoke-virtual {v2, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 504
    .line 505
    new-instance v5, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    iget-object v4, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual/range {v21 .. v21}, Lokhttp3/RequestBody;->contentLength()J

    .line 519
    .line 520
    .line 521
    move-result-wide v8

    .line 522
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    invoke-virtual {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    goto :goto_b

    .line 536
    :cond_14
    :goto_a
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 537
    .line 538
    new-instance v5, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget-object v4, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 544
    .line 545
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    invoke-virtual {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    goto :goto_b

    .line 556
    :cond_15
    move/from16 v18, v4

    .line 557
    .line 558
    move/from16 v19, v6

    .line 559
    .line 560
    move-object/from16 v20, v11

    .line 561
    .line 562
    :goto_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 563
    .line 564
    .line 565
    move-result-wide v4

    .line 566
    const-wide/32 v8, 0xf4240

    .line 567
    .line 568
    .line 569
    :try_start_2
    invoke-virtual {v0, v3}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 570
    .line 571
    .line 572
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 573
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 574
    .line 575
    .line 576
    move-result-wide v2

    .line 577
    sub-long/2addr v2, v4

    .line 578
    div-long/2addr v2, v8

    .line 579
    iget-object v6, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 580
    .line 581
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    move-wide/from16 v21, v8

    .line 585
    .line 586
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    .line 587
    .line 588
    .line 589
    move-result-wide v8

    .line 590
    cmp-long v11, v8, v16

    .line 591
    .line 592
    move-wide/from16 v16, v4

    .line 593
    .line 594
    const-string v4, "-byte"

    .line 595
    .line 596
    if-eqz v11, :cond_16

    .line 597
    .line 598
    new-instance v5, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    goto :goto_c

    .line 614
    :cond_16
    const-string/jumbo v5, "unknown-length"

    .line 615
    .line 616
    .line 617
    :goto_c
    iget-object v11, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 618
    .line 619
    move-object/from16 p1, v6

    .line 620
    .line 621
    new-instance v6, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    move-wide/from16 v23, v8

    .line 624
    .line 625
    new-instance v8, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    const-string v9, "<-- "

    .line 628
    .line 629
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    iget v9, v0, Lokhttp3/Response;->code:I

    .line 633
    .line 634
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v8

    .line 641
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    iget-object v8, v0, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 645
    .line 646
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 647
    .line 648
    .line 649
    move-result v8

    .line 650
    if-lez v8, :cond_17

    .line 651
    .line 652
    new-instance v8, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    move-object/from16 v9, v20

    .line 655
    .line 656
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    move-object/from16 v20, v4

    .line 660
    .line 661
    iget-object v4, v0, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 662
    .line 663
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    goto :goto_d

    .line 674
    :cond_17
    move-object/from16 v9, v20

    .line 675
    .line 676
    move-object/from16 v20, v4

    .line 677
    .line 678
    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 679
    .line 680
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    iget-object v8, v0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 684
    .line 685
    iget-object v8, v8, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 686
    .line 687
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    iget-object v8, v8, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 691
    .line 692
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    const-string v2, "ms"

    .line 702
    .line 703
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    const-string v2, ", "

    .line 714
    .line 715
    if-nez v19, :cond_18

    .line 716
    .line 717
    new-instance v3, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    const-string v4, " body"

    .line 726
    .line 727
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    :cond_18
    const-string v3, ")"

    .line 738
    .line 739
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v3

    .line 746
    invoke-virtual {v11, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    if-eqz v19, :cond_25

    .line 750
    .line 751
    iget-object v3, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 752
    .line 753
    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    .line 754
    .line 755
    .line 756
    move-result v4

    .line 757
    const/4 v5, 0x0

    .line 758
    :goto_e
    if-ge v5, v4, :cond_19

    .line 759
    .line 760
    invoke-virtual {v1, v3, v5}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 761
    .line 762
    .line 763
    add-int/lit8 v5, v5, 0x1

    .line 764
    .line 765
    goto :goto_e

    .line 766
    :cond_19
    if-eqz v18, :cond_24

    .line 767
    .line 768
    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    if-nez v4, :cond_1a

    .line 773
    .line 774
    goto/16 :goto_11

    .line 775
    .line 776
    :cond_1a
    iget-object v4, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 777
    .line 778
    invoke-virtual {v4, v14}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    if-nez v4, :cond_1b

    .line 783
    .line 784
    goto :goto_f

    .line 785
    :cond_1b
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 786
    .line 787
    .line 788
    move-result v5

    .line 789
    if-nez v5, :cond_1c

    .line 790
    .line 791
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 792
    .line 793
    .line 794
    move-result v4

    .line 795
    if-nez v4, :cond_1c

    .line 796
    .line 797
    iget-object v1, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 798
    .line 799
    const-string v2, "<-- END HTTP (encoded body omitted)"

    .line 800
    .line 801
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    return-object v0

    .line 805
    :cond_1c
    :goto_f
    iget-object v4, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 806
    .line 807
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 808
    .line 809
    .line 810
    move-result-object v4

    .line 811
    if-eqz v4, :cond_1d

    .line 812
    .line 813
    iget-object v5, v4, Lokhttp3/MediaType;->type:Ljava/lang/String;

    .line 814
    .line 815
    const-string v6, "text"

    .line 816
    .line 817
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v5

    .line 821
    if-eqz v5, :cond_1d

    .line 822
    .line 823
    iget-object v4, v4, Lokhttp3/MediaType;->subtype:Ljava/lang/String;

    .line 824
    .line 825
    const-string v5, "event-stream"

    .line 826
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result v4

    .line 831
    if-eqz v4, :cond_1d

    .line 832
    .line 833
    iget-object v1, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 834
    .line 835
    const-string v2, "<-- END HTTP (streaming)"

    .line 836
    .line 837
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    return-object v0

    .line 841
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 842
    .line 843
    .line 844
    move-result-object v4

    .line 845
    const-wide v5, 0x7fffffffffffffffL

    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->request(J)Z

    .line 851
    .line 852
    .line 853
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 854
    .line 855
    .line 856
    move-result-wide v5

    .line 857
    sub-long v5, v5, v16

    .line 858
    .line 859
    div-long v5, v5, v21

    .line 860
    .line 861
    invoke-interface {v4}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 862
    .line 863
    .line 864
    move-result-object v4

    .line 865
    invoke-virtual {v3, v14}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v3

    .line 869
    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 870
    .line 871
    .line 872
    move-result v3

    .line 873
    if-eqz v3, :cond_1e

    .line 874
    .line 875
    iget-wide v7, v4, Lokio/Buffer;->size:J

    .line 876
    .line 877
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 878
    .line 879
    .line 880
    move-result-object v9

    .line 881
    new-instance v3, Lokio/GzipSource;

    .line 882
    .line 883
    invoke-virtual {v4}, Lokio/Buffer;->copy()Lokio/Buffer;

    .line 884
    .line 885
    .line 886
    move-result-object v4

    .line 887
    invoke-direct {v3, v4}, Lokio/GzipSource;-><init>(Lokio/BufferedSource;)V

    .line 888
    .line 889
    .line 890
    :try_start_3
    new-instance v4, Lokio/Buffer;

    .line 891
    .line 892
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v4, v3}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 896
    .line 897
    .line 898
    invoke-virtual {v3}, Lokio/GzipSource;->close()V

    .line 899
    .line 900
    .line 901
    goto :goto_10

    .line 902
    :catchall_2
    move-exception v0

    .line 903
    move-object v1, v0

    .line 904
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 905
    :catchall_3
    move-exception v0

    .line 906
    invoke-static {v3, v1}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 907
    .line 908
    .line 909
    throw v0

    .line 910
    :cond_1e
    const/4 v9, 0x0

    .line 911
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    if-eqz v3, :cond_1f

    .line 916
    .line 917
    sget-object v7, Lokhttp3/MediaType;->TYPE_SUBTYPE:Lkotlin/text/Regex;

    .line 918
    .line 919
    const/4 v7, 0x0

    .line 920
    invoke-virtual {v3, v7}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 921
    .line 922
    .line 923
    move-result-object v3

    .line 924
    if-nez v3, :cond_20

    .line 925
    .line 926
    :cond_1f
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 927
    .line 928
    :cond_20
    invoke-static {v4}, Lokio/Okio__JvmOkioKt;->isProbablyUtf8(Lokio/Buffer;)Z

    .line 929
    .line 930
    .line 931
    move-result v7

    .line 932
    const-string v8, "<-- END HTTP ("

    .line 933
    .line 934
    if-nez v7, :cond_21

    .line 935
    .line 936
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 937
    .line 938
    invoke-virtual {v2, v10}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    iget-object v1, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 942
    .line 943
    new-instance v2, Ljava/lang/StringBuilder;

    .line 944
    .line 945
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    const-string v3, "ms, binary "

    .line 952
    .line 953
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    iget-wide v3, v4, Lokio/Buffer;->size:J

    .line 957
    .line 958
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v2

    .line 968
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    return-object v0

    .line 972
    :cond_21
    const-wide/16 v11, 0x0

    .line 973
    .line 974
    cmp-long v7, v23, v11

    .line 975
    .line 976
    if-eqz v7, :cond_22

    .line 977
    .line 978
    iget-object v7, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 979
    .line 980
    invoke-virtual {v7, v10}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    iget-object v7, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 984
    .line 985
    invoke-virtual {v4}, Lokio/Buffer;->copy()Lokio/Buffer;

    .line 986
    .line 987
    .line 988
    move-result-object v10

    .line 989
    invoke-virtual {v10, v3}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v3

    .line 993
    invoke-virtual {v7, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    :cond_22
    iget-object v1, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 997
    .line 998
    new-instance v3, Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    const-string v5, "ms, "

    .line 1009
    .line 1010
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    iget-wide v4, v4, Lokio/Buffer;->size:J

    .line 1014
    .line 1015
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    move-object/from16 v4, v20

    .line 1019
    .line 1020
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v4

    .line 1027
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    if-eqz v9, :cond_23

    .line 1031
    .line 1032
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 1038
    .line 1039
    .line 1040
    move-result-wide v5

    .line 1041
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    const-string v2, "-gzipped-byte"

    .line 1045
    .line 1046
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v2

    .line 1053
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    :cond_23
    const-string v2, " body)"

    .line 1057
    .line 1058
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v2

    .line 1065
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    return-object v0

    .line 1069
    :cond_24
    :goto_11
    iget-object v1, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 1070
    .line 1071
    const-string v2, "<-- END HTTP"

    .line 1072
    .line 1073
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    :cond_25
    return-object v0

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    move-wide/from16 v16, v4

    .line 1079
    .line 1080
    move-wide/from16 v21, v8

    .line 1081
    .line 1082
    move-object/from16 v9, v20

    .line 1083
    .line 1084
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1085
    .line 1086
    .line 1087
    move-result-wide v4

    .line 1088
    sub-long v4, v4, v16

    .line 1089
    .line 1090
    div-long v4, v4, v21

    .line 1091
    .line 1092
    iget-object v1, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 1093
    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    const-string v6, "<-- HTTP FAILED: "

    .line 1097
    .line 1098
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    const/16 v6, 0x2e

    .line 1105
    .line 1106
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    iget-object v3, v3, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 1119
    .line 1120
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1121
    .line 1122
    .line 1123
    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 1124
    .line 1125
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    const-string v3, "ms)"

    .line 1135
    .line 1136
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v3

    .line 1143
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v2

    .line 1147
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    throw v0
.end method

.method public final logHeader(Lokhttp3/Headers;I)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lorg/jsoup/Jsoup;->commonName(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lorg/jsoup/Jsoup;->commonValue(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lorg/jsoup/Jsoup;->commonName(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, ": "

    .line 18
    .line 19
    invoke-static {v1, p1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;->log(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
