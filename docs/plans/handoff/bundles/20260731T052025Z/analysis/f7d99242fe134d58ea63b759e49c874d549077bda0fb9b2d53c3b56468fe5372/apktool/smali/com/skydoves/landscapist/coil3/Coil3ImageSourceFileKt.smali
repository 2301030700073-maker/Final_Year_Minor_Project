.class public final Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final synthetic access$getFromDiskCacheOrDownload(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt;->getFromDiskCacheOrDownload(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$resolveUriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt;->resolveUriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final getFromDiskCacheOrDownload(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcoil3/ImageLoader;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->label:I

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
    iput v1, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$6:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lcoil3/request/ImageRequest;

    .line 38
    .line 39
    iget-object p0, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$5:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lcoil3/disk/DiskCache$Snapshot;

    .line 42
    .line 43
    iget-object p0, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$4:Ljava/lang/Object;

    .line 44
    .line 45
    move-object p2, p0

    .line 46
    check-cast p2, Ljava/lang/String;

    .line 47
    .line 48
    iget-object p0, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$3:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lcoil3/disk/DiskCache;

    .line 51
    .line 52
    iget-object p1, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$2:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Ljava/lang/String;

    .line 55
    .line 56
    iget-object p1, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lcoil3/ImageLoader;

    .line 59
    .line 60
    iget-object p1, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroid/content/Context;

    .line 63
    .line 64
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v3

    .line 74
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :try_start_1
    invoke-interface {p1}, Lcoil3/ImageLoader;->getDiskCache()Lcoil3/disk/DiskCache;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    if-eqz p3, :cond_3

    .line 82
    .line 83
    invoke-interface {p3, p2}, Lcoil3/disk/DiskCache;->openSnapshot(Ljava/lang/String;)Lcoil3/disk/DiskCache$Snapshot;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move-object v1, v3

    .line 89
    :goto_1
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-interface {v1}, Lcoil3/disk/DiskCache$Snapshot;->getData()Lokio/Path;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lokio/Path;->toFile()Ljava/io/File;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-interface {v1}, Lcoil3/disk/DiskCache$Snapshot;->close()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_4
    return-object v3

    .line 116
    :cond_5
    new-instance v1, Lcoil3/request/ImageRequest$Builder;

    .line 117
    .line 118
    invoke-direct {v1, p0}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p2}, Lcoil3/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil3/request/ImageRequest$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    sget-object v1, Lcoil3/request/CachePolicy;->ENABLED:Lcoil3/request/CachePolicy;

    .line 126
    .line 127
    invoke-virtual {p0, v1}, Lcoil3/request/ImageRequest$Builder;->diskCachePolicy(Lcoil3/request/CachePolicy;)Lcoil3/request/ImageRequest$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    iput-object v3, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$0:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object v3, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$1:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object v3, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$2:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object p3, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$3:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object p2, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$4:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v3, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$5:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object v3, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->L$6:Ljava/lang/Object;

    .line 148
    .line 149
    iput v2, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1;->label:I

    .line 150
    .line 151
    invoke-interface {p1, p0, v0}, Lcoil3/ImageLoader;->execute(Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 156
    .line 157
    if-ne p0, p1, :cond_6

    .line 158
    .line 159
    return-object p1

    .line 160
    :cond_6
    move-object p0, p3

    .line 161
    :goto_2
    if-eqz p0, :cond_7

    .line 162
    .line 163
    :try_start_2
    invoke-interface {p0, p2}, Lcoil3/disk/DiskCache;->openSnapshot(Ljava/lang/String;)Lcoil3/disk/DiskCache$Snapshot;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    move-object p0, v3

    .line 169
    :goto_3
    if-eqz p0, :cond_8

    .line 170
    .line 171
    invoke-interface {p0}, Lcoil3/disk/DiskCache$Snapshot;->getData()Lokio/Path;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p0}, Lcoil3/disk/DiskCache$Snapshot;->close()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-eqz p0, :cond_8

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 189
    .line 190
    .line 191
    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    if-eqz p0, :cond_8

    .line 193
    .line 194
    return-object p1

    .line 195
    :catch_0
    :cond_8
    return-object v3
.end method

.method public static final getImageSourceFile(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/Object;Lcom/skydoves/landscapist/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcoil3/ImageLoader;",
            "Ljava/lang/Object;",
            "Lcom/skydoves/landscapist/DataSource;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object p3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    new-instance v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p2, p0, p1, v1}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$getImageSourceFile$2;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcoil3/ImageLoader;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p3, v0, p4}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final rememberImageSourceFile(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/Object;Lcom/skydoves/landscapist/DataSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcoil3/ImageLoader;",
            "Ljava/lang/Object;",
            "Lcom/skydoves/landscapist/DataSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    or-int/2addr v0, v1

    .line 23
    and-int/lit16 v1, p5, 0x1c00

    .line 24
    .line 25
    xor-int/lit16 v1, v1, 0xc00

    .line 26
    .line 27
    const/16 v2, 0x800

    .line 28
    .line 29
    if-le v1, v2, :cond_1

    .line 30
    .line 31
    if-nez p3, :cond_0

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_0
    invoke-virtual {p4, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    :cond_1
    and-int/lit16 v1, p5, 0xc00

    .line 46
    .line 47
    if-ne v1, v2, :cond_3

    .line 48
    .line 49
    :cond_2
    const/4 v1, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/4 v1, 0x0

    .line 52
    :goto_1
    or-int/2addr v0, v1

    .line 53
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 60
    .line 61
    if-ne v1, v0, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    move-object p1, p2

    .line 65
    move-object p2, p3

    .line 66
    goto :goto_3

    .line 67
    :cond_5
    :goto_2
    new-instance v2, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    move-object v3, p0

    .line 71
    move-object v4, p1

    .line 72
    move-object v5, p2

    .line 73
    move-object v6, p3

    .line 74
    invoke-direct/range {v2 .. v7}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;-><init>(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/Object;Lcom/skydoves/landscapist/DataSource;Lkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    move-object p1, v5

    .line 78
    move-object p2, v6

    .line 79
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-object v1, v2

    .line 83
    :goto_3
    move-object p3, v1

    .line 84
    check-cast p3, Lkotlin/jvm/functions/Function2;

    .line 85
    .line 86
    shr-int/lit8 p0, p5, 0x3

    .line 87
    .line 88
    and-int/lit8 p5, p0, 0x70

    .line 89
    .line 90
    or-int/lit8 p5, p5, 0x6

    .line 91
    .line 92
    and-int/lit16 p0, p0, 0x380

    .line 93
    .line 94
    or-int/2addr p5, p0

    .line 95
    const/4 p0, 0x0

    .line 96
    invoke-static/range {p0 .. p5}, Landroidx/compose/runtime/Updater;->produceState(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method

.method private static final resolveUriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 9

    .line 1
    const-string v0, "_data"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const v4, 0x2ff57c

    .line 15
    .line 16
    .line 17
    if-eq v3, v4, :cond_4

    .line 18
    .line 19
    const v4, 0x38b73479

    .line 20
    .line 21
    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    const-string v3, "content"

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_1
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v4, p1

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    new-instance v0, Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 82
    .line 83
    .line 84
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    move-object p1, v0

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move-object v0, v2

    .line 92
    :goto_0
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    .line 94
    .line 95
    move-object v2, v0

    .line 96
    goto :goto_2

    .line 97
    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 103
    :catch_0
    :cond_3
    :goto_2
    return-object v2

    .line 104
    :cond_4
    move-object v4, p1

    .line 105
    const-string p0, "file"

    .line 106
    .line 107
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_5

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-eqz p0, :cond_6

    .line 119
    .line 120
    new-instance p1, Ljava/io/File;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-eqz p0, :cond_6

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_6

    .line 136
    .line 137
    return-object p1

    .line 138
    :cond_6
    :goto_3
    return-object v2
.end method
