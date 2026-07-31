.class public Lorg/maplibre/android/http/NativeHttpRequest;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field private final httpRequest:Lorg/maplibre/android/http/HttpRequest;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativePtr:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetlock(Lorg/maplibre/android/http/NativeHttpRequest;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetnativePtr(Lorg/maplibre/android/http/NativeHttpRequest;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->nativePtr:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mnativeOnResponse(Lorg/maplibre/android/http/NativeHttpRequest;[B)V
    .locals 9

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v8, p1

    .line 11
    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/http/NativeHttpRequest;->nativeOnResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getModuleProvider()Lorg/maplibre/android/ModuleProvider;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lorg/wikipedia/login/LoginClient;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lorg/maplibre/android/module/http/HttpRequestImpl;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->httpRequest:Lorg/maplibre/android/http/HttpRequest;

    .line 19
    .line 20
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    iput-wide p1, p0, Lorg/maplibre/android/http/NativeHttpRequest;->nativePtr:J

    .line 28
    .line 29
    const-string p1, "local://"

    .line 30
    .line 31
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-direct {p0, p3}, Lorg/maplibre/android/http/NativeHttpRequest;->executeLocalRequest(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const-string p1, "[HTTP] Unable to parse resourceUrl "

    .line 42
    .line 43
    new-instance p2, Lorg/maplibre/android/http/NativeHttpRequest$1;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p0, p2, Lorg/maplibre/android/http/NativeHttpRequest$1;->this$0:Lorg/maplibre/android/http/NativeHttpRequest;

    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    const/4 v1, 0x0

    .line 52
    :try_start_0
    new-instance v2, Lokhttp3/HttpUrl$Builder;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lokhttp3/HttpUrl$Builder;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1, p3}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :catch_0
    if-nez v1, :cond_1

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const/4 p1, 0x6

    .line 71
    invoke-static {p1, p0}, Lokhttp3/Cookie$Companion;->log(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :catch_1
    move-exception p0

    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_1
    iget-object p1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 80
    .line 81
    sget-object v2, Lorg/maplibre/android/constants/MapLibreConstants;->MAPLIBRE_LOCALE:Ljava/util/Locale;

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v1, v1, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    div-int/lit8 v1, v1, 0x2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    move v1, p0

    .line 99
    :goto_0
    const-string v3, "mapbox.com"

    .line 100
    .line 101
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_3

    .line 106
    .line 107
    const-string v3, ".mapbox.com"

    .line 108
    .line 109
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_3

    .line 114
    .line 115
    const-string v3, "mapbox.cn"

    .line 116
    .line 117
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_3

    .line 122
    .line 123
    const-string v3, ".mapbox.cn"

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    :cond_3
    if-nez v1, :cond_4

    .line 132
    .line 133
    const-string p1, "?"

    .line 134
    .line 135
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :goto_1
    move-object p3, p1

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    const-string p1, "&"

    .line 142
    .line 143
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    goto :goto_1

    .line 148
    :goto_2
    if-eqz p7, :cond_5

    .line 149
    .line 150
    const-string p1, "offline=true"

    .line 151
    .line 152
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    :cond_5
    new-instance p1, Lokhttp3/Request$Builder;

    .line 157
    .line 158
    invoke-direct {p1, p0}, Lokhttp3/Request$Builder;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const-class p3, Ljava/lang/Object;

    .line 169
    .line 170
    sget-object p7, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 171
    .line 172
    invoke-virtual {p7, p3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    iget-object p7, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p7, Lokio/Okio__OkioKt;

    .line 179
    .line 180
    invoke-virtual {p7, p3, p0}, Lokio/Okio__OkioKt;->plus(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lokio/Okio__OkioKt;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    iput-object p0, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 185
    .line 186
    const-string p0, "User-Agent"

    .line 187
    .line 188
    sget-object p3, Lorg/maplibre/android/module/http/HttpRequestImpl;->userAgentString:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    iget-object p7, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p7, Lokhttp3/Headers$Builder;

    .line 196
    .line 197
    invoke-virtual {p7, p0, p3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-lez p0, :cond_6

    .line 205
    .line 206
    const-string p0, "Range"

    .line 207
    .line 208
    iget-object p3, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast p3, Lokhttp3/Headers$Builder;

    .line 211
    .line 212
    invoke-virtual {p3, p0, p4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-lez p0, :cond_7

    .line 220
    .line 221
    const-string p0, "If-None-Match"

    .line 222
    .line 223
    iget-object p3, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p3, Lokhttp3/Headers$Builder;

    .line 226
    .line 227
    invoke-virtual {p3, p0, p5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_7
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    if-lez p0, :cond_8

    .line 236
    .line 237
    const-string p0, "If-Modified-Since"

    .line 238
    .line 239
    iget-object p3, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast p3, Lokhttp3/Headers$Builder;

    .line 242
    .line 243
    invoke-virtual {p3, p0, p6}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_8
    :goto_3
    new-instance p0, Lokhttp3/Request;

    .line 247
    .line 248
    invoke-direct {p0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 249
    .line 250
    .line 251
    sget-object p1, Lorg/maplibre/android/module/http/HttpRequestImpl;->client:Lokhttp3/OkHttpClient;

    .line 252
    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    new-instance p3, Lokhttp3/internal/connection/RealCall;

    .line 257
    .line 258
    invoke-direct {p3, p1, p0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 259
    .line 260
    .line 261
    iput-object p3, v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->call:Lokhttp3/internal/connection/RealCall;

    .line 262
    .line 263
    invoke-virtual {p3, p2}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :goto_4
    iget-object p1, v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->call:Lokhttp3/internal/connection/RealCall;

    .line 268
    .line 269
    invoke-virtual {p2, p1, p0}, Lorg/maplibre/android/http/NativeHttpRequest$1;->handleFailure(Lokhttp3/internal/connection/RealCall;Ljava/lang/Exception;)V

    .line 270
    .line 271
    .line 272
    :goto_5
    return-void
.end method

.method private executeLocalRequest(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/http/LocalRequestTask;

    .line 2
    .line 3
    new-instance v1, Lorg/maplibre/android/http/NativeHttpRequest$1;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p0, v1, Lorg/maplibre/android/http/NativeHttpRequest$1;->this$0:Lorg/maplibre/android/http/NativeHttpRequest;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lorg/maplibre/android/http/LocalRequestTask;->requestResponse:Lorg/maplibre/android/http/NativeHttpRequest$1;

    .line 14
    .line 15
    filled-new-array {p1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private native nativeOnFailure(ILjava/lang/String;)V
.end method

.method private native nativeOnResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->httpRequest:Lorg/maplibre/android/http/HttpRequest;

    .line 2
    .line 3
    check-cast v0, Lorg/maplibre/android/module/http/HttpRequestImpl;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->call:Lokhttp3/internal/connection/RealCall;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;

    .line 10
    .line 11
    iget-object v1, v1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "[HTTP] This request was cancelled ("

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "). This is expected for tiles that were being prefetched but are no longer needed for the map to render."

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-static {v2, v1}, Lokhttp3/Cookie$Companion;->log(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->call:Lokhttp3/internal/connection/RealCall;

    .line 37
    .line 38
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 44
    .line 45
    .line 46
    const-wide/16 v0, 0x0

    .line 47
    .line 48
    iput-wide v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->nativePtr:J

    .line 49
    .line 50
    iget-object p0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public handleFailure(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->nativePtr:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/http/NativeHttpRequest;->nativeOnFailure(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->nativePtr:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/http/NativeHttpRequest;->nativeOnResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
