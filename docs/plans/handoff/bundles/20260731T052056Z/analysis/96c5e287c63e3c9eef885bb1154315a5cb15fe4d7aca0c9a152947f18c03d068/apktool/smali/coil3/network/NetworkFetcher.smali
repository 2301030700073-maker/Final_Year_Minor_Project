.class public final Lcoil3/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# instance fields
.field public final cacheStrategy:Lkotlin/SynchronizedLazyImpl;

.field public final concurrentRequestStrategy:Lkotlin/SynchronizedLazyImpl;

.field public final connectivityChecker:Lkotlin/InitializedLazyImpl;

.field public final diskCache:Lkotlin/SynchronizedLazyImpl;

.field public final networkClient:Lkotlin/SynchronizedLazyImpl;

.field public final options:Lcoil3/request/Options;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/SynchronizedLazyImpl;Lkotlin/SynchronizedLazyImpl;Lkotlin/SynchronizedLazyImpl;Lkotlin/InitializedLazyImpl;Lkotlin/SynchronizedLazyImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/network/NetworkFetcher;->networkClient:Lkotlin/SynchronizedLazyImpl;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/network/NetworkFetcher;->diskCache:Lkotlin/SynchronizedLazyImpl;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/network/NetworkFetcher;->cacheStrategy:Lkotlin/SynchronizedLazyImpl;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/network/NetworkFetcher;->connectivityChecker:Lkotlin/InitializedLazyImpl;

    .line 15
    .line 16
    iput-object p7, p0, Lcoil3/network/NetworkFetcher;->concurrentRequestStrategy:Lkotlin/SynchronizedLazyImpl;

    .line 17
    .line 18
    return-void
.end method

.method public static getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "text/plain"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    :goto_0
    move-object v1, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/16 v1, 0x23

    .line 22
    .line 23
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/16 v1, 0x3f

    .line 28
    .line 29
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/16 v1, 0x2f

    .line 34
    .line 35
    invoke-static {v1, p0, p0}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/16 v1, 0x2e

    .line 40
    .line 41
    const-string v2, ""

    .line 42
    .line 43
    invoke-static {v1, p0, v2}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v1, Lcoil3/util/MimeTypesKt;->mimeTypeData:Lkotlin/collections/builders/MapBuilder;

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_4
    if-eqz p1, :cond_5

    .line 85
    .line 86
    const/16 p0, 0x3b

    .line 87
    .line 88
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_5
    return-object v0
.end method

