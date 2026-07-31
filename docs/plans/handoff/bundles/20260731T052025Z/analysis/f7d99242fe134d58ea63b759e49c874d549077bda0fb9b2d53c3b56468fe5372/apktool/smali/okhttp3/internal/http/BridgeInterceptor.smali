.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final cookieJar:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lokhttp3/HttpUrl$Companion;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lokhttp3/internal/http/BridgeInterceptor;->$r8$classId:I

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
    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/http/BridgeInterceptor;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Ljava/lang/Object;

    return-void
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
    const-string p1, "\\d+"

    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_2
    const p0, 0x7fffffff

    .line 47
    .line 48
    .line 49
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
    const/16 p2, 0x1f7

    .line 37
    .line 38
    if-eq v2, p2, :cond_7

    .line 39
    .line 40
    const/16 p2, 0x197

    .line 41
    .line 42
    if-eq v2, p2, :cond_5

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
    iget-object p0, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Ljava/lang/Object;

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
    iget-object p0, p1, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    iget p0, p0, Lokhttp3/Response;->code:I

    .line 68
    .line 69
    if-ne p0, p2, :cond_3

    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_3
    invoke-static {p1, v4}, Lokhttp3/internal/http/BridgeInterceptor;->retryAfter(Lokhttp3/Response;I)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-lez p0, :cond_4

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_4
    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object p1, v1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 94
    .line 95
    if-ne p1, p2, :cond_6

    .line 96
    .line 97
    iget-object p0, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Lokhttp3/OkHttpClient;

    .line 100
    .line 101
    iget-object p0, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    .line 108
    .line 109
    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    .line 110
    .line 111
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :cond_7
    iget-object p0, p1, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 116
    .line 117
    if-eqz p0, :cond_8

    .line 118
    .line 119
    iget p0, p0, Lokhttp3/Response;->code:I

    .line 120
    .line 121
    if-ne p0, p2, :cond_8

    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :cond_8
    const p0, 0x7fffffff

    .line 126
    .line 127
    .line 128
    invoke-static {p1, p0}, Lokhttp3/internal/http/BridgeInterceptor;->retryAfter(Lokhttp3/Response;I)I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-nez p0, :cond_12

    .line 133
    .line 134
    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_9
    if-eqz p2, :cond_12

    .line 138
    .line 139
    iget-object p0, p2, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p0, Lokhttp3/internal/connection/ExchangeFinder;

    .line 142
    .line 143
    invoke-interface {p0}, Lokhttp3/internal/connection/ExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RealRoutePlanner;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 148
    .line 149
    iget-object p0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 150
    .line 151
    iget-object p0, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v1, p2, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v1, Lokhttp3/internal/http/ExchangeCodec;

    .line 156
    .line 157
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->getRoute()Lokhttp3/Route;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object v1, v1, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 166
    .line 167
    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 168
    .line 169
    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_a

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_a
    invoke-virtual {p2}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iput-boolean v5, p0, Lokhttp3/internal/connection/RealConnection;->noCoalescedConnections:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .line 185
    monitor-exit p0

    .line 186
    iget-object p0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 187
    .line 188
    return-object p0

    .line 189
    :catchall_0
    move-exception p1

    .line 190
    monitor-exit p0

    .line 191
    throw p1

    .line 192
    :cond_b
    iget-object p0, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p0, Lokhttp3/OkHttpClient;

    .line 195
    .line 196
    iget-object p0, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/HttpUrl$Companion;

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    return-object v0

    .line 202
    :cond_c
    :pswitch_0
    const-string p2, "PROPFIND"

    .line 203
    .line 204
    iget-object p0, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Lokhttp3/OkHttpClient;

    .line 207
    .line 208
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    .line 209
    .line 210
    if-nez v1, :cond_d

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_d
    const-string v1, "Location"

    .line 214
    .line 215
    iget-object v2, p1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 216
    .line 217
    invoke-virtual {v2, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-nez v1, :cond_e

    .line 222
    .line 223
    move-object v1, v0

    .line 224
    :cond_e
    iget-object v2, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 225
    .line 226
    if-nez v1, :cond_f

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_f
    iget-object v8, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 230
    .line 231
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    :try_start_1
    new-instance v9, Lokhttp3/HttpUrl$Builder;

    .line 235
    .line 236
    invoke-direct {v9}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9, v8, v1}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :catch_0
    move-object v9, v0

    .line 244
    :goto_1
    if-eqz v9, :cond_10

    .line 245
    .line 246
    invoke-virtual {v9}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    goto :goto_2

    .line 251
    :cond_10
    move-object v1, v0

    .line 252
    :goto_2
    if-nez v1, :cond_11

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_11
    iget-object v8, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v9, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 258
    .line 259
    iget-object v9, v9, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    if-nez v8, :cond_13

    .line 266
    .line 267
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    .line 268
    .line 269
    if-nez p0, :cond_13

    .line 270
    .line 271
    :cond_12
    :goto_3
    return-object v0

    .line 272
    :cond_13
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-static {v3}, Lorg/jsoup/Jsoup;->permitsRequestBody(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-eqz v8, :cond_18

    .line 281
    .line 282
    iget p1, p1, Lokhttp3/Response;->code:I

    .line 283
    .line 284
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    if-nez v8, :cond_14

    .line 289
    .line 290
    if-eq p1, v6, :cond_14

    .line 291
    .line 292
    if-ne p1, v7, :cond_15

    .line 293
    .line 294
    :cond_14
    move v4, v5

    .line 295
    :cond_15
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result p2

    .line 299
    if-nez p2, :cond_16

    .line 300
    .line 301
    if-eq p1, v6, :cond_16

    .line 302
    .line 303
    if-eq p1, v7, :cond_16

    .line 304
    .line 305
    const-string p1, "GET"

    .line 306
    .line 307
    invoke-virtual {p0, p1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody$Companion$toRequestBody$1;)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_16
    if-eqz v4, :cond_17

    .line 312
    .line 313
    iget-object v0, v2, Lokhttp3/Request;->body:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 314
    .line 315
    :cond_17
    invoke-virtual {p0, v3, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody$Companion$toRequestBody$1;)V

    .line 316
    .line 317
    .line 318
    :goto_4
    if-nez v4, :cond_18

    .line 319
    .line 320
    const-string p1, "Transfer-Encoding"

    .line 321
    .line 322
    iget-object p2, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 323
    .line 324
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string p1, "Content-Length"

    .line 328
    .line 329
    iget-object p2, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 330
    .line 331
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string p1, "Content-Type"

    .line 335
    .line 336
    iget-object p2, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 337
    .line 338
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :cond_18
    iget-object p1, v2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 342
    .line 343
    invoke-static {p1, v1}, Lokhttp3/internal/_UtilJvmKt;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-nez p1, :cond_19

    .line 348
    .line 349
    const-string p1, "Authorization"

    .line 350
    .line 351
    iget-object p2, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 352
    .line 353
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    :cond_19
    iput-object v1, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    .line 357
    .line 358
    new-instance p1, Lokhttp3/Request;

    .line 359
    .line 360
    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 361
    .line 362
    .line 363
    return-object p1

    .line 364
    nop

    .line 365
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget v0, v1, Lokhttp3/internal/http/BridgeInterceptor;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lokhttp3/internal/http/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lokhttp3/Request;

    .line 13
    .line 14
    iget-object v6, v2, Lokhttp3/internal/http/RealInterceptorChain;->call:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v6, Lokhttp3/internal/connection/RealCall;

    .line 17
    .line 18
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 19
    .line 20
    move-object v8, v7

    .line 21
    const/16 v20, 0x0

    .line 22
    .line 23
    const/16 v21, 0x0

    .line 24
    .line 25
    move-object v7, v0

    .line 26
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v9, v6, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Landroidx/compose/runtime/Latch;

    .line 31
    .line 32
    if-nez v9, :cond_c

    .line 33
    .line 34
    monitor-enter v6

    .line 35
    :try_start_0
    iget-boolean v9, v6, Lokhttp3/internal/connection/RealCall;->responseBodyOpen:Z

    .line 36
    .line 37
    if-nez v9, :cond_b

    .line 38
    .line 39
    iget-boolean v9, v6, Lokhttp3/internal/connection/RealCall;->requestBodyOpen:Z

    .line 40
    .line 41
    if-nez v9, :cond_a

    .line 42
    .line 43
    iget-boolean v9, v6, Lokhttp3/internal/connection/RealCall;->socketSourceOpen:Z

    .line 44
    .line 45
    if-nez v9, :cond_a

    .line 46
    .line 47
    iget-boolean v9, v6, Lokhttp3/internal/connection/RealCall;->socketSinkOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    .line 49
    if-nez v9, :cond_a

    .line 50
    .line 51
    monitor-exit v6

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    new-instance v0, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 55
    .line 56
    iget-object v9, v6, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 57
    .line 58
    move-object v10, v8

    .line 59
    iget-object v8, v9, Lokhttp3/OkHttpClient;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 60
    .line 61
    iget-object v11, v6, Lokhttp3/internal/connection/RealCall;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 62
    .line 63
    move-object v12, v10

    .line 64
    iget v10, v9, Lokhttp3/OkHttpClient;->readTimeoutMillis:I

    .line 65
    .line 66
    move-object v13, v11

    .line 67
    iget v11, v9, Lokhttp3/OkHttpClient;->writeTimeoutMillis:I

    .line 68
    .line 69
    move-object v14, v12

    .line 70
    iget v12, v2, Lokhttp3/internal/http/RealInterceptorChain;->connectTimeoutMillis:I

    .line 71
    .line 72
    move-object v15, v13

    .line 73
    iget v13, v2, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    .line 74
    .line 75
    move-object/from16 v16, v14

    .line 76
    .line 77
    iget-boolean v14, v9, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 78
    .line 79
    move-object/from16 v17, v15

    .line 80
    .line 81
    iget-boolean v15, v9, Lokhttp3/OkHttpClient;->fastFallback:Z

    .line 82
    .line 83
    iget-object v5, v7, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    iget-object v3, v5, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 89
    .line 90
    const-string v4, "https"

    .line 91
    .line 92
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    iget-object v3, v9, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 99
    .line 100
    if-eqz v3, :cond_0

    .line 101
    .line 102
    iget-object v4, v9, Lokhttp3/OkHttpClient;->hostnameVerifier:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 103
    .line 104
    move-object/from16 v18, v0

    .line 105
    .line 106
    iget-object v0, v9, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 107
    .line 108
    move-object/from16 v29, v0

    .line 109
    .line 110
    move-object/from16 v27, v3

    .line 111
    .line 112
    move-object/from16 v28, v4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_0
    const-string v0, "CLEARTEXT-only client"

    .line 116
    .line 117
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    const/4 v5, 0x0

    .line 121
    goto/16 :goto_a

    .line 122
    .line 123
    :cond_1
    move-object/from16 v18, v0

    .line 124
    .line 125
    const/16 v27, 0x0

    .line 126
    .line 127
    const/16 v28, 0x0

    .line 128
    .line 129
    const/16 v29, 0x0

    .line 130
    .line 131
    :goto_3
    new-instance v22, Lokhttp3/Address;

    .line 132
    .line 133
    iget-object v0, v5, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 134
    .line 135
    iget v3, v5, Lokhttp3/HttpUrl;->port:I

    .line 136
    .line 137
    iget-object v4, v9, Lokhttp3/OkHttpClient;->dns:Lokhttp3/HttpUrl$Companion;

    .line 138
    .line 139
    iget-object v5, v9, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 140
    .line 141
    move-object/from16 v23, v0

    .line 142
    .line 143
    iget-object v0, v9, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

    .line 144
    .line 145
    move-object/from16 v30, v0

    .line 146
    .line 147
    iget-object v0, v9, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 148
    .line 149
    move-object/from16 v31, v0

    .line 150
    .line 151
    iget-object v0, v9, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 152
    .line 153
    iget-object v9, v9, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 154
    .line 155
    move-object/from16 v32, v0

    .line 156
    .line 157
    move/from16 v24, v3

    .line 158
    .line 159
    move-object/from16 v25, v4

    .line 160
    .line 161
    move-object/from16 v26, v5

    .line 162
    .line 163
    move-object/from16 v33, v9

    .line 164
    .line 165
    invoke-direct/range {v22 .. v33}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/HttpUrl$Companion;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Lokhttp3/internal/tls/OkHostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/HttpUrl$Companion;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v6, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 169
    .line 170
    iget-object v0, v0, Lokhttp3/OkHttpClient;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    .line 171
    .line 172
    move-object/from16 v19, v7

    .line 173
    .line 174
    move-object/from16 v3, v16

    .line 175
    .line 176
    move-object/from16 v9, v17

    .line 177
    .line 178
    move-object/from16 v7, v18

    .line 179
    .line 180
    move-object/from16 v16, v22

    .line 181
    .line 182
    move-object/from16 v17, v0

    .line 183
    .line 184
    move-object/from16 v18, v6

    .line 185
    .line 186
    invoke-direct/range {v7 .. v19}, Lokhttp3/internal/connection/RealRoutePlanner;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZZLokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)V

    .line 187
    .line 188
    .line 189
    move-object v0, v7

    .line 190
    move-object/from16 v7, v19

    .line 191
    .line 192
    iget-object v4, v6, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 193
    .line 194
    iget-boolean v5, v4, Lokhttp3/OkHttpClient;->fastFallback:Z

    .line 195
    .line 196
    if-eqz v5, :cond_2

    .line 197
    .line 198
    new-instance v5, Lokhttp3/internal/connection/FastFallbackExchangeFinder;

    .line 199
    .line 200
    iget-object v4, v4, Lokhttp3/OkHttpClient;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 201
    .line 202
    invoke-direct {v5, v0, v4}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;-><init>(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_2
    new-instance v5, Lorg/jsoup/safety/Cleaner;

    .line 207
    .line 208
    invoke-direct {v5, v0}, Lorg/jsoup/safety/Cleaner;-><init>(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :goto_4
    iput-object v5, v6, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_3
    move-object v3, v8

    .line 215
    :goto_5
    :try_start_1
    iget-boolean v0, v6, Lokhttp3/internal/connection/RealCall;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .line 217
    if-nez v0, :cond_9

    .line 218
    .line 219
    :try_start_2
    invoke-virtual {v2, v7}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 220
    .line 221
    .line 222
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iput-object v7, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 228
    .line 229
    if-eqz v20, :cond_4

    .line 230
    .line 231
    invoke-static/range {v20 .. v20}, Lorg/minidns/util/Base64;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    goto :goto_6

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    const/4 v5, 0x1

    .line 238
    goto/16 :goto_8

    .line 239
    .line 240
    :cond_4
    const/4 v4, 0x0

    .line 241
    :goto_6
    iput-object v4, v0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 242
    .line 243
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v4, v6, Lokhttp3/internal/connection/RealCall;->interceptorScopedExchange:Landroidx/compose/runtime/Latch;

    .line 248
    .line 249
    invoke-virtual {v1, v0, v4}, Lokhttp3/internal/http/BridgeInterceptor;->followUpRequest(Lokhttp3/Response;Landroidx/compose/runtime/Latch;)Lokhttp3/Request;

    .line 250
    .line 251
    .line 252
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    if-nez v7, :cond_5

    .line 254
    .line 255
    const/4 v4, 0x0

    .line 256
    invoke-virtual {v6, v4}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 257
    .line 258
    .line 259
    move-object v5, v0

    .line 260
    goto/16 :goto_a

    .line 261
    .line 262
    :cond_5
    :try_start_4
    iget-object v4, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 263
    .line 264
    invoke-static {v4}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 265
    .line 266
    .line 267
    add-int/lit8 v4, v21, 0x1

    .line 268
    .line 269
    const/16 v5, 0x14

    .line 270
    .line 271
    if-gt v4, v5, :cond_6

    .line 272
    .line 273
    const/4 v5, 0x1

    .line 274
    invoke-virtual {v6, v5}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 275
    .line 276
    .line 277
    move-object/from16 v20, v0

    .line 278
    .line 279
    move-object v8, v3

    .line 280
    move/from16 v21, v4

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_6
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 285
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string v2, "Too many follow-up requests: "

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v1, v0, v6, v7}, Lokhttp3/internal/http/BridgeInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-nez v4, :cond_8

    .line 313
    .line 314
    sget-object v1, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 315
    .line 316
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_7

    .line 325
    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    check-cast v2, Ljava/lang/Exception;

    .line 331
    .line 332
    invoke-static {v0, v2}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 333
    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_7
    throw v0

    .line 337
    :cond_8
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 338
    .line 339
    .line 340
    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 341
    const/4 v5, 0x1

    .line 342
    invoke-virtual {v6, v5}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 343
    .line 344
    .line 345
    const/4 v0, 0x0

    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_9
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    .line 349
    .line 350
    const-string v1, "Canceled"

    .line 351
    .line 352
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 356
    :goto_8
    invoke-virtual {v6, v5}, Lokhttp3/internal/connection/RealCall;->exitNetworkInterceptorExchange$okhttp(Z)V

    .line 357
    .line 358
    .line 359
    throw v0

    .line 360
    :catchall_1
    move-exception v0

    .line 361
    goto :goto_9

    .line 362
    :cond_a
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 363
    .line 364
    const-string v1, "Check failed."

    .line 365
    .line 366
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw v0

    .line 370
    :cond_b
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 371
    .line 372
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 373
    .line 374
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 378
    :goto_9
    monitor-exit v6

    .line 379
    throw v0

    .line 380
    :cond_c
    const-string v0, "Check failed."

    .line 381
    .line 382
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_2

    .line 386
    .line 387
    :goto_a
    return-object v5

    .line 388
    :pswitch_0
    const/4 v5, 0x1

    .line 389
    const-string v0, "Content-Encoding"

    .line 390
    .line 391
    const-string v3, "User-Agent"

    .line 392
    .line 393
    iget-object v1, v1, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v1, Lokhttp3/HttpUrl$Companion;

    .line 396
    .line 397
    const-string v4, "gzip"

    .line 398
    .line 399
    const-string v6, "Accept-Encoding"

    .line 400
    .line 401
    const-string v7, "Connection"

    .line 402
    .line 403
    const-string v8, "Host"

    .line 404
    .line 405
    const-string v9, "Transfer-Encoding"

    .line 406
    .line 407
    const-string v10, "Content-Type"

    .line 408
    .line 409
    const-string v11, "Content-Length"

    .line 410
    .line 411
    iget-object v12, v2, Lokhttp3/internal/http/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v12, Lokhttp3/Request;

    .line 414
    .line 415
    invoke-virtual {v12}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 416
    .line 417
    .line 418
    move-result-object v13

    .line 419
    iget-object v14, v12, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 420
    .line 421
    iget-object v15, v12, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 422
    .line 423
    iget-object v12, v12, Lokhttp3/Request;->body:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 424
    .line 425
    move-object/from16 p0, v6

    .line 426
    .line 427
    if-eqz v12, :cond_e

    .line 428
    .line 429
    iget-object v12, v12, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Lokio/ByteString;

    .line 430
    .line 431
    invoke-virtual {v12}, Lokio/ByteString;->getSize$okio()I

    .line 432
    .line 433
    .line 434
    move-result v12

    .line 435
    const-wide/16 v16, -0x1

    .line 436
    .line 437
    int-to-long v5, v12

    .line 438
    cmp-long v12, v5, v16

    .line 439
    .line 440
    if-eqz v12, :cond_d

    .line 441
    .line 442
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-virtual {v13, v11, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-object v5, v13, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 450
    .line 451
    invoke-virtual {v5, v9}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    goto :goto_b

    .line 455
    :cond_d
    const-string v5, "chunked"

    .line 456
    .line 457
    invoke-virtual {v13, v9, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    iget-object v5, v13, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 461
    .line 462
    invoke-virtual {v5, v11}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    goto :goto_b

    .line 466
    :cond_e
    const-wide/16 v16, -0x1

    .line 467
    .line 468
    :goto_b
    invoke-virtual {v15, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    if-nez v5, :cond_f

    .line 473
    .line 474
    const/4 v5, 0x0

    .line 475
    invoke-static {v14, v5}, Lokhttp3/internal/_UtilJvmKt;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    invoke-virtual {v13, v8, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    goto :goto_c

    .line 483
    :cond_f
    const/4 v5, 0x0

    .line 484
    :goto_c
    invoke-virtual {v15, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v6

    .line 488
    if-nez v6, :cond_10

    .line 489
    .line 490
    const-string v6, "Keep-Alive"

    .line 491
    .line 492
    invoke-virtual {v13, v7, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    :cond_10
    move-object/from16 v6, p0

    .line 496
    .line 497
    invoke-virtual {v15, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    if-nez v7, :cond_11

    .line 502
    .line 503
    const-string v7, "Range"

    .line 504
    .line 505
    invoke-virtual {v15, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    if-nez v7, :cond_11

    .line 510
    .line 511
    invoke-virtual {v13, v6, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    const/4 v5, 0x1

    .line 515
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v15, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    if-nez v6, :cond_12

    .line 526
    .line 527
    const-string v6, "okhttp/5.3.2"

    .line 528
    .line 529
    invoke-virtual {v13, v3, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    :cond_12
    new-instance v3, Lokhttp3/Request;

    .line 533
    .line 534
    invoke-direct {v3, v13}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v2, v3}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    iget-object v6, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 542
    .line 543
    iget-object v7, v3, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 544
    .line 545
    invoke-static {v1, v7, v6}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/HttpUrl$Companion;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    iput-object v3, v1, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 553
    .line 554
    if-eqz v5, :cond_15

    .line 555
    .line 556
    invoke-virtual {v6, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    if-nez v3, :cond_13

    .line 561
    .line 562
    const/4 v3, 0x0

    .line 563
    :cond_13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    if-eqz v3, :cond_15

    .line 568
    .line 569
    invoke-static {v2}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    if-eqz v3, :cond_15

    .line 574
    .line 575
    iget-object v2, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 576
    .line 577
    if-eqz v2, :cond_15

    .line 578
    .line 579
    new-instance v3, Lokio/GzipSource;

    .line 580
    .line 581
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-direct {v3, v2}, Lokio/GzipSource;-><init>(Lokio/BufferedSource;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v6}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-virtual {v2, v0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2, v11}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    iput-object v0, v1, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 607
    .line 608
    invoke-virtual {v6, v10}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    if-nez v0, :cond_14

    .line 613
    .line 614
    const/4 v5, 0x0

    .line 615
    goto :goto_d

    .line 616
    :cond_14
    move-object v5, v0

    .line 617
    :goto_d
    new-instance v0, Lokhttp3/internal/http/RealResponseBody;

    .line 618
    .line 619
    new-instance v2, Lokio/RealBufferedSource;

    .line 620
    .line 621
    invoke-direct {v2, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 622
    .line 623
    .line 624
    move-wide/from16 v3, v16

    .line 625
    .line 626
    invoke-direct {v0, v5, v3, v4, v2}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/RealBufferedSource;)V

    .line 627
    .line 628
    .line 629
    iput-object v0, v1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 630
    .line 631
    :cond_15
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    return-object v0

    .line 636
    nop

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public recover(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)Z
    .locals 0

    .line 1
    instance-of p3, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Ljava/lang/Object;

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
    if-nez p3, :cond_1

    .line 13
    .line 14
    instance-of p0, p1, Ljava/io/FileNotFoundException;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    instance-of p0, p1, Ljava/net/ProtocolException;

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    .line 25
    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    .line 29
    .line 30
    if-eqz p0, :cond_7

    .line 31
    .line 32
    if-eqz p3, :cond_7

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 36
    .line 37
    if-eqz p0, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    instance-of p0, p0, Ljava/security/cert/CertificateException;

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 49
    .line 50
    if-eqz p0, :cond_5

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_5
    :goto_0
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->exchange:Landroidx/compose/runtime/Latch;

    .line 54
    .line 55
    if-eqz p0, :cond_7

    .line 56
    .line 57
    iget-boolean p0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    if-ne p0, p1, :cond_7

    .line 61
    .line 62
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-interface {p0}, Lokhttp3/internal/connection/ExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RealRoutePlanner;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iget-object p2, p2, Lokhttp3/internal/connection/RealCall;->exchange:Landroidx/compose/runtime/Latch;

    .line 72
    .line 73
    if-eqz p2, :cond_6

    .line 74
    .line 75
    invoke-virtual {p2}, Landroidx/compose/runtime/Latch;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    goto :goto_1

    .line 80
    :cond_6
    const/4 p2, 0x0

    .line 81
    :goto_1
    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/RealRoutePlanner;->hasNext(Lokhttp3/internal/connection/RealConnection;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_7

    .line 86
    .line 87
    return p1

    .line 88
    :cond_7
    :goto_2
    const/4 p0, 0x0

    .line 89
    return p0
.end method
