.class public final Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lokhttp3/Call$Factory;


# static fields
.field public static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;

.field public static final DEFAULT_PROTOCOLS:Ljava/util/List;


# instance fields
.field public final authenticator:Lokhttp3/HttpUrl$Companion;

.field public final certificateChainCleaner:Lkotlin/uuid/UuidKt;

.field public final certificatePinner:Lokhttp3/CertificatePinner;

.field public final connectTimeoutMillis:I

.field public final connectionPool:Lokhttp3/ConnectionPool;

.field public final connectionSpecs:Ljava/util/List;

.field public final cookieJar:Lokhttp3/HttpUrl$Companion;

.field public final dispatcher:Lokhttp3/Dispatcher;

.field public final dns:Lokhttp3/HttpUrl$Companion;

.field public final eventListenerFactory:Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

.field public final fastFallback:Z

.field public final followRedirects:Z

.field public final followSslRedirects:Z

.field public final hostnameVerifier:Lokhttp3/internal/tls/OkHostnameVerifier;

.field public final interceptors:Ljava/util/List;

.field public final networkInterceptors:Ljava/util/List;

.field public final protocols:Ljava/util/List;

.field public final proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

.field public final proxySelector:Ljava/net/ProxySelector;

.field public final readTimeoutMillis:I

.field public final retryOnConnectionFailure:Z

.field public final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

.field public final socketFactory:Ljavax/net/SocketFactory;

.field public final sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

.field public final taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

.field public final writeTimeoutMillis:I

