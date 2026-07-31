.class public final Lorg/wikipedia/dataclient/ServiceFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ANALYTICS_REST_SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

.field public static final CORE_REST_SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

.field public static final INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

.field public static final REST_SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

.field public static final SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/ServiceFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 7
    .line 8
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 17
    .line 18
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->REST_SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 25
    .line 26
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->CORE_REST_SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 33
    .line 34
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->ANALYTICS_REST_SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 41
    .line 42
    return-void
.end method

.method public static createRetrofit$default(Lorg/wikipedia/dataclient/ServiceFactory;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->client:Lokhttp3/OkHttpClient;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 10
    .line 11
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 15
    .line 16
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 17
    .line 18
    iget-object v1, p0, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    .line 19
    .line 20
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 21
    .line 22
    iget-object v1, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 23
    .line 24
    iget-object v2, v0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v3, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 41
    .line 42
    iput-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 43
    .line 44
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->fastFallback:Z

    .line 45
    .line 46
    iput-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->fastFallback:Z

    .line 47
    .line 48
    iget-object v1, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/CipherSuite$Companion;

    .line 49
    .line 50
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/CipherSuite$Companion;

    .line 51
    .line 52
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    .line 53
    .line 54
    iput-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 55
    .line 56
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    .line 57
    .line 58
    iput-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 59
    .line 60
    iget-object v1, p0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    .line 61
    .line 62
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 63
    .line 64
    iget-object v1, p0, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    .line 65
    .line 66
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 67
    .line 68
    iget-object v1, p0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/CipherSuite$Companion;

    .line 69
    .line 70
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/CipherSuite$Companion;

    .line 71
    .line 72
    iget-object v1, p0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 73
    .line 74
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 75
    .line 76
    iget-object v1, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/CipherSuite$Companion;

    .line 77
    .line 78
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/CipherSuite$Companion;

    .line 79
    .line 80
    iget-object v1, p0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 81
    .line 82
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 83
    .line 84
    iget-object v1, p0, Lokhttp3/OkHttpClient;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 85
    .line 86
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 87
    .line 88
    iget-object v1, p0, Lokhttp3/OkHttpClient;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 89
    .line 90
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 91
    .line 92
    iget-object v1, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 93
    .line 94
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 95
    .line 96
    iget-object v1, p0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 97
    .line 98
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 99
    .line 100
    iget-object v1, p0, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 101
    .line 102
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 103
    .line 104
    iget-object v1, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 105
    .line 106
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 107
    .line 108
    iget-object v1, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/Headers$Companion;

    .line 109
    .line 110
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/Headers$Companion;

    .line 111
    .line 112
    iget v1, p0, Lokhttp3/OkHttpClient;->connectTimeoutMillis:I

    .line 113
    .line 114
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 115
    .line 116
    iget v1, p0, Lokhttp3/OkHttpClient;->readTimeoutMillis:I

    .line 117
    .line 118
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 119
    .line 120
    iget v1, p0, Lokhttp3/OkHttpClient;->writeTimeoutMillis:I

    .line 121
    .line 122
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 123
    .line 124
    iget v1, p0, Lokhttp3/OkHttpClient;->webSocketCloseTimeout:I

    .line 125
    .line 126
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->webSocketCloseTimeout:I

    .line 127
    .line 128
    iget-wide v3, p0, Lokhttp3/OkHttpClient;->minWebSocketMessageToCompress:J

    .line 129
    .line 130
    iput-wide v3, v0, Lokhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    .line 131
    .line 132
    iget-object v1, p0, Lokhttp3/OkHttpClient;->routeDatabase:Lokhttp3/ConnectionPool;

    .line 133
    .line 134
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->routeDatabase:Lokhttp3/ConnectionPool;

    .line 135
    .line 136
    iget-object p0, p0, Lokhttp3/OkHttpClient;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 137
    .line 138
    iput-object p0, v0, Lokhttp3/OkHttpClient$Builder;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 139
    .line 140
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    const/4 v1, 0x0

    .line 148
    move v3, v1

    .line 149
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_1

    .line 154
    .line 155
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Lokhttp3/Interceptor;

    .line 160
    .line 161
    instance-of v4, v4, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 162
    .line 163
    if-eqz v4, :cond_0

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_1
    const/4 v3, -0x1

    .line 170
    :goto_1
    new-instance p0, Lokhttp3/internal/cache/CacheInterceptor;

    .line 171
    .line 172
    const/4 v4, 0x3

    .line 173
    invoke-direct {p0, v4, p1}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    new-instance p0, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance p1, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    new-instance v2, Lokhttp3/HttpUrl$Builder;

    .line 190
    .line 191
    invoke-direct {v2, v1}, Lokhttp3/HttpUrl$Builder;-><init>(I)V

    .line 192
    .line 193
    .line 194
    const/4 v3, 0x0

    .line 195
    invoke-virtual {v2, v3, p2}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    iget-object v2, p2, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    add-int/lit8 v4, v4, -0x1

    .line 209
    .line 210
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const-string v4, ""

    .line 215
    .line 216
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_2

    .line 221
    .line 222
    new-instance v2, Lokhttp3/OkHttpClient;

    .line 223
    .line 224
    invoke-direct {v2, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 225
    .line 226
    .line 227
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 228
    .line 229
    sget-object v3, Lokhttp3/MediaType;->TYPE_SUBTYPE:Lkotlin/text/Regex;

    .line 230
    .line 231
    const-string v3, "application/json"

    .line 232
    .line 233
    invoke-static {v3}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    new-instance v4, Lretrofit2/converter/kotlinx/serialization/Factory;

    .line 241
    .line 242
    new-instance v5, Lretrofit2/OptionalConverterFactory$OptionalConverter;

    .line 243
    .line 244
    invoke-direct {v5, v0}, Lretrofit2/OptionalConverterFactory$OptionalConverter;-><init>(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    invoke-direct {v4, v3, v5}, Lretrofit2/converter/kotlinx/serialization/Factory;-><init>(Lokhttp3/MediaType;Lretrofit2/OptionalConverterFactory$OptionalConverter;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    sget-object v0, Lretrofit2/Platform;->callbackExecutor:Lretrofit2/AndroidMainExecutor;

    .line 254
    .line 255
    sget-object v3, Lretrofit2/Platform;->builtInFactories:Lretrofit2/Reflection;

    .line 256
    .line 257
    new-instance v4, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v0}, Lretrofit2/Reflection;->createDefaultCallAdapterFactories(Ljava/util/concurrent/Executor;)Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Lretrofit2/Reflection;->createDefaultConverterFactories()Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    new-instance v5, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    add-int/lit8 v6, v6, 0x1

    .line 284
    .line 285
    add-int/2addr v6, v3

    .line 286
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .line 288
    .line 289
    new-instance v3, Lretrofit2/BuiltInConverters;

    .line 290
    .line 291
    invoke-direct {v3, v1}, Lretrofit2/BuiltInConverters;-><init>(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 301
    .line 302
    .line 303
    new-instance p0, Lretrofit2/Retrofit;

    .line 304
    .line 305
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 314
    .line 315
    .line 316
    invoke-direct {p0, v2, p2, v0, v1}, Lretrofit2/Retrofit;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;)V

    .line 317
    .line 318
    .line 319
    return-object p0

    .line 320
    :cond_2
    const-string p0, "baseUrl must end in /: "

    .line 321
    .line 322
    invoke-static {p0, p2}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    return-object v3
.end method

.method public static get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lorg/wikipedia/dataclient/Service;

    return-object p0
.end method

.method public static getAnalyticsRest(Lorg/wikimedia/testkitchen/config/DestinationEventService;)Lorg/wikipedia/analytics/eventplatform/EventService;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->ANALYTICS_REST_SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/analytics/eventplatform/EventService;

    .line 14
    .line 15
    return-object p0
.end method

.method public static getCoreRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/CoreRestService;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->CORE_REST_SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/dataclient/CoreRestService;

    .line 14
    .line 15
    return-object p0
.end method

.method public static getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->REST_SERVICE_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/dataclient/RestService;

    .line 14
    .line 15
    return-object p0
.end method

.method public static getRestBasePath(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 5
    .line 6
    const v0, 0x7f120674

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, ""

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    move-object v2, v3

    .line 19
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const-string v5, "%1$s://%2$s/api/rest_v1/"

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    move-object v2, v5

    .line 28
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v4, 0x0

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->url()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "//api/rest_v1"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move-object v3, v0

    .line 54
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    move-object v5, v3

    .line 62
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/4 v0, 0x2

    .line 67
    new-array v1, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string v2, "https"

    .line 70
    .line 71
    aput-object v2, v1, v4

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    aput-object p0, v1, v2

    .line 75
    .line 76
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :goto_2
    const-string v0, "/"

    .line 85
    .line 86
    invoke-static {p0, v0, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :cond_5
    return-object p0
.end method


# virtual methods
.method public final get(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->url()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v0, "/"

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/wikipedia/dataclient/ServiceFactory;->createRetrofit$default(Lorg/wikipedia/dataclient/ServiceFactory;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)Lretrofit2/Retrofit;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
