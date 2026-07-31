.class public final Lcom/jcraft/jzlib/Adler32;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/viewmodel/CreationExtras$Key;
.implements Landroidx/preference/Preference$SummaryProvider;
.implements Landroidx/room/migration/AutoMigrationSpec;
.implements Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;
.implements Lcom/bumptech/glide/manager/FrameWaiter;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;
.implements Lcom/fsck/k9/mail/K9MailLib$DebugStatus;
.implements Lorg/slf4j/ILoggerFactory;


# static fields
.field public static instance:Lcom/jcraft/jzlib/Adler32;

.field public static sSimpleSummaryProvider:Lcom/jcraft/jzlib/Adler32;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jcraft/jzlib/Adler32;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/collection/internal/Lock;)V
    .locals 0

    const/16 p1, 0xb

    iput p1, p0, Lcom/jcraft/jzlib/Adler32;->$r8$classId:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/jcraft/jzlib/Adler32;->$r8$classId:I

    .line 3
    .line 4
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 5
    .line 6
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p1, p1, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->registrar:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 19
    .line 20
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedLazily;

    .line 28
    .line 29
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 30
    .line 31
    invoke-static {v0, p0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 14

    .line 1
    sget-object v0, Lokio/-Base64;->BASE64:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    const/16 v1, 0x9

    .line 8
    .line 9
    const/16 v2, 0x20

    .line 10
    .line 11
    const/16 v3, 0xd

    .line 12
    .line 13
    const/16 v4, 0xa

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    add-int/lit8 v5, v0, -0x1

    .line 18
    .line 19
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/16 v6, 0x3d

    .line 24
    .line 25
    if-eq v5, v6, :cond_0

    .line 26
    .line 27
    if-eq v5, v4, :cond_0

    .line 28
    .line 29
    if-eq v5, v3, :cond_0

    .line 30
    .line 31
    if-eq v5, v2, :cond_0

    .line 32
    .line 33
    if-eq v5, v1, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    int-to-long v5, v0

    .line 40
    const-wide/16 v7, 0x6

    .line 41
    .line 42
    mul-long/2addr v5, v7

    .line 43
    const-wide/16 v7, 0x8

    .line 44
    .line 45
    div-long/2addr v5, v7

    .line 46
    long-to-int v5, v5

    .line 47
    new-array v6, v5, [B

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    move v8, v7

    .line 51
    move v9, v8

    .line 52
    move v10, v9

    .line 53
    :goto_2
    const/4 v11, 0x0

    .line 54
    if-ge v7, v0, :cond_b

    .line 55
    .line 56
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    const/16 v13, 0x41

    .line 61
    .line 62
    if-gt v13, v12, :cond_2

    .line 63
    .line 64
    const/16 v13, 0x5b

    .line 65
    .line 66
    if-ge v12, v13, :cond_2

    .line 67
    .line 68
    add-int/lit8 v12, v12, -0x41

    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_2
    const/16 v13, 0x61

    .line 72
    .line 73
    if-gt v13, v12, :cond_3

    .line 74
    .line 75
    const/16 v13, 0x7b

    .line 76
    .line 77
    if-ge v12, v13, :cond_3

    .line 78
    .line 79
    add-int/lit8 v12, v12, -0x47

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_3
    const/16 v13, 0x30

    .line 83
    .line 84
    if-gt v13, v12, :cond_4

    .line 85
    .line 86
    const/16 v13, 0x3a

    .line 87
    .line 88
    if-ge v12, v13, :cond_4

    .line 89
    .line 90
    add-int/lit8 v12, v12, 0x4

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_4
    const/16 v13, 0x2b

    .line 94
    .line 95
    if-eq v12, v13, :cond_9

    .line 96
    .line 97
    const/16 v13, 0x2d

    .line 98
    .line 99
    if-ne v12, v13, :cond_5

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_5
    const/16 v13, 0x2f

    .line 103
    .line 104
    if-eq v12, v13, :cond_8

    .line 105
    .line 106
    const/16 v13, 0x5f

    .line 107
    .line 108
    if-ne v12, v13, :cond_6

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    if-eq v12, v4, :cond_a

    .line 112
    .line 113
    if-eq v12, v3, :cond_a

    .line 114
    .line 115
    if-eq v12, v2, :cond_a

    .line 116
    .line 117
    if-ne v12, v1, :cond_7

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_7
    move-object v6, v11

    .line 121
    goto :goto_8

    .line 122
    :cond_8
    :goto_3
    const/16 v12, 0x3f

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_9
    :goto_4
    const/16 v12, 0x3e

    .line 126
    .line 127
    :goto_5
    shl-int/lit8 v9, v9, 0x6

    .line 128
    .line 129
    or-int/2addr v9, v12

    .line 130
    add-int/lit8 v8, v8, 0x1

    .line 131
    .line 132
    rem-int/lit8 v11, v8, 0x4

    .line 133
    .line 134
    if-nez v11, :cond_a

    .line 135
    .line 136
    add-int/lit8 v11, v10, 0x1

    .line 137
    .line 138
    shr-int/lit8 v12, v9, 0x10

    .line 139
    .line 140
    int-to-byte v12, v12

    .line 141
    aput-byte v12, v6, v10

    .line 142
    .line 143
    add-int/lit8 v12, v10, 0x2

    .line 144
    .line 145
    shr-int/lit8 v13, v9, 0x8

    .line 146
    .line 147
    int-to-byte v13, v13

    .line 148
    aput-byte v13, v6, v11

    .line 149
    .line 150
    add-int/lit8 v10, v10, 0x3

    .line 151
    .line 152
    int-to-byte v11, v9

    .line 153
    aput-byte v11, v6, v12

    .line 154
    .line 155
    :cond_a
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_b
    rem-int/lit8 v8, v8, 0x4

    .line 159
    .line 160
    const/4 p0, 0x1

    .line 161
    if-eq v8, p0, :cond_7

    .line 162
    .line 163
    const/4 p0, 0x2

    .line 164
    if-eq v8, p0, :cond_d

    .line 165
    .line 166
    const/4 p0, 0x3

    .line 167
    if-eq v8, p0, :cond_c

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_c
    shl-int/lit8 p0, v9, 0x6

    .line 171
    .line 172
    add-int/lit8 v0, v10, 0x1

    .line 173
    .line 174
    shr-int/lit8 v1, p0, 0x10

    .line 175
    .line 176
    int-to-byte v1, v1

    .line 177
    aput-byte v1, v6, v10

    .line 178
    .line 179
    add-int/lit8 v10, v10, 0x2

    .line 180
    .line 181
    shr-int/lit8 p0, p0, 0x8

    .line 182
    .line 183
    int-to-byte p0, p0

    .line 184
    aput-byte p0, v6, v0

    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_d
    shl-int/lit8 p0, v9, 0xc

    .line 188
    .line 189
    add-int/lit8 v0, v10, 0x1

    .line 190
    .line 191
    shr-int/lit8 p0, p0, 0x10

    .line 192
    .line 193
    int-to-byte p0, p0

    .line 194
    aput-byte p0, v6, v10

    .line 195
    .line 196
    move v10, v0

    .line 197
    :goto_7
    if-ne v10, v5, :cond_e

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_e
    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    :goto_8
    if-eqz v6, :cond_f

    .line 205
    .line 206
    new-instance p0, Lokio/ByteString;

    .line 207
    .line 208
    invoke-direct {p0, v6}, Lokio/ByteString;-><init>([B)V

    .line 209
    .line 210
    .line 211
    return-object p0

    .line 212
    :cond_f
    return-object v11
.end method

.method public static decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    new-array v1, v0, [B

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    mul-int/lit8 v3, v2, 0x2

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {v4}, Lokio/internal/ZipFilesKt;->access$decodeHexDigit(C)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    shl-int/lit8 v4, v4, 0x4

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Lokio/internal/ZipFilesKt;->access$decodeHexDigit(C)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-int/2addr v3, v4

    .line 43
    int-to-byte v3, v3

    .line 44
    aput-byte v3, v1, v2

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Lokio/ByteString;

    .line 50
    .line 51
    invoke-direct {p0, v1}, Lokio/ByteString;-><init>([B)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_1
    const-string v0, "Unexpected hex string: "

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0
.end method

.method public static deserialize(I)Lnet/thunderbird/feature/notification/VibratePattern;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Lnet/thunderbird/feature/notification/VibratePattern;->Pattern5:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string v0, "Unknown VibratePattern value: "

    .line 22
    .line 23
    invoke-static {v0, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lnet/thunderbird/feature/notification/VibratePattern;->Pattern4:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    sget-object p0, Lnet/thunderbird/feature/notification/VibratePattern;->Pattern3:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_3
    sget-object p0, Lnet/thunderbird/feature/notification/VibratePattern;->Pattern2:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_4
    sget-object p0, Lnet/thunderbird/feature/notification/VibratePattern;->Pattern1:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_5
    sget-object p0, Lnet/thunderbird/feature/notification/VibratePattern;->Default:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 41
    .line 42
    return-object p0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/ByteString;

    .line 5
    .line 6
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 16
    .line 17
    .line 18
    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 19
    .line 20
    return-object v0
.end method

.method public static execute(Ljava/lang/String;)Lnet/thunderbird/core/outcome/Outcome;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 12
    .line 13
    sget-object v0, Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidateServer$ValidateServerError$EmptyServer;->INSTANCE:Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidateServer$ValidateServerError$EmptyServer;

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-static {p0}, Lnet/thunderbird/core/common/net/HostNameUtils;->isLegalHostNameOrIP(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 31
    .line 32
    sget-object v0, Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidateServer$ValidateServerError$InvalidHostnameOrIpAddress;->INSTANCE:Lapp/k9mail/feature/account/server/settings/domain/usecase/ValidateServer$ValidateServerError$InvalidHostnameOrIpAddress;

    .line 33
    .line 34
    invoke-direct {p0, v0, v1}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public static getFeatureGroupUseCaseType(Landroidx/camera/core/UseCase;)Landroidx/camera/core/featuregroup/impl/UseCaseType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Landroidx/camera/core/Preview;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    instance-of v0, p0, Landroidx/camera/core/ImageCapture;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    instance-of v0, p0, Landroidx/camera/core/ImageAnalysis;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    invoke-static {p0}, Landroidx/sqlite/SQLite;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_3
    instance-of p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;

    .line 35
    .line 36
    if-eqz p0, :cond_4

    .line 37
    .line 38
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_4
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 42
    .line 43
    return-object p0
.end method

.method public static insertValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lkotlin/Pair;

    .line 8
    .line 9
    const-string v1, "primkey"

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lkotlin/Pair;

    .line 15
    .line 16
    const-string/jumbo v2, "value"

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    new-array v3, v2, [Lkotlin/Pair;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v0, v3, v4

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object v1, v3, v0

    .line 30
    .line 31
    invoke-static {v3}, Landroidx/room/util/SchemaInfoUtilKt;->contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, "preferences_storage"

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-virtual {p0, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-wide/16 v7, -0x1

    .line 43
    .line 44
    cmp-long p0, v5, v7

    .line 45
    .line 46
    if-nez p0, :cond_1

    .line 47
    .line 48
    new-array p0, v2, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object p1, p0, v4

    .line 51
    .line 52
    aput-object p2, p0, v0

    .line 53
    .line 54
    const-string p1, "Error writing key \'%s\', value = \'%s\'"

    .line 55
    .line 56
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public static of$default([B)Lokio/ByteString;
    .locals 8

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    array-length v1, p0

    .line 5
    int-to-long v2, v1

    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    int-to-long v6, v0

    .line 9
    invoke-static/range {v2 .. v7}, Lkotlinx/atomicfu/AtomicFU;->checkOffsetAndCount(JJJ)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lokio/ByteString;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p0, v2, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->copyOfRange([BII)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v1, p0}, Lokio/ByteString;-><init>([B)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public static readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "value"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    filled-new-array {p1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const-string v2, "preferences_storage"

    .line 18
    .line 19
    const-string v4, "primkey = ?"

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v1, p0

    .line 23
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-static {p0, v0}, Lorg/slf4j/helpers/Util;->getStringOrThrow(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "Loading key \'%s\', value = \'%s\'"

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    aput-object p1, v2, v3

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    aput-object v0, v2, p1

    .line 47
    .line 48
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object p1, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :catchall_1
    move-exception v0

    .line 62
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public static writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "primkey = ?"

    .line 8
    .line 9
    const-string v1, "preferences_storage"

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v2, Lkotlin/Pair;

    .line 22
    .line 23
    const-string v3, "primkey"

    .line 24
    .line 25
    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lkotlin/Pair;

    .line 29
    .line 30
    const-string/jumbo v4, "value"

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    new-array v5, v4, [Lkotlin/Pair;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    aput-object v2, v5, v6

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    aput-object v3, v5, v2

    .line 44
    .line 45
    invoke-static {v5}, Landroidx/room/util/SchemaInfoUtilKt;->contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    filled-new-array {p1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {p0, v1, v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const/4 v0, -0x1

    .line 58
    if-ne p0, v0, :cond_1

    .line 59
    .line 60
    new-array p0, v4, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object p1, p0, v6

    .line 63
    .line 64
    aput-object p2, p0, v2

    .line 65
    .line 66
    const-string p1, "Error writing key \'%s\', value = \'%s\'"

    .line 67
    .line 68
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public debugSensitive()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public enabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 0

    .line 1
    sget-object p0, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    .line 2
    .line 3
    return-object p0
.end method

.method public initializeExtractor(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    move-object v0, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    move-object v0, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "UPDATE WorkSpec SET `last_enqueue_time` = -1 WHERE `last_enqueue_time` = 0"

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget p0, p0, Lcom/jcraft/jzlib/Adler32;->$r8$classId:I

    .line 2
    .line 3
    const v0, 0x7f1204df

    .line 4
    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/takisoft/preferencex/TimePickerPreference;

    .line 10
    .line 11
    iget-object p0, p1, Lcom/takisoft/preferencex/TimePickerPreference;->time:Ljava/util/Date;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p1, p1, Lcom/takisoft/preferencex/TimePickerPreference;->time:Ljava/util/Date;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    return-object p0

    .line 33
    :pswitch_0
    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 34
    .line 35
    iget-object p0, p1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    iget-object p0, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object p0, p1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 51
    .line 52
    :goto_1
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public registerSelf(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public reset(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
