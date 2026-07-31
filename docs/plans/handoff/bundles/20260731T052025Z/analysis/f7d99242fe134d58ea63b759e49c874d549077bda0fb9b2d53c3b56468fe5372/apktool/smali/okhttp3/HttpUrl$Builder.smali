.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public encodedFragment:Ljava/lang/Object;

.field public encodedPassword:Ljava/io/Serializable;

.field public final encodedPathSegments:Ljava/lang/Object;

.field public encodedQueryNamesAndValues:Ljava/io/Serializable;

.field public encodedUsername:Ljava/lang/Object;

.field public host:Ljava/lang/Object;

.field public port:I

.field public scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lokhttp3/HttpUrl$Builder;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 15
    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/fsck/k9/backend/api/SyncListener;ILcom/fsck/k9/backend/api/SyncConfig;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->$r8$classId:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    iput-object p2, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    iput-object p4, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    iput p5, p0, Lokhttp3/HttpUrl$Builder;->port:I

    iput-object p6, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    iput-object p7, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    iput-object p8, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;Lcom/fsck/k9/backend/api/SyncListener;ILjava/lang/Long;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->$r8$classId:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    iput-object p2, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    iput-object p3, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    iput-object p4, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    iput-object p5, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object p6, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    iput p7, p0, Lokhttp3/HttpUrl$Builder;->port:I

    iput-object p8, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/io/Serializable;

    return-void
.end method

