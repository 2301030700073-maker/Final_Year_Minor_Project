.class public final Lorg/schabi/newpipe/DownloaderImpl;
.super Lkotlin/io/CloseableKt;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static instance:Lorg/schabi/newpipe/DownloaderImpl;


# instance fields
.field public final client:Lokhttp3/OkHttpClient;

.field public final mCookies:Ljava/util/HashMap;


# direct methods
.method public static $r8$lambda$2a0p9oMkkgzxSmpcGeYXtuomImY(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic $r8$lambda$VsCEXXIexbPa7gJNKOheeaqrLlI(Ljava/lang/String;)Lj$/util/stream/Stream;
    .locals 1

    .line 1
    const-string v0, "; *"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/io/CloseableKt;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->UTC:Ljava/util/TimeZone;

    .line 10
    .line 11
    const/16 v0, 0x7530

    .line 12
    .line 13
    iput v0, p1, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 14
    .line 15
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/schabi/newpipe/DownloaderImpl;->client:Lokhttp3/OkHttpClient;

    .line 21
    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/HashMap;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Landroidx/recyclerview/widget/ChildHelper;
    .locals 12

    .line 1
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p1, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    .line 6
    .line 7
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget v4, Lokhttp3/RequestBody;->$r8$clinit:I

    .line 13
    .line 14
    array-length v4, p1

    .line 15
    array-length v5, p1

    .line 16
    int-to-long v6, v5

    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    int-to-long v10, v4

    .line 20
    invoke-static/range {v6 .. v11}, Lokhttp3/internal/_UtilCommonKt;->checkOffsetAndCount(JJJ)V

    .line 21
    .line 22
    .line 23
    new-instance v5, Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 24
    .line 25
    invoke-direct {v5, v4, p1}, Lokhttp3/RequestBody$Companion$toRequestBody$3;-><init>(I[B)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v5, v3

    .line 30
    :goto_0
    new-instance p1, Lokhttp3/Request$Builder;

    .line 31
    .line 32
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "User-Agent"

    .line 42
    .line 43
    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0"

    .line 44
    .line 45
    iget-object v5, p1, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lorg/jsoup/Jsoup;->headersCheckName(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v0}, Lorg/jsoup/Jsoup;->headersCheckValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v5, v0, v4}, Lorg/jsoup/Jsoup;->commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v0, "youtube.com"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const-string/jumbo v0, "youtube_restricted_mode_key"

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move-object v0, v3

    .line 81
    :goto_1
    const-string v4, "recaptcha_cookies"

    .line 82
    .line 83
    iget-object v5, p0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/String;

    .line 90
    .line 91
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v4, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    invoke-direct {v4, v5}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v4, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    const/16 v6, 0x11

    .line 112
    .line 113
    invoke-direct {v4, v6}, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v4}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v4, "; "

    .line 125
    .line 126
    invoke-static {v4}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-interface {v0, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_2

    .line 141
    .line 142
    const-string v4, "Cookie"

    .line 143
    .line 144
    iget-object v6, p1, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {v4}, Lorg/jsoup/Jsoup;->headersCheckName(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v4}, Lorg/jsoup/Jsoup;->headersCheckValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v6, v4, v0}, Lorg/jsoup/Jsoup;->commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;

    .line 159
    .line 160
    const/4 v4, 0x0

    .line 161
    invoke-direct {v0, p1, v4}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 162
    .line 163
    .line 164
    invoke-static {v2, v0}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 165
    .line 166
    .line 167
    iget-object p0, p0, Lorg/schabi/newpipe/DownloaderImpl;->client:Lokhttp3/OkHttpClient;

    .line 168
    .line 169
    new-instance v0, Lokhttp3/Request;

    .line 170
    .line 171
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    new-instance p1, Lokhttp3/internal/connection/RealCall;

    .line 178
    .line 179
    invoke-direct {p1, p0, v0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p1, Lokhttp3/internal/connection/RealCall;->executed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 183
    .line 184
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_5

    .line 189
    .line 190
    iget-object v0, p1, Lokhttp3/internal/connection/RealCall;->timeout:Lokhttp3/internal/connection/RealCall$timeout$1;

    .line 191
    .line 192
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 193
    .line 194
    .line 195
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 196
    .line 197
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 198
    .line 199
    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->getStackTraceForCloseable()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iput-object v0, p1, Lokhttp3/internal/connection/RealCall;->callStackTrace:Ljava/lang/Object;

    .line 204
    .line 205
    iget-object v0, p1, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    const/4 v2, 0x5

    .line 211
    :try_start_0
    iget-object v4, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 212
    .line 213
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 214
    :try_start_1
    iget-object v0, v4, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v0, Ljava/util/ArrayDeque;

    .line 217
    .line 218
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 219
    .line 220
    .line 221
    :try_start_2
    monitor-exit v4

    .line 222
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealCall;->getResponseWithInterceptorChain$okhttp()Lokhttp3/Response;

    .line 223
    .line 224
    .line 225
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 226
    iget-object p0, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {p0, v3, p1, v3, v2}, Lokhttp3/Dispatcher;->promoteAndExecute$default(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealCall$AsyncCall;I)V

    .line 232
    .line 233
    .line 234
    :try_start_3
    iget p0, v4, Lokhttp3/Response;->code:I

    .line 235
    .line 236
    const/16 p1, 0x1ad

    .line 237
    .line 238
    if-eq p0, p1, :cond_4

    .line 239
    .line 240
    iget-object p0, v4, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    .line 242
    :try_start_4
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 246
    :try_start_5
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    .line 247
    .line 248
    .line 249
    iget-object p0, v4, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 250
    .line 251
    iget-object p0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 252
    .line 253
    iget-object v10, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 254
    .line 255
    new-instance v5, Landroidx/recyclerview/widget/ChildHelper;

    .line 256
    .line 257
    iget v6, v4, Lokhttp3/Response;->code:I

    .line 258
    .line 259
    iget-object v7, v4, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 260
    .line 261
    iget-object p0, v4, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 262
    .line 263
    invoke-virtual {p0}, Lokhttp3/Headers;->toMultimap()Ljava/util/TreeMap;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-direct/range {v5 .. v10}, Landroidx/recyclerview/widget/ChildHelper;-><init>(ILjava/lang/String;Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4}, Lokhttp3/Response;->close()V

    .line 271
    .line 272
    .line 273
    return-object v5

    .line 274
    :catchall_0
    move-exception v0

    .line 275
    move-object p0, v0

    .line 276
    goto :goto_3

    .line 277
    :catchall_1
    move-exception v0

    .line 278
    move-object p1, v0

    .line 279
    if-eqz p0, :cond_3

    .line 280
    .line 281
    :try_start_6
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :catchall_2
    move-exception v0

    .line 286
    move-object p0, v0

    .line 287
    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    :cond_3
    :goto_2
    throw p1

    .line 291
    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    .line 292
    .line 293
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 297
    :goto_3
    :try_start_8
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :catchall_3
    move-exception v0

    .line 302
    move-object p1, v0

    .line 303
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 304
    .line 305
    .line 306
    :goto_4
    throw p0

    .line 307
    :catchall_4
    move-exception v0

    .line 308
    move-object p0, v0

    .line 309
    goto :goto_5

    .line 310
    :catchall_5
    move-exception v0

    .line 311
    move-object p0, v0

    .line 312
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 313
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 314
    :goto_5
    iget-object v0, p1, Lokhttp3/internal/connection/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 315
    .line 316
    iget-object v0, v0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-static {v0, v3, p1, v3, v2}, Lokhttp3/Dispatcher;->promoteAndExecute$default(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealCall$AsyncCall;I)V

    .line 322
    .line 323
    .line 324
    throw p0

    .line 325
    :cond_5
    const-string p0, "Already Executed"

    .line 326
    .line 327
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    return-object v3
.end method

.method public final updateYoutubeRestrictedModeCookies(Landroid/content/Context;)V
    .locals 3

    .line 1
    const v0, 0x7f130548

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const-string/jumbo v0, "youtube_restricted_mode_key"

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/HashMap;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string p1, "PREF=f2=8000000"

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :goto_0
    sget-object p0, Lorg/schabi/newpipe/util/InfoCache;->INSTANCE:Lorg/schabi/newpipe/util/InfoCache;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache;->clearCache()V

    .line 43
    .line 44
    .line 45
    return-void
.end method
