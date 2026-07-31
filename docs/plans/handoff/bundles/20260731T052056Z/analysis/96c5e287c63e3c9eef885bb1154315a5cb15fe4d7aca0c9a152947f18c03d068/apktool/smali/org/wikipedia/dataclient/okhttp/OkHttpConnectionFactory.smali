.class public abstract Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

.field public static final CACHE_CONTROL_MAX_STALE:Lokhttp3/CacheControl;

.field public static final CACHE_CONTROL_NONE:Lokhttp3/CacheControl;

.field public static final NET_CACHE:Lokhttp3/Cache;

.field public static final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokhttp3/CacheControl;

    .line 7
    .line 8
    const/4 v13, 0x0

    .line 9
    const/4 v14, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, -0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, -0x1

    .line 18
    const/4 v10, -0x1

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    invoke-direct/range {v1 .. v14}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 25
    .line 26
    new-instance v2, Lokhttp3/CacheControl;

    .line 27
    .line 28
    const/4 v14, 0x0

    .line 29
    const/4 v15, 0x0

    .line 30
    const/4 v6, -0x1

    .line 31
    const/4 v9, 0x0

    .line 32
    const v10, 0x7fffffff

    .line 33
    .line 34
    .line 35
    const/4 v11, -0x1

    .line 36
    invoke-direct/range {v2 .. v15}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v2, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_MAX_STALE:Lokhttp3/CacheControl;

    .line 40
    .line 41
    new-instance v3, Lokhttp3/CacheControl;

    .line 42
    .line 43
    const/4 v15, 0x0

    .line 44
    const/16 v16, 0x0

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v7, -0x1

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v12, -0x1

    .line 50
    move v11, v6

    .line 51
    invoke-direct/range {v3 .. v16}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v3, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_NONE:Lokhttp3/CacheControl;

    .line 55
    .line 56
    new-instance v0, Lokhttp3/Cache;

    .line 57
    .line 58
    new-instance v1, Ljava/io/File;

    .line 59
    .line 60
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 61
    .line 62
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v3, "okhttp-cache"

    .line 71
    .line 72
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Lokhttp3/Cache;-><init>(Ljava/io/File;)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->NET_CACHE:Lokhttp3/Cache;

    .line 79
    .line 80
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 81
    .line 82
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 86
    .line 87
    if-nez v0, :cond_0

    .line 88
    .line 89
    :try_start_0
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 90
    .line 91
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 92
    .line 93
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getCookies()Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v3}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 103
    .line 104
    .line 105
    sput-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :cond_0
    :goto_0
    sget-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 113
    .line 114
    if-nez v0, :cond_1

    .line 115
    .line 116
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 117
    .line 118
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v2}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 127
    .line 128
    :cond_1
    iput-object v0, v1, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 129
    .line 130
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->NET_CACHE:Lokhttp3/Cache;

    .line 131
    .line 132
    iput-object v0, v1, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 133
    .line 134
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout()V

    .line 135
    .line 136
    .line 137
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;

    .line 138
    .line 139
    const/4 v2, 0x6

    .line 140
    invoke-direct {v0, v2}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;-><init>(I)V

    .line 141
    .line 142
    .line 143
    iget-object v2, v1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;

    .line 149
    .line 150
    const/4 v2, 0x1

    .line 151
    invoke-direct {v0, v2}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;-><init>(I)V

    .line 152
    .line 153
    .line 154
    iget-object v3, v1, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;

    .line 160
    .line 161
    const/4 v3, 0x2

    .line 162
    invoke-direct {v0, v3}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;-><init>(I)V

    .line 163
    .line 164
    .line 165
    iget-object v3, v1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;

    .line 171
    .line 172
    const/4 v3, 0x3

    .line 173
    invoke-direct {v0, v3}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;-><init>(I)V

    .line 174
    .line 175
    .line 176
    iget-object v3, v1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;

    .line 182
    .line 183
    const/4 v3, 0x4

    .line 184
    invoke-direct {v0, v3}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;-><init>(I)V

    .line 185
    .line 186
    .line 187
    iget-object v3, v1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;

    .line 193
    .line 194
    const/4 v3, 0x0

    .line 195
    invoke-direct {v0, v3}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;-><init>(I)V

    .line 196
    .line 197
    .line 198
    iget-object v4, v1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;

    .line 204
    .line 205
    const/4 v4, 0x5

    .line 206
    invoke-direct {v0, v4}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;-><init>(I)V

    .line 207
    .line 208
    .line 209
    iget-object v5, v1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 215
    .line 216
    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 217
    .line 218
    .line 219
    sget-object v5, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 220
    .line 221
    const v5, 0x7f120675

    .line 222
    .line 223
    .line 224
    const/4 v6, 0x0

    .line 225
    invoke-static {v5, v6}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    if-nez v5, :cond_5

    .line 230
    .line 231
    const-string v5, "beta"

    .line 232
    .line 233
    const-string v7, "org.wikipedia"

    .line 234
    .line 235
    invoke-static {v7, v5, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_2

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_2
    const-string v5, "alpha"

    .line 243
    .line 244
    invoke-static {v7, v5, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_3

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_3
    const-string v5, "dev"

    .line 252
    .line 253
    invoke-static {v7, v5, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_4

    .line 258
    .line 259
    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_4
    :goto_1
    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    sparse-switch v7, :sswitch_data_0

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :sswitch_0
    const-string v7, "HEADERS"

    .line 274
    .line 275
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-nez v5, :cond_6

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_6
    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :sswitch_1
    const-string v7, "BASIC"

    .line 286
    .line 287
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    if-eqz v5, :cond_8

    .line 292
    .line 293
    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :sswitch_2
    const-string v7, "NONE"

    .line 297
    .line 298
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    if-nez v5, :cond_7

    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_7
    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :sswitch_3
    const-string v7, "BODY"

    .line 309
    .line 310
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-nez v5, :cond_9

    .line 315
    .line 316
    :cond_8
    :goto_2
    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_9
    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 320
    .line 321
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    iput-object v5, v0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 325
    .line 326
    iget-object v5, v1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 332
    .line 333
    const/16 v5, 0x18

    .line 334
    .line 335
    if-ge v0, v5, :cond_c

    .line 336
    .line 337
    const-string v0, "X.509"

    .line 338
    .line 339
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    new-instance v5, Lokio/internal/DefaultSocket;

    .line 344
    .line 345
    invoke-direct {v5, v4}, Lokio/internal/DefaultSocket;-><init>(I)V

    .line 346
    .line 347
    .line 348
    sget-object v4, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 349
    .line 350
    sget-object v4, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    invoke-static {}, Lokhttp3/internal/platform/Platform;->platformTrustManager()Ljavax/net/ssl/X509TrustManager;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    iget-object v7, v5, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v7, Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-interface {v4}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    array-length v8, v4

    .line 368
    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-static {v7, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 376
    .line 377
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    const v7, 0x7f110001

    .line 386
    .line 387
    .line 388
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 400
    .line 401
    iget-object v7, v5, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v7, Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    const v7, 0x7f110002

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 431
    .line 432
    iget-object v4, v5, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v4, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5}, Lokio/internal/DefaultSocket;->build()Lokhttp3/FormBody$Builder;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    sget-object v4, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 444
    .line 445
    invoke-virtual {v4}, Lokhttp3/internal/platform/Platform;->newSSLContext()Ljavax/net/ssl/SSLContext;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    iget-object v5, v0, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v5, Ljavax/net/ssl/X509KeyManager;

    .line 452
    .line 453
    new-array v7, v2, [Ljavax/net/ssl/KeyManager;

    .line 454
    .line 455
    aput-object v5, v7, v3

    .line 456
    .line 457
    iget-object v5, v0, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    .line 460
    .line 461
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 462
    .line 463
    aput-object v5, v2, v3

    .line 464
    .line 465
    new-instance v3, Ljava/security/SecureRandom;

    .line 466
    .line 467
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4, v7, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    iget-object v0, v0, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 483
    .line 484
    iget-object v3, v1, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 485
    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-eqz v3, :cond_a

    .line 491
    .line 492
    iget-object v3, v1, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 493
    .line 494
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    if-nez v3, :cond_b

    .line 499
    .line 500
    :cond_a
    iput-object v6, v1, Lokhttp3/OkHttpClient$Builder;->routeDatabase:Lokhttp3/ConnectionPool;

    .line 501
    .line 502
    :cond_b
    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 503
    .line 504
    sget-object v2, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 505
    .line 506
    invoke-virtual {v2, v0}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/Headers$Companion;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    iput-object v2, v1, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/Headers$Companion;

    .line 511
    .line 512
    iput-object v0, v1, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 513
    .line 514
    :cond_c
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 515
    .line 516
    invoke-direct {v0, v1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 517
    .line 518
    .line 519
    sput-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->client:Lokhttp3/OkHttpClient;

    .line 520
    .line 521
    return-void

    .line 522
    nop

    .line 523
    :sswitch_data_0
    .sparse-switch
        0x1f31a2 -> :sswitch_3
        0x24a738 -> :sswitch_2
        0x3c0dc0e -> :sswitch_1
        0x5a32fb66 -> :sswitch_0
    .end sparse-switch
.end method