.method public static toQueryNamesAndValues(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt v1, v2, :cond_3

    .line 12
    .line 13
    const/16 v2, 0x26

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-static {p0, v2, v1, v3}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, -0x1

    .line 21
    if-ne v2, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :cond_0
    const/16 v5, 0x3d

    .line 28
    .line 29
    invoke-static {p0, v5, v1, v3}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eq v3, v4, :cond_2

    .line 34
    .line 35
    if-le v3, v2, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return-object v0
.end method


# virtual methods
.method public addEncodedPathSegments(Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v3, v0

    .line 3
    :goto_0
    const-string v1, "/\\"

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {v3, v2, p1, v1}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(IILjava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v4, v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    move v5, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v5, v0

    .line 23
    :goto_1
    const/4 v6, 0x1

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    invoke-virtual/range {v1 .. v6}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v4, 0x1

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-le v3, p0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    move-object p0, v1

    .line 39
    move-object p1, v2

    .line 40
    goto :goto_0
.end method

.method public build()Lokhttp3/HttpUrl;
    .locals 12

    .line 1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz v1, :cond_6

    .line 5
    .line 6
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x7

    .line 12
    invoke-static {v3, v3, v4, v2}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v5, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 17
    .line 18
    check-cast v5, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v3, v3, v4, v5}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v6, :cond_5

    .line 29
    .line 30
    move v7, v3

    .line 31
    move-object v3, v5

    .line 32
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v8, Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v9, Ljava/util/ArrayList;

    .line 41
    .line 42
    const/16 v10, 0xa

    .line 43
    .line 44
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-eqz v11, :cond_0

    .line 60
    .line 61
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    check-cast v11, Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v7, v7, v4, v11}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/io/Serializable;

    .line 76
    .line 77
    check-cast v8, Ljava/util/ArrayList;

    .line 78
    .line 79
    if-eqz v8, :cond_2

    .line 80
    .line 81
    new-instance v9, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_3

    .line 99
    .line 100
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    check-cast v10, Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v10, :cond_1

    .line 107
    .line 108
    const/4 v11, 0x3

    .line 109
    invoke-static {v7, v7, v11, v10}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    goto :goto_2

    .line 114
    :cond_1
    move-object v10, v0

    .line 115
    :goto_2
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    move-object v9, v0

    .line 120
    :cond_3
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v8, Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v8, :cond_4

    .line 125
    .line 126
    invoke-static {v7, v7, v4, v8}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :cond_4
    move-object v7, v0

    .line 131
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    new-instance v0, Lokhttp3/HttpUrl;

    .line 136
    .line 137
    move-object v4, v6

    .line 138
    move-object v6, v9

    .line 139
    invoke-direct/range {v0 .. v8}, Lokhttp3/HttpUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_5
    const-string p0, "host == null"

    .line 144
    .line 145
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_6
    const-string p0, "scheme == null"

    .line 150
    .line 151
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v0
.end method

.method public effectivePort()I
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "http"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x50

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "https"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x1bb

    .line 32
    .line 33
    :cond_2
    :goto_0
    return v1
.end method

.method public host(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x7

    .line 6
    invoke-static {v0, v0, v1, p1}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lokhttp3/internal/_HostnamesCommonKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "unexpected host: "

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onFetchResponse(Lcom/fsck/k9/mail/store/imap/ImapMessage;Z)V
    .locals 10

    .line 1
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 13
    .line 14
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 17
    .line 18
    :try_start_0
    sget-object v7, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 19
    .line 20
    iget-object v8, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 21
    .line 22
    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    const-string v1, "Newly downloaded message %s:%s:%s was marked deleted on server, skipping"

    .line 29
    .line 30
    iget-object v7, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v7, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 33
    .line 34
    iget-object v7, v7, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v7, Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 39
    .line 40
    new-array v4, v4, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object v7, v4, v5

    .line 43
    .line 44
    aput-object v6, v4, v3

    .line 45
    .line 46
    aput-object p1, v4, v2

    .line 47
    .line 48
    invoke-static {v1, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    iget-object p1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lcom/fsck/k9/backend/api/SyncListener;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iget p0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 68
    .line 69
    invoke-interface {p1, p2, v6, p0}, Lcom/fsck/k9/backend/api/SyncListener;->syncProgress(ILjava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    iget-object p2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p2, Lcom/fsck/k9/backend/api/SyncConfig;

    .line 76
    .line 77
    iget p2, p2, Lcom/fsck/k9/backend/api/SyncConfig;->maximumAutoDownloadMessageSize:I

    .line 78
    .line 79
    if-lez p2, :cond_2

    .line 80
    .line 81
    iget v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 82
    .line 83
    int-to-long v2, v0

    .line 84
    int-to-long v6, p2

    .line 85
    cmp-long p2, v2, v6

    .line 86
    .line 87
    if-lez p2, :cond_2

    .line 88
    .line 89
    check-cast v1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/io/Serializable;

    .line 96
    .line 97
    check-cast p0, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_1
    const-string p1, "Error while storing downloaded message."

    .line 104
    .line 105
    new-array p2, v5, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    return-void

    .line 111
    :pswitch_0
    check-cast v1, Lcom/fsck/k9/backend/api/SyncListener;

    .line 112
    .line 113
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 116
    .line 117
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 118
    .line 119
    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    .line 121
    iget-object v7, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 122
    .line 123
    :try_start_1
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v8, Lcom/fsck/k9/mailstore/K9BackendFolder;

    .line 126
    .line 127
    sget-object v9, Lcom/fsck/k9/mail/MessageDownloadState;->FULL:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 128
    .line 129
    invoke-virtual {v8, p1, v9}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V

    .line 130
    .line 131
    .line 132
    if-eqz p2, :cond_3

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 135
    .line 136
    .line 137
    iget-object p2, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :catch_1
    move-exception p0

    .line 146
    goto :goto_4

    .line 147
    :cond_3
    :goto_3
    iget-object p1, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 148
    .line 149
    const-string p2, "About to notify listeners that we got a new small message %s:%s:%s"

    .line 150
    .line 151
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Ljava/lang/String;

    .line 154
    .line 155
    new-array v4, v4, [Ljava/lang/Object;

    .line 156
    .line 157
    aput-object v0, v4, v5

    .line 158
    .line 159
    aput-object v7, v4, v3

    .line 160
    .line 161
    aput-object p1, v4, v2

    .line 162
    .line 163
    invoke-static {p2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 171
    .line 172
    invoke-interface {v1, p2, v7, v0}, Lcom/fsck/k9/backend/api/SyncListener;->syncProgress(ILjava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/io/Serializable;

    .line 179
    .line 180
    check-cast p0, Ljava/lang/Long;

    .line 181
    .line 182
    invoke-static {p1, p0}, Lcom/fsck/k9/backend/imap/ImapSync;->isOldMessage(Ljava/lang/String;Ljava/lang/Long;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    invoke-interface {v1, v7, p1, p0}, Lcom/fsck/k9/backend/api/SyncListener;->syncNewMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :goto_4
    const-string p1, "SYNC: fetch small messages"

    .line 191
    .line 192
    new-array p2, v5, [Ljava/lang/Object;

    .line 193
    .line 194
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :goto_5
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v7, v2

    .line 10
    check-cast v7, Ljava/util/ArrayList;

    .line 11
    .line 12
    sget-object v2, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v8, 0x0

    .line 19
    invoke-static {v8, v4, v2}, Lokhttp3/internal/_UtilCommonKt;->indexOfFirstNonAsciiWhitespace(ILjava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v2, v4, v3}, Lokhttp3/internal/_UtilCommonKt;->indexOfLastNonAsciiWhitespace(ILjava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    sub-int v3, v9, v2

    .line 32
    .line 33
    const/16 v10, 0x5b

    .line 34
    .line 35
    const/16 v11, 0x3a

    .line 36
    .line 37
    const/4 v12, -0x1

    .line 38
    const/4 v5, 0x2

    .line 39
    if-ge v3, v5, :cond_1

    .line 40
    .line 41
    :cond_0
    :goto_0
    move v3, v12

    .line 42
    goto :goto_3

    .line 43
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/16 v6, 0x61

    .line 48
    .line 49
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    const/16 v14, 0x41

    .line 54
    .line 55
    if-ltz v13, :cond_2

    .line 56
    .line 57
    const/16 v13, 0x7a

    .line 58
    .line 59
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-lez v13, :cond_3

    .line 64
    .line 65
    :cond_2
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    if-ltz v13, :cond_0

    .line 70
    .line 71
    const/16 v13, 0x5a

    .line 72
    .line 73
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-lez v3, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 81
    .line 82
    :goto_1
    if-ge v3, v9, :cond_0

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    if-gt v6, v13, :cond_4

    .line 89
    .line 90
    const/16 v15, 0x7b

    .line 91
    .line 92
    if-ge v13, v15, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    if-gt v14, v13, :cond_5

    .line 96
    .line 97
    if-ge v13, v10, :cond_5

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    const/16 v15, 0x30

    .line 101
    .line 102
    if-gt v15, v13, :cond_6

    .line 103
    .line 104
    if-ge v13, v11, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const/16 v15, 0x2b

    .line 108
    .line 109
    if-eq v13, v15, :cond_8

    .line 110
    .line 111
    const/16 v15, 0x2d

    .line 112
    .line 113
    if-eq v13, v15, :cond_8

    .line 114
    .line 115
    const/16 v15, 0x2e

    .line 116
    .line 117
    if-ne v13, v15, :cond_7

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    if-ne v13, v11, :cond_0

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :goto_3
    const-string v13, "http"

    .line 127
    .line 128
    const-string v14, "https"

    .line 129
    .line 130
    const/4 v15, 0x1

    .line 131
    if-eq v3, v12, :cond_b

    .line 132
    .line 133
    const-string v6, "https:"

    .line 134
    .line 135
    invoke-static {v2, v4, v6, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_9

    .line 140
    .line 141
    iput-object v14, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 142
    .line 143
    add-int/lit8 v2, v2, 0x6

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_9
    const-string v6, "http:"

    .line 147
    .line 148
    invoke-static {v2, v4, v6, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_a

    .line 153
    .line 154
    iput-object v13, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x5

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 160
    .line 161
    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    .line 168
    .line 169
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const/16 v1, 0x27

    .line 176
    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :cond_b
    if-eqz v1, :cond_2a

    .line 189
    .line 190
    iget-object v3, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 191
    .line 192
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 193
    .line 194
    :goto_4
    move v3, v2

    .line 195
    move v6, v8

    .line 196
    :goto_5
    const/16 v8, 0x5c

    .line 197
    .line 198
    move/from16 v16, v15

    .line 199
    .line 200
    const/16 v15, 0x2f

    .line 201
    .line 202
    if-ge v3, v9, :cond_d

    .line 203
    .line 204
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-eq v10, v15, :cond_c

    .line 209
    .line 210
    if-eq v10, v8, :cond_c

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 214
    .line 215
    add-int/lit8 v3, v3, 0x1

    .line 216
    .line 217
    move/from16 v15, v16

    .line 218
    .line 219
    const/16 v10, 0x5b

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_d
    :goto_6
    const/16 v10, 0x3f

    .line 223
    .line 224
    const/16 v3, 0x23

    .line 225
    .line 226
    if-ge v6, v5, :cond_11

    .line 227
    .line 228
    if-eqz v1, :cond_11

    .line 229
    .line 230
    iget-object v5, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v11, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-nez v5, :cond_e

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_e
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    .line 246
    .line 247
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 252
    .line 253
    iget-object v5, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 254
    .line 255
    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 256
    .line 257
    iget v5, v1, Lokhttp3/HttpUrl;->port:I

    .line 258
    .line 259
    iput v5, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 260
    .line 261
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/ArrayList;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 269
    .line 270
    .line 271
    if-eq v2, v9, :cond_f

    .line 272
    .line 273
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-ne v5, v3, :cond_21

    .line 278
    .line 279
    :cond_f
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v20

    .line 283
    if-eqz v20, :cond_10

    .line 284
    .line 285
    const/16 v22, 0x1

    .line 286
    .line 287
    const/16 v19, 0x53

    .line 288
    .line 289
    const/16 v17, 0x0

    .line 290
    .line 291
    const/16 v18, 0x0

    .line 292
    .line 293
    const-string v21, " \"\'<>#"

    .line 294
    .line 295
    invoke-static/range {v17 .. v22}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-static {v1}, Lokhttp3/HttpUrl$Builder;->toQueryNamesAndValues(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    goto :goto_7

    .line 304
    :cond_10
    const/4 v1, 0x0

    .line 305
    :goto_7
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/io/Serializable;

    .line 306
    .line 307
    goto/16 :goto_13

    .line 308
    .line 309
    :cond_11
    :goto_8
    add-int/2addr v2, v6

    .line 310
    move v1, v2

    .line 311
    const/4 v11, 0x0

    .line 312
    const/16 v19, 0x0

    .line 313
    .line 314
    :goto_9
    const-string v2, "@/\\?#"

    .line 315
    .line 316
    invoke-static {v1, v9, v4, v2}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(IILjava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eq v2, v9, :cond_12

    .line 321
    .line 322
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    goto :goto_a

    .line 327
    :cond_12
    move v5, v12

    .line 328
    :goto_a
    if-eq v5, v12, :cond_17

    .line 329
    .line 330
    if-eq v5, v3, :cond_17

    .line 331
    .line 332
    if-eq v5, v15, :cond_17

    .line 333
    .line 334
    if-eq v5, v8, :cond_17

    .line 335
    .line 336
    if-eq v5, v10, :cond_17

    .line 337
    .line 338
    const/16 v6, 0x40

    .line 339
    .line 340
    if-eq v5, v6, :cond_13

    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_13
    const-string v5, "%40"

    .line 344
    .line 345
    if-nez v11, :cond_16

    .line 346
    .line 347
    move v3, v2

    .line 348
    const/16 v6, 0x3a

    .line 349
    .line 350
    invoke-static {v4, v6, v1, v3}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    const/4 v6, 0x1

    .line 355
    move/from16 v21, v3

    .line 356
    .line 357
    const/16 v3, 0x70

    .line 358
    .line 359
    move-object/from16 v22, v5

    .line 360
    .line 361
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 362
    .line 363
    move/from16 v10, v21

    .line 364
    .line 365
    move-object/from16 v8, v22

    .line 366
    .line 367
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    if-eqz v19, :cond_14

    .line 372
    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v4, Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    :cond_14
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    .line 396
    .line 397
    if-eq v2, v10, :cond_15

    .line 398
    .line 399
    add-int/lit8 v1, v2, 0x1

    .line 400
    .line 401
    const/4 v6, 0x1

    .line 402
    const/16 v3, 0x70

    .line 403
    .line 404
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 405
    .line 406
    move-object/from16 v4, p2

    .line 407
    .line 408
    move v2, v10

    .line 409
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 414
    .line 415
    move/from16 v11, v16

    .line 416
    .line 417
    goto :goto_b

    .line 418
    :cond_15
    move v2, v10

    .line 419
    :goto_b
    move-object/from16 v4, p2

    .line 420
    .line 421
    move/from16 v19, v16

    .line 422
    .line 423
    goto :goto_c

    .line 424
    :cond_16
    move-object v8, v5

    .line 425
    new-instance v10, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 431
    .line 432
    check-cast v3, Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const/4 v6, 0x1

    .line 441
    const/16 v3, 0x70

    .line 442
    .line 443
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 444
    .line 445
    move-object/from16 v4, p2

    .line 446
    .line 447
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 459
    .line 460
    :goto_c
    add-int/lit8 v1, v2, 0x1

    .line 461
    .line 462
    const/16 v3, 0x23

    .line 463
    .line 464
    const/16 v8, 0x5c

    .line 465
    .line 466
    const/16 v10, 0x3f

    .line 467
    .line 468
    goto/16 :goto_9

    .line 469
    .line 470
    :cond_17
    move v8, v1

    .line 471
    move v1, v8

    .line 472
    :goto_d
    if-ge v1, v2, :cond_1b

    .line 473
    .line 474
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    const/16 v6, 0x3a

    .line 479
    .line 480
    if-eq v3, v6, :cond_1a

    .line 481
    .line 482
    const/16 v5, 0x5b

    .line 483
    .line 484
    if-eq v3, v5, :cond_18

    .line 485
    .line 486
    goto :goto_e

    .line 487
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 488
    .line 489
    if-ge v1, v2, :cond_19

    .line 490
    .line 491
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    const/16 v10, 0x5d

    .line 496
    .line 497
    if-ne v3, v10, :cond_18

    .line 498
    .line 499
    :cond_19
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 500
    .line 501
    goto :goto_d

    .line 502
    :cond_1a
    move v10, v1

    .line 503
    goto :goto_f

    .line 504
    :cond_1b
    move v10, v2

    .line 505
    :goto_f
    add-int/lit8 v1, v10, 0x1

    .line 506
    .line 507
    const/4 v3, 0x4

    .line 508
    const/16 v11, 0x22

    .line 509
    .line 510
    if-ge v1, v2, :cond_1e

    .line 511
    .line 512
    invoke-static {v8, v10, v3, v4}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    invoke-static {v3}, Lokhttp3/internal/_HostnamesCommonKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 521
    .line 522
    :try_start_0
    const-string v5, ""

    .line 523
    .line 524
    const/4 v6, 0x0

    .line 525
    const/16 v3, 0x78

    .line 526
    .line 527
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 532
    .line 533
    .line 534
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    move/from16 v5, v16

    .line 536
    .line 537
    if-gt v5, v3, :cond_1c

    .line 538
    .line 539
    const/high16 v5, 0x10000

    .line 540
    .line 541
    if-ge v3, v5, :cond_1c

    .line 542
    .line 543
    goto :goto_10

    .line 544
    :catch_0
    :cond_1c
    move v3, v12

    .line 545
    :goto_10
    iput v3, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 546
    .line 547
    if-eq v3, v12, :cond_1d

    .line 548
    .line 549
    goto :goto_12

    .line 550
    :cond_1d
    const-string v0, "Invalid URL port: \""

    .line 551
    .line 552
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    invoke-static {v11, v1, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(ILjava/lang/Object;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    return-void

    .line 560
    :cond_1e
    invoke-static {v8, v10, v3, v4}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-static {v1}, Lokhttp3/internal/_HostnamesCommonKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 569
    .line 570
    iget-object v1, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 571
    .line 572
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    if-eqz v3, :cond_1f

    .line 580
    .line 581
    const/16 v12, 0x50

    .line 582
    .line 583
    goto :goto_11

    .line 584
    :cond_1f
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    if-eqz v1, :cond_20

    .line 589
    .line 590
    const/16 v12, 0x1bb

    .line 591
    .line 592
    :cond_20
    :goto_11
    iput v12, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 593
    .line 594
    :goto_12
    iget-object v1, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v1, Ljava/lang/String;

    .line 597
    .line 598
    if-eqz v1, :cond_29

    .line 599
    .line 600
    :cond_21
    :goto_13
    const-string v1, "?#"

    .line 601
    .line 602
    invoke-static {v2, v9, v4, v1}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(IILjava/lang/String;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    move-result v6

    .line 606
    if-ne v2, v6, :cond_23

    .line 607
    .line 608
    :cond_22
    move-object v7, v0

    .line 609
    goto :goto_17

    .line 610
    :cond_23
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    const-string v3, ""

    .line 615
    .line 616
    if-eq v1, v15, :cond_24

    .line 617
    .line 618
    const/16 v5, 0x5c

    .line 619
    .line 620
    if-eq v1, v5, :cond_24

    .line 621
    .line 622
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    const/16 v16, 0x1

    .line 627
    .line 628
    add-int/lit8 v1, v1, -0x1

    .line 629
    .line 630
    invoke-virtual {v7, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    goto :goto_14

    .line 634
    :cond_24
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    add-int/lit8 v2, v2, 0x1

    .line 641
    .line 642
    :goto_14
    if-ge v2, v6, :cond_22

    .line 643
    .line 644
    const-string v1, "/\\"

    .line 645
    .line 646
    invoke-static {v2, v6, v4, v1}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(IILjava/lang/String;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-ge v3, v6, :cond_25

    .line 651
    .line 652
    const/4 v5, 0x1

    .line 653
    goto :goto_15

    .line 654
    :cond_25
    const/4 v5, 0x0

    .line 655
    :goto_15
    const/4 v1, 0x1

    .line 656
    move/from16 v23, v5

    .line 657
    .line 658
    move v5, v1

    .line 659
    move-object v1, v4

    .line 660
    move/from16 v4, v23

    .line 661
    .line 662
    invoke-virtual/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 663
    .line 664
    .line 665
    move-object v7, v0

    .line 666
    move v0, v4

    .line 667
    move-object v4, v1

    .line 668
    if-eqz v0, :cond_26

    .line 669
    .line 670
    add-int/lit8 v2, v3, 0x1

    .line 671
    .line 672
    :goto_16
    move-object v0, v7

    .line 673
    goto :goto_14

    .line 674
    :cond_26
    move v2, v3

    .line 675
    goto :goto_16

    .line 676
    :goto_17
    if-ge v6, v9, :cond_27

    .line 677
    .line 678
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    const/16 v1, 0x3f

    .line 683
    .line 684
    if-ne v0, v1, :cond_27

    .line 685
    .line 686
    const/16 v8, 0x23

    .line 687
    .line 688
    invoke-static {v4, v8, v6, v9}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    add-int/lit8 v0, v6, 0x1

    .line 693
    .line 694
    const/4 v5, 0x1

    .line 695
    const/16 v2, 0x50

    .line 696
    .line 697
    const-string v4, " \"\'<>#"

    .line 698
    .line 699
    move-object/from16 v3, p2

    .line 700
    .line 701
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    move-object v4, v3

    .line 706
    invoke-static {v0}, Lokhttp3/HttpUrl$Builder;->toQueryNamesAndValues(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    iput-object v0, v7, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/io/Serializable;

    .line 711
    .line 712
    move v6, v1

    .line 713
    goto :goto_18

    .line 714
    :cond_27
    const/16 v8, 0x23

    .line 715
    .line 716
    :goto_18
    if-ge v6, v9, :cond_28

    .line 717
    .line 718
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-ne v0, v8, :cond_28

    .line 723
    .line 724
    const/16 v16, 0x1

    .line 725
    .line 726
    add-int/lit8 v0, v6, 0x1

    .line 727
    .line 728
    const/4 v5, 0x1

    .line 729
    const/16 v2, 0x30

    .line 730
    .line 731
    const-string v4, ""

    .line 732
    .line 733
    move-object/from16 v3, p2

    .line 734
    .line 735
    move v1, v9

    .line 736
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    iput-object v0, v7, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    .line 741
    .line 742
    :cond_28
    return-void

    .line 743
    :cond_29
    const-string v0, "Invalid URL host: \""

    .line 744
    .line 745
    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    invoke-static {v11, v1, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(ILjava/lang/Object;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    return-void

    .line 753
    :cond_2a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    const/4 v1, 0x6

    .line 758
    if-le v0, v1, :cond_2b

    .line 759
    .line 760
    invoke-static {v4, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    const-string v1, "..."

    .line 765
    .line 766
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    goto :goto_19

    .line 771
    :cond_2b
    move-object v0, v4

    .line 772
    :goto_19
    const-string v1, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    .line 773
    .line 774
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    return-void
.end method

.method public push(Ljava/lang/String;IIZZ)V
    .locals 6

    .line 1
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string v4, " \"<>^`{}|/\\?#"

    .line 6
    .line 7
    const/16 v2, 0x70

    .line 8
    .line 9
    move-object v3, p1

    .line 10
    move v0, p2

    .line 11
    move v1, p3

    .line 12
    move v5, p5

    .line 13
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "."

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_5

    .line 24
    .line 25
    const-string p2, "%2e"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    const-string p2, ".."

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const-string p3, ""

    .line 41
    .line 42
    const/4 p5, 0x1

    .line 43
    if-nez p2, :cond_3

    .line 44
    .line 45
    const-string p2, "%2e."

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    const-string p2, ".%2e"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    const-string p2, "%2e%2e"

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    sub-int/2addr p2, p5

    .line 75
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Ljava/lang/CharSequence;

    .line 80
    .line 81
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-nez p2, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    sub-int/2addr p2, p5

    .line 92
    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :goto_0
    if-eqz p4, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    :goto_1
    invoke-static {p5, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_4

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    sub-int/2addr p1, p5

    .line 128
    invoke-virtual {p0, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_4
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_2
    return-void
.end method

.method public scheme(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "http"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "https"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string p0, "unexpected scheme: "

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "://"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v1, "//"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/16 v2, 0x3a

    .line 43
    .line 44
    if-lez v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 48
    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-lez v1, :cond_3

    .line 56
    .line 57
    :goto_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 65
    .line 66
    check-cast v1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-lez v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 78
    .line 79
    check-cast v1, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_2
    const/16 v1, 0x40

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    const/16 v1, 0x5b

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const/16 v1, 0x5d

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v1, Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_2
    iget v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 127
    .line 128
    const/4 v3, -0x1

    .line 129
    if-ne v1, v3, :cond_6

    .line 130
    .line 131
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    :cond_6
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v4, :cond_9

    .line 142
    .line 143
    const-string v5, "http"

    .line 144
    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_7

    .line 150
    .line 151
    const/16 v3, 0x50

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_7
    const-string v5, "https"

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_8

    .line 161
    .line 162
    const/16 v3, 0x1bb

    .line 163
    .line 164
    :cond_8
    :goto_3
    if-eq v1, v3, :cond_a

    .line 165
    .line 166
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    :cond_a
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    const/4 v3, 0x0

    .line 181
    move v4, v3

    .line 182
    :goto_4
    if-ge v4, v2, :cond_b

    .line 183
    .line 184
    const/16 v5, 0x2f

    .line 185
    .line 186
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    add-int/lit8 v4, v4, 0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_b
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/io/Serializable;

    .line 202
    .line 203
    check-cast v1, Ljava/util/ArrayList;

    .line 204
    .line 205
    if-eqz v1, :cond_10

    .line 206
    .line 207
    const/16 v1, 0x3f

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/io/Serializable;

    .line 213
    .line 214
    check-cast v1, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const/4 v3, 0x2

    .line 228
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    iget v3, v2, Lkotlin/ranges/IntProgression;->first:I

    .line 233
    .line 234
    iget v4, v2, Lkotlin/ranges/IntProgression;->last:I

    .line 235
    .line 236
    iget v2, v2, Lkotlin/ranges/IntProgression;->step:I

    .line 237
    .line 238
    if-lez v2, :cond_c

    .line 239
    .line 240
    if-le v3, v4, :cond_d

    .line 241
    .line 242
    :cond_c
    if-gez v2, :cond_10

    .line 243
    .line 244
    if-gt v4, v3, :cond_10

    .line 245
    .line 246
    :cond_d
    :goto_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    check-cast v5, Ljava/lang/String;

    .line 251
    .line 252
    add-int/lit8 v6, v3, 0x1

    .line 253
    .line 254
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    check-cast v6, Ljava/lang/String;

    .line 259
    .line 260
    if-lez v3, :cond_e

    .line 261
    .line 262
    const/16 v7, 0x26

    .line 263
    .line 264
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    :cond_e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    if-eqz v6, :cond_f

    .line 271
    .line 272
    const/16 v5, 0x3d

    .line 273
    .line 274
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    :cond_f
    if-eq v3, v4, :cond_10

    .line 281
    .line 282
    add-int/2addr v3, v2

    .line 283
    goto :goto_5

    .line 284
    :cond_10
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v1, Ljava/lang/String;

    .line 287
    .line 288
    if-eqz v1, :cond_11

    .line 289
    .line 290
    const/16 v1, 0x23

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast p0, Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    return-object p0

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
