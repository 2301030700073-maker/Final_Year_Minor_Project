.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final cache:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->$r8$classId:I

    iput-object p2, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    return-void
.end method

.method private final intercept$okhttp3$internal$http$RetryAndFollowUpInterceptor(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v2, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 6
    .line 7
    iget-object v14, v2, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 8
    .line 9
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/16 v16, 0x0

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    move-object v15, v0

    .line 16
    move/from16 v18, v4

    .line 17
    .line 18
    move v0, v5

    .line 19
    move-object/from16 v17, v16

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v6, v14, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Landroidx/compose/runtime/Latch;

    .line 25
    .line 26
    if-nez v6, :cond_d

    .line 27
    .line 28
    monitor-enter v14

    .line 29
    :try_start_0
    iget-boolean v6, v14, Lokhttp3/internal/connection/RealCall;->responseBodyOpen:Z

    .line 30
    .line 31
    if-nez v6, :cond_c

    .line 32
    .line 33
    iget-boolean v6, v14, Lokhttp3/internal/connection/RealCall;->requestBodyOpen:Z

    .line 34
    .line 35
    if-nez v6, :cond_b

    .line 36
    .line 37
    iget-boolean v6, v14, Lokhttp3/internal/connection/RealCall;->socketSourceOpen:Z

    .line 38
    .line 39
    if-nez v6, :cond_b

    .line 40
    .line 41
    iget-boolean v6, v14, Lokhttp3/internal/connection/RealCall;->socketSinkOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 42
    .line 43
    if-nez v6, :cond_b

    .line 44
    .line 45
    monitor-exit v14

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    move-object v6, v3

    .line 49
    new-instance v3, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 50
    .line 51
    iget-object v0, v14, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 52
    .line 53
    move v7, v4

    .line 54
    iget-object v4, v0, Lokhttp3/OkHttpClient;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 55
    .line 56
    move v8, v5

    .line 57
    iget-object v5, v14, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 58
    .line 59
    move-object v9, v6

    .line 60
    iget v6, v0, Lokhttp3/OkHttpClient;->readTimeoutMillis:I

    .line 61
    .line 62
    move v10, v7

    .line 63
    iget v7, v0, Lokhttp3/OkHttpClient;->writeTimeoutMillis:I

    .line 64
    .line 65
    move v11, v8

    .line 66
    iget v8, v2, Lokhttp3/internal/http/RealInterceptorChain;->connectTimeoutMillis:I

    .line 67
    .line 68
    move-object v12, v9

    .line 69
    iget v9, v2, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    .line 70
    .line 71
    move v13, v10

    .line 72
    iget-boolean v10, v0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 73
    .line 74
    move/from16 v19, v11

    .line 75
    .line 76
    iget-boolean v11, v0, Lokhttp3/OkHttpClient;->fastFallback:Z

    .line 77
    .line 78
    iget-object v13, v15, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 79
    .line 80
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v13}, Lokhttp3/HttpUrl;->isHttps()Z

    .line 84
    .line 85
    .line 86
    move-result v20

    .line 87
    if-eqz v20, :cond_1

    .line 88
    .line 89
    move-object/from16 v20, v3

    .line 90
    .line 91
    iget-object v3, v0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 92
    .line 93
    if-eqz v3, :cond_0

    .line 94
    .line 95
    move-object/from16 v21, v3

    .line 96
    .line 97
    iget-object v3, v0, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 98
    .line 99
    move-object/from16 v22, v3

    .line 100
    .line 101
    iget-object v3, v0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 102
    .line 103
    move-object/from16 v28, v3

    .line 104
    .line 105
    move-object/from16 v26, v21

    .line 106
    .line 107
    move-object/from16 v27, v22

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_0
    const-string v0, "CLEARTEXT-only client"

    .line 111
    .line 112
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v16

    .line 116
    :cond_1
    move-object/from16 v20, v3

    .line 117
    .line 118
    move-object/from16 v26, v16

    .line 119
    .line 120
    move-object/from16 v27, v26

    .line 121
    .line 122
    move-object/from16 v28, v27

    .line 123
    .line 124
    :goto_1
    new-instance v21, Lokhttp3/Address;

    .line 125
    .line 126
    iget-object v3, v13, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 127
    .line 128
    iget v13, v13, Lokhttp3/HttpUrl;->port:I

    .line 129
    .line 130
    move-object/from16 v22, v3

    .line 131
    .line 132
    iget-object v3, v0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/CipherSuite$Companion;

    .line 133
    .line 134
    move-object/from16 v24, v3

    .line 135
    .line 136
    iget-object v3, v0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 137
    .line 138
    move-object/from16 v25, v3

    .line 139
    .line 140
    iget-object v3, v0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/CipherSuite$Companion;

    .line 141
    .line 142
    move-object/from16 v29, v3

    .line 143
    .line 144
    iget-object v3, v0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 145
    .line 146
    move-object/from16 v30, v3

    .line 147
    .line 148
    iget-object v3, v0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 149
    .line 150
    iget-object v0, v0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 151
    .line 152
    move-object/from16 v32, v0

    .line 153
    .line 154
    move-object/from16 v31, v3

    .line 155
    .line 156
    move/from16 v23, v13

    .line 157
    .line 158
    invoke-direct/range {v21 .. v32}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/CipherSuite$Companion;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/CipherSuite$Companion;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v14, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 162
    .line 163
    iget-object v13, v0, Lokhttp3/OkHttpClient;->routeDatabase:Lokhttp3/ConnectionPool;

    .line 164
    .line 165
    move-object/from16 v19, v12

    .line 166
    .line 167
    move-object/from16 v3, v20

    .line 168
    .line 169
    move-object/from16 v12, v21

    .line 170
    .line 171
    invoke-direct/range {v3 .. v15}, Lokhttp3/internal/connection/RealRoutePlanner;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZZLokhttp3/Address;Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v14, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 175
    .line 176
    iget-boolean v4, v0, Lokhttp3/OkHttpClient;->fastFallback:Z

    .line 177
    .line 178
    if-eqz v4, :cond_2

    .line 179
    .line 180
    new-instance v4, Lokhttp3/internal/connection/FastFallbackExchangeFinder;

    .line 181
    .line 182
    iget-object v0, v0, Lokhttp3/OkHttpClient;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 183
    .line 184
    invoke-direct {v4, v3, v0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;-><init>(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_2
    new-instance v4, Lokhttp3/ConnectionPool;

    .line 189
    .line 190
    const/16 v0, 0x10

    .line 191
    .line 192
    invoke-direct {v4, v0, v3}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :goto_2
    iput-object v4, v14, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_3
    move-object/from16 v19, v3

    .line 199
    .line 200
    :goto_3
    :try_start_1
    iget-boolean v0, v14, Lokhttp3/internal/connection/RealCall;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .line 202
    if-nez v0, :cond_a

    .line 203
    .line 204
    :try_start_2
    invoke-virtual {v2, v15}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 205
    .line 206
    .line 207
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iput-object v15, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 213
    .line 214
    if-eqz v17, :cond_4

    .line 215
    .line 216
    invoke-static/range {v17 .. v17}, Lokio/Options$Companion;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    goto :goto_4

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    const/4 v8, 0x1

    .line 223
    goto/16 :goto_6

    .line 224
    .line 225
    :cond_4
    move-object/from16 v3, v16

    .line 226
    .line 227
    :goto_4
    iput-object v3, v0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 228
    .line 229
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v3, v14, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Landroidx/compose/runtime/Latch;

    .line 234
    .line 235
    invoke-virtual {v1, v0, v3}, Lokhttp3/internal/cache/CacheInterceptor;->followUpRequest(Lokhttp3/Response;Landroidx/compose/runtime/Latch;)Lokhttp3/Request;

    .line 236
    .line 237
    .line 238
    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    if-nez v15, :cond_5

    .line 240
    .line 241
    const/4 v7, 0x0

    .line 242
    invoke-virtual {v14, v7}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 243
    .line 244
    .line 245
    return-object v0

    .line 246
    :cond_5
    const/4 v7, 0x0

    .line 247
    :try_start_4
    iget-object v3, v15, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 248
    .line 249
    if-eqz v3, :cond_6

    .line 250
    .line 251
    invoke-virtual {v3}, Lokhttp3/RequestBody;->isOneShot()Z

    .line 252
    .line 253
    .line 254
    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    if-eqz v3, :cond_6

    .line 256
    .line 257
    invoke-virtual {v14, v7}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 258
    .line 259
    .line 260
    return-object v0

    .line 261
    :cond_6
    :try_start_5
    iget-object v3, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 262
    .line 263
    invoke-static {v3}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 264
    .line 265
    .line 266
    add-int/lit8 v3, v18, 0x1

    .line 267
    .line 268
    const/16 v4, 0x14

    .line 269
    .line 270
    if-gt v3, v4, :cond_7

    .line 271
    .line 272
    const/4 v8, 0x1

    .line 273
    invoke-virtual {v14, v8}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 274
    .line 275
    .line 276
    move-object/from16 v17, v0

    .line 277
    .line 278
    move/from16 v18, v3

    .line 279
    .line 280
    move v4, v7

    .line 281
    move v0, v8

    .line 282
    move v5, v0

    .line 283
    move-object/from16 v3, v19

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_7
    const/4 v8, 0x1

    .line 288
    :try_start_6
    new-instance v0, Ljava/net/ProtocolException;

    .line 289
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v2, "Too many follow-up requests: "

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw v0

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    goto :goto_6

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const/4 v7, 0x0

    .line 315
    const/4 v8, 0x1

    .line 316
    invoke-virtual {v1, v0, v14, v15}, Lokhttp3/internal/cache/CacheInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-nez v3, :cond_9

    .line 321
    .line 322
    sget-object v1, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 323
    .line 324
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-eqz v2, :cond_8

    .line 333
    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    check-cast v2, Ljava/lang/Exception;

    .line 339
    .line 340
    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_8
    throw v0

    .line 345
    :cond_9
    move-object/from16 v6, v19

    .line 346
    .line 347
    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 348
    .line 349
    .line 350
    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 351
    invoke-virtual {v14, v8}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 352
    .line 353
    .line 354
    move v0, v7

    .line 355
    move v4, v0

    .line 356
    move v5, v8

    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_a
    const/4 v8, 0x1

    .line 360
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    .line 361
    .line 362
    const-string v1, "Canceled"

    .line 363
    .line 364
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 368
    :goto_6
    invoke-virtual {v14, v8}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :catchall_2
    move-exception v0

    .line 373
    goto :goto_7

    .line 374
    :cond_b
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 375
    .line 376
    const-string v1, "Check failed."

    .line 377
    .line 378
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v0

    .line 382
    :cond_c
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

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
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 390
    :goto_7
    monitor-exit v14

    .line 391
    throw v0

    .line 392
    :cond_d
    const-string v0, "Check failed."

    .line 393
    .line 394
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    return-object v16
.end method

.method public static retryAfter(Lokhttp3/Response;I)I
    .locals 2

    .line 1
    const-string v0, "Retry-After"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    const-string p1, "\\d+"

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_1
    const p0, 0x7fffffff

    .line 43
    .line 44
    .line 45
    return p0
.end method


# virtual methods
.method public followUpRequest(Lokhttp3/Response;Landroidx/compose/runtime/Latch;)Lokhttp3/Request;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    iget v2, p1, Lokhttp3/Response;->code:I

    .line 13
    .line 14
    iget-object v3, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 15
    .line 16
    iget-object v4, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    const/16 v7, 0x134

    .line 21
    .line 22
    const/16 v8, 0x133

    .line 23
    .line 24
    if-eq v2, v8, :cond_e

    .line 25
    .line 26
    if-eq v2, v7, :cond_e

    .line 27
    .line 28
    const/16 v9, 0x191

    .line 29
    .line 30
    if-eq v2, v9, :cond_d

    .line 31
    .line 32
    const/16 v9, 0x1a5

    .line 33
    .line 34
    if-eq v2, v9, :cond_a

    .line 35
    .line 36
    const/16 p2, 0x1f7

    .line 37
    .line 38
    if-eq v2, p2, :cond_8

    .line 39
    .line 40
    const/16 p2, 0x197

    .line 41
    .line 42
    if-eq v2, p2, :cond_6

    .line 43
    .line 44
    const/16 p2, 0x198

    .line 45
    .line 46
    if-eq v2, p2, :cond_1

    .line 47
    .line 48
    packed-switch v2, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    iget-object p0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lokhttp3/OkHttpClient;

    .line 56
    .line 57
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 58
    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_2
    iget-object p0, v3, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lokhttp3/RequestBody;->isOneShot()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_3
    iget-object p0, p1, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 76
    .line 77
    if-eqz p0, :cond_4

    .line 78
    .line 79
    iget p0, p0, Lokhttp3/Response;->code:I

    .line 80
    .line 81
    if-ne p0, p2, :cond_4

    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_4
    invoke-static {p1, v5}, Lokhttp3/internal/cache/CacheInterceptor;->retryAfter(Lokhttp3/Response;I)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-lez p0, :cond_5

    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :cond_5
    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object p1, v1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 106
    .line 107
    if-ne p1, p2, :cond_7

    .line 108
    .line 109
    iget-object p0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Lokhttp3/OkHttpClient;

    .line 112
    .line 113
    iget-object p0, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/CipherSuite$Companion;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_7
    new-instance p0, Ljava/net/ProtocolException;

    .line 120
    .line 121
    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    .line 122
    .line 123
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_8
    iget-object p0, p1, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 128
    .line 129
    if-eqz p0, :cond_9

    .line 130
    .line 131
    iget p0, p0, Lokhttp3/Response;->code:I

    .line 132
    .line 133
    if-ne p0, p2, :cond_9

    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :cond_9
    const p0, 0x7fffffff

    .line 138
    .line 139
    .line 140
    invoke-static {p1, p0}, Lokhttp3/internal/cache/CacheInterceptor;->retryAfter(Lokhttp3/Response;I)I

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    if-nez p0, :cond_13

    .line 145
    .line 146
    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 147
    .line 148
    return-object p0

    .line 149
    :cond_a
    iget-object p0, v3, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 150
    .line 151
    if-eqz p0, :cond_b

    .line 152
    .line 153
    invoke-virtual {p0}, Lokhttp3/RequestBody;->isOneShot()Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_b

    .line 158
    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :cond_b
    if-eqz p2, :cond_13

    .line 162
    .line 163
    iget-object p0, p2, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p0, Lokhttp3/internal/connection/ExchangeFinder;

    .line 166
    .line 167
    invoke-interface {p0}, Lokhttp3/internal/connection/ExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RealRoutePlanner;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 172
    .line 173
    iget-object p0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 174
    .line 175
    iget-object p0, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 176
    .line 177
    iget-object v1, p2, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Lokhttp3/internal/http/ExchangeCodec;

    .line 180
    .line 181
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->getRoute()Lokhttp3/Route;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iget-object v1, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 190
    .line 191
    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 192
    .line 193
    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    if-eqz p0, :cond_c

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_c
    invoke-virtual {p2}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iput-boolean v6, p0, Lokhttp3/internal/connection/RealConnection;->noCoalescedConnections:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .line 209
    monitor-exit p0

    .line 210
    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 211
    .line 212
    return-object p0

    .line 213
    :catchall_0
    move-exception p1

    .line 214
    monitor-exit p0

    .line 215
    throw p1

    .line 216
    :cond_d
    iget-object p0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p0, Lokhttp3/OkHttpClient;

    .line 219
    .line 220
    iget-object p0, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/CipherSuite$Companion;

    .line 221
    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    return-object v0

    .line 226
    :cond_e
    :pswitch_0
    const-string p2, "PROPFIND"

    .line 227
    .line 228
    iget-object p0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast p0, Lokhttp3/OkHttpClient;

    .line 231
    .line 232
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    .line 233
    .line 234
    if-nez v1, :cond_f

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_f
    const-string v1, "Location"

    .line 238
    .line 239
    invoke-virtual {p1, v1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    iget-object v2, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 244
    .line 245
    if-nez v1, :cond_10

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_10
    iget-object v3, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 249
    .line 250
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    :try_start_1
    new-instance v9, Lokhttp3/HttpUrl$Builder;

    .line 254
    .line 255
    invoke-direct {v9, v5}, Lokhttp3/HttpUrl$Builder;-><init>(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9, v3, v1}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :catch_0
    move-object v9, v0

    .line 263
    :goto_1
    if-eqz v9, :cond_11

    .line 264
    .line 265
    invoke-virtual {v9}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    goto :goto_2

    .line 270
    :cond_11
    move-object v1, v0

    .line 271
    :goto_2
    if-nez v1, :cond_12

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_12
    iget-object v3, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 275
    .line 276
    iget-object v9, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 277
    .line 278
    iget-object v9, v9, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 279
    .line 280
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-nez v3, :cond_14

    .line 285
    .line 286
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    .line 287
    .line 288
    if-nez p0, :cond_14

    .line 289
    .line 290
    :cond_13
    :goto_3
    return-object v0

    .line 291
    :cond_14
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-static {v4}, Lorg/wikipedia/util/TabUtil;->permitsRequestBody(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_19

    .line 300
    .line 301
    iget p1, p1, Lokhttp3/Response;->code:I

    .line 302
    .line 303
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-nez v3, :cond_15

    .line 308
    .line 309
    if-eq p1, v7, :cond_15

    .line 310
    .line 311
    if-ne p1, v8, :cond_16

    .line 312
    .line 313
    :cond_15
    move v5, v6

    .line 314
    :cond_16
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-nez p2, :cond_17

    .line 319
    .line 320
    if-eq p1, v7, :cond_17

    .line 321
    .line 322
    if-eq p1, v8, :cond_17

    .line 323
    .line 324
    const-string p1, "GET"

    .line 325
    .line 326
    invoke-virtual {p0, p1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_17
    if-eqz v5, :cond_18

    .line 331
    .line 332
    iget-object v0, v2, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 333
    .line 334
    :cond_18
    invoke-virtual {p0, v4, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 335
    .line 336
    .line 337
    :goto_4
    if-nez v5, :cond_19

    .line 338
    .line 339
    const-string p1, "Transfer-Encoding"

    .line 340
    .line 341
    iget-object p2, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast p2, Lokhttp3/Headers$Builder;

    .line 344
    .line 345
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string p1, "Content-Length"

    .line 349
    .line 350
    iget-object p2, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast p2, Lokhttp3/Headers$Builder;

    .line 353
    .line 354
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    const-string p1, "Content-Type"

    .line 358
    .line 359
    iget-object p2, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast p2, Lokhttp3/Headers$Builder;

    .line 362
    .line 363
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_19
    iget-object p1, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 367
    .line 368
    invoke-static {p1, v1}, Lokhttp3/internal/_UtilJvmKt;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-nez p1, :cond_1a

    .line 373
    .line 374
    const-string p1, "Authorization"

    .line 375
    .line 376
    iget-object p2, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast p2, Lokhttp3/Headers$Builder;

    .line 379
    .line 380
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_1a
    iput-object v1, p0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 384
    .line 385
    new-instance p1, Lokhttp3/Request;

    .line 386
    .line 387
    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 388
    .line 389
    .line 390
    return-object p1

    .line 391
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lokhttp3/internal/cache/CacheInterceptor;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 11
    .line 12
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "Accept-Language"

    .line 17
    .line 18
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 19
    .line 20
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-object v0, v0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 27
    .line 28
    invoke-virtual {v4, v0}, Lorg/wikipedia/WikipediaApp;->getAcceptLanguage(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v2, v3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lokhttp3/Request;

    .line 36
    .line 37
    invoke-direct {v0, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lokhttp3/internal/cache/CacheInterceptor;->intercept$okhttp3$internal$http$RetryAndFollowUpInterceptor(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :pswitch_1
    const-string v2, "Content-Encoding"

    .line 51
    .line 52
    const-string v8, "User-Agent"

    .line 53
    .line 54
    iget-object v0, v0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lokhttp3/CookieJar;

    .line 57
    .line 58
    const-string v9, "gzip"

    .line 59
    .line 60
    const-string v10, "Accept-Encoding"

    .line 61
    .line 62
    const-string v11, "Connection"

    .line 63
    .line 64
    const-string v12, "Host"

    .line 65
    .line 66
    const-string v13, "Transfer-Encoding"

    .line 67
    .line 68
    const-string v14, "Content-Type"

    .line 69
    .line 70
    const-string v15, "Content-Length"

    .line 71
    .line 72
    iget-object v6, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 73
    .line 74
    const-wide/16 v16, -0x1

    .line 75
    .line 76
    invoke-virtual {v6}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget-object v4, v6, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 81
    .line 82
    const/16 v18, 0x0

    .line 83
    .line 84
    iget-object v5, v6, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 85
    .line 86
    iget-object v6, v6, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 87
    .line 88
    if-eqz v6, :cond_2

    .line 89
    .line 90
    invoke-virtual {v6}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    if-eqz v7, :cond_0

    .line 95
    .line 96
    iget-object v7, v7, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v14, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    invoke-virtual {v6}, Lokhttp3/RequestBody;->contentLength()J

    .line 102
    .line 103
    .line 104
    move-result-wide v6

    .line 105
    cmp-long v20, v6, v16

    .line 106
    .line 107
    if-eqz v20, :cond_1

    .line 108
    .line 109
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v3, v15, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v6, v3, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v6, Lokhttp3/Headers$Builder;

    .line 119
    .line 120
    invoke-virtual {v6, v13}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const-string v6, "chunked"

    .line 125
    .line 126
    invoke-virtual {v3, v13, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v6, v3, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v6, Lokhttp3/Headers$Builder;

    .line 132
    .line 133
    invoke-virtual {v6, v15}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    :goto_0
    invoke-virtual {v5, v12}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    if-nez v6, :cond_3

    .line 141
    .line 142
    const/4 v6, 0x0

    .line 143
    invoke-static {v4, v6}, Lokhttp3/internal/_UtilJvmKt;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v3, v12, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    invoke-virtual {v5, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-nez v6, :cond_4

    .line 155
    .line 156
    const-string v6, "Keep-Alive"

    .line 157
    .line 158
    invoke-virtual {v3, v11, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    invoke-virtual {v5, v10}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    if-nez v6, :cond_5

    .line 166
    .line 167
    const-string v6, "Range"

    .line 168
    .line 169
    invoke-virtual {v5, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    if-nez v6, :cond_5

    .line 174
    .line 175
    invoke-virtual {v3, v10, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const/4 v6, 0x1

    .line 179
    goto :goto_1

    .line 180
    :cond_5
    const/4 v6, 0x0

    .line 181
    :goto_1
    invoke-interface {v0, v4}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-nez v7, :cond_9

    .line 190
    .line 191
    const-string v7, "Cookie"

    .line 192
    .line 193
    new-instance v10, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    const/16 v19, 0x0

    .line 203
    .line 204
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    if-eqz v11, :cond_8

    .line 209
    .line 210
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    add-int/lit8 v12, v19, 0x1

    .line 215
    .line 216
    if-ltz v19, :cond_7

    .line 217
    .line 218
    check-cast v11, Lokhttp3/Cookie;

    .line 219
    .line 220
    if-lez v19, :cond_6

    .line 221
    .line 222
    const-string v13, "; "

    .line 223
    .line 224
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    :cond_6
    iget-object v13, v11, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const/16 v13, 0x3d

    .line 233
    .line 234
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object v11, v11, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    move/from16 v19, v12

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_7
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 246
    .line 247
    .line 248
    throw v18

    .line 249
    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-virtual {v3, v7, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_9
    invoke-virtual {v5, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    if-nez v4, :cond_a

    .line 261
    .line 262
    const-string v4, "okhttp/5.3.2"

    .line 263
    .line 264
    invoke-virtual {v3, v8, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_a
    new-instance v4, Lokhttp3/Request;

    .line 268
    .line 269
    invoke-direct {v4, v3}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v4}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    iget-object v3, v1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 277
    .line 278
    iget-object v5, v4, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 279
    .line 280
    invoke-static {v0, v5, v3}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iput-object v4, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 288
    .line 289
    if-eqz v6, :cond_b

    .line 290
    .line 291
    move-object/from16 v4, v18

    .line 292
    .line 293
    invoke-virtual {v1, v2, v4}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_b

    .line 302
    .line 303
    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eqz v4, :cond_b

    .line 308
    .line 309
    iget-object v4, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 310
    .line 311
    if-eqz v4, :cond_b

    .line 312
    .line 313
    new-instance v5, Lokio/GzipSource;

    .line 314
    .line 315
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-direct {v5, v4}, Lokio/GzipSource;-><init>(Lokio/BufferedSource;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v3}, Lorg/jsoup/Jsoup;->commonNewBuilder(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v3, v2}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3, v15}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-static {v3}, Lorg/jsoup/Jsoup;->commonBuild(Lokhttp3/Headers$Builder;)Lokhttp3/Headers;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-static {v2}, Lorg/jsoup/Jsoup;->commonNewBuilder(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    iput-object v2, v0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 341
    .line 342
    const/4 v4, 0x0

    .line 343
    invoke-virtual {v1, v14, v4}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    new-instance v2, Lokhttp3/internal/http/RealResponseBody;

    .line 348
    .line 349
    new-instance v3, Lokio/RealBufferedSource;

    .line 350
    .line 351
    invoke-direct {v3, v5}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 352
    .line 353
    .line 354
    move-wide/from16 v4, v16

    .line 355
    .line 356
    invoke-direct {v2, v1, v4, v5, v3}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/RealBufferedSource;)V

    .line 357
    .line 358
    .line 359
    iput-object v2, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 360
    .line 361
    :cond_b
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    return-object v0

    .line 366
    :pswitch_2
    iget-object v2, v0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v2, Lokhttp3/Cache;

    .line 369
    .line 370
    if-eqz v2, :cond_13

    .line 371
    .line 372
    iget-object v3, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 373
    .line 374
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    iget-object v4, v3, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 378
    .line 379
    invoke-static {v4}, Lokhttp3/Cache$Companion;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    :try_start_0
    iget-object v2, v2, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    .line 384
    .line 385
    invoke-virtual {v2, v5}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 386
    .line 387
    .line 388
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    if-nez v2, :cond_c

    .line 390
    .line 391
    :catch_0
    :goto_3
    const/4 v2, 0x0

    .line 392
    goto/16 :goto_6

    .line 393
    .line 394
    :cond_c
    :try_start_1
    new-instance v5, Lokhttp3/Cache$Entry;

    .line 395
    .line 396
    iget-object v6, v2, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sources:Ljava/util/ArrayList;

    .line 397
    .line 398
    const/4 v7, 0x0

    .line 399
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    check-cast v6, Lokio/Source;

    .line 404
    .line 405
    invoke-direct {v5, v6}, Lokhttp3/Cache$Entry;-><init>(Lokio/Source;)V

    .line 406
    .line 407
    .line 408
    iget-object v6, v5, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 409
    .line 410
    iget-object v7, v5, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 411
    .line 412
    iget-object v8, v5, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    .line 414
    iget-object v9, v5, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 415
    .line 416
    const-string v10, "Content-Type"

    .line 417
    .line 418
    invoke-virtual {v9, v10}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v10

    .line 422
    const-string v11, "Content-Length"

    .line 423
    .line 424
    invoke-virtual {v9, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    new-instance v12, Lokhttp3/Request;

    .line 429
    .line 430
    const-string v13, "\u0000"

    .line 431
    .line 432
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    new-instance v14, Lokhttp3/Request$Builder;

    .line 442
    .line 443
    const/4 v15, 0x0

    .line 444
    invoke-direct {v14, v15}, Lokhttp3/Request$Builder;-><init>(I)V

    .line 445
    .line 446
    .line 447
    iput-object v8, v14, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 448
    .line 449
    invoke-static {v7}, Lorg/jsoup/Jsoup;->commonNewBuilder(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    .line 450
    .line 451
    .line 452
    move-result-object v15

    .line 453
    iput-object v15, v14, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 454
    .line 455
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v13

    .line 459
    if-nez v13, :cond_d

    .line 460
    .line 461
    move-object v13, v6

    .line 462
    :goto_4
    const/4 v15, 0x0

    .line 463
    goto :goto_5

    .line 464
    :cond_d
    const-string v13, "GET"

    .line 465
    .line 466
    goto :goto_4

    .line 467
    :goto_5
    invoke-virtual {v14, v13, v15}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 468
    .line 469
    .line 470
    invoke-direct {v12, v14}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 471
    .line 472
    .line 473
    sget-object v13, Lokhttp3/ResponseBody;->EMPTY:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 474
    .line 475
    sget-object v37, Lokhttp3/TrailersSource;->EMPTY:Lokhttp3/CipherSuite$Companion;

    .line 476
    .line 477
    new-instance v13, Lokhttp3/Headers$Builder;

    .line 478
    .line 479
    const/4 v15, 0x0

    .line 480
    invoke-direct {v13, v15, v15}, Lokhttp3/Headers$Builder;-><init>(IB)V

    .line 481
    .line 482
    .line 483
    iget-object v13, v5, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 484
    .line 485
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    iget v14, v5, Lokhttp3/Cache$Entry;->code:I

    .line 489
    .line 490
    iget-object v15, v5, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 491
    .line 492
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    invoke-static {v9}, Lorg/jsoup/Jsoup;->commonNewBuilder(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    move-object/from16 v20, v9

    .line 500
    .line 501
    new-instance v9, Lokhttp3/Cache$CacheResponseBody;

    .line 502
    .line 503
    invoke-direct {v9, v2, v10, v11}, Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    iget-object v2, v5, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 507
    .line 508
    iget-wide v10, v5, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 509
    .line 510
    move-object/from16 v27, v9

    .line 511
    .line 512
    move-wide/from16 v32, v10

    .line 513
    .line 514
    iget-wide v9, v5, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 515
    .line 516
    if-ltz v14, :cond_11

    .line 517
    .line 518
    invoke-static/range {v20 .. v20}, Lorg/jsoup/Jsoup;->commonBuild(Lokhttp3/Headers$Builder;)Lokhttp3/Headers;

    .line 519
    .line 520
    .line 521
    move-result-object v26

    .line 522
    new-instance v20, Lokhttp3/Response;

    .line 523
    .line 524
    const/16 v28, 0x0

    .line 525
    .line 526
    const/16 v29, 0x0

    .line 527
    .line 528
    const/16 v30, 0x0

    .line 529
    .line 530
    const/16 v31, 0x0

    .line 531
    .line 532
    const/16 v36, 0x0

    .line 533
    .line 534
    move-object/from16 v25, v2

    .line 535
    .line 536
    move-wide/from16 v34, v9

    .line 537
    .line 538
    move-object/from16 v21, v12

    .line 539
    .line 540
    move-object/from16 v22, v13

    .line 541
    .line 542
    move/from16 v24, v14

    .line 543
    .line 544
    move-object/from16 v23, v15

    .line 545
    .line 546
    invoke-direct/range {v20 .. v37}, Lokhttp3/Response;-><init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokio/Socket;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLandroidx/compose/runtime/Latch;Lokhttp3/TrailersSource;)V

    .line 547
    .line 548
    .line 549
    move-object/from16 v2, v20

    .line 550
    .line 551
    invoke-virtual {v8, v4}, Lokhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    if-eqz v4, :cond_10

    .line 556
    .line 557
    iget-object v4, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    if-eqz v4, :cond_10

    .line 564
    .line 565
    iget-object v4, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 566
    .line 567
    invoke-static {v4}, Lokhttp3/Cache$Companion;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    check-cast v4, Ljava/lang/Iterable;

    .line 572
    .line 573
    instance-of v5, v4, Ljava/util/Collection;

    .line 574
    .line 575
    if-eqz v5, :cond_e

    .line 576
    .line 577
    move-object v5, v4

    .line 578
    check-cast v5, Ljava/util/Collection;

    .line 579
    .line 580
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    if-eqz v5, :cond_e

    .line 585
    .line 586
    goto :goto_6

    .line 587
    :cond_e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    if-eqz v5, :cond_12

    .line 596
    .line 597
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v5

    .line 601
    check-cast v5, Ljava/lang/String;

    .line 602
    .line 603
    invoke-virtual {v7, v5}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    iget-object v8, v3, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 608
    .line 609
    invoke-virtual {v8, v5}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    if-nez v5, :cond_f

    .line 618
    .line 619
    :cond_10
    iget-object v2, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 620
    .line 621
    invoke-static {v2}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 622
    .line 623
    .line 624
    goto/16 :goto_3

    .line 625
    .line 626
    :cond_11
    move v2, v14

    .line 627
    const-string v0, "code < 0: "

    .line 628
    .line 629
    invoke-static {v2, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    const/4 v5, 0x0

    .line 637
    goto/16 :goto_24

    .line 638
    .line 639
    :catch_1
    invoke-static {v2}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_3

    .line 643
    .line 644
    :cond_12
    :goto_6
    move-object v4, v2

    .line 645
    goto :goto_7

    .line 646
    :cond_13
    const/4 v4, 0x0

    .line 647
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 648
    .line 649
    .line 650
    move-result-wide v2

    .line 651
    iget-object v5, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 652
    .line 653
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    if-eqz v4, :cond_1a

    .line 657
    .line 658
    iget-wide v9, v4, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 659
    .line 660
    iget-wide v11, v4, Lokhttp3/Response;->receivedResponseAtMillis:J

    .line 661
    .line 662
    iget-object v13, v4, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 663
    .line 664
    invoke-virtual {v13}, Lokhttp3/Headers;->size()I

    .line 665
    .line 666
    .line 667
    move-result v14

    .line 668
    const/4 v7, 0x0

    .line 669
    const/4 v8, -0x1

    .line 670
    const/4 v15, 0x0

    .line 671
    const/16 v20, 0x0

    .line 672
    .line 673
    const/16 v21, 0x0

    .line 674
    .line 675
    const/16 v22, 0x0

    .line 676
    .line 677
    const/16 v23, 0x0

    .line 678
    .line 679
    const/16 v24, 0x0

    .line 680
    .line 681
    :goto_8
    if-ge v7, v14, :cond_19

    .line 682
    .line 683
    invoke-static {v13, v7}, Lorg/jsoup/Jsoup;->commonName(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v6

    .line 687
    move-wide/from16 v28, v2

    .line 688
    .line 689
    invoke-static {v13, v7}, Lorg/jsoup/Jsoup;->commonValue(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    const-string v3, "Date"

    .line 694
    .line 695
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    if-eqz v3, :cond_14

    .line 700
    .line 701
    invoke-static {v2}, Lokhttp3/internal/http/DateFormattingKt;->toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;

    .line 702
    .line 703
    .line 704
    move-result-object v3

    .line 705
    move-object/from16 v24, v2

    .line 706
    .line 707
    move-object/from16 v21, v3

    .line 708
    .line 709
    goto :goto_9

    .line 710
    :cond_14
    const-string v3, "Expires"

    .line 711
    .line 712
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    if-eqz v3, :cond_15

    .line 717
    .line 718
    invoke-static {v2}, Lokhttp3/internal/http/DateFormattingKt;->toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    move-object v15, v2

    .line 723
    goto :goto_9

    .line 724
    :cond_15
    const-string v3, "Last-Modified"

    .line 725
    .line 726
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    if-eqz v3, :cond_16

    .line 731
    .line 732
    invoke-static {v2}, Lokhttp3/internal/http/DateFormattingKt;->toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    move-object/from16 v23, v2

    .line 737
    .line 738
    move-object/from16 v20, v3

    .line 739
    .line 740
    goto :goto_9

    .line 741
    :cond_16
    const-string v3, "ETag"

    .line 742
    .line 743
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 744
    .line 745
    .line 746
    move-result v3

    .line 747
    if-eqz v3, :cond_17

    .line 748
    .line 749
    move-object/from16 v22, v2

    .line 750
    .line 751
    goto :goto_9

    .line 752
    :cond_17
    const-string v3, "Age"

    .line 753
    .line 754
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 755
    .line 756
    .line 757
    move-result v3

    .line 758
    if-eqz v3, :cond_18

    .line 759
    .line 760
    const/4 v3, -0x1

    .line 761
    invoke-static {v3, v2}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(ILjava/lang/String;)I

    .line 762
    .line 763
    .line 764
    move-result v8

    .line 765
    :cond_18
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 766
    .line 767
    move-wide/from16 v2, v28

    .line 768
    .line 769
    goto :goto_8

    .line 770
    :cond_19
    :goto_a
    move-wide/from16 v28, v2

    .line 771
    .line 772
    goto :goto_b

    .line 773
    :cond_1a
    const/4 v8, -0x1

    .line 774
    const-wide/16 v9, 0x0

    .line 775
    .line 776
    const-wide/16 v11, 0x0

    .line 777
    .line 778
    const/4 v15, 0x0

    .line 779
    const/16 v20, 0x0

    .line 780
    .line 781
    const/16 v21, 0x0

    .line 782
    .line 783
    const/16 v22, 0x0

    .line 784
    .line 785
    const/16 v23, 0x0

    .line 786
    .line 787
    const/16 v24, 0x0

    .line 788
    .line 789
    goto :goto_a

    .line 790
    :goto_b
    const-string v2, "If-None-Match"

    .line 791
    .line 792
    const-string v3, "If-Modified-Since"

    .line 793
    .line 794
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 795
    .line 796
    const/16 v7, 0x14

    .line 797
    .line 798
    if-nez v4, :cond_1b

    .line 799
    .line 800
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 801
    .line 802
    const/4 v13, 0x0

    .line 803
    const/4 v14, 0x0

    .line 804
    invoke-direct {v2, v7, v5, v13, v14}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 805
    .line 806
    .line 807
    move-object v8, v4

    .line 808
    move v9, v7

    .line 809
    move-object v4, v13

    .line 810
    :goto_c
    move v15, v14

    .line 811
    goto/16 :goto_18

    .line 812
    .line 813
    :cond_1b
    const/4 v13, 0x0

    .line 814
    const/4 v14, 0x0

    .line 815
    iget-object v7, v5, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 816
    .line 817
    iget-object v13, v5, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 818
    .line 819
    invoke-virtual {v7}, Lokhttp3/HttpUrl;->isHttps()Z

    .line 820
    .line 821
    .line 822
    move-result v7

    .line 823
    if-eqz v7, :cond_1c

    .line 824
    .line 825
    iget-object v7, v4, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    .line 826
    .line 827
    if-nez v7, :cond_1c

    .line 828
    .line 829
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 830
    .line 831
    const/16 v3, 0x14

    .line 832
    .line 833
    const/4 v7, 0x0

    .line 834
    invoke-direct {v2, v3, v5, v7, v14}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 835
    .line 836
    .line 837
    move v9, v3

    .line 838
    :goto_d
    move-object v8, v4

    .line 839
    move-object v4, v7

    .line 840
    goto :goto_c

    .line 841
    :cond_1c
    move-wide/from16 v31, v9

    .line 842
    .line 843
    const/4 v7, 0x0

    .line 844
    const/16 v9, 0x14

    .line 845
    .line 846
    invoke-static {v4, v5}, Lorg/jsoup/select/NodeTraversor;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    .line 847
    .line 848
    .line 849
    move-result v10

    .line 850
    if-nez v10, :cond_1d

    .line 851
    .line 852
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 853
    .line 854
    invoke-direct {v2, v9, v5, v7, v14}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 855
    .line 856
    .line 857
    goto :goto_d

    .line 858
    :cond_1d
    invoke-virtual {v5}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    .line 859
    .line 860
    .line 861
    move-result-object v7

    .line 862
    iget-boolean v9, v7, Lokhttp3/CacheControl;->noCache:Z

    .line 863
    .line 864
    if-nez v9, :cond_32

    .line 865
    .line 866
    invoke-virtual {v13, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v9

    .line 870
    if-nez v9, :cond_32

    .line 871
    .line 872
    invoke-virtual {v13, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v9

    .line 876
    if-eqz v9, :cond_1e

    .line 877
    .line 878
    goto/16 :goto_17

    .line 879
    .line 880
    :cond_1e
    invoke-virtual {v4}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 881
    .line 882
    .line 883
    move-result-object v9

    .line 884
    if-eqz v21, :cond_1f

    .line 885
    .line 886
    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    .line 887
    .line 888
    .line 889
    move-result-wide v33

    .line 890
    move-object v10, v2

    .line 891
    move-object v14, v3

    .line 892
    sub-long v2, v11, v33

    .line 893
    .line 894
    move-wide/from16 v33, v11

    .line 895
    .line 896
    move-object v12, v10

    .line 897
    const-wide/16 v10, 0x0

    .line 898
    .line 899
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 900
    .line 901
    .line 902
    move-result-wide v25

    .line 903
    move-wide/from16 v2, v25

    .line 904
    .line 905
    :goto_e
    const/4 v10, -0x1

    .line 906
    goto :goto_f

    .line 907
    :cond_1f
    move-object v14, v3

    .line 908
    move-wide/from16 v33, v11

    .line 909
    .line 910
    const-wide/16 v10, 0x0

    .line 911
    .line 912
    move-object v12, v2

    .line 913
    move-wide v2, v10

    .line 914
    goto :goto_e

    .line 915
    :goto_f
    if-eq v8, v10, :cond_20

    .line 916
    .line 917
    int-to-long v10, v8

    .line 918
    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 919
    .line 920
    .line 921
    move-result-wide v10

    .line 922
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 923
    .line 924
    .line 925
    move-result-wide v2

    .line 926
    :cond_20
    sub-long v10, v33, v31

    .line 927
    .line 928
    move-wide/from16 v35, v2

    .line 929
    .line 930
    const-wide/16 v2, 0x0

    .line 931
    .line 932
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 933
    .line 934
    .line 935
    move-result-wide v10

    .line 936
    move-wide/from16 v37, v10

    .line 937
    .line 938
    sub-long v10, v28, v33

    .line 939
    .line 940
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 941
    .line 942
    .line 943
    move-result-wide v10

    .line 944
    add-long v2, v35, v37

    .line 945
    .line 946
    add-long/2addr v2, v10

    .line 947
    invoke-virtual {v4}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 948
    .line 949
    .line 950
    move-result-object v8

    .line 951
    iget v8, v8, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 952
    .line 953
    const/4 v10, -0x1

    .line 954
    if-eq v8, v10, :cond_21

    .line 955
    .line 956
    int-to-long v10, v8

    .line 957
    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 958
    .line 959
    .line 960
    move-result-wide v10

    .line 961
    :goto_10
    const-wide/16 v25, 0x0

    .line 962
    .line 963
    goto :goto_13

    .line 964
    :cond_21
    if-eqz v15, :cond_24

    .line 965
    .line 966
    if-eqz v21, :cond_22

    .line 967
    .line 968
    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    .line 969
    .line 970
    .line 971
    move-result-wide v10

    .line 972
    move-wide/from16 v33, v10

    .line 973
    .line 974
    :cond_22
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    .line 975
    .line 976
    .line 977
    move-result-wide v10

    .line 978
    sub-long v10, v10, v33

    .line 979
    .line 980
    const-wide/16 v25, 0x0

    .line 981
    .line 982
    cmp-long v8, v10, v25

    .line 983
    .line 984
    if-lez v8, :cond_23

    .line 985
    .line 986
    goto :goto_10

    .line 987
    :cond_23
    const-wide/16 v10, 0x0

    .line 988
    .line 989
    goto :goto_10

    .line 990
    :cond_24
    if-eqz v20, :cond_28

    .line 991
    .line 992
    iget-object v8, v4, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 993
    .line 994
    iget-object v8, v8, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 995
    .line 996
    iget-object v8, v8, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    .line 997
    .line 998
    if-nez v8, :cond_25

    .line 999
    .line 1000
    const/4 v8, 0x0

    .line 1001
    goto :goto_11

    .line 1002
    :cond_25
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v10, v8}, Lokhttp3/HttpUrl$Companion;->toQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v8

    .line 1014
    :goto_11
    if-nez v8, :cond_28

    .line 1015
    .line 1016
    if-eqz v21, :cond_26

    .line 1017
    .line 1018
    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    .line 1019
    .line 1020
    .line 1021
    move-result-wide v10

    .line 1022
    move-wide/from16 v31, v10

    .line 1023
    .line 1024
    :cond_26
    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    .line 1025
    .line 1026
    .line 1027
    move-result-wide v10

    .line 1028
    sub-long v31, v31, v10

    .line 1029
    .line 1030
    const-wide/16 v25, 0x0

    .line 1031
    .line 1032
    cmp-long v8, v31, v25

    .line 1033
    .line 1034
    if-lez v8, :cond_27

    .line 1035
    .line 1036
    const-wide/16 v10, 0xa

    .line 1037
    .line 1038
    div-long v10, v31, v10

    .line 1039
    .line 1040
    goto :goto_13

    .line 1041
    :cond_27
    :goto_12
    move-wide/from16 v10, v25

    .line 1042
    .line 1043
    goto :goto_13

    .line 1044
    :cond_28
    const-wide/16 v25, 0x0

    .line 1045
    .line 1046
    goto :goto_12

    .line 1047
    :goto_13
    iget v8, v7, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 1048
    .line 1049
    move-wide/from16 v28, v2

    .line 1050
    .line 1051
    const/4 v2, -0x1

    .line 1052
    if-eq v8, v2, :cond_29

    .line 1053
    .line 1054
    int-to-long v2, v8

    .line 1055
    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 1056
    .line 1057
    .line 1058
    move-result-wide v2

    .line 1059
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 1060
    .line 1061
    .line 1062
    move-result-wide v10

    .line 1063
    :cond_29
    iget v2, v7, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 1064
    .line 1065
    const/4 v3, -0x1

    .line 1066
    move-object v8, v4

    .line 1067
    if-eq v2, v3, :cond_2a

    .line 1068
    .line 1069
    int-to-long v3, v2

    .line 1070
    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 1071
    .line 1072
    .line 1073
    move-result-wide v2

    .line 1074
    goto :goto_14

    .line 1075
    :cond_2a
    move-wide/from16 v2, v25

    .line 1076
    .line 1077
    :goto_14
    iget-boolean v4, v9, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 1078
    .line 1079
    if-nez v4, :cond_2b

    .line 1080
    .line 1081
    iget v4, v7, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 1082
    .line 1083
    const/4 v7, -0x1

    .line 1084
    if-eq v4, v7, :cond_2b

    .line 1085
    .line 1086
    move-wide/from16 v31, v2

    .line 1087
    .line 1088
    int-to-long v2, v4

    .line 1089
    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 1090
    .line 1091
    .line 1092
    move-result-wide v2

    .line 1093
    goto :goto_15

    .line 1094
    :cond_2b
    move-wide/from16 v31, v2

    .line 1095
    .line 1096
    move-wide/from16 v2, v25

    .line 1097
    .line 1098
    :goto_15
    iget-boolean v4, v9, Lokhttp3/CacheControl;->noCache:Z

    .line 1099
    .line 1100
    if-nez v4, :cond_2e

    .line 1101
    .line 1102
    add-long v6, v28, v31

    .line 1103
    .line 1104
    add-long/2addr v2, v10

    .line 1105
    cmp-long v2, v6, v2

    .line 1106
    .line 1107
    if-gez v2, :cond_2e

    .line 1108
    .line 1109
    invoke-virtual {v8}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    cmp-long v3, v6, v10

    .line 1114
    .line 1115
    if-ltz v3, :cond_2c

    .line 1116
    .line 1117
    const-string v3, "110 HttpURLConnection \"Response is stale\""

    .line 1118
    .line 1119
    const-string v4, "Warning"

    .line 1120
    .line 1121
    iget-object v6, v2, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 1122
    .line 1123
    invoke-virtual {v6, v4, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    :cond_2c
    const-wide/32 v3, 0x5265c00

    .line 1127
    .line 1128
    .line 1129
    cmp-long v3, v28, v3

    .line 1130
    .line 1131
    if-lez v3, :cond_2d

    .line 1132
    .line 1133
    invoke-virtual {v8}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v3

    .line 1137
    iget v3, v3, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 1138
    .line 1139
    const/4 v10, -0x1

    .line 1140
    if-ne v3, v10, :cond_2d

    .line 1141
    .line 1142
    if-nez v15, :cond_2d

    .line 1143
    .line 1144
    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    .line 1145
    .line 1146
    const-string v4, "Warning"

    .line 1147
    .line 1148
    iget-object v6, v2, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 1149
    .line 1150
    invoke-virtual {v6, v4, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    :cond_2d
    new-instance v3, Lokhttp3/FormBody$Builder;

    .line 1154
    .line 1155
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v2

    .line 1159
    const/4 v4, 0x0

    .line 1160
    const/16 v9, 0x14

    .line 1161
    .line 1162
    const/4 v15, 0x0

    .line 1163
    invoke-direct {v3, v9, v4, v2, v15}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1164
    .line 1165
    .line 1166
    move-object v2, v3

    .line 1167
    goto :goto_18

    .line 1168
    :cond_2e
    if-eqz v22, :cond_2f

    .line 1169
    .line 1170
    move-object v2, v12

    .line 1171
    move-object/from16 v3, v22

    .line 1172
    .line 1173
    goto :goto_16

    .line 1174
    :cond_2f
    if-eqz v20, :cond_30

    .line 1175
    .line 1176
    move-object v2, v14

    .line 1177
    move-object/from16 v3, v23

    .line 1178
    .line 1179
    goto :goto_16

    .line 1180
    :cond_30
    if-eqz v21, :cond_31

    .line 1181
    .line 1182
    move-object v2, v14

    .line 1183
    move-object/from16 v3, v24

    .line 1184
    .line 1185
    :goto_16
    invoke-static {v13}, Lorg/jsoup/Jsoup;->commonNewBuilder(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v4

    .line 1189
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1190
    .line 1191
    .line 1192
    invoke-static {v4, v2, v3}, Lorg/jsoup/Jsoup;->commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v5}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    invoke-static {v4}, Lorg/jsoup/Jsoup;->commonBuild(Lokhttp3/Headers$Builder;)Lokhttp3/Headers;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v3

    .line 1203
    invoke-static {v3}, Lorg/jsoup/Jsoup;->commonNewBuilder(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v3

    .line 1207
    iput-object v3, v2, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 1208
    .line 1209
    new-instance v3, Lokhttp3/Request;

    .line 1210
    .line 1211
    invoke-direct {v3, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 1212
    .line 1213
    .line 1214
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 1215
    .line 1216
    const/16 v9, 0x14

    .line 1217
    .line 1218
    const/4 v15, 0x0

    .line 1219
    invoke-direct {v2, v9, v3, v8, v15}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1220
    .line 1221
    .line 1222
    const/4 v4, 0x0

    .line 1223
    goto :goto_18

    .line 1224
    :cond_31
    const/16 v9, 0x14

    .line 1225
    .line 1226
    const/4 v15, 0x0

    .line 1227
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 1228
    .line 1229
    const/4 v4, 0x0

    .line 1230
    invoke-direct {v2, v9, v5, v4, v15}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1231
    .line 1232
    .line 1233
    goto :goto_18

    .line 1234
    :cond_32
    :goto_17
    move-object v8, v4

    .line 1235
    const/4 v4, 0x0

    .line 1236
    const/16 v9, 0x14

    .line 1237
    .line 1238
    const/4 v15, 0x0

    .line 1239
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 1240
    .line 1241
    invoke-direct {v2, v9, v5, v4, v15}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1242
    .line 1243
    .line 1244
    :goto_18
    iget-object v3, v2, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 1245
    .line 1246
    check-cast v3, Lokhttp3/Request;

    .line 1247
    .line 1248
    if-eqz v3, :cond_33

    .line 1249
    .line 1250
    invoke-virtual {v5}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v3

    .line 1254
    iget-boolean v3, v3, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 1255
    .line 1256
    if-eqz v3, :cond_33

    .line 1257
    .line 1258
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 1259
    .line 1260
    invoke-direct {v2, v9, v4, v4, v15}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1261
    .line 1262
    .line 1263
    :cond_33
    iget-object v3, v2, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 1264
    .line 1265
    check-cast v3, Lokhttp3/Request;

    .line 1266
    .line 1267
    iget-object v2, v2, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 1268
    .line 1269
    check-cast v2, Lokhttp3/Response;

    .line 1270
    .line 1271
    iget-object v4, v0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 1272
    .line 1273
    check-cast v4, Lokhttp3/Cache;

    .line 1274
    .line 1275
    if-eqz v4, :cond_34

    .line 1276
    .line 1277
    monitor-enter v4

    .line 1278
    monitor-exit v4

    .line 1279
    :cond_34
    if-eqz v8, :cond_35

    .line 1280
    .line 1281
    if-nez v2, :cond_35

    .line 1282
    .line 1283
    iget-object v4, v8, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 1284
    .line 1285
    invoke-static {v4}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 1286
    .line 1287
    .line 1288
    :cond_35
    if-nez v3, :cond_36

    .line 1289
    .line 1290
    if-nez v2, :cond_36

    .line 1291
    .line 1292
    sget-object v38, Lokhttp3/ResponseBody;->EMPTY:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 1293
    .line 1294
    sget-object v48, Lokhttp3/TrailersSource;->EMPTY:Lokhttp3/CipherSuite$Companion;

    .line 1295
    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    .line 1297
    .line 1298
    const/16 v9, 0x14

    .line 1299
    .line 1300
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1301
    .line 1302
    .line 1303
    iget-object v1, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 1304
    .line 1305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1306
    .line 1307
    .line 1308
    sget-object v33, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 1309
    .line 1310
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1311
    .line 1312
    .line 1313
    const-string v34, "Unsatisfiable Request (only-if-cached)"

    .line 1314
    .line 1315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1316
    .line 1317
    .line 1318
    move-result-wide v45

    .line 1319
    new-instance v2, Lokhttp3/Headers;

    .line 1320
    .line 1321
    const/4 v15, 0x0

    .line 1322
    new-array v3, v15, [Ljava/lang/String;

    .line 1323
    .line 1324
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v0

    .line 1328
    check-cast v0, [Ljava/lang/String;

    .line 1329
    .line 1330
    invoke-direct {v2, v0}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    .line 1331
    .line 1332
    .line 1333
    new-instance v31, Lokhttp3/Response;

    .line 1334
    .line 1335
    const/16 v35, 0x1f8

    .line 1336
    .line 1337
    const/16 v36, 0x0

    .line 1338
    .line 1339
    const/16 v39, 0x0

    .line 1340
    .line 1341
    const/16 v40, 0x0

    .line 1342
    .line 1343
    const/16 v41, 0x0

    .line 1344
    .line 1345
    const/16 v42, 0x0

    .line 1346
    .line 1347
    const-wide/16 v43, -0x1

    .line 1348
    .line 1349
    const/16 v47, 0x0

    .line 1350
    .line 1351
    move-object/from16 v32, v1

    .line 1352
    .line 1353
    move-object/from16 v37, v2

    .line 1354
    .line 1355
    invoke-direct/range {v31 .. v48}, Lokhttp3/Response;-><init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokio/Socket;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLandroidx/compose/runtime/Latch;Lokhttp3/TrailersSource;)V

    .line 1356
    .line 1357
    .line 1358
    move-object/from16 v5, v31

    .line 1359
    .line 1360
    goto/16 :goto_24

    .line 1361
    .line 1362
    :cond_36
    if-nez v3, :cond_37

    .line 1363
    .line 1364
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v0

    .line 1371
    invoke-static {v2}, Lokio/Options$Companion;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v1

    .line 1375
    const-string v2, "cacheResponse"

    .line 1376
    .line 1377
    invoke-static {v2, v1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 1378
    .line 1379
    .line 1380
    iput-object v1, v0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 1381
    .line 1382
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v5

    .line 1386
    goto/16 :goto_24

    .line 1387
    .line 1388
    :cond_37
    :try_start_2
    invoke-virtual {v1, v3}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1392
    if-eqz v2, :cond_43

    .line 1393
    .line 1394
    iget v4, v1, Lokhttp3/Response;->code:I

    .line 1395
    .line 1396
    const/16 v5, 0x130

    .line 1397
    .line 1398
    if-ne v4, v5, :cond_42

    .line 1399
    .line 1400
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v3

    .line 1404
    iget-object v4, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 1405
    .line 1406
    iget-object v5, v1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 1407
    .line 1408
    new-instance v6, Ljava/util/ArrayList;

    .line 1409
    .line 1410
    const/16 v9, 0x14

    .line 1411
    .line 1412
    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    .line 1416
    .line 1417
    .line 1418
    move-result v7

    .line 1419
    const/4 v8, 0x0

    .line 1420
    :goto_19
    if-ge v8, v7, :cond_3c

    .line 1421
    .line 1422
    invoke-static {v4, v8}, Lorg/jsoup/Jsoup;->commonName(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v9

    .line 1426
    invoke-static {v4, v8}, Lorg/jsoup/Jsoup;->commonValue(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v10

    .line 1430
    const-string v11, "Warning"

    .line 1431
    .line 1432
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1433
    .line 1434
    .line 1435
    move-result v11

    .line 1436
    if-eqz v11, :cond_38

    .line 1437
    .line 1438
    const-string v11, "1"

    .line 1439
    .line 1440
    const/4 v15, 0x0

    .line 1441
    invoke-static {v10, v11, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1442
    .line 1443
    .line 1444
    move-result v11

    .line 1445
    if-eqz v11, :cond_38

    .line 1446
    .line 1447
    goto :goto_1b

    .line 1448
    :cond_38
    const-string v11, "Content-Length"

    .line 1449
    .line 1450
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1451
    .line 1452
    .line 1453
    move-result v11

    .line 1454
    if-nez v11, :cond_3a

    .line 1455
    .line 1456
    const-string v11, "Content-Encoding"

    .line 1457
    .line 1458
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1459
    .line 1460
    .line 1461
    move-result v11

    .line 1462
    if-nez v11, :cond_3a

    .line 1463
    .line 1464
    const-string v11, "Content-Type"

    .line 1465
    .line 1466
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1467
    .line 1468
    .line 1469
    move-result v11

    .line 1470
    if-eqz v11, :cond_39

    .line 1471
    .line 1472
    goto :goto_1a

    .line 1473
    :cond_39
    invoke-static {v9}, Lorg/jsoup/nodes/NodeUtils;->isEndToEnd(Ljava/lang/String;)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v11

    .line 1477
    if-eqz v11, :cond_3a

    .line 1478
    .line 1479
    invoke-virtual {v5, v9}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v11

    .line 1483
    if-nez v11, :cond_3b

    .line 1484
    .line 1485
    :cond_3a
    :goto_1a
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    .line 1487
    .line 1488
    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v9

    .line 1492
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v9

    .line 1496
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    .line 1498
    .line 1499
    :cond_3b
    :goto_1b
    add-int/lit8 v8, v8, 0x1

    .line 1500
    .line 1501
    goto :goto_19

    .line 1502
    :cond_3c
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    .line 1503
    .line 1504
    .line 1505
    move-result v4

    .line 1506
    const/4 v7, 0x0

    .line 1507
    :goto_1c
    if-ge v7, v4, :cond_3f

    .line 1508
    .line 1509
    invoke-static {v5, v7}, Lorg/jsoup/Jsoup;->commonName(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v8

    .line 1513
    const-string v9, "Content-Length"

    .line 1514
    .line 1515
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1516
    .line 1517
    .line 1518
    move-result v9

    .line 1519
    if-nez v9, :cond_3e

    .line 1520
    .line 1521
    const-string v9, "Content-Encoding"

    .line 1522
    .line 1523
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1524
    .line 1525
    .line 1526
    move-result v9

    .line 1527
    if-nez v9, :cond_3e

    .line 1528
    .line 1529
    const-string v9, "Content-Type"

    .line 1530
    .line 1531
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1532
    .line 1533
    .line 1534
    move-result v9

    .line 1535
    if-eqz v9, :cond_3d

    .line 1536
    .line 1537
    goto :goto_1d

    .line 1538
    :cond_3d
    invoke-static {v8}, Lorg/jsoup/nodes/NodeUtils;->isEndToEnd(Ljava/lang/String;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v9

    .line 1542
    if-eqz v9, :cond_3e

    .line 1543
    .line 1544
    invoke-static {v5, v7}, Lorg/jsoup/Jsoup;->commonValue(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v9

    .line 1548
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    .line 1550
    .line 1551
    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v8

    .line 1555
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v8

    .line 1559
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1560
    .line 1561
    .line 1562
    :cond_3e
    :goto_1d
    add-int/lit8 v7, v7, 0x1

    .line 1563
    .line 1564
    goto :goto_1c

    .line 1565
    :cond_3f
    new-instance v4, Lokhttp3/Headers;

    .line 1566
    .line 1567
    const/4 v15, 0x0

    .line 1568
    new-array v5, v15, [Ljava/lang/String;

    .line 1569
    .line 1570
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v5

    .line 1574
    check-cast v5, [Ljava/lang/String;

    .line 1575
    .line 1576
    invoke-direct {v4, v5}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    .line 1577
    .line 1578
    .line 1579
    invoke-static {v4}, Lorg/jsoup/Jsoup;->commonNewBuilder(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v4

    .line 1583
    iput-object v4, v3, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 1584
    .line 1585
    iget-wide v4, v1, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 1586
    .line 1587
    iput-wide v4, v3, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 1588
    .line 1589
    iget-wide v4, v1, Lokhttp3/Response;->receivedResponseAtMillis:J

    .line 1590
    .line 1591
    iput-wide v4, v3, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 1592
    .line 1593
    invoke-static {v2}, Lokio/Options$Companion;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v4

    .line 1597
    const-string v5, "cacheResponse"

    .line 1598
    .line 1599
    invoke-static {v5, v4}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 1600
    .line 1601
    .line 1602
    iput-object v4, v3, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 1603
    .line 1604
    invoke-static {v1}, Lokio/Options$Companion;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v4

    .line 1608
    const-string v5, "networkResponse"

    .line 1609
    .line 1610
    invoke-static {v5, v4}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 1611
    .line 1612
    .line 1613
    iput-object v4, v3, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 1614
    .line 1615
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v3

    .line 1619
    iget-object v1, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 1620
    .line 1621
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    .line 1622
    .line 1623
    .line 1624
    iget-object v1, v0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 1625
    .line 1626
    check-cast v1, Lokhttp3/Cache;

    .line 1627
    .line 1628
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1629
    .line 1630
    .line 1631
    invoke-virtual {v1}, Lokhttp3/Cache;->trackConditionalCacheHit$okhttp()V

    .line 1632
    .line 1633
    .line 1634
    iget-object v0, v0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 1635
    .line 1636
    check-cast v0, Lokhttp3/Cache;

    .line 1637
    .line 1638
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1639
    .line 1640
    .line 1641
    new-instance v0, Lokhttp3/Cache$Entry;

    .line 1642
    .line 1643
    invoke-direct {v0, v3}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 1644
    .line 1645
    .line 1646
    iget-object v1, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 1647
    .line 1648
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1649
    .line 1650
    .line 1651
    check-cast v1, Lokhttp3/Cache$CacheResponseBody;

    .line 1652
    .line 1653
    iget-object v1, v1, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 1654
    .line 1655
    :try_start_3
    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    .line 1656
    .line 1657
    iget-object v4, v1, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 1658
    .line 1659
    iget-wide v5, v1, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 1660
    .line 1661
    invoke-virtual {v2, v4, v5, v6}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Landroidx/compose/runtime/Latch;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1665
    if-nez v5, :cond_40

    .line 1666
    .line 1667
    goto :goto_1e

    .line 1668
    :cond_40
    :try_start_4
    invoke-virtual {v0, v5}, Lokhttp3/Cache$Entry;->writeTo(Landroidx/compose/runtime/Latch;)V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v5}, Landroidx/compose/runtime/Latch;->commit()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1672
    .line 1673
    .line 1674
    goto :goto_1e

    .line 1675
    :catch_2
    const/4 v5, 0x0

    .line 1676
    :catch_3
    if-eqz v5, :cond_41

    .line 1677
    .line 1678
    :try_start_5
    invoke-virtual {v5}, Landroidx/compose/runtime/Latch;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1679
    .line 1680
    .line 1681
    :catch_4
    :cond_41
    :goto_1e
    move-object v5, v3

    .line 1682
    goto/16 :goto_24

    .line 1683
    .line 1684
    :cond_42
    iget-object v4, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 1685
    .line 1686
    invoke-static {v4}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 1687
    .line 1688
    .line 1689
    :cond_43
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v4

    .line 1693
    if-eqz v2, :cond_44

    .line 1694
    .line 1695
    invoke-static {v2}, Lokio/Options$Companion;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v2

    .line 1699
    goto :goto_1f

    .line 1700
    :cond_44
    const/4 v2, 0x0

    .line 1701
    :goto_1f
    const-string v5, "cacheResponse"

    .line 1702
    .line 1703
    invoke-static {v5, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 1704
    .line 1705
    .line 1706
    iput-object v2, v4, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 1707
    .line 1708
    invoke-static {v1}, Lokio/Options$Companion;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v1

    .line 1712
    const-string v2, "networkResponse"

    .line 1713
    .line 1714
    invoke-static {v2, v1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 1715
    .line 1716
    .line 1717
    iput-object v1, v4, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 1718
    .line 1719
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v1

    .line 1723
    iget-object v2, v0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 1724
    .line 1725
    check-cast v2, Lokhttp3/Cache;

    .line 1726
    .line 1727
    if-eqz v2, :cond_4c

    .line 1728
    .line 1729
    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    .line 1730
    .line 1731
    .line 1732
    move-result v2

    .line 1733
    if-eqz v2, :cond_4b

    .line 1734
    .line 1735
    invoke-static {v1, v3}, Lorg/jsoup/select/NodeTraversor;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    .line 1736
    .line 1737
    .line 1738
    move-result v2

    .line 1739
    if-eqz v2, :cond_4b

    .line 1740
    .line 1741
    iget-object v0, v0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 1742
    .line 1743
    check-cast v0, Lokhttp3/Cache;

    .line 1744
    .line 1745
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v2

    .line 1749
    iput-object v3, v2, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 1750
    .line 1751
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v2

    .line 1755
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1756
    .line 1757
    .line 1758
    iget-object v3, v2, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 1759
    .line 1760
    iget-object v4, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 1761
    .line 1762
    invoke-static {v4}, Lorg/wikipedia/util/TabUtil;->invalidatesCache(Ljava/lang/String;)Z

    .line 1763
    .line 1764
    .line 1765
    move-result v5

    .line 1766
    if-eqz v5, :cond_46

    .line 1767
    .line 1768
    :try_start_6
    invoke-virtual {v0, v3}, Lokhttp3/Cache;->remove$okhttp(Lokhttp3/Request;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1769
    .line 1770
    .line 1771
    :catch_5
    :cond_45
    :goto_20
    const/4 v4, 0x0

    .line 1772
    goto :goto_22

    .line 1773
    :cond_46
    const-string v5, "GET"

    .line 1774
    .line 1775
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1776
    .line 1777
    .line 1778
    move-result v4

    .line 1779
    if-nez v4, :cond_47

    .line 1780
    .line 1781
    goto :goto_20

    .line 1782
    :cond_47
    iget-object v4, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 1783
    .line 1784
    invoke-static {v4}, Lokhttp3/Cache$Companion;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v4

    .line 1788
    const-string v5, "*"

    .line 1789
    .line 1790
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1791
    .line 1792
    .line 1793
    move-result v4

    .line 1794
    if-eqz v4, :cond_48

    .line 1795
    .line 1796
    goto :goto_20

    .line 1797
    :cond_48
    new-instance v4, Lokhttp3/Cache$Entry;

    .line 1798
    .line 1799
    invoke-direct {v4, v2}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 1800
    .line 1801
    .line 1802
    :try_start_7
    iget-object v2, v0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    .line 1803
    .line 1804
    iget-object v3, v3, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 1805
    .line 1806
    invoke-static {v3}, Lokhttp3/Cache$Companion;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v3

    .line 1810
    sget-object v5, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Lkotlin/text/Regex;

    .line 1811
    .line 1812
    const-wide/16 v5, -0x1

    .line 1813
    .line 1814
    invoke-virtual {v2, v3, v5, v6}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Landroidx/compose/runtime/Latch;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1818
    if-nez v2, :cond_49

    .line 1819
    .line 1820
    goto :goto_20

    .line 1821
    :cond_49
    :try_start_8
    invoke-virtual {v4, v2}, Lokhttp3/Cache$Entry;->writeTo(Landroidx/compose/runtime/Latch;)V

    .line 1822
    .line 1823
    .line 1824
    new-instance v4, Lokhttp3/Cache$RealCacheRequest;

    .line 1825
    .line 1826
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1827
    .line 1828
    .line 1829
    iput-object v0, v4, Lokhttp3/Cache$RealCacheRequest;->this$0:Ljava/lang/Object;

    .line 1830
    .line 1831
    iput-object v2, v4, Lokhttp3/Cache$RealCacheRequest;->editor:Ljava/lang/Object;

    .line 1832
    .line 1833
    const/4 v3, 0x1

    .line 1834
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Latch;->newSink(I)Lokio/Sink;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v3

    .line 1838
    iput-object v3, v4, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Ljava/lang/Object;

    .line 1839
    .line 1840
    new-instance v5, Lokhttp3/Cache$RealCacheRequest$1;

    .line 1841
    .line 1842
    invoke-direct {v5, v0, v4, v3}, Lokhttp3/Cache$RealCacheRequest$1;-><init>(Lokhttp3/Cache;Lokhttp3/Cache$RealCacheRequest;Lokio/Sink;)V

    .line 1843
    .line 1844
    .line 1845
    iput-object v5, v4, Lokhttp3/Cache$RealCacheRequest;->body:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1846
    .line 1847
    goto :goto_22

    .line 1848
    :catch_6
    move-object v4, v2

    .line 1849
    goto :goto_21

    .line 1850
    :catch_7
    const/4 v4, 0x0

    .line 1851
    :goto_21
    if-eqz v4, :cond_45

    .line 1852
    .line 1853
    :try_start_9
    invoke-virtual {v4}, Landroidx/compose/runtime/Latch;->abort()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1854
    .line 1855
    .line 1856
    goto :goto_20

    .line 1857
    :goto_22
    if-nez v4, :cond_4a

    .line 1858
    .line 1859
    goto :goto_23

    .line 1860
    :cond_4a
    iget-object v0, v4, Lokhttp3/Cache$RealCacheRequest;->body:Ljava/lang/Object;

    .line 1861
    .line 1862
    check-cast v0, Lokhttp3/Cache$RealCacheRequest$1;

    .line 1863
    .line 1864
    iget-object v2, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 1865
    .line 1866
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v2

    .line 1870
    invoke-static {v0}, Lokio/Okio__OkioKt;->buffer(Lokio/Sink;)Lokio/RealBufferedSink;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v0

    .line 1874
    new-instance v3, Lokhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;

    .line 1875
    .line 1876
    invoke-direct {v3, v2, v4, v0}, Lokhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;-><init>(Lokio/BufferedSource;Lokhttp3/Cache$RealCacheRequest;Lokio/RealBufferedSink;)V

    .line 1877
    .line 1878
    .line 1879
    const-string v0, "Content-Type"

    .line 1880
    .line 1881
    const/4 v4, 0x0

    .line 1882
    invoke-virtual {v1, v0, v4}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v0

    .line 1886
    iget-object v2, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 1887
    .line 1888
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    .line 1889
    .line 1890
    .line 1891
    move-result-wide v4

    .line 1892
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v1

    .line 1896
    new-instance v2, Lokhttp3/internal/http/RealResponseBody;

    .line 1897
    .line 1898
    new-instance v6, Lokio/RealBufferedSource;

    .line 1899
    .line 1900
    invoke-direct {v6, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 1901
    .line 1902
    .line 1903
    invoke-direct {v2, v0, v4, v5, v6}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/RealBufferedSource;)V

    .line 1904
    .line 1905
    .line 1906
    iput-object v2, v1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 1907
    .line 1908
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v0

    .line 1912
    move-object v5, v0

    .line 1913
    goto :goto_24

    .line 1914
    :cond_4b
    iget-object v2, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 1915
    .line 1916
    invoke-static {v2}, Lorg/wikipedia/util/TabUtil;->invalidatesCache(Ljava/lang/String;)Z

    .line 1917
    .line 1918
    .line 1919
    move-result v2

    .line 1920
    if-eqz v2, :cond_4c

    .line 1921
    .line 1922
    :try_start_a
    iget-object v0, v0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 1923
    .line 1924
    check-cast v0, Lokhttp3/Cache;

    .line 1925
    .line 1926
    invoke-virtual {v0, v3}, Lokhttp3/Cache;->remove$okhttp(Lokhttp3/Request;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1927
    .line 1928
    .line 1929
    :catch_8
    :cond_4c
    :goto_23
    move-object v5, v1

    .line 1930
    :goto_24
    return-object v5

    .line 1931
    :catchall_0
    move-exception v0

    .line 1932
    if-eqz v8, :cond_4d

    .line 1933
    .line 1934
    iget-object v1, v8, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 1935
    .line 1936
    invoke-static {v1}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 1937
    .line 1938
    .line 1939
    :cond_4d
    throw v0

    .line 1940
    nop

    .line 1941
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lokhttp3/OkHttpClient;

    .line 6
    .line 7
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object p0, p3, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lokhttp3/RequestBody;->isOneShot()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_8

    .line 23
    .line 24
    :cond_1
    instance-of p0, p1, Ljava/io/FileNotFoundException;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    instance-of p0, p1, Ljava/net/ProtocolException;

    .line 30
    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    .line 35
    .line 36
    if-eqz p0, :cond_4

    .line 37
    .line 38
    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    .line 39
    .line 40
    if-eqz p0, :cond_8

    .line 41
    .line 42
    if-eqz v0, :cond_8

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 46
    .line 47
    if-eqz p0, :cond_5

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    instance-of p0, p0, Ljava/security/cert/CertificateException;

    .line 54
    .line 55
    if-eqz p0, :cond_5

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_5
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 59
    .line 60
    if-eqz p0, :cond_6

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_6
    :goto_0
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->exchange:Landroidx/compose/runtime/Latch;

    .line 64
    .line 65
    if-eqz p0, :cond_8

    .line 66
    .line 67
    iget-boolean p0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    if-ne p0, p1, :cond_8

    .line 71
    .line 72
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-interface {p0}, Lokhttp3/internal/connection/ExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RealRoutePlanner;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    iget-object p2, p2, Lokhttp3/internal/connection/RealCall;->exchange:Landroidx/compose/runtime/Latch;

    .line 82
    .line 83
    if-eqz p2, :cond_7

    .line 84
    .line 85
    invoke-virtual {p2}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    goto :goto_1

    .line 90
    :cond_7
    const/4 p2, 0x0

    .line 91
    :goto_1
    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/RealRoutePlanner;->hasNext(Lokhttp3/internal/connection/RealConnection;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_8

    .line 96
    .line 97
    return p1

    .line 98
    :cond_8
    :goto_2
    const/4 p0, 0x0

    .line 99
    return p0
.end method
