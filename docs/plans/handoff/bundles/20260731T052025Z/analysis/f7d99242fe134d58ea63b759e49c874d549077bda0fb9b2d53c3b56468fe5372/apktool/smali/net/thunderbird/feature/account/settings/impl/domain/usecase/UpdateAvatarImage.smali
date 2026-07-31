.class public final Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mimeTypeResolver:Lnet/thunderbird/core/file/AndroidMimeTypeResolver;

.field public final repository:Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;Lnet/thunderbird/core/file/AndroidMimeTypeResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;->repository:Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;->mimeTypeResolver:Lnet/thunderbird/core/file/AndroidMimeTypeResolver;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Lnet/thunderbird/feature/account/AccountId;Lcom/eygraber/uri/uris/StringUri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage$invoke$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage$invoke$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage$invoke$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p3, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;->mimeTypeResolver:Lnet/thunderbird/core/file/AndroidMimeTypeResolver;

    .line 49
    .line 50
    invoke-virtual {p3, p2}, Lnet/thunderbird/core/file/AndroidMimeTypeResolver;->getMimeType(Lcom/eygraber/uri/Uri;)Lnet/thunderbird/core/file/MimeType;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    if-eqz p3, :cond_5

    .line 55
    .line 56
    sget-object v1, Lnet/thunderbird/core/file/MimeType;->JPEG:Lnet/thunderbird/core/file/MimeType;

    .line 57
    .line 58
    if-eq p3, v1, :cond_3

    .line 59
    .line 60
    sget-object v1, Lnet/thunderbird/core/file/MimeType;->PNG:Lnet/thunderbird/core/file/MimeType;

    .line 61
    .line 62
    if-eq p3, v1, :cond_3

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    :try_start_1
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage;->repository:Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;

    .line 66
    .line 67
    iput v3, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateAvatarImage$invoke$1;->label:I

    .line 68
    .line 69
    iget-object p0, p0, Lnet/thunderbird/feature/account/avatar/data/DefaultAvatarImageRepository;->localDataSource:Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;

    .line 70
    .line 71
    invoke-virtual {p0, p1, p2, v0}, Lnet/thunderbird/feature/account/avatar/data/datasource/LocalAvatarImageDataSource;->update(Lnet/thunderbird/feature/account/AccountId;Lcom/eygraber/uri/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;

    .line 72
    .line 73
    .line 74
    move-result-object p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 76
    .line 77
    if-ne p3, p0, :cond_4

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_4
    :goto_1
    :try_start_2
    check-cast p3, Lcom/eygraber/uri/Uri;

    .line 81
    .line 82
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 83
    .line 84
    new-instance p1, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p1, p2}, Lnet/thunderbird/feature/account/avatar/Avatar$Image;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 99
    .line 100
    new-instance p2, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;

    .line 101
    .line 102
    const-string p3, "Permission denied while storing avatar image."

    .line 103
    .line 104
    invoke-direct {p2, p3}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, p2, p0}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move-exception p0

    .line 112
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 113
    .line 114
    new-instance p2, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;

    .line 115
    .line 116
    const-string p3, "Failed to store avatar image"

    .line 117
    .line 118
    invoke-direct {p2, p3}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, p2, p0}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    return-object p1

    .line 125
    :cond_5
    :goto_3
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 126
    .line 127
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;

    .line 128
    .line 129
    if-nez p3, :cond_6

    .line 130
    .line 131
    const-string p3, "unknown"

    .line 132
    .line 133
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v0, "Only JPEG and PNG images are supported. Found: "

    .line 136
    .line 137
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-direct {p1, p2}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, p1, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return-object p0
.end method
