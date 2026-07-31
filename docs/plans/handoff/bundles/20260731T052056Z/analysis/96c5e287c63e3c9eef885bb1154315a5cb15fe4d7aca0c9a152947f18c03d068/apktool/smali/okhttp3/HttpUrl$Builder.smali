.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public encodedFragment:Ljava/lang/Object;

.field public encodedPassword:Ljava/io/Serializable;

.field public encodedPathSegments:Ljava/lang/Object;

.field public encodedQueryNamesAndValues:Ljava/lang/Object;

.field public encodedUsername:Ljava/io/Serializable;

.field public host:Ljava/lang/Object;

.field public port:I

.field public scheme:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 12
    .line 13
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 17
    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroidx/room/Room;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->$r8$classId:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->initialize()V

    .line 35
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0, v0, p1}, Lokhttp3/HttpUrl$Builder;->addStateShapeAppearanceModel([ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public static isDotDot(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, ".."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "%2e."

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, ".%2e"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "%2e%2e"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    return p0
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
.method public addStateShapeAppearanceModel([ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 5

    .line 1
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    :cond_0
    iput-object p2, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 9
    .line 10
    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 11
    .line 12
    check-cast v1, [[I

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-lt v0, v2, :cond_2

    .line 16
    .line 17
    add-int/lit8 v2, v0, 0xa

    .line 18
    .line 19
    new-array v3, v2, [[I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 26
    .line 27
    new-array v1, v2, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 28
    .line 29
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 30
    .line 31
    check-cast v2, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 32
    .line 33
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 39
    .line 40
    check-cast v0, [[I

    .line 41
    .line 42
    iget v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 43
    .line 44
    aput-object p1, v0, v1

    .line 45
    .line 46
    iget-object p1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 47
    .line 48
    check-cast p1, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 49
    .line 50
    aput-object p2, p1, v1

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    iput v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 55
    .line 56
    return-void
.end method

.method public build()Lcom/google/android/material/shape/StateListShapeAppearanceModel;
    .locals 1

    .line 161
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 162
    invoke-direct {v0, p0}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;-><init>(Lokhttp3/HttpUrl$Builder;)V

    return-object v0
.end method

.method public build()Lokhttp3/HttpUrl;
    .locals 13

    .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v2, v0

    .line 4
    check-cast v2, Ljava/lang/String;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz v2, :cond_6

    .line 8
    .line 9
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x7

    .line 15
    invoke-static {v3, v3, v4, v1}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v5, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 20
    .line 21
    check-cast v5, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v3, v3, v4, v5}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v6, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v6, :cond_5

    .line 32
    .line 33
    move v7, v4

    .line 34
    move-object v4, v5

    .line 35
    move-object v5, v6

    .line 36
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v8, Ljava/util/ArrayList;

    .line 43
    .line 44
    move v9, v7

    .line 45
    new-instance v7, Ljava/util/ArrayList;

    .line 46
    .line 47
    const/16 v10, 0xa

    .line 48
    .line 49
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    if-eqz v11, :cond_0

    .line 65
    .line 66
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    check-cast v11, Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v3, v3, v9, v11}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v8, Ljava/util/ArrayList;

    .line 83
    .line 84
    if-eqz v8, :cond_3

    .line 85
    .line 86
    new-instance v11, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_2

    .line 104
    .line 105
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    check-cast v10, Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v10, :cond_1

    .line 112
    .line 113
    const/4 v12, 0x3

    .line 114
    invoke-static {v3, v3, v12, v10}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    goto :goto_2

    .line 119
    :cond_1
    move-object v10, v0

    .line 120
    :goto_2
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    move-object v8, v11

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    move-object v8, v0

    .line 127
    :goto_3
    iget-object v10, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v10, Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v10, :cond_4

    .line 132
    .line 133
    invoke-static {v3, v3, v9, v10}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :cond_4
    move-object v9, v0

    .line 138
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    move-object v3, v1

    .line 143
    new-instance v1, Lokhttp3/HttpUrl;

    .line 144
    .line 145
    invoke-direct/range {v1 .. v10}, Lokhttp3/HttpUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object v1

    .line 149
    :cond_5
    const-string p0, "host == null"

    .line 150
    .line 151
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_6
    const-string p0, "scheme == null"

    .line 156
    .line 157
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
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
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "http"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x50

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "https"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x1bb

    .line 34
    .line 35
    :cond_2
    :goto_0
    return v1
.end method

.method public initialize()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    new-array v1, v0, [[I

    .line 11
    .line 12
    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 13
    .line 14
    new-array v0, v0, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 15
    .line 16
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 17
    .line 18
    return-void
.end method

.method public parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v4, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static {v5, v4, v2}, Lokhttp3/internal/_UtilCommonKt;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-static {v4, v6, v2}, Lokhttp3/internal/_UtilCommonKt;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    sub-int v7, v6, v4

    .line 34
    .line 35
    const/16 v8, 0x30

    .line 36
    .line 37
    const/16 v9, 0x5b

    .line 38
    .line 39
    const/16 v10, 0x3a

    .line 40
    .line 41
    const/4 v11, -0x1

    .line 42
    const/4 v12, 0x2

    .line 43
    if-ge v7, v12, :cond_1

    .line 44
    .line 45
    :cond_0
    :goto_0
    move v7, v11

    .line 46
    goto :goto_3

    .line 47
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const/16 v13, 0x61

    .line 52
    .line 53
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 54
    .line 55
    .line 56
    move-result v14

    .line 57
    const/16 v15, 0x41

    .line 58
    .line 59
    if-ltz v14, :cond_2

    .line 60
    .line 61
    const/16 v14, 0x7a

    .line 62
    .line 63
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    if-lez v14, :cond_3

    .line 68
    .line 69
    :cond_2
    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    if-ltz v14, :cond_0

    .line 74
    .line 75
    const/16 v14, 0x5a

    .line 76
    .line 77
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-lez v7, :cond_3

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    add-int/lit8 v7, v4, 0x1

    .line 85
    .line 86
    :goto_1
    if-ge v7, v6, :cond_0

    .line 87
    .line 88
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v14

    .line 92
    if-gt v13, v14, :cond_4

    .line 93
    .line 94
    const/16 v13, 0x7b

    .line 95
    .line 96
    if-ge v14, v13, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    if-gt v15, v14, :cond_5

    .line 100
    .line 101
    if-ge v14, v9, :cond_5

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    if-gt v8, v14, :cond_6

    .line 105
    .line 106
    if-ge v14, v10, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    const/16 v13, 0x2b

    .line 110
    .line 111
    if-eq v14, v13, :cond_8

    .line 112
    .line 113
    const/16 v13, 0x2d

    .line 114
    .line 115
    if-eq v14, v13, :cond_8

    .line 116
    .line 117
    const/16 v13, 0x2e

    .line 118
    .line 119
    if-ne v14, v13, :cond_7

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_7
    if-ne v14, v10, :cond_0

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_8
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 126
    .line 127
    const/16 v13, 0x61

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :goto_3
    const-string v13, "http"

    .line 131
    .line 132
    const-string v14, "https"

    .line 133
    .line 134
    const/4 v15, 0x1

    .line 135
    if-eq v7, v11, :cond_b

    .line 136
    .line 137
    const-string v8, "https:"

    .line 138
    .line 139
    invoke-static {v4, v2, v8, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_9

    .line 144
    .line 145
    iput-object v14, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 146
    .line 147
    add-int/lit8 v4, v4, 0x6

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_9
    const-string v8, "http:"

    .line 151
    .line 152
    invoke-static {v4, v2, v8, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-eqz v8, :cond_a

    .line 157
    .line 158
    iput-object v13, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 159
    .line 160
    add-int/lit8 v4, v4, 0x5

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    .line 172
    .line 173
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const/16 v1, 0x27

    .line 180
    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_b
    if-eqz v1, :cond_2f

    .line 193
    .line 194
    iget-object v7, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 195
    .line 196
    iput-object v7, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 197
    .line 198
    :goto_4
    move v7, v4

    .line 199
    move v8, v5

    .line 200
    move/from16 v16, v15

    .line 201
    .line 202
    :goto_5
    const/16 v15, 0x5c

    .line 203
    .line 204
    const/16 v9, 0x2f

    .line 205
    .line 206
    if-ge v7, v6, :cond_d

    .line 207
    .line 208
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    if-eq v10, v9, :cond_c

    .line 213
    .line 214
    if-eq v10, v15, :cond_c

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 218
    .line 219
    add-int/lit8 v7, v7, 0x1

    .line 220
    .line 221
    const/16 v9, 0x5b

    .line 222
    .line 223
    const/16 v10, 0x3a

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_d
    :goto_6
    const-string v10, " \"\'<>#"

    .line 227
    .line 228
    const-string v7, ""

    .line 229
    .line 230
    const/16 v15, 0x23

    .line 231
    .line 232
    if-ge v8, v12, :cond_11

    .line 233
    .line 234
    if-eqz v1, :cond_11

    .line 235
    .line 236
    iget-object v12, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 237
    .line 238
    iget-object v9, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v9, Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    if-nez v9, :cond_e

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_e
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    iput-object v8, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 254
    .line 255
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    iput-object v8, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 260
    .line 261
    iget-object v8, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 262
    .line 263
    iput-object v8, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 264
    .line 265
    iget v8, v1, Lokhttp3/HttpUrl;->port:I

    .line 266
    .line 267
    iput v8, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/ArrayList;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 277
    .line 278
    .line 279
    if-eq v4, v6, :cond_f

    .line 280
    .line 281
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    if-ne v8, v15, :cond_21

    .line 286
    .line 287
    :cond_f
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    if-eqz v1, :cond_10

    .line 292
    .line 293
    const/16 v8, 0x53

    .line 294
    .line 295
    invoke-static {v5, v5, v8, v1, v10}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/lang/Object;

    .line 306
    .line 307
    goto/16 :goto_12

    .line 308
    .line 309
    :cond_11
    :goto_8
    add-int/2addr v4, v8

    .line 310
    move v1, v5

    .line 311
    move v8, v1

    .line 312
    :goto_9
    const-string v9, "@/\\?#"

    .line 313
    .line 314
    invoke-static {v4, v6, v2, v9}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(IILjava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    if-eq v9, v6, :cond_12

    .line 319
    .line 320
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 321
    .line 322
    .line 323
    move-result v12

    .line 324
    goto :goto_a

    .line 325
    :cond_12
    move v12, v11

    .line 326
    :goto_a
    if-eq v12, v11, :cond_17

    .line 327
    .line 328
    if-eq v12, v15, :cond_17

    .line 329
    .line 330
    const/16 v5, 0x2f

    .line 331
    .line 332
    if-eq v12, v5, :cond_17

    .line 333
    .line 334
    const/16 v5, 0x5c

    .line 335
    .line 336
    if-eq v12, v5, :cond_17

    .line 337
    .line 338
    const/16 v5, 0x3f

    .line 339
    .line 340
    if-eq v12, v5, :cond_17

    .line 341
    .line 342
    const/16 v5, 0x40

    .line 343
    .line 344
    if-eq v12, v5, :cond_13

    .line 345
    .line 346
    const/4 v5, 0x0

    .line 347
    goto :goto_9

    .line 348
    :cond_13
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 349
    .line 350
    const-string v12, "%40"

    .line 351
    .line 352
    if-nez v1, :cond_16

    .line 353
    .line 354
    const/16 v15, 0x3a

    .line 355
    .line 356
    invoke-static {v2, v15, v4, v9}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 357
    .line 358
    .line 359
    move-result v11

    .line 360
    const/16 v15, 0x70

    .line 361
    .line 362
    invoke-static {v4, v11, v15, v2, v5}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    if-eqz v8, :cond_14

    .line 367
    .line 368
    new-instance v8, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    iget-object v15, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 371
    .line 372
    check-cast v15, Ljava/lang/String;

    .line 373
    .line 374
    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v8, v12, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    :cond_14
    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 382
    .line 383
    if-eq v11, v9, :cond_15

    .line 384
    .line 385
    add-int/lit8 v11, v11, 0x1

    .line 386
    .line 387
    const/16 v15, 0x70

    .line 388
    .line 389
    invoke-static {v11, v9, v15, v2, v5}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 394
    .line 395
    move/from16 v1, v16

    .line 396
    .line 397
    goto :goto_b

    .line 398
    :cond_15
    const/16 v15, 0x70

    .line 399
    .line 400
    :goto_b
    move/from16 v8, v16

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_16
    const/16 v15, 0x70

    .line 404
    .line 405
    new-instance v11, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    iget-object v15, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 408
    .line 409
    check-cast v15, Ljava/lang/String;

    .line 410
    .line 411
    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const/16 v15, 0x70

    .line 418
    .line 419
    invoke-static {v4, v9, v15, v2, v5}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 431
    .line 432
    :goto_c
    add-int/lit8 v4, v9, 0x1

    .line 433
    .line 434
    const/4 v5, 0x0

    .line 435
    const/4 v11, -0x1

    .line 436
    const/16 v15, 0x23

    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_17
    move v1, v4

    .line 440
    :goto_d
    if-ge v1, v9, :cond_1a

    .line 441
    .line 442
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    const/16 v15, 0x3a

    .line 447
    .line 448
    if-eq v5, v15, :cond_1b

    .line 449
    .line 450
    const/16 v8, 0x5b

    .line 451
    .line 452
    if-eq v5, v8, :cond_18

    .line 453
    .line 454
    goto :goto_e

    .line 455
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 456
    .line 457
    if-ge v1, v9, :cond_19

    .line 458
    .line 459
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    const/16 v11, 0x5d

    .line 464
    .line 465
    if-ne v5, v11, :cond_18

    .line 466
    .line 467
    :cond_19
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_1a
    move v1, v9

    .line 471
    :cond_1b
    add-int/lit8 v5, v1, 0x1

    .line 472
    .line 473
    const/4 v8, 0x4

    .line 474
    const/16 v11, 0x22

    .line 475
    .line 476
    if-ge v5, v9, :cond_1e

    .line 477
    .line 478
    invoke-static {v4, v1, v8, v2}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v8

    .line 482
    invoke-static {v8}, Lokhttp3/internal/_HostnamesCommonKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    iput-object v8, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 487
    .line 488
    const/16 v8, 0x78

    .line 489
    .line 490
    :try_start_0
    invoke-static {v5, v9, v8, v2, v7}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    move/from16 v12, v16

    .line 499
    .line 500
    if-gt v12, v8, :cond_1c

    .line 501
    .line 502
    const/high16 v12, 0x10000

    .line 503
    .line 504
    if-ge v8, v12, :cond_1c

    .line 505
    .line 506
    goto :goto_f

    .line 507
    :catch_0
    :cond_1c
    const/4 v8, -0x1

    .line 508
    :goto_f
    iput v8, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 509
    .line 510
    const/4 v12, -0x1

    .line 511
    if-eq v8, v12, :cond_1d

    .line 512
    .line 513
    goto :goto_11

    .line 514
    :cond_1d
    invoke-virtual {v2, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v2, "Invalid URL port: \""

    .line 521
    .line 522
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    throw v1

    .line 545
    :cond_1e
    const/4 v12, -0x1

    .line 546
    invoke-static {v4, v1, v8, v2}, Lokhttp3/internal/url/_UrlKt;->percentDecode$default(IIILjava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v5

    .line 550
    invoke-static {v5}, Lokhttp3/internal/_HostnamesCommonKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 555
    .line 556
    iget-object v5, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v5, Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v8

    .line 567
    if-eqz v8, :cond_1f

    .line 568
    .line 569
    const/16 v5, 0x50

    .line 570
    .line 571
    goto :goto_10

    .line 572
    :cond_1f
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    if-eqz v5, :cond_20

    .line 577
    .line 578
    const/16 v5, 0x1bb

    .line 579
    .line 580
    goto :goto_10

    .line 581
    :cond_20
    move v5, v12

    .line 582
    :goto_10
    iput v5, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 583
    .line 584
    :goto_11
    iget-object v5, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v5, Ljava/lang/String;

    .line 587
    .line 588
    if-eqz v5, :cond_2e

    .line 589
    .line 590
    move v4, v9

    .line 591
    :cond_21
    :goto_12
    const-string v1, "?#"

    .line 592
    .line 593
    invoke-static {v4, v6, v2, v1}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(IILjava/lang/String;Ljava/lang/String;)I

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    if-ne v4, v1, :cond_22

    .line 598
    .line 599
    goto/16 :goto_17

    .line 600
    .line 601
    :cond_22
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 602
    .line 603
    .line 604
    move-result v5

    .line 605
    const/16 v8, 0x2f

    .line 606
    .line 607
    if-eq v5, v8, :cond_23

    .line 608
    .line 609
    const/16 v8, 0x5c

    .line 610
    .line 611
    if-eq v5, v8, :cond_23

    .line 612
    .line 613
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    const/16 v16, 0x1

    .line 618
    .line 619
    add-int/lit8 v5, v5, -0x1

    .line 620
    .line 621
    invoke-virtual {v3, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    goto :goto_13

    .line 625
    :cond_23
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    add-int/lit8 v4, v4, 0x1

    .line 632
    .line 633
    :goto_13
    if-ge v4, v1, :cond_2b

    .line 634
    .line 635
    const-string v5, "/\\"

    .line 636
    .line 637
    invoke-static {v4, v1, v2, v5}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(IILjava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    move-result v5

    .line 641
    if-ge v5, v1, :cond_24

    .line 642
    .line 643
    const/4 v12, 0x1

    .line 644
    goto :goto_14

    .line 645
    :cond_24
    const/4 v12, 0x0

    .line 646
    :goto_14
    const-string v8, " \"<>^`{}|/\\?#"

    .line 647
    .line 648
    const/16 v15, 0x70

    .line 649
    .line 650
    invoke-static {v4, v5, v15, v2, v8}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    const-string v8, "."

    .line 655
    .line 656
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v8

    .line 660
    if-nez v8, :cond_29

    .line 661
    .line 662
    const-string v8, "%2e"

    .line 663
    .line 664
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 665
    .line 666
    .line 667
    move-result v8

    .line 668
    if-eqz v8, :cond_25

    .line 669
    .line 670
    goto :goto_16

    .line 671
    :cond_25
    invoke-static {v4}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    .line 672
    .line 673
    .line 674
    move-result v8

    .line 675
    if-eqz v8, :cond_27

    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 678
    .line 679
    .line 680
    move-result v4

    .line 681
    const/4 v8, 0x1

    .line 682
    sub-int/2addr v4, v8

    .line 683
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    check-cast v4, Ljava/lang/String;

    .line 688
    .line 689
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 690
    .line 691
    .line 692
    move-result v4

    .line 693
    if-nez v4, :cond_26

    .line 694
    .line 695
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 696
    .line 697
    .line 698
    move-result v4

    .line 699
    if-nez v4, :cond_26

    .line 700
    .line 701
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 702
    .line 703
    .line 704
    move-result v4

    .line 705
    sub-int/2addr v4, v8

    .line 706
    invoke-virtual {v3, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    goto :goto_16

    .line 710
    :cond_26
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    goto :goto_16

    .line 714
    :cond_27
    const/4 v8, 0x1

    .line 715
    invoke-static {v8, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v9

    .line 719
    check-cast v9, Ljava/lang/CharSequence;

    .line 720
    .line 721
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 722
    .line 723
    .line 724
    move-result v9

    .line 725
    if-nez v9, :cond_28

    .line 726
    .line 727
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 728
    .line 729
    .line 730
    move-result v9

    .line 731
    sub-int/2addr v9, v8

    .line 732
    invoke-virtual {v3, v9, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    goto :goto_15

    .line 736
    :cond_28
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    :goto_15
    if-eqz v12, :cond_29

    .line 740
    .line 741
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    :cond_29
    :goto_16
    if-eqz v12, :cond_2a

    .line 745
    .line 746
    add-int/lit8 v4, v5, 0x1

    .line 747
    .line 748
    goto :goto_13

    .line 749
    :cond_2a
    move v4, v5

    .line 750
    goto :goto_13

    .line 751
    :cond_2b
    :goto_17
    if-ge v1, v6, :cond_2c

    .line 752
    .line 753
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 754
    .line 755
    .line 756
    move-result v3

    .line 757
    const/16 v5, 0x3f

    .line 758
    .line 759
    if-ne v3, v5, :cond_2c

    .line 760
    .line 761
    const/16 v3, 0x23

    .line 762
    .line 763
    invoke-static {v2, v3, v1, v6}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    add-int/lit8 v1, v1, 0x1

    .line 768
    .line 769
    const/16 v3, 0x50

    .line 770
    .line 771
    invoke-static {v1, v4, v3, v2, v10}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    invoke-static {v1}, Lokhttp3/HttpUrl$Builder;->toQueryNamesAndValues(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/lang/Object;

    .line 780
    .line 781
    move v1, v4

    .line 782
    :cond_2c
    if-ge v1, v6, :cond_2d

    .line 783
    .line 784
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 785
    .line 786
    .line 787
    move-result v3

    .line 788
    const/16 v4, 0x23

    .line 789
    .line 790
    if-ne v3, v4, :cond_2d

    .line 791
    .line 792
    const/16 v16, 0x1

    .line 793
    .line 794
    add-int/lit8 v1, v1, 0x1

    .line 795
    .line 796
    const/16 v3, 0x30

    .line 797
    .line 798
    invoke-static {v1, v6, v3, v2, v7}, Lokhttp3/internal/url/_UrlKt;->canonicalize$default(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    .line 803
    .line 804
    :cond_2d
    return-void

    .line 805
    :cond_2e
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    .line 810
    .line 811
    const-string v2, "Invalid URL host: \""

    .line 812
    .line 813
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 827
    .line 828
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    throw v1

    .line 836
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 837
    .line 838
    .line 839
    move-result v0

    .line 840
    const/4 v1, 0x6

    .line 841
    if-le v0, v1, :cond_30

    .line 842
    .line 843
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    const-string v1, "..."

    .line 848
    .line 849
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    goto :goto_18

    .line 854
    :cond_30
    move-object v0, v2

    .line 855
    :goto_18
    const-string v1, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    .line 856
    .line 857
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

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
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "://"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v1, "//"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x3a

    .line 45
    .line 46
    if-lez v1, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 50
    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-lez v1, :cond_3

    .line 58
    .line 59
    :goto_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/io/Serializable;

    .line 60
    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 67
    .line 68
    check-cast v1, Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-lez v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/io/Serializable;

    .line 80
    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_2
    const/16 v1, 0x40

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    const/16 v1, 0x5b

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const/16 v1, 0x5d

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_2
    iget v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 129
    .line 130
    const/4 v3, -0x1

    .line 131
    if-ne v1, v3, :cond_6

    .line 132
    .line 133
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v1, Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v1, :cond_a

    .line 138
    .line 139
    :cond_6
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v4, Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v4, :cond_9

    .line 148
    .line 149
    const-string v5, "http"

    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_7

    .line 156
    .line 157
    const/16 v3, 0x50

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_7
    const-string v5, "https"

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_8

    .line 167
    .line 168
    const/16 v3, 0x1bb

    .line 169
    .line 170
    :cond_8
    :goto_3
    if-eq v1, v3, :cond_a

    .line 171
    .line 172
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_a
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v1, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    const/4 v3, 0x0

    .line 187
    :goto_4
    if-ge v3, v2, :cond_b

    .line 188
    .line 189
    const/16 v4, 0x2f

    .line 190
    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    add-int/lit8 v3, v3, 0x1

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_b
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v1, Ljava/util/ArrayList;

    .line 209
    .line 210
    if-eqz v1, :cond_c

    .line 211
    .line 212
    const/16 v1, 0x3f

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v1, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-static {v0, v1}, Lokhttp3/HttpUrl$Companion;->toQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 225
    .line 226
    .line 227
    :cond_c
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v1, Ljava/lang/String;

    .line 230
    .line 231
    if-eqz v1, :cond_d

    .line 232
    .line 233
    const/16 v1, 0x23

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast p0, Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    return-object p0

    .line 250
    nop

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
