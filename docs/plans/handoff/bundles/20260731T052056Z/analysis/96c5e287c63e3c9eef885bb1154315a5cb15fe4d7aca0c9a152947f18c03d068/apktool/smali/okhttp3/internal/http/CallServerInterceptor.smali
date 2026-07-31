.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final INSTANCE:Lokhttp3/internal/http/CallServerInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/http/CallServerInterceptor;->INSTANCE:Lokhttp3/internal/http/CallServerInterceptor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "close"

    .line 4
    .line 5
    iget-object v3, v0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Landroidx/compose/runtime/Latch;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v3, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lokhttp3/internal/connection/RealCall;

    .line 13
    .line 14
    iget-object v4, v3, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v9, v4

    .line 17
    check-cast v9, Lokhttp3/internal/http/ExchangeCodec;

    .line 18
    .line 19
    iget-object v10, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 20
    .line 21
    iget-object v0, v10, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 22
    .line 23
    iget-object v4, v10, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v11

    .line 29
    iget-object v5, v10, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v5}, Lorg/wikipedia/util/TabUtil;->permitsRequestBody(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v14, 0x1

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    move v5, v14

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v5, v13

    .line 44
    :goto_0
    const-string v15, "Connection"

    .line 45
    .line 46
    invoke-virtual {v4, v15}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string/jumbo v8, "upgrade"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v16

    .line 57
    const/4 v6, 0x0

    .line 58
    :try_start_0
    invoke-interface {v9, v10}, Lokhttp3/internal/http/ExchangeCodec;->writeRequestHeaders(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    .line 59
    .line 60
    .line 61
    if-eqz v5, :cond_5

    .line 62
    .line 63
    :try_start_1
    const-string v5, "100-continue"

    .line 64
    .line 65
    const-string v7, "Expect"

    .line 66
    .line 67
    invoke-virtual {v4, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    :try_start_2
    invoke-interface {v9}, Lokhttp3/internal/http/ExchangeCodec;->flushRequest()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    .line 79
    .line 80
    :try_start_3
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/Latch;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    move-object/from16 v17, v4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    move-object v14, v6

    .line 89
    move-object/from16 v17, v14

    .line 90
    .line 91
    move-object/from16 v19, v8

    .line 92
    .line 93
    :goto_1
    move-object v6, v0

    .line 94
    goto/16 :goto_8

    .line 95
    .line 96
    :catch_1
    move-exception v0

    .line 97
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 98
    .line 99
    .line 100
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 101
    :cond_1
    move-object/from16 v17, v6

    .line 102
    .line 103
    :goto_2
    if-nez v17, :cond_2

    .line 104
    .line 105
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget-object v2, v10, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 117
    move-object v2, v6

    .line 118
    move-wide v5, v4

    .line 119
    :try_start_5
    invoke-interface {v9, v10, v5, v6}, Lokhttp3/internal/http/ExchangeCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    .line 120
    .line 121
    .line 122
    move-result-object v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 123
    move-object v7, v2

    .line 124
    :try_start_6
    new-instance v2, Lokhttp3/internal/connection/Exchange$RequestBodySink;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 125
    .line 126
    move-object/from16 v18, v7

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    move-object/from16 v14, v18

    .line 130
    .line 131
    :try_start_7
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Landroidx/compose/runtime/Latch;Lokio/Sink;JZ)V

    .line 132
    .line 133
    .line 134
    new-instance v4, Lokio/RealBufferedSink;

    .line 135
    .line 136
    invoke-direct {v4, v2}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Lokio/RealBufferedSink;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 143
    .line 144
    .line 145
    move-object/from16 v19, v8

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :catch_2
    move-exception v0

    .line 149
    :goto_3
    move-object v6, v0

    .line 150
    move-object/from16 v19, v8

    .line 151
    .line 152
    goto/16 :goto_8

    .line 153
    .line 154
    :catch_3
    move-exception v0

    .line 155
    move-object v14, v7

    .line 156
    goto :goto_3

    .line 157
    :catch_4
    move-exception v0

    .line 158
    move-object v14, v2

    .line 159
    goto :goto_3

    .line 160
    :catch_5
    move-exception v0

    .line 161
    move-object v14, v6

    .line 162
    goto :goto_3

    .line 163
    :cond_2
    move-object v14, v6

    .line 164
    const/4 v6, 0x0

    .line 165
    const/4 v7, 0x0

    .line 166
    move-object v4, v8

    .line 167
    const/4 v8, 0x0

    .line 168
    move-object v5, v4

    .line 169
    const/4 v4, 0x1

    .line 170
    move-object/from16 v18, v5

    .line 171
    .line 172
    const/4 v5, 0x0

    .line 173
    move-object/from16 v19, v18

    .line 174
    .line 175
    :try_start_8
    invoke-virtual/range {v2 .. v8}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Landroidx/compose/runtime/Latch;ZZZZLjava/io/IOException;)Ljava/io/IOException;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 183
    .line 184
    if-eqz v0, :cond_3

    .line 185
    .line 186
    const/4 v0, 0x1

    .line 187
    goto :goto_4

    .line 188
    :cond_3
    move v0, v13

    .line 189
    :goto_4
    if-nez v0, :cond_4

    .line 190
    .line 191
    invoke-interface {v9}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->noNewExchanges()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 196
    .line 197
    .line 198
    :cond_4
    :goto_5
    move-object/from16 v6, v17

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :catch_6
    move-exception v0

    .line 202
    goto :goto_1

    .line 203
    :catch_7
    move-exception v0

    .line 204
    move-object v14, v6

    .line 205
    move-object/from16 v19, v8

    .line 206
    .line 207
    :goto_6
    move-object v6, v0

    .line 208
    move-object/from16 v17, v14

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_5
    move-object v14, v6

    .line 212
    move-object/from16 v19, v8

    .line 213
    .line 214
    const/4 v6, 0x0

    .line 215
    const/4 v7, 0x0

    .line 216
    const/4 v8, 0x0

    .line 217
    const/4 v4, 0x1

    .line 218
    const/4 v5, 0x0

    .line 219
    :try_start_9
    invoke-virtual/range {v2 .. v8}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Landroidx/compose/runtime/Latch;ZZZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 220
    .line 221
    .line 222
    move-object v6, v14

    .line 223
    :goto_7
    :try_start_a
    invoke-interface {v9}, Lokhttp3/internal/http/ExchangeCodec;->finishRequest()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 224
    .line 225
    .line 226
    move-object v8, v14

    .line 227
    goto :goto_9

    .line 228
    :catch_8
    move-exception v0

    .line 229
    :try_start_b
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 230
    .line 231
    .line 232
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 233
    :catch_9
    move-exception v0

    .line 234
    move-object/from16 v17, v6

    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :catch_a
    move-exception v0

    .line 239
    goto :goto_6

    .line 240
    :catch_b
    move-exception v0

    .line 241
    move-object v14, v6

    .line 242
    move-object/from16 v19, v8

    .line 243
    .line 244
    :try_start_c
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 245
    .line 246
    .line 247
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 248
    :goto_8
    instance-of v0, v6, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 249
    .line 250
    if-nez v0, :cond_16

    .line 251
    .line 252
    iget-boolean v0, v3, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 253
    .line 254
    if-eqz v0, :cond_15

    .line 255
    .line 256
    move-object v8, v6

    .line 257
    move-object/from16 v6, v17

    .line 258
    .line 259
    :goto_9
    if-nez v6, :cond_6

    .line 260
    .line 261
    :try_start_d
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/Latch;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    goto :goto_a

    .line 269
    :catch_c
    move-exception v0

    .line 270
    goto/16 :goto_11

    .line 271
    .line 272
    :cond_6
    :goto_a
    iput-object v10, v6, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 273
    .line 274
    invoke-virtual {v3}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 279
    .line 280
    iput-object v0, v6, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 281
    .line 282
    iput-wide v11, v6, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 283
    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 285
    .line 286
    .line 287
    move-result-wide v4

    .line 288
    iput-wide v4, v6, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 289
    .line 290
    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iget v2, v0, Lokhttp3/Response;->code:I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 295
    .line 296
    :goto_b
    iget-object v4, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 297
    .line 298
    const/16 v5, 0x64

    .line 299
    .line 300
    if-ne v2, v5, :cond_7

    .line 301
    .line 302
    goto :goto_c

    .line 303
    :cond_7
    const/16 v5, 0x66

    .line 304
    .line 305
    if-gt v5, v2, :cond_8

    .line 306
    .line 307
    const/16 v5, 0xc8

    .line 308
    .line 309
    if-ge v2, v5, :cond_8

    .line 310
    .line 311
    :goto_c
    :try_start_e
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/Latch;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    iput-object v10, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 319
    .line 320
    invoke-virtual {v3}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 325
    .line 326
    iput-object v2, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 327
    .line 328
    iput-wide v11, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 329
    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 331
    .line 332
    .line 333
    move-result-wide v4

    .line 334
    iput-wide v4, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 335
    .line 336
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iget v2, v0, Lokhttp3/Response;->code:I

    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_8
    const/16 v5, 0x65

    .line 344
    .line 345
    if-ne v2, v5, :cond_9

    .line 346
    .line 347
    const/4 v5, 0x1

    .line 348
    goto :goto_d

    .line 349
    :cond_9
    move v5, v13

    .line 350
    :goto_d
    if-eqz v5, :cond_c

    .line 351
    .line 352
    invoke-virtual {v3}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    iget-object v6, v6, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 357
    .line 358
    if-eqz v6, :cond_a

    .line 359
    .line 360
    const/4 v6, 0x1

    .line 361
    goto :goto_e

    .line 362
    :cond_a
    move v6, v13

    .line 363
    :goto_e
    if-nez v6, :cond_b

    .line 364
    .line 365
    goto :goto_f

    .line 366
    :cond_b
    new-instance v0, Ljava/net/ProtocolException;

    .line 367
    .line 368
    const-string v1, "Unexpected 101 code on HTTP/2 connection"

    .line 369
    .line 370
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v0

    .line 374
    :cond_c
    :goto_f
    if-eqz v5, :cond_d

    .line 375
    .line 376
    invoke-virtual {v0, v15, v14}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    move-object/from16 v6, v19

    .line 381
    .line 382
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    if-eqz v5, :cond_d

    .line 387
    .line 388
    const/4 v13, 0x1

    .line 389
    :cond_d
    if-eqz v16, :cond_e

    .line 390
    .line 391
    if-eqz v13, :cond_e

    .line 392
    .line 393
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    new-instance v5, Lokhttp3/internal/UnreadableResponseBody;

    .line 398
    .line 399
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    .line 404
    .line 405
    .line 406
    move-result-wide v10

    .line 407
    invoke-direct {v5, v6, v10, v11}, Lokhttp3/internal/UnreadableResponseBody;-><init>(Lokhttp3/MediaType;J)V

    .line 408
    .line 409
    .line 410
    iput-object v5, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 411
    .line 412
    invoke-virtual {v3}, Landroidx/compose/runtime/Latch;->upgradeToSocket()Lokhttp3/FormBody$Builder;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    iput-object v3, v0, Lokhttp3/Response$Builder;->socket:Lokio/Socket;

    .line 417
    .line 418
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 419
    .line 420
    .line 421
    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 422
    move v11, v2

    .line 423
    goto :goto_10

    .line 424
    :cond_e
    :try_start_f
    const-string v4, "Content-Type"

    .line 425
    .line 426
    invoke-virtual {v0, v4, v14}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v10

    .line 430
    invoke-interface {v9, v0}, Lokhttp3/internal/http/ExchangeCodec;->reportedContentLength(Lokhttp3/Response;)J

    .line 431
    .line 432
    .line 433
    move-result-wide v5

    .line 434
    invoke-interface {v9, v0}, Lokhttp3/internal/http/ExchangeCodec;->openResponseBodySource(Lokhttp3/Response;)Lokio/Source;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    move v7, v2

    .line 439
    new-instance v2, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 440
    .line 441
    move v11, v7

    .line 442
    const/4 v7, 0x0

    .line 443
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Landroidx/compose/runtime/Latch;Lokio/Source;JZ)V

    .line 444
    .line 445
    .line 446
    new-instance v4, Lokhttp3/internal/http/RealResponseBody;

    .line 447
    .line 448
    new-instance v7, Lokio/RealBufferedSource;

    .line 449
    .line 450
    invoke-direct {v7, v2}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 451
    .line 452
    .line 453
    invoke-direct {v4, v10, v5, v6, v7}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/RealBufferedSource;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 454
    .line 455
    .line 456
    :try_start_10
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    iput-object v4, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 461
    .line 462
    new-instance v2, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;

    .line 463
    .line 464
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 465
    .line 466
    .line 467
    iput-object v2, v0, Lokhttp3/Response$Builder;->trailersSource:Lokhttp3/TrailersSource;

    .line 468
    .line 469
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    :goto_10
    iget-object v2, v0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 474
    .line 475
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    iget-object v2, v2, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 479
    .line 480
    invoke-virtual {v2, v15}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-nez v2, :cond_f

    .line 489
    .line 490
    invoke-virtual {v0, v15, v14}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    if-eqz v1, :cond_10

    .line 499
    .line 500
    :cond_f
    invoke-interface {v9}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->noNewExchanges()V

    .line 505
    .line 506
    .line 507
    :cond_10
    const/16 v1, 0xcc

    .line 508
    .line 509
    if-eq v11, v1, :cond_11

    .line 510
    .line 511
    const/16 v1, 0xcd

    .line 512
    .line 513
    if-ne v11, v1, :cond_12

    .line 514
    .line 515
    :cond_11
    iget-object v1, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 516
    .line 517
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 518
    .line 519
    .line 520
    move-result-wide v1

    .line 521
    const-wide/16 v3, 0x0

    .line 522
    .line 523
    cmp-long v1, v1, v3

    .line 524
    .line 525
    if-gtz v1, :cond_13

    .line 526
    .line 527
    :cond_12
    return-object v0

    .line 528
    :cond_13
    new-instance v1, Ljava/net/ProtocolException;

    .line 529
    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    const-string v3, "HTTP "

    .line 536
    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v3, " had non-zero Content-Length: "

    .line 544
    .line 545
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 549
    .line 550
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 551
    .line 552
    .line 553
    move-result-wide v3

    .line 554
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    throw v1

    .line 565
    :catch_d
    move-exception v0

    .line 566
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 567
    .line 568
    .line 569
    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 570
    :goto_11
    if-eqz v8, :cond_14

    .line 571
    .line 572
    invoke-static {v8, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 573
    .line 574
    .line 575
    throw v8

    .line 576
    :cond_14
    throw v0

    .line 577
    :cond_15
    throw v6

    .line 578
    :cond_16
    throw v6
.end method