.field public final x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lokhttp3/Protocol;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 11
    .line 12
    aput-object v4, v1, v3

    .line 13
    .line 14
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 19
    .line 20
    new-array v0, v0, [Lokhttp3/ConnectionSpec;

    .line 21
    .line 22
    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    .line 23
    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    .line 27
    .line 28
    aput-object v1, v0, v3

    .line 29
    .line 30
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    new-instance v0, Lokhttp3/Dispatcher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/Dispatcher;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v4, Lokhttp3/internal/_UtilJvmKt;->UTC:Ljava/util/TimeZone;

    .line 18
    .line 19
    new-instance v4, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v5, Lokhttp3/HttpUrl$Companion;->NONE:Lokhttp3/HttpUrl$Companion;

    .line 25
    .line 26
    sget-object v6, Lokhttp3/HttpUrl$Companion;->NO_COOKIES:Lokhttp3/HttpUrl$Companion;

    .line 27
    .line 28
    sget-object v7, Lokhttp3/HttpUrl$Companion;->SYSTEM:Lokhttp3/HttpUrl$Companion;

    .line 29
    .line 30
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object v9, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 38
    .line 39
    sget-object v10, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 40
    .line 41
    sget-object v11, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 42
    .line 43
    sget-object v12, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 49
    .line 50
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 55
    .line 56
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 61
    .line 62
    iput-object v4, p0, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 66
    .line 67
    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->fastFallback:Z

    .line 68
    .line 69
    iput-object v5, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/HttpUrl$Companion;

    .line 70
    .line 71
    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    .line 72
    .line 73
    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    .line 74
    .line 75
    iput-object v6, p0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/HttpUrl$Companion;

    .line 76
    .line 77
    iput-object v7, p0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/HttpUrl$Companion;

    .line 78
    .line 79
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-nez v2, :cond_0

    .line 84
    .line 85
    sget-object v2, Lokhttp3/internal/proxy/NullProxySelector;->INSTANCE:Lokhttp3/internal/proxy/NullProxySelector;

    .line 86
    .line 87
    :cond_0
    iput-object v2, p0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 88
    .line 89
    iput-object v5, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

    .line 90
    .line 91
    iput-object v8, p0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 92
    .line 93
    iput-object v9, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 94
    .line 95
    iput-object v10, p0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 96
    .line 97
    iput-object v11, p0, Lokhttp3/OkHttpClient;->hostnameVerifier:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 98
    .line 99
    const/16 v2, 0x2710

    .line 100
    .line 101
    iput v2, p0, Lokhttp3/OkHttpClient;->connectTimeoutMillis:I

    .line 102
    .line 103
    iput v2, p0, Lokhttp3/OkHttpClient;->readTimeoutMillis:I

    .line 104
    .line 105
    iput v2, p0, Lokhttp3/OkHttpClient;->writeTimeoutMillis:I

    .line 106
    .line 107
    new-instance v2, Lokhttp3/internal/connection/RouteDatabase;

    .line 108
    .line 109
    invoke-direct {v2}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lokhttp3/OkHttpClient;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    .line 113
    .line 114
    sget-object v2, Lokhttp3/internal/concurrent/TaskRunner;->INSTANCE:Lokhttp3/internal/concurrent/TaskRunner;

    .line 115
    .line 116
    iput-object v2, p0, Lokhttp3/OkHttpClient;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 117
    .line 118
    new-instance v2, Lokhttp3/ConnectionPool;

    .line 119
    .line 120
    invoke-direct {v2, v1}, Lokhttp3/ConnectionPool;-><init>(I)V

    .line 121
    .line 122
    .line 123
    iput-object v2, p0, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    if-eqz v9, :cond_1

    .line 127
    .line 128
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_1

    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_5

    .line 145
    .line 146
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Lokhttp3/ConnectionSpec;

    .line 151
    .line 152
    iget-boolean v4, v4, Lokhttp3/ConnectionSpec;->isTls:Z

    .line 153
    .line 154
    if-eqz v4, :cond_2

    .line 155
    .line 156
    sget-object v3, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 157
    .line 158
    sget-object v3, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    array-length v4, v3

    .line 182
    if-ne v4, v0, :cond_4

    .line 183
    .line 184
    aget-object v4, v3, v1

    .line 185
    .line 186
    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    .line 187
    .line 188
    if-eqz v5, :cond_4

    .line 189
    .line 190
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    .line 191
    .line 192
    iput-object v4, p0, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 193
    .line 194
    sget-object v3, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    :try_start_0
    invoke-virtual {v3}, Lokhttp3/internal/platform/Platform;->newSSLContext()Ljavax/net/ssl/SSLContext;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 204
    .line 205
    aput-object v4, v0, v1

    .line 206
    .line 207
    invoke-virtual {v3, v2, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    .line 217
    iput-object v0, p0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 218
    .line 219
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 220
    .line 221
    invoke-virtual {v0, v4}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lkotlin/uuid/UuidKt;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lkotlin/uuid/UuidKt;

    .line 226
    .line 227
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    iget-object v1, v12, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lkotlin/uuid/UuidKt;

    .line 231
    .line 232
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_3

    .line 237
    .line 238
    goto :goto_0

    .line 239
    :cond_3
    new-instance v1, Lokhttp3/CertificatePinner;

    .line 240
    .line 241
    iget-object v3, v12, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    .line 242
    .line 243
    invoke-direct {v1, v3, v0}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lkotlin/uuid/UuidKt;)V

    .line 244
    .line 245
    .line 246
    move-object v12, v1

    .line 247
    :goto_0
    iput-object v12, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :catch_0
    move-exception p0

    .line 251
    new-instance v0, Ljava/lang/AssertionError;

    .line 252
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v2, "No System TLS: "

    .line 256
    .line 257
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    throw v0

    .line 271
    :cond_4
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    const-string v0, "Unexpected default trust managers: "

    .line 279
    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    throw v2

    .line 288
    :cond_5
    :goto_1
    iput-object v2, p0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 289
    .line 290
    iput-object v2, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lkotlin/uuid/UuidKt;

    .line 291
    .line 292
    iput-object v2, p0, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 293
    .line 294
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    .line 295
    .line 296
    iput-object v0, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 297
    .line 298
    :goto_2
    iget-object v0, p0, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 299
    .line 300
    iget-object v1, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lkotlin/uuid/UuidKt;

    .line 301
    .line 302
    iget-object v3, p0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 303
    .line 304
    iget-object v4, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 305
    .line 306
    iget-object v5, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 307
    .line 308
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    if-nez v6, :cond_11

    .line 316
    .line 317
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    if-nez v5, :cond_10

    .line 325
    .line 326
    iget-object v4, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 327
    .line 328
    if-eqz v4, :cond_6

    .line 329
    .line 330
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_6

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-eqz v5, :cond_b

    .line 346
    .line 347
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    check-cast v5, Lokhttp3/ConnectionSpec;

    .line 352
    .line 353
    iget-boolean v5, v5, Lokhttp3/ConnectionSpec;->isTls:Z

    .line 354
    .line 355
    if-eqz v5, :cond_7

    .line 356
    .line 357
    if-eqz v3, :cond_a

    .line 358
    .line 359
    if-eqz v1, :cond_9

    .line 360
    .line 361
    if-eqz v0, :cond_8

    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_8
    const-string/jumbo p0, "x509TrustManager == null"

    .line 365
    .line 366
    .line 367
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v2

    .line 371
    :cond_9
    const-string p0, "certificateChainCleaner == null"

    .line 372
    .line 373
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v2

    .line 377
    :cond_a
    const-string p0, "sslSocketFactory == null"

    .line 378
    .line 379
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v2

    .line 383
    :cond_b
    :goto_3
    const-string v4, "Check failed."

    .line 384
    .line 385
    if-nez v3, :cond_f

    .line 386
    .line 387
    if-nez v1, :cond_e

    .line 388
    .line 389
    if-nez v0, :cond_d

    .line 390
    .line 391
    iget-object p0, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 392
    .line 393
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    .line 394
    .line 395
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result p0

    .line 399
    if-eqz p0, :cond_c

    .line 400
    .line 401
    :goto_4
    return-void

    .line 402
    :cond_c
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v2

    .line 406
    :cond_d
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v2

    .line 410
    :cond_e
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v2

    .line 414
    :cond_f
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw v2

    .line 418
    :cond_10
    const-string p0, "Null network interceptor: "

    .line 419
    .line 420
    invoke-static {v4, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw v2

    .line 424
    :cond_11
    const-string p0, "Null interceptor: "

    .line 425
    .line 426
    invoke-static {v5, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw v2
.end method
