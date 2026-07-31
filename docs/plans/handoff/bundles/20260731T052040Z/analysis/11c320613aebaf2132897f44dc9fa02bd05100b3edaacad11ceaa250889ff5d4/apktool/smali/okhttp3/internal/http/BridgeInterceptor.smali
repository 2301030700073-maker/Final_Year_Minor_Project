.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final INSTANCE:Lokhttp3/internal/http/BridgeInterceptor;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/internal/http/BridgeInterceptor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/internal/http/BridgeInterceptor;->INSTANCE:Lokhttp3/internal/http/BridgeInterceptor;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static followUpRequest(Lokhttp3/Response;Landroidx/compose/runtime/Latch;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Request;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

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
    iget v2, p0, Lokhttp3/Response;->code:I

    .line 13
    .line 14
    iget-object v3, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 15
    .line 16
    iget-object v3, v3, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    const/16 v6, 0x134

    .line 21
    .line 22
    const/16 v7, 0x133

    .line 23
    .line 24
    if-eq v2, v7, :cond_c

    .line 25
    .line 26
    if-eq v2, v6, :cond_c

    .line 27
    .line 28
    const/16 v8, 0x191

    .line 29
    .line 30
    if-eq v2, v8, :cond_b

    .line 31
    .line 32
    const/16 v8, 0x1a5

    .line 33
    .line 34
    if-eq v2, v8, :cond_9

    .line 35
    .line 36
    const/16 p1, 0x1f7

    .line 37
    .line 38
    if-eq v2, p1, :cond_7

    .line 39
    .line 40
    const/16 p1, 0x197

    .line 41
    .line 42
    if-eq v2, p1, :cond_5

    .line 43
    .line 44
    const/16 p1, 0x198

    .line 45
    .line 46
    if-eq v2, p1, :cond_1

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
    iget-boolean p2, p2, Lokhttp3/internal/http/RealInterceptorChain;->retryOnConnectionFailure:Z

    .line 54
    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_2
    iget-object p2, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 60
    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    iget p2, p2, Lokhttp3/Response;->code:I

    .line 64
    .line 65
    if-ne p2, p1, :cond_3

    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_3
    invoke-static {p0, v4}, Lokhttp3/internal/http/BridgeInterceptor;->retryAfter(Lokhttp3/Response;I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-lez p1, :cond_4

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_4
    iget-object p0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object p0, v1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    sget-object p1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 90
    .line 91
    if-ne p0, p1, :cond_6

    .line 92
    .line 93
    iget-object p0, p2, Lokhttp3/internal/http/RealInterceptorChain;->proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    .line 100
    .line 101
    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_7
    iget-object p2, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 108
    .line 109
    if-eqz p2, :cond_8

    .line 110
    .line 111
    iget p2, p2, Lokhttp3/Response;->code:I

    .line 112
    .line 113
    if-ne p2, p1, :cond_8

    .line 114
    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :cond_8
    const p1, 0x7fffffff

    .line 118
    .line 119
    .line 120
    invoke-static {p0, p1}, Lokhttp3/internal/http/BridgeInterceptor;->retryAfter(Lokhttp3/Response;I)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_12

    .line 125
    .line 126
    iget-object p0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_9
    if-eqz p1, :cond_12

    .line 130
    .line 131
    iget-object p2, p1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p2, Lokhttp3/internal/connection/ExchangeFinder;

    .line 134
    .line 135
    invoke-interface {p2}, Lokhttp3/internal/connection/ExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RealRoutePlanner;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    iget-object p2, p2, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 140
    .line 141
    iget-object p2, p2, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 142
    .line 143
    iget-object p2, p2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v1, p1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v1, Lokhttp3/internal/http/ExchangeCodec;

    .line 148
    .line 149
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->getRoute()Lokhttp3/Route;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v1, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 158
    .line 159
    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 160
    .line 161
    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-eqz p2, :cond_a

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    monitor-enter p1

    .line 175
    :try_start_0
    iput-boolean v5, p1, Lokhttp3/internal/connection/RealConnection;->noCoalescedConnections:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .line 177
    monitor-exit p1

    .line 178
    iget-object p0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 179
    .line 180
    return-object p0

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    monitor-exit p1

    .line 183
    throw p0

    .line 184
    :cond_b
    iget-object p0, p2, Lokhttp3/internal/http/RealInterceptorChain;->authenticator:Lokhttp3/HttpUrl$Companion;

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    return-object v0

    .line 190
    :cond_c
    :pswitch_0
    const-string p1, "PROPFIND"

    .line 191
    .line 192
    iget-object v1, p2, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 193
    .line 194
    iget-object v1, v1, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 195
    .line 196
    iget-boolean v1, v1, Lokhttp3/OkHttpClient;->followRedirects:Z

    .line 197
    .line 198
    if-nez v1, :cond_d

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_d
    const-string v1, "Location"

    .line 202
    .line 203
    iget-object v2, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-nez v1, :cond_e

    .line 210
    .line 211
    move-object v1, v0

    .line 212
    :cond_e
    iget-object v2, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 213
    .line 214
    if-nez v1, :cond_f

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_f
    iget-object v8, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 218
    .line 219
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    :try_start_1
    new-instance v9, Lokhttp3/HttpUrl$Builder;

    .line 223
    .line 224
    invoke-direct {v9}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9, v8, v1}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :catch_0
    move-object v9, v0

    .line 232
    :goto_1
    if-eqz v9, :cond_10

    .line 233
    .line 234
    invoke-virtual {v9}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    goto :goto_2

    .line 239
    :cond_10
    move-object v1, v0

    .line 240
    :goto_2
    if-nez v1, :cond_11

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_11
    iget-object v8, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v9, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 246
    .line 247
    iget-object v9, v9, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-nez v8, :cond_13

    .line 254
    .line 255
    iget-object p2, p2, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 256
    .line 257
    iget-object p2, p2, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 258
    .line 259
    iget-boolean p2, p2, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    .line 260
    .line 261
    if-nez p2, :cond_13

    .line 262
    .line 263
    :cond_12
    :goto_3
    return-object v0

    .line 264
    :cond_13
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-static {v3}, Lkotlin/text/CharsKt;->permitsRequestBody(Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-eqz v8, :cond_18

    .line 273
    .line 274
    iget p0, p0, Lokhttp3/Response;->code:I

    .line 275
    .line 276
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-nez v8, :cond_14

    .line 281
    .line 282
    if-eq p0, v6, :cond_14

    .line 283
    .line 284
    if-ne p0, v7, :cond_15

    .line 285
    .line 286
    :cond_14
    move v4, v5

    .line 287
    :cond_15
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-nez p1, :cond_16

    .line 292
    .line 293
    if-eq p0, v6, :cond_16

    .line 294
    .line 295
    if-eq p0, v7, :cond_16

    .line 296
    .line 297
    const-string p0, "GET"

    .line 298
    .line 299
    invoke-virtual {p2, p0, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 300
    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_16
    if-eqz v4, :cond_17

    .line 304
    .line 305
    iget-object v0, v2, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 306
    .line 307
    :cond_17
    invoke-virtual {p2, v3, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 308
    .line 309
    .line 310
    :goto_4
    if-nez v4, :cond_18

    .line 311
    .line 312
    const-string p0, "Transfer-Encoding"

    .line 313
    .line 314
    iget-object p1, p2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 315
    .line 316
    invoke-virtual {p1, p0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string p0, "Content-Length"

    .line 320
    .line 321
    iget-object p1, p2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 322
    .line 323
    invoke-virtual {p1, p0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string p0, "Content-Type"

    .line 327
    .line 328
    iget-object p1, p2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 329
    .line 330
    invoke-virtual {p1, p0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :cond_18
    iget-object p0, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 334
    .line 335
    invoke-static {p0, v1}, Lokhttp3/internal/_UtilJvmKt;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 336
    .line 337
    .line 338
    move-result p0

    .line 339
    if-nez p0, :cond_19

    .line 340
    .line 341
    const-string p0, "Authorization"

    .line 342
    .line 343
    iget-object p1, p2, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 344
    .line 345
    invoke-virtual {p1, p0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :cond_19
    iput-object v1, p2, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    .line 349
    .line 350
    new-instance p0, Lokhttp3/Request;

    .line 351
    .line 352
    invoke-direct {p0, p2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 353
    .line 354
    .line 355
    return-object p0

    .line 356
    nop

    .line 357
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/Request;)Z
    .locals 0

    .line 1
    instance-of p3, p0, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 2
    .line 3
    iget-boolean p2, p2, Lokhttp3/internal/http/RealInterceptorChain;->retryOnConnectionFailure:Z

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    if-nez p3, :cond_1

    .line 9
    .line 10
    instance-of p2, p0, Ljava/io/FileNotFoundException;

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    instance-of p2, p0, Ljava/net/ProtocolException;

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_2
    instance-of p2, p0, Ljava/io/InterruptedIOException;

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    .line 25
    .line 26
    if-eqz p0, :cond_7

    .line 27
    .line 28
    if-eqz p3, :cond_7

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    instance-of p2, p0, Ljavax/net/ssl/SSLHandshakeException;

    .line 32
    .line 33
    if-eqz p2, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    instance-of p2, p2, Ljava/security/cert/CertificateException;

    .line 40
    .line 41
    if-eqz p2, :cond_4

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_4
    instance-of p0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 45
    .line 46
    if-eqz p0, :cond_5

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_5
    :goto_0
    iget-object p0, p1, Lokhttp3/internal/connection/RealCall;->exchange:Landroidx/compose/runtime/Latch;

    .line 50
    .line 51
    if-eqz p0, :cond_7

    .line 52
    .line 53
    iget-boolean p0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    if-ne p0, p2, :cond_7

    .line 57
    .line 58
    iget-object p0, p1, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-interface {p0}, Lokhttp3/internal/connection/ExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RealRoutePlanner;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-object p1, p1, Lokhttp3/internal/connection/RealCall;->exchange:Landroidx/compose/runtime/Latch;

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_1

    .line 76
    :cond_6
    const/4 p1, 0x0

    .line 77
    :goto_1
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/RealRoutePlanner;->hasNext(Lokhttp3/internal/connection/RealConnection;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_7

    .line 82
    .line 83
    return p2

    .line 84
    :cond_7
    :goto_2
    const/4 p0, 0x0

    .line 85
    return p0
.end method

.method public static retryAfter(Lokhttp3/Response;I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 2
    .line 3
    const-string v0, "Retry-After"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    :cond_0
    if-nez p0, :cond_1

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    new-instance p1, Lkotlin/text/Regex;

    .line 16
    .line 17
    const-string v0, "\\d+"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_2
    const p0, 0x7fffffff

    .line 41
    .line 42
    .line 43
    return p0
.end method


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lokhttp3/internal/http/BridgeInterceptor;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 11
    .line 12
    iget-object v5, v1, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 13
    .line 14
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 15
    .line 16
    move-object v7, v6

    .line 17
    const/16 v18, 0x0

    .line 18
    .line 19
    const/16 v19, 0x0

    .line 20
    .line 21
    move-object v6, v0

    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v8, v5, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Landroidx/compose/runtime/Latch;

    .line 27
    .line 28
    if-nez v8, :cond_b

    .line 29
    .line 30
    monitor-enter v5

    .line 31
    :try_start_0
    iget-boolean v8, v5, Lokhttp3/internal/connection/RealCall;->responseBodyOpen:Z

    .line 32
    .line 33
    if-nez v8, :cond_a

    .line 34
    .line 35
    iget-boolean v8, v5, Lokhttp3/internal/connection/RealCall;->requestBodyOpen:Z

    .line 36
    .line 37
    if-nez v8, :cond_9

    .line 38
    .line 39
    iget-boolean v8, v5, Lokhttp3/internal/connection/RealCall;->socketSourceOpen:Z

    .line 40
    .line 41
    if-nez v8, :cond_9

    .line 42
    .line 43
    iget-boolean v8, v5, Lokhttp3/internal/connection/RealCall;->socketSinkOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    .line 45
    if-nez v8, :cond_9

    .line 46
    .line 47
    monitor-exit v5

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 51
    .line 52
    iget-object v8, v5, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 53
    .line 54
    iget-object v9, v8, Lokhttp3/OkHttpClient;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 55
    .line 56
    iget-object v10, v1, Lokhttp3/internal/http/RealInterceptorChain;->connectionPool:Lokhttp3/ConnectionPool;

    .line 57
    .line 58
    iget-object v10, v10, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v10, Lokhttp3/internal/connection/RealConnectionPool;

    .line 61
    .line 62
    iget v11, v1, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    .line 63
    .line 64
    move-object v12, v9

    .line 65
    iget v9, v1, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeoutMillis:I

    .line 66
    .line 67
    move-object v13, v7

    .line 68
    move-object v7, v10

    .line 69
    iget v10, v1, Lokhttp3/internal/http/RealInterceptorChain;->connectTimeoutMillis:I

    .line 70
    .line 71
    move-object v14, v12

    .line 72
    iget-boolean v12, v1, Lokhttp3/internal/http/RealInterceptorChain;->retryOnConnectionFailure:Z

    .line 73
    .line 74
    iget-boolean v8, v8, Lokhttp3/OkHttpClient;->fastFallback:Z

    .line 75
    .line 76
    iget-object v15, v6, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 77
    .line 78
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object v4, v15, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 82
    .line 83
    const-string v2, "https"

    .line 84
    .line 85
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_0

    .line 90
    .line 91
    iget-object v2, v1, Lokhttp3/internal/http/RealInterceptorChain;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 92
    .line 93
    iget-object v4, v1, Lokhttp3/internal/http/RealInterceptorChain;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 94
    .line 95
    iget-object v3, v1, Lokhttp3/internal/http/RealInterceptorChain;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 96
    .line 97
    move-object/from16 v26, v2

    .line 98
    .line 99
    move-object/from16 v28, v3

    .line 100
    .line 101
    move-object/from16 v27, v4

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_0
    const/16 v26, 0x0

    .line 105
    .line 106
    const/16 v27, 0x0

    .line 107
    .line 108
    const/16 v28, 0x0

    .line 109
    .line 110
    :goto_2
    new-instance v21, Lokhttp3/Address;

    .line 111
    .line 112
    iget-object v2, v15, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 113
    .line 114
    iget v3, v15, Lokhttp3/HttpUrl;->port:I

    .line 115
    .line 116
    iget-object v4, v1, Lokhttp3/internal/http/RealInterceptorChain;->dns:Lokhttp3/HttpUrl$Companion;

    .line 117
    .line 118
    iget-object v15, v1, Lokhttp3/internal/http/RealInterceptorChain;->socketFactory:Ljavax/net/SocketFactory;

    .line 119
    .line 120
    move-object/from16 v16, v0

    .line 121
    .line 122
    iget-object v0, v1, Lokhttp3/internal/http/RealInterceptorChain;->proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

    .line 123
    .line 124
    move-object/from16 v29, v0

    .line 125
    .line 126
    iget-object v0, v1, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 127
    .line 128
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 129
    .line 130
    move-object/from16 v22, v2

    .line 131
    .line 132
    iget-object v2, v0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 133
    .line 134
    iget-object v0, v0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 135
    .line 136
    move-object/from16 v31, v0

    .line 137
    .line 138
    iget-object v0, v1, Lokhttp3/internal/http/RealInterceptorChain;->proxySelector:Ljava/net/ProxySelector;

    .line 139
    .line 140
    move-object/from16 v32, v0

    .line 141
    .line 142
    move-object/from16 v30, v2

    .line 143
    .line 144
    move/from16 v23, v3

    .line 145
    .line 146
    move-object/from16 v24, v4

    .line 147
    .line 148
    move-object/from16 v25, v15

    .line 149
    .line 150
    invoke-direct/range {v21 .. v32}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/HttpUrl$Companion;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/HttpUrl$Companion;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, v5, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 154
    .line 155
    iget-object v15, v0, Lokhttp3/OkHttpClient;->routeDatabase:Lokhttp3/ConnectionPool;

    .line 156
    .line 157
    move-object v2, v13

    .line 158
    move v13, v8

    .line 159
    move v8, v11

    .line 160
    move-object/from16 v17, v16

    .line 161
    .line 162
    move-object/from16 v16, v5

    .line 163
    .line 164
    move-object/from16 v5, v17

    .line 165
    .line 166
    move-object/from16 v17, v6

    .line 167
    .line 168
    move-object v6, v14

    .line 169
    move-object/from16 v14, v21

    .line 170
    .line 171
    invoke-direct/range {v5 .. v17}, Lokhttp3/internal/connection/RealRoutePlanner;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZZLokhttp3/Address;Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)V

    .line 172
    .line 173
    .line 174
    move-object/from16 v3, v16

    .line 175
    .line 176
    move-object/from16 v6, v17

    .line 177
    .line 178
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 179
    .line 180
    iget-boolean v4, v0, Lokhttp3/OkHttpClient;->fastFallback:Z

    .line 181
    .line 182
    if-eqz v4, :cond_1

    .line 183
    .line 184
    new-instance v4, Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 185
    .line 186
    iget-object v0, v0, Lokhttp3/OkHttpClient;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 187
    .line 188
    invoke-direct {v4, v5, v0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;-><init>(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_1
    new-instance v4, Lokhttp3/ConnectionPool;

    .line 193
    .line 194
    const/16 v0, 0x16

    .line 195
    .line 196
    invoke-direct {v4, v5, v0}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 197
    .line 198
    .line 199
    :goto_3
    iput-object v4, v3, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_2
    move-object v3, v5

    .line 203
    move-object v2, v7

    .line 204
    :goto_4
    :try_start_1
    iget-boolean v0, v3, Lokhttp3/internal/connection/RealCall;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .line 206
    if-nez v0, :cond_8

    .line 207
    .line 208
    :try_start_2
    invoke-virtual {v1, v6}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 209
    .line 210
    .line 211
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iput-object v6, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 217
    .line 218
    if-eqz v18, :cond_3

    .line 219
    .line 220
    invoke-static/range {v18 .. v18}, Landroidx/work/OperationKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    goto :goto_5

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    const/4 v2, 0x1

    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :cond_3
    const/4 v4, 0x0

    .line 230
    :goto_5
    iput-object v4, v0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 231
    .line 232
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget-object v4, v3, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Landroidx/compose/runtime/Latch;

    .line 237
    .line 238
    invoke-static {v0, v4, v1}, Lokhttp3/internal/http/BridgeInterceptor;->followUpRequest(Lokhttp3/Response;Landroidx/compose/runtime/Latch;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Request;

    .line 239
    .line 240
    .line 241
    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    if-nez v6, :cond_4

    .line 243
    .line 244
    :try_start_4
    iget-object v1, v3, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 247
    .line 248
    .line 249
    const/4 v1, 0x0

    .line 250
    invoke-virtual {v3, v1}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 251
    .line 252
    .line 253
    move-object v4, v0

    .line 254
    goto/16 :goto_a

    .line 255
    .line 256
    :catchall_1
    move-exception v0

    .line 257
    const/4 v2, 0x0

    .line 258
    goto :goto_7

    .line 259
    :cond_4
    :try_start_5
    iget-object v4, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 260
    .line 261
    invoke-static {v4}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    .line 263
    .line 264
    add-int/lit8 v4, v19, 0x1

    .line 265
    .line 266
    iget-object v5, v3, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 267
    .line 268
    const/16 v7, 0x14

    .line 269
    .line 270
    if-gt v4, v7, :cond_5

    .line 271
    .line 272
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 273
    .line 274
    .line 275
    const/4 v5, 0x1

    .line 276
    invoke-virtual {v3, v5}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 277
    .line 278
    .line 279
    move-object/from16 v18, v0

    .line 280
    .line 281
    move-object v7, v2

    .line 282
    move-object v5, v3

    .line 283
    move/from16 v19, v4

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_5
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    new-instance v0, Ljava/net/ProtocolException;

    .line 291
    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    const-string v2, "Too many follow-up requests: "

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw v0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-static {v0, v3, v1, v6}, Lokhttp3/internal/http/BridgeInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/Request;)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    iget-object v5, v3, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 319
    .line 320
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    if-nez v4, :cond_7

    .line 324
    .line 325
    sget-object v1, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 326
    .line 327
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-eqz v2, :cond_6

    .line 336
    .line 337
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    check-cast v2, Ljava/lang/Exception;

    .line 342
    .line 343
    invoke-static {v0, v2}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 344
    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_6
    throw v0

    .line 348
    :cond_7
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/List;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 349
    .line 350
    .line 351
    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 352
    const/4 v5, 0x1

    .line 353
    invoke-virtual {v3, v5}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 354
    .line 355
    .line 356
    move-object v5, v3

    .line 357
    const/4 v0, 0x0

    .line 358
    goto/16 :goto_1

    .line 359
    .line 360
    :cond_8
    :try_start_8
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
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 368
    :goto_7
    invoke-virtual {v3, v2}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :cond_9
    move-object v3, v5

    .line 373
    goto :goto_8

    .line 374
    :catchall_2
    move-exception v0

    .line 375
    move-object v3, v5

    .line 376
    goto :goto_9

    .line 377
    :goto_8
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 378
    .line 379
    const-string v1, "Check failed."

    .line 380
    .line 381
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v0

    .line 385
    :catchall_3
    move-exception v0

    .line 386
    goto :goto_9

    .line 387
    :cond_a
    move-object v3, v5

    .line 388
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 389
    .line 390
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 391
    .line 392
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 396
    :goto_9
    monitor-exit v3

    .line 397
    throw v0

    .line 398
    :cond_b
    const-string v0, "Check failed."

    .line 399
    .line 400
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    const/4 v4, 0x0

    .line 404
    :goto_a
    return-object v4

    .line 405
    :pswitch_0
    const-string v2, "close"

    .line 406
    .line 407
    const-string/jumbo v3, "upgrade"

    .line 408
    .line 409
    .line 410
    const-string v4, "Connection"

    .line 411
    .line 412
    iget-object v6, v1, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Landroidx/compose/runtime/Latch;

    .line 413
    .line 414
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    iget-object v1, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 418
    .line 419
    iget-object v0, v1, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 420
    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 422
    .line 423
    .line 424
    move-result-wide v12

    .line 425
    iget-object v5, v1, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 426
    .line 427
    invoke-static {v5}, Lkotlin/text/CharsKt;->permitsRequestBody(Ljava/lang/String;)Z

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    if-eqz v5, :cond_c

    .line 432
    .line 433
    if-eqz v0, :cond_c

    .line 434
    .line 435
    const/4 v5, 0x1

    .line 436
    goto :goto_b

    .line 437
    :cond_c
    const/4 v5, 0x0

    .line 438
    :goto_b
    iget-object v7, v1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 439
    .line 440
    invoke-virtual {v7, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 445
    .line 446
    .line 447
    move-result v14

    .line 448
    :try_start_a
    iget-object v7, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v7, Lokhttp3/internal/connection/RealCall;

    .line 451
    .line 452
    iget-object v7, v7, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 453
    .line 454
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    iget-object v7, v6, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v7, Lokhttp3/internal/http/ExchangeCodec;

    .line 460
    .line 461
    invoke-interface {v7, v1}, Lokhttp3/internal/http/ExchangeCodec;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 462
    .line 463
    .line 464
    iget-object v7, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v7, Lokhttp3/internal/connection/RealCall;

    .line 467
    .line 468
    iget-object v7, v7, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 469
    .line 470
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 471
    .line 472
    .line 473
    if-eqz v5, :cond_11

    .line 474
    .line 475
    :try_start_b
    const-string v5, "100-continue"

    .line 476
    .line 477
    const-string v7, "Expect"

    .line 478
    .line 479
    iget-object v8, v1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 480
    .line 481
    invoke-virtual {v8, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v7

    .line 485
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 486
    .line 487
    .line 488
    move-result v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 489
    if-eqz v5, :cond_d

    .line 490
    .line 491
    :try_start_c
    iget-object v5, v6, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v5, Lokhttp3/internal/http/ExchangeCodec;

    .line 494
    .line 495
    invoke-interface {v5}, Lokhttp3/internal/http/ExchangeCodec;->flushRequest()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 496
    .line 497
    .line 498
    const/4 v15, 0x1

    .line 499
    :try_start_d
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/Latch;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 500
    .line 501
    .line 502
    move-result-object v5
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 503
    :try_start_e
    iget-object v7, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v7, Lokhttp3/internal/connection/RealCall;

    .line 506
    .line 507
    iget-object v7, v7, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 508
    .line 509
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    .line 510
    .line 511
    .line 512
    move-object/from16 v16, v5

    .line 513
    .line 514
    const/16 v17, 0x0

    .line 515
    .line 516
    goto :goto_d

    .line 517
    :catch_1
    move-exception v0

    .line 518
    move/from16 v17, v15

    .line 519
    .line 520
    goto/16 :goto_11

    .line 521
    .line 522
    :catch_2
    move-exception v0

    .line 523
    :goto_c
    move/from16 v17, v15

    .line 524
    .line 525
    const/4 v5, 0x0

    .line 526
    goto/16 :goto_11

    .line 527
    .line 528
    :catch_3
    move-exception v0

    .line 529
    const/4 v15, 0x1

    .line 530
    :try_start_f
    iget-object v5, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v5, Lokhttp3/internal/connection/RealCall;

    .line 533
    .line 534
    iget-object v5, v5, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 535
    .line 536
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 540
    .line 541
    .line 542
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 543
    :cond_d
    const/4 v15, 0x1

    .line 544
    move/from16 v17, v15

    .line 545
    .line 546
    const/16 v16, 0x0

    .line 547
    .line 548
    :goto_d
    if-nez v16, :cond_e

    .line 549
    .line 550
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    iget-object v5, v1, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 554
    .line 555
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    .line 559
    .line 560
    .line 561
    move-result-wide v8

    .line 562
    iget-object v5, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v5, Lokhttp3/internal/connection/RealCall;

    .line 565
    .line 566
    iget-object v5, v5, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 567
    .line 568
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    .line 570
    .line 571
    iget-object v5, v6, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 572
    .line 573
    check-cast v5, Lokhttp3/internal/http/ExchangeCodec;

    .line 574
    .line 575
    invoke-interface {v5, v1, v8, v9}, Lokhttp3/internal/http/ExchangeCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    new-instance v5, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 580
    .line 581
    const/4 v10, 0x0

    .line 582
    invoke-direct/range {v5 .. v10}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Landroidx/compose/runtime/Latch;Lokio/Sink;JZ)V

    .line 583
    .line 584
    .line 585
    new-instance v7, Lokio/RealBufferedSink;

    .line 586
    .line 587
    invoke-direct {v7, v5}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v0, v7}, Lokhttp3/RequestBody;->writeTo(Lokio/RealBufferedSink;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v7}, Lokio/RealBufferedSink;->close()V

    .line 594
    .line 595
    .line 596
    goto :goto_f

    .line 597
    :catch_4
    move-exception v0

    .line 598
    move-object/from16 v5, v16

    .line 599
    .line 600
    goto :goto_11

    .line 601
    :cond_e
    iget-object v0, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 602
    .line 603
    move-object v5, v0

    .line 604
    check-cast v5, Lokhttp3/internal/connection/RealCall;

    .line 605
    .line 606
    const/4 v9, 0x0

    .line 607
    const/4 v10, 0x0

    .line 608
    const/4 v11, 0x0

    .line 609
    const/4 v7, 0x1

    .line 610
    const/4 v8, 0x0

    .line 611
    invoke-virtual/range {v5 .. v11}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Landroidx/compose/runtime/Latch;ZZZZLjava/io/IOException;)Ljava/io/IOException;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v6}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 619
    .line 620
    if-eqz v0, :cond_f

    .line 621
    .line 622
    move v0, v15

    .line 623
    goto :goto_e

    .line 624
    :cond_f
    const/4 v0, 0x0

    .line 625
    :goto_e
    if-nez v0, :cond_10

    .line 626
    .line 627
    iget-object v0, v6, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast v0, Lokhttp3/internal/http/ExchangeCodec;

    .line 630
    .line 631
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->noNewExchanges()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    .line 636
    .line 637
    .line 638
    :cond_10
    :goto_f
    move-object/from16 v5, v16

    .line 639
    .line 640
    goto :goto_10

    .line 641
    :catch_5
    move-exception v0

    .line 642
    const/4 v15, 0x1

    .line 643
    goto :goto_c

    .line 644
    :cond_11
    const/4 v15, 0x1

    .line 645
    :try_start_11
    iget-object v0, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 646
    .line 647
    move-object v5, v0

    .line 648
    check-cast v5, Lokhttp3/internal/connection/RealCall;

    .line 649
    .line 650
    const/4 v9, 0x0

    .line 651
    const/4 v10, 0x0

    .line 652
    const/4 v11, 0x0

    .line 653
    const/4 v7, 0x1

    .line 654
    const/4 v8, 0x0

    .line 655
    invoke-virtual/range {v5 .. v11}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Landroidx/compose/runtime/Latch;ZZZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    .line 656
    .line 657
    .line 658
    move/from16 v17, v15

    .line 659
    .line 660
    const/4 v5, 0x0

    .line 661
    :goto_10
    :try_start_12
    iget-object v0, v6, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 662
    .line 663
    check-cast v0, Lokhttp3/internal/http/ExchangeCodec;

    .line 664
    .line 665
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->finishRequest()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 666
    .line 667
    .line 668
    move-object v0, v5

    .line 669
    const/4 v5, 0x0

    .line 670
    goto :goto_12

    .line 671
    :catch_6
    move-exception v0

    .line 672
    :try_start_13
    iget-object v7, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 673
    .line 674
    check-cast v7, Lokhttp3/internal/connection/RealCall;

    .line 675
    .line 676
    iget-object v7, v7, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 677
    .line 678
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 682
    .line 683
    .line 684
    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    .line 685
    :catch_7
    move-exception v0

    .line 686
    goto :goto_11

    .line 687
    :catch_8
    move-exception v0

    .line 688
    const/4 v15, 0x1

    .line 689
    :try_start_14
    iget-object v5, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 690
    .line 691
    check-cast v5, Lokhttp3/internal/connection/RealCall;

    .line 692
    .line 693
    iget-object v5, v5, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 694
    .line 695
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 699
    .line 700
    .line 701
    throw v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2

    .line 702
    :goto_11
    instance-of v7, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 703
    .line 704
    if-nez v7, :cond_25

    .line 705
    .line 706
    iget-boolean v7, v6, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 707
    .line 708
    if-eqz v7, :cond_24

    .line 709
    .line 710
    move-object/from16 v33, v5

    .line 711
    .line 712
    move-object v5, v0

    .line 713
    move-object/from16 v0, v33

    .line 714
    .line 715
    :goto_12
    if-nez v0, :cond_12

    .line 716
    .line 717
    const/4 v7, 0x0

    .line 718
    :try_start_15
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/Latch;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    .line 724
    .line 725
    if-eqz v17, :cond_12

    .line 726
    .line 727
    iget-object v7, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast v7, Lokhttp3/internal/connection/RealCall;

    .line 730
    .line 731
    iget-object v7, v7, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 732
    .line 733
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 734
    .line 735
    .line 736
    const/16 v17, 0x0

    .line 737
    .line 738
    goto :goto_13

    .line 739
    :catch_9
    move-exception v0

    .line 740
    goto/16 :goto_1d

    .line 741
    .line 742
    :cond_12
    :goto_13
    iput-object v1, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 743
    .line 744
    invoke-virtual {v6}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 745
    .line 746
    .line 747
    move-result-object v7

    .line 748
    iget-object v7, v7, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 749
    .line 750
    iput-object v7, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 751
    .line 752
    iput-wide v12, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 753
    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 755
    .line 756
    .line 757
    move-result-wide v7

    .line 758
    iput-wide v7, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 759
    .line 760
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    iget v7, v0, Lokhttp3/Response;->code:I

    .line 765
    .line 766
    :goto_14
    const/16 v8, 0x64

    .line 767
    .line 768
    if-ne v7, v8, :cond_13

    .line 769
    .line 770
    :goto_15
    const/4 v7, 0x0

    .line 771
    goto :goto_16

    .line 772
    :cond_13
    const/16 v8, 0x66

    .line 773
    .line 774
    if-gt v8, v7, :cond_15

    .line 775
    .line 776
    const/16 v8, 0xc8

    .line 777
    .line 778
    if-ge v7, v8, :cond_15

    .line 779
    .line 780
    goto :goto_15

    .line 781
    :goto_16
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/Latch;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    if-eqz v17, :cond_14

    .line 789
    .line 790
    iget-object v7, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 791
    .line 792
    check-cast v7, Lokhttp3/internal/connection/RealCall;

    .line 793
    .line 794
    iget-object v7, v7, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 795
    .line 796
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 797
    .line 798
    .line 799
    :cond_14
    iput-object v1, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 800
    .line 801
    invoke-virtual {v6}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 802
    .line 803
    .line 804
    move-result-object v7

    .line 805
    iget-object v7, v7, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 806
    .line 807
    iput-object v7, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 808
    .line 809
    iput-wide v12, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 810
    .line 811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 812
    .line 813
    .line 814
    move-result-wide v7

    .line 815
    iput-wide v7, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 816
    .line 817
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    iget v7, v0, Lokhttp3/Response;->code:I

    .line 822
    .line 823
    goto :goto_14

    .line 824
    :cond_15
    iget-object v1, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast v1, Lokhttp3/internal/connection/RealCall;

    .line 827
    .line 828
    iget-object v1, v1, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 829
    .line 830
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    .line 832
    .line 833
    const/16 v1, 0x65

    .line 834
    .line 835
    if-ne v7, v1, :cond_16

    .line 836
    .line 837
    move v1, v15

    .line 838
    goto :goto_17

    .line 839
    :cond_16
    const/4 v1, 0x0

    .line 840
    :goto_17
    if-eqz v1, :cond_19

    .line 841
    .line 842
    invoke-virtual {v6}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 843
    .line 844
    .line 845
    move-result-object v8

    .line 846
    iget-object v8, v8, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 847
    .line 848
    if-eqz v8, :cond_17

    .line 849
    .line 850
    move v8, v15

    .line 851
    goto :goto_18

    .line 852
    :cond_17
    const/4 v8, 0x0

    .line 853
    :goto_18
    if-nez v8, :cond_18

    .line 854
    .line 855
    goto :goto_19

    .line 856
    :cond_18
    new-instance v0, Ljava/net/ProtocolException;

    .line 857
    .line 858
    const-string v1, "Unexpected 101 code on HTTP/2 connection"

    .line 859
    .line 860
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    throw v0

    .line 864
    :cond_19
    :goto_19
    if-eqz v1, :cond_1b

    .line 865
    .line 866
    iget-object v1, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 867
    .line 868
    invoke-virtual {v1, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    if-nez v1, :cond_1a

    .line 873
    .line 874
    const/4 v1, 0x0

    .line 875
    :cond_1a
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 876
    .line 877
    .line 878
    move-result v1

    .line 879
    if-eqz v1, :cond_1b

    .line 880
    .line 881
    goto :goto_1a

    .line 882
    :cond_1b
    const/4 v15, 0x0

    .line 883
    :goto_1a
    if-eqz v14, :cond_1c

    .line 884
    .line 885
    if-eqz v15, :cond_1c

    .line 886
    .line 887
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    new-instance v3, Lokhttp3/internal/UnreadableResponseBody;

    .line 892
    .line 893
    iget-object v8, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 894
    .line 895
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 896
    .line 897
    .line 898
    move-result-object v8

    .line 899
    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 900
    .line 901
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 902
    .line 903
    .line 904
    move-result-wide v9

    .line 905
    invoke-direct {v3, v8, v9, v10}, Lokhttp3/internal/UnreadableResponseBody;-><init>(Lokhttp3/MediaType;J)V

    .line 906
    .line 907
    .line 908
    iput-object v3, v1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 909
    .line 910
    invoke-virtual {v6}, Landroidx/compose/runtime/Latch;->upgradeToSocket()Lcom/grack/nanojson/JsonBuilder;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    iput-object v0, v1, Lokhttp3/Response$Builder;->socket:Lokio/Socket;

    .line 915
    .line 916
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    goto :goto_1b

    .line 921
    :cond_1c
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/Latch;->openResponseBody(Lokhttp3/Response;)Lokhttp3/internal/http/RealResponseBody;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    iput-object v1, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 930
    .line 931
    new-instance v1, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;

    .line 932
    .line 933
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 934
    .line 935
    .line 936
    iput-object v1, v0, Lokhttp3/Response$Builder;->trailersSource:Lokhttp3/TrailersSource;

    .line 937
    .line 938
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    :goto_1b
    iget-object v1, v0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 943
    .line 944
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 945
    .line 946
    .line 947
    iget-object v1, v1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 948
    .line 949
    invoke-virtual {v1, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 954
    .line 955
    .line 956
    move-result v1

    .line 957
    if-nez v1, :cond_1e

    .line 958
    .line 959
    iget-object v1, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 960
    .line 961
    invoke-virtual {v1, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    if-nez v1, :cond_1d

    .line 966
    .line 967
    const/4 v4, 0x0

    .line 968
    goto :goto_1c

    .line 969
    :cond_1d
    move-object v4, v1

    .line 970
    :goto_1c
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 971
    .line 972
    .line 973
    move-result v1

    .line 974
    if-eqz v1, :cond_1f

    .line 975
    .line 976
    :cond_1e
    iget-object v1, v6, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 977
    .line 978
    check-cast v1, Lokhttp3/internal/http/ExchangeCodec;

    .line 979
    .line 980
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 981
    .line 982
    .line 983
    move-result-object v1

    .line 984
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->noNewExchanges()V

    .line 985
    .line 986
    .line 987
    :cond_1f
    const/16 v1, 0xcc

    .line 988
    .line 989
    if-eq v7, v1, :cond_20

    .line 990
    .line 991
    const/16 v1, 0xcd

    .line 992
    .line 993
    if-ne v7, v1, :cond_21

    .line 994
    .line 995
    :cond_20
    iget-object v1, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 996
    .line 997
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 998
    .line 999
    .line 1000
    move-result-wide v1

    .line 1001
    const-wide/16 v3, 0x0

    .line 1002
    .line 1003
    cmp-long v1, v1, v3

    .line 1004
    .line 1005
    if-gtz v1, :cond_22

    .line 1006
    .line 1007
    :cond_21
    return-object v0

    .line 1008
    :cond_22
    new-instance v1, Ljava/net/ProtocolException;

    .line 1009
    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    .line 1014
    .line 1015
    const-string v3, "HTTP "

    .line 1016
    .line 1017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    .line 1023
    const-string v3, " had non-zero Content-Length: "

    .line 1024
    .line 1025
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    .line 1028
    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 1029
    .line 1030
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v3

    .line 1034
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    throw v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    .line 1045
    :goto_1d
    if-eqz v5, :cond_23

    .line 1046
    .line 1047
    invoke-static {v5, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1048
    .line 1049
    .line 1050
    throw v5

    .line 1051
    :cond_23
    throw v0

    .line 1052
    :cond_24
    throw v0

    .line 1053
    :cond_25
    throw v0

    .line 1054
    :pswitch_1
    const/4 v15, 0x1

    .line 1055
    const-string v0, "Content-Encoding"

    .line 1056
    .line 1057
    const-string v2, "User-Agent"

    .line 1058
    .line 1059
    const-string v3, "gzip"

    .line 1060
    .line 1061
    const-string v4, "Accept-Encoding"

    .line 1062
    .line 1063
    const-string v5, "Connection"

    .line 1064
    .line 1065
    const-string v6, "Host"

    .line 1066
    .line 1067
    const-string v7, "Transfer-Encoding"

    .line 1068
    .line 1069
    const-string v8, "Content-Type"

    .line 1070
    .line 1071
    const-string v9, "Content-Length"

    .line 1072
    .line 1073
    iget-object v10, v1, Lokhttp3/internal/http/RealInterceptorChain;->cookieJar:Lokhttp3/HttpUrl$Companion;

    .line 1074
    .line 1075
    iget-object v11, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 1076
    .line 1077
    invoke-virtual {v11}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v12

    .line 1081
    iget-object v13, v11, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 1082
    .line 1083
    iget-object v14, v11, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 1084
    .line 1085
    iget-object v11, v11, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    .line 1086
    .line 1087
    move-object/from16 v16, v10

    .line 1088
    .line 1089
    move-object/from16 v17, v11

    .line 1090
    .line 1091
    const-wide/16 v10, -0x1

    .line 1092
    .line 1093
    if-eqz v17, :cond_28

    .line 1094
    .line 1095
    invoke-virtual/range {v17 .. v17}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v15

    .line 1099
    if-eqz v15, :cond_26

    .line 1100
    .line 1101
    iget-object v15, v15, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    .line 1102
    .line 1103
    invoke-virtual {v12, v8, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    :cond_26
    invoke-virtual/range {v17 .. v17}, Lokhttp3/RequestBody;->contentLength()J

    .line 1107
    .line 1108
    .line 1109
    move-result-wide v17

    .line 1110
    cmp-long v15, v17, v10

    .line 1111
    .line 1112
    if-eqz v15, :cond_27

    .line 1113
    .line 1114
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v15

    .line 1118
    invoke-virtual {v12, v9, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    iget-object v15, v12, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 1122
    .line 1123
    invoke-virtual {v15, v7}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    goto :goto_1e

    .line 1127
    :cond_27
    const-string v15, "chunked"

    .line 1128
    .line 1129
    invoke-virtual {v12, v7, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    iget-object v7, v12, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 1133
    .line 1134
    invoke-virtual {v7, v9}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    :cond_28
    :goto_1e
    invoke-virtual {v14, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v7

    .line 1141
    if-nez v7, :cond_29

    .line 1142
    .line 1143
    const/4 v7, 0x0

    .line 1144
    invoke-static {v13, v7}, Lokhttp3/internal/_UtilJvmKt;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v15

    .line 1148
    invoke-virtual {v12, v6, v15}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    goto :goto_1f

    .line 1152
    :cond_29
    const/4 v7, 0x0

    .line 1153
    :goto_1f
    invoke-virtual {v14, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v6

    .line 1157
    if-nez v6, :cond_2a

    .line 1158
    .line 1159
    const-string v6, "Keep-Alive"

    .line 1160
    .line 1161
    invoke-virtual {v12, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    :cond_2a
    invoke-virtual {v14, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v5

    .line 1168
    if-nez v5, :cond_2b

    .line 1169
    .line 1170
    const-string v5, "Range"

    .line 1171
    .line 1172
    invoke-virtual {v14, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v5

    .line 1176
    if-nez v5, :cond_2b

    .line 1177
    .line 1178
    invoke-virtual {v12, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    const/16 v20, 0x1

    .line 1182
    .line 1183
    goto :goto_20

    .line 1184
    :cond_2b
    move/from16 v20, v7

    .line 1185
    .line 1186
    :goto_20
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v14, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v4

    .line 1196
    if-nez v4, :cond_2c

    .line 1197
    .line 1198
    const-string v4, "okhttp/5.4.0"

    .line 1199
    .line 1200
    invoke-virtual {v12, v2, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    :cond_2c
    new-instance v2, Lokhttp3/Request;

    .line 1204
    .line 1205
    invoke-direct {v2, v12}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v1, v2}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v1

    .line 1212
    iget-object v4, v1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 1213
    .line 1214
    iget-object v5, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 1215
    .line 1216
    move-object/from16 v6, v16

    .line 1217
    .line 1218
    invoke-static {v6, v5, v4}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/HttpUrl$Companion;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v5

    .line 1225
    iput-object v2, v5, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 1226
    .line 1227
    if-eqz v20, :cond_2f

    .line 1228
    .line 1229
    invoke-virtual {v4, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    if-nez v2, :cond_2d

    .line 1234
    .line 1235
    const/4 v2, 0x0

    .line 1236
    :cond_2d
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1237
    .line 1238
    .line 1239
    move-result v2

    .line 1240
    if-eqz v2, :cond_2f

    .line 1241
    .line 1242
    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v2

    .line 1246
    if-eqz v2, :cond_2f

    .line 1247
    .line 1248
    iget-object v1, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 1249
    .line 1250
    new-instance v2, Lokio/GzipSource;

    .line 1251
    .line 1252
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v1

    .line 1256
    invoke-direct {v2, v1}, Lokio/GzipSource;-><init>(Lokio/BufferedSource;)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v4}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v1

    .line 1263
    invoke-virtual {v1, v0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual {v1, v9}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    iput-object v0, v5, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 1278
    .line 1279
    invoke-virtual {v4, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v0

    .line 1283
    if-nez v0, :cond_2e

    .line 1284
    .line 1285
    const/4 v4, 0x0

    .line 1286
    goto :goto_21

    .line 1287
    :cond_2e
    move-object v4, v0

    .line 1288
    :goto_21
    new-instance v0, Lokhttp3/internal/http/RealResponseBody;

    .line 1289
    .line 1290
    new-instance v1, Lokio/RealBufferedSource;

    .line 1291
    .line 1292
    invoke-direct {v1, v2}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 1293
    .line 1294
    .line 1295
    invoke-direct {v0, v4, v10, v11, v1}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/RealBufferedSource;)V

    .line 1296
    .line 1297
    .line 1298
    iput-object v0, v5, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 1299
    .line 1300
    :cond_2f
    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v0

    .line 1304
    return-object v0

    .line 1305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