.method public static throwIfFailureResponseCode(Lcoil3/network/NetworkResponse;)V
    .locals 2

    .line 1
    iget p0, p0, Lcoil3/network/NetworkResponse;->code:I

    .line 2
    .line 3
    const/16 v0, 0xc8

    .line 4
    .line 5
    if-gt v0, p0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x12c

    .line 8
    .line 9
    if-ge p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x130

    .line 13
    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance v0, Lcoil3/network/HttpException;

    .line 18
    .line 19
    const-string v1, "HTTP "

    .line 20
    .line 21
    invoke-static {p0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method


# virtual methods
.method public final doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v1, v0, Lcoil3/network/NetworkFetcher$doFetch$1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcoil3/network/NetworkFetcher$doFetch$1;

    .line 11
    .line 12
    iget v3, v1, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v1, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 22
    .line 23
    :goto_0
    move-object v7, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Lcoil3/network/NetworkFetcher$doFetch$1;

    .line 26
    .line 27
    invoke-direct {v1, v2, v0}, Lcoil3/network/NetworkFetcher$doFetch$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 36
    .line 37
    iget-object v9, v2, Lcoil3/network/NetworkFetcher;->networkClient:Lkotlin/SynchronizedLazyImpl;

    .line 38
    .line 39
    iget-object v3, v2, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v4, v2, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 42
    .line 43
    const/4 v10, 0x3

    .line 44
    const/4 v11, 0x2

    .line 45
    const/4 v5, 0x1

    .line 46
    const/4 v12, 0x0

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    if-eq v1, v5, :cond_3

    .line 50
    .line 51
    if-eq v1, v11, :cond_2

    .line 52
    .line 53
    if-ne v1, v10, :cond_1

    .line 54
    .line 55
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 56
    .line 57
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_9

    .line 61
    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto/16 :goto_a

    .line 64
    .line 65
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v12

    .line 71
    :cond_2
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    .line 73
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    .line 76
    goto/16 :goto_7

    .line 77
    .line 78
    :cond_3
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 79
    .line 80
    iget-object v5, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 81
    .line 82
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    .line 84
    .line 85
    move-object/from16 v17, v5

    .line 86
    .line 87
    move-object v5, v1

    .line 88
    move-object/from16 v1, v17

    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :catch_1
    move-exception v0

    .line 93
    move-object v1, v5

    .line 94
    goto/16 :goto_a

    .line 95
    .line 96
    :cond_4
    invoke-static {v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v0, v4, Lcoil3/request/Options;->diskCachePolicy:Lcoil3/request/CachePolicy;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->getReadEnabled()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    iget-object v0, v2, Lcoil3/network/NetworkFetcher;->diskCache:Lkotlin/SynchronizedLazyImpl;

    .line 109
    .line 110
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 115
    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    iget-object v6, v4, Lcoil3/request/Options;->diskCacheKey:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v6, :cond_5

    .line 121
    .line 122
    move-object v6, v3

    .line 123
    :cond_5
    iget-object v0, v0, Lcoil3/disk/RealDiskCache;->cache:Lcoil3/disk/DiskLruCache;

    .line 124
    .line 125
    sget-object v13, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 126
    .line 127
    invoke-static {v6}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const-string v13, "SHA-256"

    .line 132
    .line 133
    invoke-virtual {v6, v13}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v6}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v0, v6}, Lcoil3/disk/DiskLruCache;->get(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Snapshot;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    new-instance v6, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 148
    .line 149
    invoke-direct {v6, v0}, Lcoil3/disk/RealDiskCache$RealSnapshot;-><init>(Lcoil3/disk/DiskLruCache$Snapshot;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    move-object v6, v12

    .line 154
    :goto_2
    iput-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 155
    .line 156
    :try_start_3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 157
    .line 158
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 159
    .line 160
    .line 161
    if-eqz v6, :cond_c

    .line 162
    .line 163
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    iget-object v13, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v13, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 170
    .line 171
    iget-object v13, v13, Lcoil3/disk/RealDiskCache$RealSnapshot;->snapshot:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 172
    .line 173
    iget-boolean v14, v13, Lcoil3/disk/DiskLruCache$Snapshot;->closed:Z

    .line 174
    .line 175
    if-nez v14, :cond_b

    .line 176
    .line 177
    iget-object v13, v13, Lcoil3/disk/DiskLruCache$Snapshot;->entry:Lcoil3/disk/DiskLruCache$Entry;

    .line 178
    .line 179
    iget-object v13, v13, Lcoil3/disk/DiskLruCache$Entry;->cleanFiles:Ljava/util/ArrayList;

    .line 180
    .line 181
    const/4 v14, 0x0

    .line 182
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    check-cast v13, Lokio/Path;

    .line 187
    .line 188
    invoke-virtual {v6, v13}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    iget-object v6, v6, Lokio/FileMetadata;->size:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v6, Ljava/lang/Long;

    .line 195
    .line 196
    if-nez v6, :cond_7

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 200
    .line 201
    .line 202
    move-result-wide v13

    .line 203
    const-wide/16 v15, 0x0

    .line 204
    .line 205
    cmp-long v6, v13, v15

    .line 206
    .line 207
    if-nez v6, :cond_8

    .line 208
    .line 209
    new-instance v0, Lcoil3/fetch/SourceFetchResult;

    .line 210
    .line 211
    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v4, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 214
    .line 215
    invoke-virtual {v2, v4}, Lcoil3/network/NetworkFetcher;->toImageSource(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/decode/FileImageSource;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-static {v3, v12}, Lcoil3/network/NetworkFetcher;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    sget-object v4, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    .line 224
    .line 225
    invoke-direct {v0, v2, v3, v4}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 226
    .line 227
    .line 228
    return-object v0

    .line 229
    :cond_8
    :goto_3
    iget-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v6, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 232
    .line 233
    invoke-virtual {v2, v6}, Lcoil3/network/NetworkFetcher;->toNetworkResponseOrNull(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/network/NetworkResponse;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    iput-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 238
    .line 239
    if-eqz v6, :cond_c

    .line 240
    .line 241
    invoke-static {v6}, Lcoil3/network/NetworkFetcher;->throwIfFailureResponseCode(Lcoil3/network/NetworkResponse;)V

    .line 242
    .line 243
    .line 244
    iget-object v6, v2, Lcoil3/network/NetworkFetcher;->cacheStrategy:Lkotlin/SynchronizedLazyImpl;

    .line 245
    .line 246
    invoke-virtual {v6}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    check-cast v6, Lcoil3/network/CacheStrategy;

    .line 251
    .line 252
    iget-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v13, Lcoil3/network/NetworkResponse;

    .line 255
    .line 256
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->newRequest()Lcoil3/network/NetworkRequest;

    .line 257
    .line 258
    .line 259
    iput-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 260
    .line 261
    iput-object v0, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 262
    .line 263
    iput v5, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 264
    .line 265
    check-cast v6, Lcoil3/network/internal/DefaultCacheStrategy;

    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    new-instance v5, Lcoil3/network/CacheStrategy$ReadResult;

    .line 271
    .line 272
    invoke-direct {v5, v13}, Lcoil3/network/CacheStrategy$ReadResult;-><init>(Lcoil3/network/NetworkResponse;)V

    .line 273
    .line 274
    .line 275
    if-ne v5, v8, :cond_9

    .line 276
    .line 277
    goto/16 :goto_8

    .line 278
    .line 279
    :cond_9
    move-object/from16 v17, v5

    .line 280
    .line 281
    move-object v5, v0

    .line 282
    move-object/from16 v0, v17

    .line 283
    .line 284
    :goto_4
    check-cast v0, Lcoil3/network/CacheStrategy$ReadResult;

    .line 285
    .line 286
    iget-object v6, v0, Lcoil3/network/CacheStrategy$ReadResult;->response:Lcoil3/network/NetworkResponse;

    .line 287
    .line 288
    if-eqz v6, :cond_a

    .line 289
    .line 290
    new-instance v4, Lcoil3/fetch/SourceFetchResult;

    .line 291
    .line 292
    iget-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v5, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 295
    .line 296
    invoke-virtual {v2, v5}, Lcoil3/network/NetworkFetcher;->toImageSource(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/decode/FileImageSource;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iget-object v0, v0, Lcoil3/network/CacheStrategy$ReadResult;->response:Lcoil3/network/NetworkResponse;

    .line 301
    .line 302
    iget-object v0, v0, Lcoil3/network/NetworkResponse;->headers:Lcoil3/network/NetworkHeaders;

    .line 303
    .line 304
    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders;->get()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {v3, v0}, Lcoil3/network/NetworkFetcher;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    sget-object v3, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    .line 313
    .line 314
    invoke-direct {v4, v2, v0, v3}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 315
    .line 316
    .line 317
    return-object v4

    .line 318
    :cond_a
    move-object v3, v5

    .line 319
    goto :goto_5

    .line 320
    :cond_b
    const-string v0, "snapshot is closed"

    .line 321
    .line 322
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 323
    .line 324
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v2

    .line 328
    :cond_c
    move-object v3, v0

    .line 329
    :goto_5
    iget-object v0, v4, Lcoil3/request/Options;->networkCachePolicy:Lcoil3/request/CachePolicy;

    .line 330
    .line 331
    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->getReadEnabled()Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-eqz v0, :cond_e

    .line 336
    .line 337
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-nez v0, :cond_d

    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_d
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    .line 353
    .line 354
    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 355
    .line 356
    .line 357
    throw v0

    .line 358
    :cond_e
    :goto_6
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->newRequest()Lcoil3/network/NetworkRequest;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-virtual {v9}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    move-object v13, v0

    .line 367
    check-cast v13, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 368
    .line 369
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 370
    .line 371
    const/4 v5, 0x0

    .line 372
    const/4 v6, 0x7

    .line 373
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 374
    .line 375
    .line 376
    iput-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 377
    .line 378
    iput-object v12, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 379
    .line 380
    iput v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 381
    .line 382
    iget-object v3, v13, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->callFactory:Lokhttp3/OkHttpClient;

    .line 383
    .line 384
    invoke-static {v3, v4, v0, v7}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->executeRequest-impl(Lokhttp3/OkHttpClient;Lcoil3/network/NetworkRequest;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    if-ne v0, v8, :cond_f

    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_f
    :goto_7
    check-cast v0, Lcoil3/fetch/SourceFetchResult;

    .line 392
    .line 393
    if-nez v0, :cond_11

    .line 394
    .line 395
    invoke-virtual {v9}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    check-cast v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 400
    .line 401
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->newRequest()Lcoil3/network/NetworkRequest;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    new-instance v4, Landroidx/paging/PageFetcher$flow$1;

    .line 406
    .line 407
    const/16 v5, 0x15

    .line 408
    .line 409
    invoke-direct {v4, v5, v2, v12}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 410
    .line 411
    .line 412
    iput-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 413
    .line 414
    iput v10, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->label:I

    .line 415
    .line 416
    iget-object v0, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->callFactory:Lokhttp3/OkHttpClient;

    .line 417
    .line 418
    invoke-static {v0, v3, v4, v7}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->executeRequest-impl(Lokhttp3/OkHttpClient;Lcoil3/network/NetworkRequest;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    if-ne v0, v8, :cond_10

    .line 423
    .line 424
    :goto_8
    return-object v8

    .line 425
    :cond_10
    :goto_9
    check-cast v0, Lcoil3/fetch/SourceFetchResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 426
    .line 427
    :cond_11
    return-object v0

    .line 428
    :goto_a
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v1, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 431
    .line 432
    if-eqz v1, :cond_12

    .line 433
    .line 434
    :try_start_4
    invoke-static {v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 435
    .line 436
    .line 437
    goto :goto_b

    .line 438
    :catch_2
    move-exception v0

    .line 439
    throw v0

    .line 440
    :catch_3
    :cond_12
    :goto_b
    throw v0
.end method

.method public final fetch(Lcoil3/intercept/EngineInterceptor$fetch$1;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/network/NetworkFetcher;->concurrentRequestStrategy:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil3/network/UncoordinatedConcurrentRequestStrategy;

    .line 8
    .line 9
    iget-object v1, p0, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 10
    .line 11
    iget-object v1, v1, Lcoil3/request/Options;->diskCacheKey:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcoil3/network/NetworkFetcher;->doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getFileSystem()Lokio/FileSystem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/network/NetworkFetcher;->diskCache:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lcoil3/disk/RealDiskCache;->fileSystem:Lokio/FileSystem;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0

    .line 17
    :cond_1
    :goto_0
    iget-object p0, p0, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 18
    .line 19
    iget-object p0, p0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 20
    .line 21
    return-object p0
.end method

.method public final newRequest()Lcoil3/network/NetworkRequest;
    .locals 5

    .line 1
    sget-object v0, Lcoil3/network/ImageRequestsKt;->httpHeadersKey:Lcoil3/Extras$Key;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcoil3/network/NetworkHeaders;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcoil3/network/NetworkHeaders$Builder;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Lcoil3/network/NetworkHeaders;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Lcoil3/request/Options;->diskCachePolicy:Lcoil3/request/CachePolicy;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->getReadEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, v1, Lcoil3/request/Options;->networkCachePolicy:Lcoil3/request/CachePolicy;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcoil3/request/CachePolicy;->getReadEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget-object v4, p0, Lcoil3/network/NetworkFetcher;->connectivityChecker:Lkotlin/InitializedLazyImpl;

    .line 34
    .line 35
    iget-object v4, v4, Lkotlin/InitializedLazyImpl;->value:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, Lcoil3/network/ConnectivityChecker;

    .line 38
    .line 39
    invoke-interface {v4}, Lcoil3/network/ConnectivityChecker;->isOnline()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v4, 0x0

    .line 48
    :goto_0
    if-nez v4, :cond_1

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    const-string v0, "only-if-cached, max-stale=2147483647"

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->set(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    if-eqz v4, :cond_3

    .line 59
    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->getWriteEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    const-string v0, "no-cache"

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->set(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-string v0, "no-cache, no-store"

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->set(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    if-nez v4, :cond_4

    .line 81
    .line 82
    if-nez v3, :cond_4

    .line 83
    .line 84
    const-string v0, "no-cache, only-if-cached"

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->set(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_1
    new-instance v0, Lcoil3/network/NetworkRequest;

    .line 90
    .line 91
    sget-object v3, Lcoil3/network/ImageRequestsKt;->httpMethodKey:Lcoil3/Extras$Key;

    .line 92
    .line 93
    invoke-static {v1, v3}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Ljava/lang/String;

    .line 98
    .line 99
    new-instance v4, Lcoil3/network/NetworkHeaders;

    .line 100
    .line 101
    iget-object v2, v2, Lcoil3/network/NetworkHeaders$Builder;->data:Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-direct {v4, v2}, Lcoil3/network/NetworkHeaders;-><init>(Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    sget-object v2, Lcoil3/network/ImageRequestsKt;->httpBodyKey:Lcoil3/Extras$Key;

    .line 111
    .line 112
    invoke-static {v1, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-nez v2, :cond_5

    .line 117
    .line 118
    iget-object v1, v1, Lcoil3/request/Options;->extras:Lcoil3/Extras;

    .line 119
    .line 120
    iget-object p0, p0, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 121
    .line 122
    invoke-direct {v0, p0, v3, v4, v1}, Lcoil3/network/NetworkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcoil3/network/NetworkHeaders;Lcoil3/Extras;)V

    .line 123
    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_5
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 127
    .line 128
    .line 129
    const/4 p0, 0x0

    .line 130
    return-object p0
.end method

.method public final toImageSource(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/decode/FileImageSource;
    .locals 3

    .line 81
    iget-object v0, p1, Lcoil3/disk/RealDiskCache$RealSnapshot;->snapshot:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 82
    iget-boolean v1, v0, Lcoil3/disk/DiskLruCache$Snapshot;->closed:Z

    if-nez v1, :cond_1

    .line 83
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$Snapshot;->entry:Lcoil3/disk/DiskLruCache$Entry;

    .line 84
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$Entry;->cleanFiles:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/Path;

    .line 86
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 88
    iget-object v2, v2, Lcoil3/request/Options;->diskCacheKey:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    :cond_0
    const/16 p0, 0x10

    .line 90
    invoke-static {v0, v1, v2, p1, p0}, Lkotlin/text/RegexKt;->ImageSource$default(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/RealDiskCache$RealSnapshot;I)Lcoil3/decode/FileImageSource;

    move-result-object p0

    return-object p0

    .line 91
    :cond_1
    const-string p0, "snapshot is closed"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final toImageSource(Lcoil3/network/SourceResponseBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcoil3/network/NetworkFetcher$toImageSource$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcoil3/network/NetworkFetcher$toImageSource$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/network/NetworkFetcher$toImageSource$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcoil3/network/NetworkFetcher$toImageSource$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->L$0:Lokio/Buffer;

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Lokio/Buffer;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->L$0:Lokio/Buffer;

    .line 58
    .line 59
    iput v3, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->label:I

    .line 60
    .line 61
    iget-object p1, p1, Lcoil3/network/SourceResponseBody;->source:Lokio/BufferedSource;

    .line 62
    .line 63
    invoke-interface {p1, p2}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 64
    .line 65
    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    if-ne p1, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    move-object p1, p2

    .line 72
    :goto_1
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p1, p0}, Lkotlin/text/RegexKt;->ImageSource$default(Lokio/BufferedSource;Lokio/FileSystem;)Lcoil3/decode/SourceImageSource;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public final toNetworkResponseOrNull(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/network/NetworkResponse;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iget-object p1, p1, Lcoil3/disk/RealDiskCache$RealSnapshot;->snapshot:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 7
    .line 8
    iget-boolean v1, p1, Lcoil3/disk/DiskLruCache$Snapshot;->closed:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lcoil3/disk/DiskLruCache$Snapshot;->entry:Lcoil3/disk/DiskLruCache$Entry;

    .line 13
    .line 14
    iget-object p1, p1, Lcoil3/disk/DiskLruCache$Entry;->cleanFiles:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lokio/Path;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lokio/Okio__OkioKt;->buffer(Lokio/Source;)Lokio/RealBufferedSource;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    invoke-static {p0}, Lkotlin/uuid/UuidKt;->readFrom(Lokio/RealBufferedSource;)Lcoil3/network/NetworkResponse;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :try_start_2
    invoke-virtual {p0}, Lokio/RealBufferedSource;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    move-object p0, v0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    :try_start_3
    invoke-virtual {p0}, Lokio/RealBufferedSource;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_2
    move-exception p0

    .line 48
    :try_start_4
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    move-object p0, p1

    .line 52
    move-object p1, v0

    .line 53
    :goto_1
    if-nez p0, :cond_0

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_0
    throw p0

    .line 57
    :cond_1
    const-string p0, "snapshot is closed"

    .line 58
    .line 59
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 65
    :catch_0
    return-object v0
.end method

.method public final writeToDiskCache(Lcoil3/disk/RealDiskCache$RealSnapshot;Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkResponse;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    instance-of v5, v4, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    move-object v5, v4

    .line 16
    check-cast v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    .line 17
    .line 18
    iget v6, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->label:I

    .line 19
    .line 20
    const/high16 v7, -0x80000000

    .line 21
    .line 22
    and-int v8, v6, v7

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v6, v7

    .line 27
    iput v6, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->label:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    .line 31
    .line 32
    invoke-direct {v5, v1, v4}, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v4, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    iget v7, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->label:I

    .line 40
    .line 41
    const/4 v8, 0x2

    .line 42
    const/4 v9, 0x1

    .line 43
    const/4 v10, 0x0

    .line 44
    const/4 v11, 0x0

    .line 45
    if-eqz v7, :cond_3

    .line 46
    .line 47
    if-eq v7, v9, :cond_2

    .line 48
    .line 49
    if-ne v7, v8, :cond_1

    .line 50
    .line 51
    iget-object v1, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$2:Lcoil3/memory/MemoryCacheService;

    .line 52
    .line 53
    iget-object v2, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$1:Lcoil3/network/NetworkResponse;

    .line 54
    .line 55
    iget-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v3, v0

    .line 58
    check-cast v3, Lcoil3/network/NetworkResponse;

    .line 59
    .line 60
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto/16 :goto_10

    .line 64
    .line 65
    :catch_0
    move-exception v0

    .line 66
    goto/16 :goto_11

    .line 67
    .line 68
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v11

    .line 74
    :cond_2
    iget-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$1:Lcoil3/network/NetworkResponse;

    .line 75
    .line 76
    iget-object v2, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 79
    .line 80
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object v3, v0

    .line 84
    move-object v0, v2

    .line 85
    move-object/from16 p4, v11

    .line 86
    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, v1, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 93
    .line 94
    iget-object v4, v4, Lcoil3/request/Options;->diskCachePolicy:Lcoil3/request/CachePolicy;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcoil3/request/CachePolicy;->getWriteEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_5

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    :try_start_1
    invoke-static {v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    .line 107
    :catch_1
    :cond_4
    move-object/from16 p4, v11

    .line 108
    .line 109
    goto/16 :goto_8

    .line 110
    .line 111
    :catch_2
    move-exception v0

    .line 112
    throw v0

    .line 113
    :cond_5
    iget-object v4, v1, Lcoil3/network/NetworkFetcher;->cacheStrategy:Lkotlin/SynchronizedLazyImpl;

    .line 114
    .line 115
    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lcoil3/network/CacheStrategy;

    .line 120
    .line 121
    iput-object v0, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object v3, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$1:Lcoil3/network/NetworkResponse;

    .line 124
    .line 125
    iput v9, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->label:I

    .line 126
    .line 127
    check-cast v4, Lcoil3/network/internal/DefaultCacheStrategy;

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget v4, v3, Lcoil3/network/NetworkResponse;->code:I

    .line 133
    .line 134
    const/16 v7, 0x130

    .line 135
    .line 136
    if-ne v4, v7, :cond_8

    .line 137
    .line 138
    if-eqz v2, :cond_8

    .line 139
    .line 140
    iget-object v2, v2, Lcoil3/network/NetworkResponse;->headers:Lcoil3/network/NetworkHeaders;

    .line 141
    .line 142
    iget-object v4, v3, Lcoil3/network/NetworkResponse;->headers:Lcoil3/network/NetworkHeaders;

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget-object v2, v2, Lcoil3/network/NetworkHeaders;->data:Ljava/util/Map;

    .line 148
    .line 149
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 150
    .line 151
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Ljava/lang/Iterable;

    .line 159
    .line 160
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-eqz v12, :cond_6

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    check-cast v12, Ljava/util/Map$Entry;

    .line 175
    .line 176
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    check-cast v12, Ljava/util/Collection;

    .line 185
    .line 186
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_6
    iget-object v2, v4, Lcoil3/network/NetworkHeaders;->data:Ljava/util/Map;

    .line 195
    .line 196
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_7

    .line 209
    .line 210
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    check-cast v4, Ljava/util/Map$Entry;

    .line 215
    .line 216
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    check-cast v12, Ljava/lang/String;

    .line 221
    .line 222
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Ljava/util/List;

    .line 227
    .line 228
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 229
    .line 230
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-interface {v7, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_7
    new-instance v2, Lcoil3/network/NetworkHeaders;

    .line 246
    .line 247
    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-direct {v2, v4}, Lcoil3/network/NetworkHeaders;-><init>(Ljava/util/Map;)V

    .line 252
    .line 253
    .line 254
    new-instance v4, Lcoil3/network/CacheStrategy$WriteResult;

    .line 255
    .line 256
    iget v14, v3, Lcoil3/network/NetworkResponse;->code:I

    .line 257
    .line 258
    iget-wide v12, v3, Lcoil3/network/NetworkResponse;->requestMillis:J

    .line 259
    .line 260
    move-object/from16 p4, v11

    .line 261
    .line 262
    move-wide v15, v12

    .line 263
    iget-wide v11, v3, Lcoil3/network/NetworkResponse;->responseMillis:J

    .line 264
    .line 265
    iget-object v7, v3, Lcoil3/network/NetworkResponse;->delegate:Ljava/lang/Object;

    .line 266
    .line 267
    new-instance v13, Lcoil3/network/NetworkResponse;

    .line 268
    .line 269
    const/16 v20, 0x0

    .line 270
    .line 271
    move-object/from16 v19, v2

    .line 272
    .line 273
    move-object/from16 v21, v7

    .line 274
    .line 275
    move-wide/from16 v17, v11

    .line 276
    .line 277
    invoke-direct/range {v13 .. v21}, Lcoil3/network/NetworkResponse;-><init>(IJJLcoil3/network/NetworkHeaders;Lcoil3/network/SourceResponseBody;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-direct {v4, v13}, Lcoil3/network/CacheStrategy$WriteResult;-><init>(Lcoil3/network/NetworkResponse;)V

    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_8
    move-object/from16 p4, v11

    .line 285
    .line 286
    const/16 v2, 0xc8

    .line 287
    .line 288
    if-gt v2, v4, :cond_9

    .line 289
    .line 290
    const/16 v2, 0x12c

    .line 291
    .line 292
    if-ge v4, v2, :cond_9

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_9
    sget-object v2, Lcoil3/network/internal/DefaultCacheStrategy;->CACHEABLE_STATUS_CODES:Ljava/util/Set;

    .line 296
    .line 297
    new-instance v7, Ljava/lang/Integer;

    .line 298
    .line 299
    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 300
    .line 301
    .line 302
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_a

    .line 307
    .line 308
    :goto_3
    new-instance v2, Lcoil3/network/CacheStrategy$WriteResult;

    .line 309
    .line 310
    invoke-direct {v2, v3}, Lcoil3/network/CacheStrategy$WriteResult;-><init>(Lcoil3/network/NetworkResponse;)V

    .line 311
    .line 312
    .line 313
    :goto_4
    move-object v4, v2

    .line 314
    goto :goto_5

    .line 315
    :cond_a
    sget-object v2, Lcoil3/network/CacheStrategy$WriteResult;->DISABLED:Lcoil3/network/CacheStrategy$WriteResult;

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :goto_5
    if-ne v4, v6, :cond_b

    .line 319
    .line 320
    goto/16 :goto_e

    .line 321
    .line 322
    :cond_b
    :goto_6
    check-cast v4, Lcoil3/network/CacheStrategy$WriteResult;

    .line 323
    .line 324
    iget-object v2, v4, Lcoil3/network/CacheStrategy$WriteResult;->response:Lcoil3/network/NetworkResponse;

    .line 325
    .line 326
    if-nez v2, :cond_c

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_c
    const/16 v4, 0xc

    .line 330
    .line 331
    if-eqz v0, :cond_d

    .line 332
    .line 333
    iget-object v0, v0, Lcoil3/disk/RealDiskCache$RealSnapshot;->snapshot:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 334
    .line 335
    iget-object v7, v0, Lcoil3/disk/DiskLruCache$Snapshot;->this$0:Lcoil3/disk/DiskLruCache;

    .line 336
    .line 337
    iget-object v11, v7, Lcoil3/disk/DiskLruCache;->lock:Ljava/lang/Object;

    .line 338
    .line 339
    monitor-enter v11

    .line 340
    :try_start_2
    invoke-virtual {v0}, Lcoil3/disk/DiskLruCache$Snapshot;->close()V

    .line 341
    .line 342
    .line 343
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$Snapshot;->entry:Lcoil3/disk/DiskLruCache$Entry;

    .line 344
    .line 345
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v7, v0}, Lcoil3/disk/DiskLruCache;->edit(Ljava/lang/String;)Landroidx/compose/runtime/Latch;

    .line 348
    .line 349
    .line 350
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    monitor-exit v11

    .line 352
    if-eqz v0, :cond_f

    .line 353
    .line 354
    new-instance v7, Lcoil3/memory/MemoryCacheService;

    .line 355
    .line 356
    invoke-direct {v7, v4, v0}, Lcoil3/memory/MemoryCacheService;-><init>(ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    goto :goto_7

    .line 360
    :catchall_0
    move-exception v0

    .line 361
    monitor-exit v11

    .line 362
    throw v0

    .line 363
    :cond_d
    iget-object v0, v1, Lcoil3/network/NetworkFetcher;->diskCache:Lkotlin/SynchronizedLazyImpl;

    .line 364
    .line 365
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 370
    .line 371
    if-eqz v0, :cond_f

    .line 372
    .line 373
    iget-object v7, v1, Lcoil3/network/NetworkFetcher;->options:Lcoil3/request/Options;

    .line 374
    .line 375
    iget-object v7, v7, Lcoil3/request/Options;->diskCacheKey:Ljava/lang/String;

    .line 376
    .line 377
    if-nez v7, :cond_e

    .line 378
    .line 379
    iget-object v7, v1, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 380
    .line 381
    :cond_e
    iget-object v0, v0, Lcoil3/disk/RealDiskCache;->cache:Lcoil3/disk/DiskLruCache;

    .line 382
    .line 383
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 384
    .line 385
    invoke-static {v7}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    const-string v11, "SHA-256"

    .line 390
    .line 391
    invoke-virtual {v7, v11}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    invoke-virtual {v7}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    invoke-virtual {v0, v7}, Lcoil3/disk/DiskLruCache;->edit(Ljava/lang/String;)Landroidx/compose/runtime/Latch;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    if-eqz v0, :cond_f

    .line 404
    .line 405
    new-instance v7, Lcoil3/memory/MemoryCacheService;

    .line 406
    .line 407
    invoke-direct {v7, v4, v0}, Lcoil3/memory/MemoryCacheService;-><init>(ILjava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_f
    move-object/from16 v7, p4

    .line 412
    .line 413
    :goto_7
    if-nez v7, :cond_10

    .line 414
    .line 415
    :goto_8
    return-object p4

    .line 416
    :cond_10
    :try_start_3
    invoke-virtual {v1}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    iget-object v4, v7, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v4, Landroidx/compose/runtime/Latch;

    .line 423
    .line 424
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/Latch;->file(I)Lokio/Path;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-virtual {v0, v4, v10}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v0}, Lokio/Okio__OkioKt;->buffer(Lokio/Sink;)Lokio/RealBufferedSink;

    .line 433
    .line 434
    .line 435
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 436
    :try_start_4
    invoke-static {v2, v4}, Lkotlin/uuid/UuidKt;->writeTo(Lcoil3/network/NetworkResponse;Lokio/RealBufferedSink;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 437
    .line 438
    .line 439
    :try_start_5
    invoke-virtual {v4}, Lokio/RealBufferedSink;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 440
    .line 441
    .line 442
    move-object/from16 v0, p4

    .line 443
    .line 444
    goto :goto_a

    .line 445
    :catchall_1
    move-exception v0

    .line 446
    goto :goto_a

    .line 447
    :catchall_2
    move-exception v0

    .line 448
    move-object v11, v0

    .line 449
    :try_start_6
    invoke-virtual {v4}, Lokio/RealBufferedSink;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 450
    .line 451
    .line 452
    goto :goto_9

    .line 453
    :catchall_3
    move-exception v0

    .line 454
    :try_start_7
    invoke-static {v11, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 455
    .line 456
    .line 457
    :goto_9
    move-object v0, v11

    .line 458
    :goto_a
    if-nez v0, :cond_13

    .line 459
    .line 460
    iget-object v0, v2, Lcoil3/network/NetworkResponse;->body:Lcoil3/network/SourceResponseBody;

    .line 461
    .line 462
    if-eqz v0, :cond_12

    .line 463
    .line 464
    invoke-virtual {v1}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    iget-object v4, v7, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v4, Landroidx/compose/runtime/Latch;

    .line 471
    .line 472
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/Latch;->file(I)Lokio/Path;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    iput-object v3, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$0:Ljava/lang/Object;

    .line 477
    .line 478
    iput-object v2, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$1:Lcoil3/network/NetworkResponse;

    .line 479
    .line 480
    iput-object v7, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->L$2:Lcoil3/memory/MemoryCacheService;

    .line 481
    .line 482
    iput v8, v5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->label:I

    .line 483
    .line 484
    iget-object v0, v0, Lcoil3/network/SourceResponseBody;->source:Lokio/BufferedSource;

    .line 485
    .line 486
    invoke-virtual {v1, v4, v10}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-static {v1}, Lokio/Okio__OkioKt;->buffer(Lokio/Sink;)Lokio/RealBufferedSink;

    .line 491
    .line 492
    .line 493
    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 494
    :try_start_8
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 495
    .line 496
    .line 497
    move-result-wide v4

    .line 498
    new-instance v0, Ljava/lang/Long;

    .line 499
    .line 500
    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 501
    .line 502
    .line 503
    :try_start_9
    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 504
    .line 505
    .line 506
    move-object/from16 v11, p4

    .line 507
    .line 508
    goto :goto_d

    .line 509
    :catchall_4
    move-exception v0

    .line 510
    move-object v11, v0

    .line 511
    goto :goto_d

    .line 512
    :goto_b
    move-object v11, v0

    .line 513
    goto :goto_c

    .line 514
    :catchall_5
    move-exception v0

    .line 515
    goto :goto_b

    .line 516
    :goto_c
    :try_start_a
    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 517
    .line 518
    .line 519
    goto :goto_d

    .line 520
    :catchall_6
    move-exception v0

    .line 521
    :try_start_b
    invoke-static {v11, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 522
    .line 523
    .line 524
    :goto_d
    if-nez v11, :cond_11

    .line 525
    .line 526
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 527
    .line 528
    if-ne v0, v6, :cond_12

    .line 529
    .line 530
    :goto_e
    return-object v6

    .line 531
    :cond_11
    throw v11
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 532
    :goto_f
    move-object v1, v7

    .line 533
    goto :goto_11

    .line 534
    :catch_3
    move-exception v0

    .line 535
    goto :goto_f

    .line 536
    :cond_12
    move-object v1, v7

    .line 537
    :goto_10
    :try_start_c
    invoke-virtual {v1}, Lcoil3/memory/MemoryCacheService;->commitAndOpenSnapshot$1()Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 538
    .line 539
    .line 540
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 541
    return-object v0

    .line 542
    :cond_13
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 543
    :goto_11
    :try_start_e
    iget-object v1, v1, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 544
    .line 545
    check-cast v1, Landroidx/compose/runtime/Latch;

    .line 546
    .line 547
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/Latch;->complete(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 548
    .line 549
    .line 550
    :catch_4
    iget-object v1, v3, Lcoil3/network/NetworkResponse;->body:Lcoil3/network/SourceResponseBody;

    .line 551
    .line 552
    if-eqz v1, :cond_14

    .line 553
    .line 554
    :try_start_f
    invoke-static {v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 555
    .line 556
    .line 557
    goto :goto_12

    .line 558
    :catch_5
    move-exception v0

    .line 559
    throw v0

    .line 560
    :catch_6
    :cond_14
    :goto_12
    iget-object v1, v2, Lcoil3/network/NetworkResponse;->body:Lcoil3/network/SourceResponseBody;

    .line 561
    .line 562
    if-eqz v1, :cond_15

    .line 563
    .line 564
    :try_start_10
    invoke-static {v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 565
    .line 566
    .line 567
    goto :goto_13

    .line 568
    :catch_7
    move-exception v0

    .line 569
    throw v0

    .line 570
    :catch_8
    :cond_15
    :goto_13
    throw v0
.end method
