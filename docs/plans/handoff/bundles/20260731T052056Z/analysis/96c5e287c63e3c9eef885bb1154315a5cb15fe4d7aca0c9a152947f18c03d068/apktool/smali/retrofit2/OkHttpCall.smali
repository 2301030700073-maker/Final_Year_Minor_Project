.class public final Lretrofit2/OkHttpCall;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lretrofit2/Call;


# instance fields
.field public final args:[Ljava/lang/Object;

.field public final callFactory:Lokhttp3/OkHttpClient;

.field public volatile canceled:Z

.field public creationFailure:Ljava/lang/Throwable;

.field public executed:Z

.field public final instance:Ljava/lang/Object;

.field public rawCall:Lokhttp3/internal/connection/RealCall;

.field public final requestFactory:Lretrofit2/RequestFactory;

.field public final responseConverter:Lretrofit2/Converter;


# direct methods
.method public constructor <init>(Lretrofit2/RequestFactory;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/OkHttpClient;Lretrofit2/Converter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lretrofit2/OkHttpCall;->instance:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/OkHttpClient;

    .line 11
    .line 12
    iput-object p5, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->canceled:Z

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/internal/connection/RealCall;

    .line 6
    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lretrofit2/OkHttpCall;

    .line 2
    .line 3
    iget-object v4, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    iget-object v5, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    .line 6
    .line 7
    iget-object v1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    .line 8
    .line 9
    iget-object v2, p0, Lretrofit2/OkHttpCall;->instance:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v3, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/OkHttpClient;Lretrofit2/Converter;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final clone()Lretrofit2/Call;
    .locals 6

    .line 17
    new-instance v0, Lretrofit2/OkHttpCall;

    iget-object v4, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/OkHttpClient;

    iget-object v5, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->instance:Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/OkHttpClient;Lretrofit2/Converter;)V

    return-object v0
.end method

.method public final createRawCall()Lokhttp3/internal/connection/RealCall;
    .locals 15

    .line 1
    iget-object v0, p0, Lretrofit2/OkHttpCall;->requestFactory:Lretrofit2/RequestFactory;

    .line 2
    .line 3
    iget-object v1, v0, Lretrofit2/RequestFactory;->parameterHandlers:[Lretrofit2/Utils;

    .line 4
    .line 5
    iget-object v2, p0, Lretrofit2/OkHttpCall;->args:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    array-length v4, v1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-ne v3, v4, :cond_b

    .line 11
    .line 12
    new-instance v6, Lretrofit2/RequestBuilder;

    .line 13
    .line 14
    iget-object v7, v0, Lretrofit2/RequestFactory;->httpMethod:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v8, v0, Lretrofit2/RequestFactory;->baseUrl:Lokhttp3/HttpUrl;

    .line 17
    .line 18
    iget-object v9, v0, Lretrofit2/RequestFactory;->relativeUrl:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v10, v0, Lretrofit2/RequestFactory;->headers:Lokhttp3/Headers;

    .line 21
    .line 22
    iget-object v11, v0, Lretrofit2/RequestFactory;->contentType:Lokhttp3/MediaType;

    .line 23
    .line 24
    iget-boolean v12, v0, Lretrofit2/RequestFactory;->hasBody:Z

    .line 25
    .line 26
    iget-boolean v13, v0, Lretrofit2/RequestFactory;->isFormEncoded:Z

    .line 27
    .line 28
    iget-boolean v14, v0, Lretrofit2/RequestFactory;->isMultipart:Z

    .line 29
    .line 30
    invoke-direct/range {v6 .. v14}, Lretrofit2/RequestBuilder;-><init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V

    .line 31
    .line 32
    .line 33
    iget-boolean v4, v0, Lretrofit2/RequestFactory;->isKotlinSuspendFunction:Z

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 38
    .line 39
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    move v8, v7

    .line 46
    :goto_0
    if-ge v8, v3, :cond_1

    .line 47
    .line 48
    aget-object v9, v2, v8

    .line 49
    .line 50
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    aget-object v9, v1, v8

    .line 54
    .line 55
    aget-object v10, v2, v8

    .line 56
    .line 57
    invoke-virtual {v9, v6, v10}, Lretrofit2/Utils;->apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v8, v8, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, v6, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    .line 64
    .line 65
    iget-object v2, v6, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    iget-object v2, v6, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    :try_start_0
    new-instance v3, Lokhttp3/HttpUrl$Builder;

    .line 80
    .line 81
    invoke-direct {v3, v7}, Lokhttp3/HttpUrl$Builder;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v1, v2}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-object v3, v5

    .line 89
    :goto_1
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move-object v2, v5

    .line 97
    :goto_2
    if-eqz v2, :cond_a

    .line 98
    .line 99
    move-object v1, v2

    .line 100
    :goto_3
    iget-object v2, v6, Lretrofit2/RequestBuilder;->body:Lokhttp3/RequestBody;

    .line 101
    .line 102
    if-nez v2, :cond_7

    .line 103
    .line 104
    iget-object v3, v6, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    .line 105
    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    new-instance v2, Lokhttp3/FormBody;

    .line 109
    .line 110
    iget-object v5, v3, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v5, Ljava/util/ArrayList;

    .line 113
    .line 114
    iget-object v3, v3, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v2, v5, v3}, Lokhttp3/FormBody;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_4
    iget-object v3, v6, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    iget-object v2, v3, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v2, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-nez v7, :cond_5

    .line 135
    .line 136
    new-instance v5, Lokhttp3/MultipartBody;

    .line 137
    .line 138
    iget-object v7, v3, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v7, Lokio/ByteString;

    .line 141
    .line 142
    iget-object v3, v3, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v3, Lokhttp3/MediaType;

    .line 145
    .line 146
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-direct {v5, v7, v3, v2}, Lokhttp3/MultipartBody;-><init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    move-object v2, v5

    .line 154
    goto :goto_4

    .line 155
    :cond_5
    const-string p0, "Multipart body must have at least one part."

    .line 156
    .line 157
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-object v5

    .line 161
    :cond_6
    iget-boolean v3, v6, Lretrofit2/RequestBuilder;->hasBody:Z

    .line 162
    .line 163
    if-eqz v3, :cond_7

    .line 164
    .line 165
    new-array v2, v7, [B

    .line 166
    .line 167
    sget v3, Lokhttp3/RequestBody;->$r8$clinit:I

    .line 168
    .line 169
    const-wide/16 v8, 0x0

    .line 170
    .line 171
    const-wide/16 v10, 0x0

    .line 172
    .line 173
    move-wide v12, v8

    .line 174
    invoke-static/range {v8 .. v13}, Lokhttp3/internal/_UtilCommonKt;->checkOffsetAndCount(JJJ)V

    .line 175
    .line 176
    .line 177
    new-instance v3, Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 178
    .line 179
    invoke-direct {v3, v5, v7, v2}, Lokhttp3/RequestBody$Companion$toRequestBody$3;-><init>(Lokhttp3/MediaType;I[B)V

    .line 180
    .line 181
    .line 182
    move-object v2, v3

    .line 183
    :cond_7
    :goto_4
    iget-object v3, v6, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    .line 184
    .line 185
    iget-object v5, v6, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    .line 186
    .line 187
    if-eqz v3, :cond_9

    .line 188
    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    new-instance v7, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    .line 192
    .line 193
    invoke-direct {v7, v2, v3}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lokhttp3/RequestBody;Lokhttp3/MediaType;)V

    .line 194
    .line 195
    .line 196
    move-object v2, v7

    .line 197
    goto :goto_5

    .line 198
    :cond_8
    const-string v7, "Content-Type"

    .line 199
    .line 200
    iget-object v3, v3, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v5, v7, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_9
    :goto_5
    iget-object v3, v6, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    .line 206
    .line 207
    iput-object v1, v3, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 208
    .line 209
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-static {v5}, Lorg/jsoup/Jsoup;->commonBuild(Lokhttp3/Headers$Builder;)Lokhttp3/Headers;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {v1}, Lorg/jsoup/Jsoup;->commonNewBuilder(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iput-object v1, v3, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 221
    .line 222
    iget-object v1, v6, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v3, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 225
    .line 226
    .line 227
    new-instance v1, Lretrofit2/Invocation;

    .line 228
    .line 229
    iget-object v2, v0, Lretrofit2/RequestFactory;->service:Ljava/lang/Class;

    .line 230
    .line 231
    iget-object v0, v0, Lretrofit2/RequestFactory;->method:Ljava/lang/reflect/Method;

    .line 232
    .line 233
    iget-object v5, p0, Lretrofit2/OkHttpCall;->instance:Ljava/lang/Object;

    .line 234
    .line 235
    invoke-direct {v1, v2, v5, v0, v4}, Lretrofit2/Invocation;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/ArrayList;)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 239
    .line 240
    const-class v2, Lretrofit2/Invocation;

    .line 241
    .line 242
    invoke-virtual {v0, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v2, v3, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v2, Lokio/Okio__OkioKt;

    .line 249
    .line 250
    invoke-virtual {v2, v0, v1}, Lokio/Okio__OkioKt;->plus(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lokio/Okio__OkioKt;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iput-object v0, v3, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 255
    .line 256
    new-instance v0, Lokhttp3/Request;

    .line 257
    .line 258
    invoke-direct {v0, v3}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 259
    .line 260
    .line 261
    new-instance v1, Lokhttp3/internal/connection/RealCall;

    .line 262
    .line 263
    iget-object p0, p0, Lretrofit2/OkHttpCall;->callFactory:Lokhttp3/OkHttpClient;

    .line 264
    .line 265
    invoke-direct {v1, p0, v0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 266
    .line 267
    .line 268
    return-object v1

    .line 269
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v0, "Malformed URL. Base: "

    .line 272
    .line 273
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v0, ", Relative: "

    .line 280
    .line 281
    iget-object v1, v6, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {p0, v0, v1}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    return-object v5

    .line 287
    :cond_b
    const-string p0, "Argument count ("

    .line 288
    .line 289
    const-string v0, ") doesn\'t match expected count ("

    .line 290
    .line 291
    invoke-static {v3, p0, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    array-length v0, v1

    .line 296
    const-string v1, ")"

    .line 297
    .line 298
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-object v5
.end method

.method public final enqueue(Lretrofit2/Callback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 3
    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 8
    .line 9
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/internal/connection/RealCall;

    .line 10
    .line 11
    iget-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    :try_start_1
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/internal/connection/RealCall;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/internal/connection/RealCall;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    move-object v0, v2

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    :try_start_2
    invoke-static {v1}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {p1, p0, v1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-boolean v1, p0, Lretrofit2/OkHttpCall;->canceled:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 46
    .line 47
    .line 48
    :cond_2
    new-instance v1, Lretrofit2/OkHttpCall$1;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v1, v2, p0, p1, v2}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "Already executed."

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    throw p1
.end method

.method public final execute()Lretrofit2/Response;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->executed:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->getRawCall()Lokhttp3/internal/connection/RealCall;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-boolean v1, p0, Lretrofit2/OkHttpCall;->canceled:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->execute()Lokhttp3/Response;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lretrofit2/OkHttpCall;->parseResponse(Lokhttp3/Response;)Lretrofit2/Response;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v1, "Already executed."

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v0
.end method

.method public final getRawCall()Lokhttp3/internal/connection/RealCall;
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    instance-of p0, v0, Ljava/io/IOException;

    .line 11
    .line 12
    if-nez p0, :cond_2

    .line 13
    .line 14
    instance-of p0, v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    check-cast v0, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    check-cast v0, Ljava/lang/Error;

    .line 22
    .line 23
    throw v0

    .line 24
    :cond_2
    check-cast v0, Ljava/io/IOException;

    .line 25
    .line 26
    throw v0

    .line 27
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->createRawCall()Lokhttp3/internal/connection/RealCall;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/internal/connection/RealCall;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :catch_2
    move-exception v0

    .line 39
    :goto_0
    invoke-static {v0}, Lretrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lretrofit2/OkHttpCall;->creationFailure:Ljava/lang/Throwable;

    .line 43
    .line 44
    throw v0
.end method

.method public final isCanceled()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->canceled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->rawCall:Lokhttp3/internal/connection/RealCall;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, v0, Lokhttp3/internal/connection/RealCall;->canceled:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_0
    monitor-exit p0

    .line 21
    return v1

    .line 22
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0
.end method

.method public final parseResponse(Lokhttp3/Response;)Lretrofit2/Response;
    .locals 6

    .line 1
    iget-object v0, p1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v1, Lretrofit2/OkHttpCall$NoContentResponseBody;

    .line 8
    .line 9
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lretrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lokhttp3/MediaType;J)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 21
    .line 22
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-boolean v1, p1, Lokhttp3/Response;->isSuccessful:Z

    .line 27
    .line 28
    iget v2, p1, Lokhttp3/Response;->code:I

    .line 29
    .line 30
    const/16 v3, 0xc8

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-lt v2, v3, :cond_6

    .line 34
    .line 35
    const/16 v3, 0x12c

    .line 36
    .line 37
    if-lt v2, v3, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/16 v3, 0xcc

    .line 41
    .line 42
    const-string v5, "rawResponse must be successful response"

    .line 43
    .line 44
    if-eq v2, v3, :cond_4

    .line 45
    .line 46
    const/16 v3, 0xcd

    .line 47
    .line 48
    if-ne v2, v3, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v2, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;-><init>(Lokhttp3/ResponseBody;)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    iget-object p0, p0, Lretrofit2/OkHttpCall;->responseConverter:Lretrofit2/Converter;

    .line 57
    .line 58
    invoke-interface {p0, v2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    new-instance v0, Lretrofit2/Response;

    .line 65
    .line 66
    invoke-direct {v0, p1, p0}, Lretrofit2/Response;-><init>(Lokhttp3/Response;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    iget-object p1, v2, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    .line 78
    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    throw p0

    .line 82
    :cond_3
    throw p1

    .line 83
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 84
    .line 85
    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    new-instance p0, Lretrofit2/Response;

    .line 89
    .line 90
    invoke-direct {p0, p1, v4}, Lretrofit2/Response;-><init>(Lokhttp3/Response;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_5
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v4

    .line 98
    :cond_6
    :goto_1
    :try_start_1
    new-instance p0, Lokio/Buffer;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v2, p0}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 114
    .line 115
    .line 116
    new-instance p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 117
    .line 118
    if-nez v1, :cond_7

    .line 119
    .line 120
    new-instance p0, Lretrofit2/Response;

    .line 121
    .line 122
    invoke-direct {p0, p1, v4}, Lretrofit2/Response;-><init>(Lokhttp3/Response;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 126
    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_7
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    const-string p1, "rawResponse should not be successful response"

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public final declared-synchronized request()Lokhttp3/Request;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->getRawCall()Lokhttp3/internal/connection/RealCall;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->originalRequest:Lokhttp3/Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v2, "Unable to create request."

    .line 16
    .line 17
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v1

    .line 21
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method
