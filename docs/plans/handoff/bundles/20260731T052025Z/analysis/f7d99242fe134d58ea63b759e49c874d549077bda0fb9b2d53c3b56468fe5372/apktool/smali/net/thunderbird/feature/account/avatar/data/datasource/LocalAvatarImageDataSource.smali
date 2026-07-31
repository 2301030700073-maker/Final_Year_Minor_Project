.class public final Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final clock:Lkotlin/time/Clock;

.field public final directoryProvider:Lnet/thunderbird/core/file/AndroidDirectoryProvider;

.field public final fileManager:Lnet/thunderbird/core/file/DefaultFileManager;

.field public final mimeTypeResolver:Lnet/thunderbird/core/file/AndroidMimeTypeResolver;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/file/DefaultFileManager;Lnet/thunderbird/core/file/AndroidDirectoryProvider;Lnet/thunderbird/core/file/AndroidMimeTypeResolver;Lkotlin/time/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->fileManager:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->directoryProvider:Lnet/thunderbird/core/file/AndroidDirectoryProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->mimeTypeResolver:Lnet/thunderbird/core/file/AndroidMimeTypeResolver;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->clock:Lkotlin/time/Clock;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final delete(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p2, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;-><init>(Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->label:I

    .line 28
    .line 29
    iget-object v2, p0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->fileManager:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 37
    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    if-eq v1, v6, :cond_4

    .line 41
    .line 42
    if-eq v1, v5, :cond_3

    .line 43
    .line 44
    if-eq v1, v4, :cond_2

    .line 45
    .line 46
    if-ne v1, v3, :cond_1

    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v7

    .line 59
    :cond_2
    iget-object v2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$2:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 60
    .line 61
    iget-object p0, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$1:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_3
    iget-object p1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$1:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 71
    .line 72
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object p1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$2:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 77
    .line 78
    iget-object v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$1:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v6, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 81
    .line 82
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->clock:Lkotlin/time/Clock;

    .line 90
    .line 91
    invoke-interface {p2}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p2}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 96
    .line 97
    .line 98
    move-result-wide v9

    .line 99
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iput-object p1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 104
    .line 105
    iput-object v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$1:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$2:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 108
    .line 109
    iput v6, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->label:I

    .line 110
    .line 111
    const-string p2, "jpg"

    .line 112
    .line 113
    invoke-virtual {p0, p1, p2, v0}, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->getAvatarImageUri(Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    if-ne p2, v8, :cond_6

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    move-object v6, p1

    .line 121
    move-object p1, v2

    .line 122
    :goto_1
    check-cast p2, Lcom/eygraber/uri/Uri;

    .line 123
    .line 124
    invoke-interface {p2}, Lcom/eygraber/uri/Uri;->buildUpon()Lcom/eygraber/uri/Uri$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p2, v1}, Lcom/eygraber/uri/Uri$Builder;->appendQueryParameter$1(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/eygraber/uri/Uri$Builder;->build()Lcom/eygraber/uri/Uri;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    iput-object v6, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 136
    .line 137
    iput-object v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$1:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v7, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$2:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 140
    .line 141
    iput v5, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->label:I

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/file/DefaultFileManager;->delete(Lcom/eygraber/uri/Uri;)Lnet/thunderbird/core/outcome/Outcome;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-ne p1, v8, :cond_7

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_7
    move-object p1, v1

    .line 151
    move-object v1, v6

    .line 152
    :goto_2
    iput-object v7, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 153
    .line 154
    iput-object p1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$1:Ljava/lang/String;

    .line 155
    .line 156
    iput-object v2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$2:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 157
    .line 158
    iput v4, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->label:I

    .line 159
    .line 160
    const-string p2, "png"

    .line 161
    .line 162
    invoke-virtual {p0, v1, p2, v0}, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->getAvatarImageUri(Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    if-ne p2, v8, :cond_8

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_8
    move-object p0, p1

    .line 170
    :goto_3
    check-cast p2, Lcom/eygraber/uri/Uri;

    .line 171
    .line 172
    invoke-interface {p2}, Lcom/eygraber/uri/Uri;->buildUpon()Lcom/eygraber/uri/Uri$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1, p0}, Lcom/eygraber/uri/Uri$Builder;->appendQueryParameter$1(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/eygraber/uri/Uri$Builder;->build()Lcom/eygraber/uri/Uri;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    iput-object v7, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 184
    .line 185
    iput-object v7, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$1:Ljava/lang/String;

    .line 186
    .line 187
    iput-object v7, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->L$2:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 188
    .line 189
    iput v3, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$delete$1;->label:I

    .line 190
    .line 191
    invoke-virtual {v2, p0}, Lnet/thunderbird/core/file/DefaultFileManager;->delete(Lcom/eygraber/uri/Uri;)Lnet/thunderbird/core/outcome/Outcome;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    if-ne p0, v8, :cond_9

    .line 196
    .line 197
    :goto_4
    return-object v8

    .line 198
    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 199
    .line 200
    return-object p0
.end method

.method public final getAvatarImageUri(Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;
    .locals 4

    .line 1
    instance-of v0, p3, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;-><init>(Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->L$2:Lcom/eygraber/uri/Uri;

    .line 35
    .line 36
    iget-object p2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->L$1:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->directoryProvider:Lnet/thunderbird/core/file/AndroidDirectoryProvider;

    .line 55
    .line 56
    iget-object p0, p0, Lnet/thunderbird/core/file/AndroidDirectoryProvider;->context:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->toKmpUri(Landroid/net/Uri;)Lcom/eygraber/uri/uris/StringUri;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/StringUri;->buildUpon()Lcom/eygraber/uri/Uri$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p3, "account_avatars"

    .line 78
    .line 79
    invoke-virtual {p0, p3}, Lcom/eygraber/uri/Uri$Builder;->appendPath$1(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/eygraber/uri/Uri$Builder;->build()Lcom/eygraber/uri/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    iput-object p1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 87
    .line 88
    iput-object p2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->L$1:Ljava/lang/String;

    .line 89
    .line 90
    iput-object p0, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->L$2:Lcom/eygraber/uri/Uri;

    .line 91
    .line 92
    iput v2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$getAvatarImageUri$1;->label:I

    .line 93
    .line 94
    :try_start_0
    invoke-static {p0}, Lnet/thunderbird/core/file/AndroidFileSystemManager;->createDirectories(Lcom/eygraber/uri/Uri;)V

    .line 95
    .line 96
    .line 97
    new-instance p3, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 98
    .line 99
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 100
    .line 101
    invoke-direct {p3, v0}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception p3

    .line 106
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 107
    .line 108
    new-instance v1, Lnet/thunderbird/core/file/FileOperationError$Unavailable;

    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-nez v2, :cond_3

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, "Unable to create directory: "

    .line 119
    .line 120
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :cond_3
    invoke-direct {v1, p0, v2}, Lnet/thunderbird/core/file/FileOperationError$Unavailable;-><init>(Lcom/eygraber/uri/Uri;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1, p3}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    move-object p3, v0

    .line 137
    :goto_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 138
    .line 139
    if-ne p3, v0, :cond_4

    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_4
    :goto_2
    invoke-interface {p0}, Lcom/eygraber/uri/Uri;->buildUpon()Lcom/eygraber/uri/Uri$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    new-instance p3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p1, "."

    .line 155
    .line 156
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Lcom/eygraber/uri/Uri$Builder;->appendPath$1(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/eygraber/uri/Uri$Builder;->build()Lcom/eygraber/uri/Uri;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0
.end method

.method public final update(Lnet/thunderbird/feature/account/AccountId;Lcom/eygraber/uri/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;
    .locals 7

    .line 1
    instance-of v0, p3, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;-><init>(Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    if-eq v1, v4, :cond_3

    .line 38
    .line 39
    if-eq v1, v3, :cond_2

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    iget-object p1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$4:Lcom/eygraber/uri/Uri;

    .line 44
    .line 45
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_5

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v5

    .line 55
    :cond_2
    iget-object p1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$1:Lcom/eygraber/uri/Uri;

    .line 56
    .line 57
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    iget-object p1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$3:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$1:Lcom/eygraber/uri/Uri;

    .line 64
    .line 65
    iget-object v1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 66
    .line 67
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object p3, p1

    .line 71
    move-object p1, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->mimeTypeResolver:Lnet/thunderbird/core/file/AndroidMimeTypeResolver;

    .line 77
    .line 78
    invoke-virtual {p3, p2}, Lnet/thunderbird/core/file/AndroidMimeTypeResolver;->getMimeType(Lcom/eygraber/uri/Uri;)Lnet/thunderbird/core/file/MimeType;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    sget-object v1, Lnet/thunderbird/core/file/MimeType;->PNG:Lnet/thunderbird/core/file/MimeType;

    .line 83
    .line 84
    if-ne p3, v1, :cond_5

    .line 85
    .line 86
    const-string p3, "png"

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    const-string p3, "jpg"

    .line 90
    .line 91
    :goto_1
    iput-object p1, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 92
    .line 93
    iput-object p2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$1:Lcom/eygraber/uri/Uri;

    .line 94
    .line 95
    iput-object p3, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$3:Ljava/lang/String;

    .line 96
    .line 97
    iput v4, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->label:I

    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->delete(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-ne v1, v6, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    :goto_2
    iput-object v5, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 107
    .line 108
    iput-object p2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$1:Lcom/eygraber/uri/Uri;

    .line 109
    .line 110
    iput-object v5, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$3:Ljava/lang/String;

    .line 111
    .line 112
    iput v3, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->label:I

    .line 113
    .line 114
    invoke-virtual {p0, p1, p3, v0}, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->getAvatarImageUri(Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    if-ne p3, v6, :cond_7

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_7
    move-object p1, p2

    .line 122
    :goto_3
    move-object p2, p3

    .line 123
    check-cast p2, Lcom/eygraber/uri/Uri;

    .line 124
    .line 125
    iput-object v5, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 126
    .line 127
    iput-object v5, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$1:Lcom/eygraber/uri/Uri;

    .line 128
    .line 129
    iput-object v5, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$3:Ljava/lang/String;

    .line 130
    .line 131
    iput-object p2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->L$4:Lcom/eygraber/uri/Uri;

    .line 132
    .line 133
    iput v2, v0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource$update$1;->label:I

    .line 134
    .line 135
    iget-object p3, p0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->fileManager:Lnet/thunderbird/core/file/DefaultFileManager;

    .line 136
    .line 137
    invoke-virtual {p3, p1, p2}, Lnet/thunderbird/core/file/DefaultFileManager;->copy(Lcom/eygraber/uri/Uri;Lcom/eygraber/uri/Uri;)Lnet/thunderbird/core/outcome/Outcome;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-ne p1, v6, :cond_8

    .line 142
    .line 143
    :goto_4
    return-object v6

    .line 144
    :cond_8
    move-object p1, p2

    .line 145
    :goto_5
    invoke-interface {p1}, Lcom/eygraber/uri/Uri;->buildUpon()Lcom/eygraber/uri/Uri$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object p0, p0, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->clock:Lkotlin/time/Clock;

    .line 150
    .line 151
    invoke-interface {p0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p0}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 156
    .line 157
    .line 158
    move-result-wide p2

    .line 159
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p1, p0}, Lcom/eygraber/uri/Uri$Builder;->appendQueryParameter$1(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/eygraber/uri/Uri$Builder;->build()Lcom/eygraber/uri/Uri;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0
.end method
