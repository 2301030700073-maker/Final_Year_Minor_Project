.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
    iget-object v2, v0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v4, v2

    .line 8
    check-cast v4, Landroidx/compose/runtime/Latch;

    .line 9
    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v2, v4, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v3, v2

    .line 16
    check-cast v3, Lokhttp3/internal/connection/RealCall;

    .line 17
    .line 18
    iget-object v2, v4, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lokhttp3/internal/http/ExchangeCodec;

    .line 21
    .line 22
    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v10, v0

    .line 25
    check-cast v10, Lokhttp3/Request;

    .line 26
    .line 27
    iget-object v0, v10, Lokhttp3/Request;->body:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 28
    .line 29
    iget-object v5, v10, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v11

    .line 35
    iget-object v6, v10, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v6}, Lorg/jsoup/Jsoup;->permitsRequestBody(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const/4 v13, 0x0

    .line 42
    const/4 v14, 0x1

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    move v6, v14

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v6, v13

    .line 50
    :goto_0
    const-string v15, "Connection"

    .line 51
    .line 52
    invoke-virtual {v5, v15}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const-string/jumbo v9, "upgrade"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v16

    .line 63
    const/16 v17, 0x0

    .line 64
    .line 65
    :try_start_0
    invoke-interface {v2, v10}, Lokhttp3/internal/http/ExchangeCodec;->writeRequestHeaders(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 66
    .line 67
    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    :try_start_1
    const-string v6, "100-continue"

    .line 71
    .line 72
    const-string v7, "Expect"

    .line 73
    .line 74
    invoke-virtual {v5, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    if-eqz v5, :cond_1

    .line 83
    .line 84
    :try_start_2
    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec;->flushRequest()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    .line 86
    .line 87
    :try_start_3
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/Latch;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    move-object/from16 v18, v5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    move-object v14, v9

    .line 96
    :goto_1
    move-object/from16 v18, v17

    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :catch_1
    move-exception v0

    .line 101
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 102
    .line 103
    .line 104
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 105
    :cond_1
    move-object/from16 v18, v17

    .line 106
    .line 107
    :goto_2
    if-nez v18, :cond_2

    .line 108
    .line 109
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v3, v10, Lokhttp3/Request;->body:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object v3, v3, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Lokio/ByteString;

    .line 118
    .line 119
    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    int-to-long v6, v3

    .line 124
    invoke-interface {v2, v10, v6, v7}, Lokhttp3/internal/http/ExchangeCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    new-instance v3, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 129
    .line 130
    const/4 v8, 0x0

    .line 131
    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Landroidx/compose/runtime/Latch;Lokio/Sink;JZ)V

    .line 132
    .line 133
    .line 134
    new-instance v5, Lokio/RealBufferedSink;

    .line 135
    .line 136
    invoke-direct {v5, v3}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, v0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Lokio/ByteString;

    .line 140
    .line 141
    invoke-virtual {v5, v0}, Lokio/RealBufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Lokio/RealBufferedSink;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 145
    .line 146
    .line 147
    move-object v14, v9

    .line 148
    goto :goto_4

    .line 149
    :catch_2
    move-exception v0

    .line 150
    move-object v14, v9

    .line 151
    goto :goto_5

    .line 152
    :cond_2
    const/4 v7, 0x0

    .line 153
    const/4 v8, 0x0

    .line 154
    move-object v5, v9

    .line 155
    const/4 v9, 0x0

    .line 156
    move-object v6, v5

    .line 157
    const/4 v5, 0x1

    .line 158
    move-object/from16 v19, v6

    .line 159
    .line 160
    const/4 v6, 0x0

    .line 161
    move-object/from16 v14, v19

    .line 162
    .line 163
    :try_start_5
    invoke-virtual/range {v3 .. v9}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Landroidx/compose/runtime/Latch;ZZZZLjava/io/IOException;)Ljava/io/IOException;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 171
    .line 172
    if-eqz v0, :cond_3

    .line 173
    .line 174
    const/4 v0, 0x1

    .line 175
    goto :goto_3

    .line 176
    :cond_3
    move v0, v13

    .line 177
    :goto_3
    if-nez v0, :cond_5

    .line 178
    .line 179
    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->noNewExchanges()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :catch_3
    move-exception v0

    .line 188
    goto :goto_5

    .line 189
    :cond_4
    move-object v14, v9

    .line 190
    const/4 v7, 0x0

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v9, 0x0

    .line 193
    const/4 v5, 0x1

    .line 194
    const/4 v6, 0x0

    .line 195
    :try_start_6
    invoke-virtual/range {v3 .. v9}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Landroidx/compose/runtime/Latch;ZZZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 196
    .line 197
    .line 198
    move-object/from16 v18, v17

    .line 199
    .line 200
    :cond_5
    :goto_4
    :try_start_7
    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec;->finishRequest()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 201
    .line 202
    .line 203
    move-object/from16 v9, v17

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :catch_4
    move-exception v0

    .line 207
    :try_start_8
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 208
    .line 209
    .line 210
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 211
    :catch_5
    move-exception v0

    .line 212
    goto :goto_1

    .line 213
    :catch_6
    move-exception v0

    .line 214
    move-object v14, v9

    .line 215
    :try_start_9
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 216
    .line 217
    .line 218
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 219
    :goto_5
    instance-of v3, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 220
    .line 221
    if-nez v3, :cond_19

    .line 222
    .line 223
    iget-boolean v3, v4, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 224
    .line 225
    if-eqz v3, :cond_18

    .line 226
    .line 227
    move-object v9, v0

    .line 228
    :goto_6
    if-nez v18, :cond_6

    .line 229
    .line 230
    :try_start_a
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/Latch;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v18

    .line 234
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    :cond_6
    move-object/from16 v0, v18

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :catch_7
    move-exception v0

    .line 241
    goto/16 :goto_f

    .line 242
    .line 243
    :goto_7
    iput-object v10, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 244
    .line 245
    invoke-virtual {v4}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    iget-object v3, v3, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 250
    .line 251
    iput-object v3, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 252
    .line 253
    iput-wide v11, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 254
    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 256
    .line 257
    .line 258
    move-result-wide v5

    .line 259
    iput-wide v5, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 260
    .line 261
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iget v3, v0, Lokhttp3/Response;->code:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 266
    .line 267
    :goto_8
    iget-object v5, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 268
    .line 269
    iget-object v6, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 270
    .line 271
    const/16 v7, 0x64

    .line 272
    .line 273
    if-ne v3, v7, :cond_7

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_7
    const/16 v7, 0x66

    .line 277
    .line 278
    if-gt v7, v3, :cond_8

    .line 279
    .line 280
    const/16 v7, 0xc8

    .line 281
    .line 282
    if-ge v3, v7, :cond_8

    .line 283
    .line 284
    :goto_9
    :try_start_b
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/Latch;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    iput-object v10, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 292
    .line 293
    invoke-virtual {v4}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iget-object v3, v3, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 298
    .line 299
    iput-object v3, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 300
    .line 301
    iput-wide v11, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 302
    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 304
    .line 305
    .line 306
    move-result-wide v5

    .line 307
    iput-wide v5, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 308
    .line 309
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iget v3, v0, Lokhttp3/Response;->code:I

    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_8
    const/16 v7, 0x65

    .line 317
    .line 318
    if-ne v3, v7, :cond_9

    .line 319
    .line 320
    const/4 v7, 0x1

    .line 321
    goto :goto_a

    .line 322
    :cond_9
    move v7, v13

    .line 323
    :goto_a
    if-eqz v7, :cond_c

    .line 324
    .line 325
    invoke-virtual {v4}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    iget-object v8, v8, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 330
    .line 331
    if-eqz v8, :cond_a

    .line 332
    .line 333
    const/4 v8, 0x1

    .line 334
    goto :goto_b

    .line 335
    :cond_a
    move v8, v13

    .line 336
    :goto_b
    if-nez v8, :cond_b

    .line 337
    .line 338
    goto :goto_c

    .line 339
    :cond_b
    new-instance v0, Ljava/net/ProtocolException;

    .line 340
    .line 341
    const-string v1, "Unexpected 101 code on HTTP/2 connection"

    .line 342
    .line 343
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v0

    .line 347
    :cond_c
    :goto_c
    if-eqz v7, :cond_e

    .line 348
    .line 349
    invoke-virtual {v5, v15}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    if-nez v7, :cond_d

    .line 354
    .line 355
    move-object/from16 v7, v17

    .line 356
    .line 357
    :cond_d
    invoke-virtual {v14, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-eqz v7, :cond_e

    .line 362
    .line 363
    const/4 v13, 0x1

    .line 364
    :cond_e
    if-eqz v16, :cond_f

    .line 365
    .line 366
    if-eqz v13, :cond_f

    .line 367
    .line 368
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    new-instance v5, Lokhttp3/internal/UnreadableResponseBody;

    .line 373
    .line 374
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    .line 379
    .line 380
    .line 381
    move-result-wide v10

    .line 382
    invoke-direct {v5, v7, v10, v11}, Lokhttp3/internal/UnreadableResponseBody;-><init>(Lokhttp3/MediaType;J)V

    .line 383
    .line 384
    .line 385
    iput-object v5, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 386
    .line 387
    invoke-virtual {v4}, Landroidx/compose/runtime/Latch;->upgradeToSocket()Lorg/jsoup/internal/SoftPool;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    iput-object v4, v0, Lokhttp3/Response$Builder;->socket:Lokio/Socket;

    .line 392
    .line 393
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 394
    .line 395
    .line 396
    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 397
    move v11, v3

    .line 398
    goto :goto_e

    .line 399
    :cond_f
    :try_start_c
    const-string v6, "Content-Type"

    .line 400
    .line 401
    invoke-virtual {v5, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    if-nez v5, :cond_10

    .line 406
    .line 407
    move-object/from16 v10, v17

    .line 408
    .line 409
    goto :goto_d

    .line 410
    :cond_10
    move-object v10, v5

    .line 411
    :goto_d
    invoke-interface {v2, v0}, Lokhttp3/internal/http/ExchangeCodec;->reportedContentLength(Lokhttp3/Response;)J

    .line 412
    .line 413
    .line 414
    move-result-wide v6

    .line 415
    invoke-interface {v2, v0}, Lokhttp3/internal/http/ExchangeCodec;->openResponseBodySource(Lokhttp3/Response;)Lokio/Source;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    move v8, v3

    .line 420
    new-instance v3, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 421
    .line 422
    move v11, v8

    .line 423
    const/4 v8, 0x0

    .line 424
    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Landroidx/compose/runtime/Latch;Lokio/Source;JZ)V

    .line 425
    .line 426
    .line 427
    new-instance v5, Lokhttp3/internal/http/RealResponseBody;

    .line 428
    .line 429
    new-instance v8, Lokio/RealBufferedSource;

    .line 430
    .line 431
    invoke-direct {v8, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 432
    .line 433
    .line 434
    invoke-direct {v5, v10, v6, v7, v8}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/RealBufferedSource;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 435
    .line 436
    .line 437
    :try_start_d
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iput-object v5, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 442
    .line 443
    new-instance v3, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;

    .line 444
    .line 445
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 446
    .line 447
    .line 448
    iput-object v3, v0, Lokhttp3/Response$Builder;->trailersSource:Lokhttp3/TrailersSource;

    .line 449
    .line 450
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    :goto_e
    iget-object v3, v0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    iget-object v3, v3, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 460
    .line 461
    invoke-virtual {v3, v15}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    if-nez v3, :cond_12

    .line 470
    .line 471
    iget-object v3, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 472
    .line 473
    invoke-virtual {v3, v15}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    if-nez v3, :cond_11

    .line 478
    .line 479
    move-object/from16 v3, v17

    .line 480
    .line 481
    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-eqz v1, :cond_13

    .line 486
    .line 487
    :cond_12
    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->noNewExchanges()V

    .line 492
    .line 493
    .line 494
    :cond_13
    const/16 v1, 0xcc

    .line 495
    .line 496
    if-eq v11, v1, :cond_14

    .line 497
    .line 498
    const/16 v1, 0xcd

    .line 499
    .line 500
    if-ne v11, v1, :cond_15

    .line 501
    .line 502
    :cond_14
    iget-object v1, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 503
    .line 504
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 505
    .line 506
    .line 507
    move-result-wide v1

    .line 508
    const-wide/16 v3, 0x0

    .line 509
    .line 510
    cmp-long v1, v1, v3

    .line 511
    .line 512
    if-gtz v1, :cond_16

    .line 513
    .line 514
    :cond_15
    return-object v0

    .line 515
    :cond_16
    new-instance v1, Ljava/net/ProtocolException;

    .line 516
    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string v3, "HTTP "

    .line 523
    .line 524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v3, " had non-zero Content-Length: "

    .line 531
    .line 532
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 536
    .line 537
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 538
    .line 539
    .line 540
    move-result-wide v3

    .line 541
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    throw v1

    .line 552
    :catch_8
    move-exception v0

    .line 553
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 554
    .line 555
    .line 556
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 557
    :goto_f
    if-eqz v9, :cond_17

    .line 558
    .line 559
    invoke-static {v9, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 560
    .line 561
    .line 562
    throw v9

    .line 563
    :cond_17
    throw v0

    .line 564
    :cond_18
    throw v0

    .line 565
    :cond_19
    throw v0
.end method
