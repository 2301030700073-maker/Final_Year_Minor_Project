.class public final Lokio/ByteString$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLiteMap;
.implements Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;


# static fields
.field public static INSTANCE:Lokio/ByteString$Companion;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 19
    iput p1, p0, Lokio/ByteString$Companion;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V
    .locals 2

    .line 1
    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lokio/ByteString$Companion;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->PACKAGE_NAME:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-direct {p0, v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokio/-Base64;->BASE64:[B

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    const/16 v1, 0x9

    .line 11
    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    const/16 v3, 0xd

    .line 15
    .line 16
    const/16 v4, 0xa

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    add-int/lit8 v5, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/16 v6, 0x3d

    .line 27
    .line 28
    if-eq v5, v6, :cond_0

    .line 29
    .line 30
    if-eq v5, v4, :cond_0

    .line 31
    .line 32
    if-eq v5, v3, :cond_0

    .line 33
    .line 34
    if-eq v5, v2, :cond_0

    .line 35
    .line 36
    if-eq v5, v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    int-to-long v5, v0

    .line 43
    const-wide/16 v7, 0x6

    .line 44
    .line 45
    mul-long/2addr v5, v7

    .line 46
    const-wide/16 v7, 0x8

    .line 47
    .line 48
    div-long/2addr v5, v7

    .line 49
    long-to-int v5, v5

    .line 50
    new-array v6, v5, [B

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    move v8, v7

    .line 54
    move v9, v8

    .line 55
    move v10, v9

    .line 56
    :goto_2
    const/4 v11, 0x0

    .line 57
    if-ge v7, v0, :cond_b

    .line 58
    .line 59
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    const/16 v13, 0x41

    .line 64
    .line 65
    if-gt v13, v12, :cond_2

    .line 66
    .line 67
    const/16 v13, 0x5b

    .line 68
    .line 69
    if-ge v12, v13, :cond_2

    .line 70
    .line 71
    add-int/lit8 v12, v12, -0x41

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_2
    const/16 v13, 0x61

    .line 75
    .line 76
    if-gt v13, v12, :cond_3

    .line 77
    .line 78
    const/16 v13, 0x7b

    .line 79
    .line 80
    if-ge v12, v13, :cond_3

    .line 81
    .line 82
    add-int/lit8 v12, v12, -0x47

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_3
    const/16 v13, 0x30

    .line 86
    .line 87
    if-gt v13, v12, :cond_4

    .line 88
    .line 89
    const/16 v13, 0x3a

    .line 90
    .line 91
    if-ge v12, v13, :cond_4

    .line 92
    .line 93
    add-int/lit8 v12, v12, 0x4

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_4
    const/16 v13, 0x2b

    .line 97
    .line 98
    if-eq v12, v13, :cond_9

    .line 99
    .line 100
    const/16 v13, 0x2d

    .line 101
    .line 102
    if-ne v12, v13, :cond_5

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    const/16 v13, 0x2f

    .line 106
    .line 107
    if-eq v12, v13, :cond_8

    .line 108
    .line 109
    const/16 v13, 0x5f

    .line 110
    .line 111
    if-ne v12, v13, :cond_6

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    if-eq v12, v4, :cond_a

    .line 115
    .line 116
    if-eq v12, v3, :cond_a

    .line 117
    .line 118
    if-eq v12, v2, :cond_a

    .line 119
    .line 120
    if-ne v12, v1, :cond_7

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_7
    move-object v6, v11

    .line 124
    goto :goto_8

    .line 125
    :cond_8
    :goto_3
    const/16 v12, 0x3f

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_9
    :goto_4
    const/16 v12, 0x3e

    .line 129
    .line 130
    :goto_5
    shl-int/lit8 v9, v9, 0x6

    .line 131
    .line 132
    or-int/2addr v9, v12

    .line 133
    add-int/lit8 v8, v8, 0x1

    .line 134
    .line 135
    rem-int/lit8 v11, v8, 0x4

    .line 136
    .line 137
    if-nez v11, :cond_a

    .line 138
    .line 139
    add-int/lit8 v11, v10, 0x1

    .line 140
    .line 141
    shr-int/lit8 v12, v9, 0x10

    .line 142
    .line 143
    int-to-byte v12, v12

    .line 144
    aput-byte v12, v6, v10

    .line 145
    .line 146
    add-int/lit8 v12, v10, 0x2

    .line 147
    .line 148
    shr-int/lit8 v13, v9, 0x8

    .line 149
    .line 150
    int-to-byte v13, v13

    .line 151
    aput-byte v13, v6, v11

    .line 152
    .line 153
    add-int/lit8 v10, v10, 0x3

    .line 154
    .line 155
    int-to-byte v11, v9

    .line 156
    aput-byte v11, v6, v12

    .line 157
    .line 158
    :cond_a
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_b
    rem-int/lit8 v8, v8, 0x4

    .line 162
    .line 163
    const/4 p0, 0x1

    .line 164
    if-eq v8, p0, :cond_7

    .line 165
    .line 166
    const/4 p0, 0x2

    .line 167
    if-eq v8, p0, :cond_d

    .line 168
    .line 169
    const/4 p0, 0x3

    .line 170
    if-eq v8, p0, :cond_c

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_c
    shl-int/lit8 p0, v9, 0x6

    .line 174
    .line 175
    add-int/lit8 v0, v10, 0x1

    .line 176
    .line 177
    shr-int/lit8 v1, p0, 0x10

    .line 178
    .line 179
    int-to-byte v1, v1

    .line 180
    aput-byte v1, v6, v10

    .line 181
    .line 182
    add-int/lit8 v10, v10, 0x2

    .line 183
    .line 184
    shr-int/lit8 p0, p0, 0x8

    .line 185
    .line 186
    int-to-byte p0, p0

    .line 187
    aput-byte p0, v6, v0

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_d
    shl-int/lit8 p0, v9, 0xc

    .line 191
    .line 192
    add-int/lit8 v0, v10, 0x1

    .line 193
    .line 194
    shr-int/lit8 p0, p0, 0x10

    .line 195
    .line 196
    int-to-byte p0, p0

    .line 197
    aput-byte p0, v6, v10

    .line 198
    .line 199
    move v10, v0

    .line 200
    :goto_7
    if-ne v10, v5, :cond_e

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_e
    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    :goto_8
    if-eqz v6, :cond_f

    .line 208
    .line 209
    new-instance p0, Lokio/ByteString;

    .line 210
    .line 211
    invoke-direct {p0, v6}, Lokio/ByteString;-><init>([B)V

    .line 212
    .line 213
    .line 214
    return-object p0

    .line 215
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
    invoke-static {v4}, Lokio/internal/ZipFilesKt;->decodeHexDigit(C)I

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
    invoke-static {v3}, Lokio/internal/ZipFilesKt;->decodeHexDigit(C)I

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
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
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

.method public static getRequestBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lorg/wikipedia/views/imageservice/ImageLoadListener;)Lcoil3/request/ImageRequest$Builder;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 5
    .line 6
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_2

    .line 20
    .line 21
    :cond_0
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    move-object p3, v1

    .line 39
    :goto_1
    new-instance v0, Lcoil3/request/ImageRequest$Builder;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object p3, v0, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 45
    .line 46
    const/4 p3, 0x0

    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz p4, :cond_3

    .line 49
    .line 50
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 55
    .line 56
    new-instance v1, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/4 v3, 0x3

    .line 59
    invoke-direct {v1, p0, v3}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(II)V

    .line 60
    .line 61
    .line 62
    iput-object v1, v0, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    new-instance p4, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    invoke-direct {p4, p0, p3}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(II)V

    .line 71
    .line 72
    .line 73
    iput-object p4, v0, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    new-instance p4, Landroid/util/TypedValue;

    .line 77
    .line 78
    invoke-direct {p4}, Landroid/util/TypedValue;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const v3, 0x7f040094

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v3, p4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move-object p4, v1

    .line 96
    :goto_2
    if-eqz p4, :cond_a

    .line 97
    .line 98
    iget p0, p4, Landroid/util/TypedValue;->data:I

    .line 99
    .line 100
    new-instance p4, Landroid/graphics/drawable/ColorDrawable;

    .line 101
    .line 102
    invoke-direct {p4, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 103
    .line 104
    .line 105
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 106
    .line 107
    invoke-static {p4}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance v1, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    const/16 v3, 0x13

    .line 114
    .line 115
    invoke-direct {v1, v3, p0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, v0, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 119
    .line 120
    invoke-static {p4}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    new-instance p4, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    invoke-direct {p4, v3, p0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iput-object p4, v0, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 130
    .line 131
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    const/4 p2, 0x2

    .line 138
    if-eqz p0, :cond_7

    .line 139
    .line 140
    if-eqz p1, :cond_7

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-nez p0, :cond_5

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_5
    const-string p0, ".jpg"

    .line 150
    .line 151
    invoke-static {p1, p0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-nez p0, :cond_6

    .line 156
    .line 157
    const-string p0, ".jpeg"

    .line 158
    .line 159
    invoke-static {p1, p0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_6

    .line 164
    .line 165
    const-string p0, ".png"

    .line 166
    .line 167
    invoke-static {p1, p0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-eqz p0, :cond_7

    .line 172
    .line 173
    :cond_6
    new-instance p0, Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 174
    .line 175
    invoke-direct {p0, v2}, Lorg/wikipedia/views/imageservice/DimImageTransformation;-><init>(I)V

    .line 176
    .line 177
    .line 178
    new-instance p1, Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 179
    .line 180
    invoke-direct {p1, p3}, Lorg/wikipedia/views/imageservice/DimImageTransformation;-><init>(I)V

    .line 181
    .line 182
    .line 183
    new-array p2, p2, [Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 184
    .line 185
    aput-object p0, p2, p3

    .line 186
    .line 187
    aput-object p1, p2, v2

    .line 188
    .line 189
    invoke-static {v0, p2}, Lcoil3/request/ImageRequestsKt;->transformations(Lcoil3/request/ImageRequest$Builder;[Lorg/wikipedia/views/imageservice/DimImageTransformation;)V

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_7
    :goto_4
    sget-object p0, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 194
    .line 195
    if-eqz p1, :cond_8

    .line 196
    .line 197
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 198
    .line 199
    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    const-string p1, ".gif"

    .line 207
    .line 208
    invoke-static {p0, p1, p3}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    if-ne p0, v2, :cond_8

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_8
    new-instance p0, Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 216
    .line 217
    invoke-direct {p0, p2}, Lorg/wikipedia/views/imageservice/DimImageTransformation;-><init>(I)V

    .line 218
    .line 219
    .line 220
    new-instance p1, Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 221
    .line 222
    invoke-direct {p1, p3}, Lorg/wikipedia/views/imageservice/DimImageTransformation;-><init>(I)V

    .line 223
    .line 224
    .line 225
    new-array p2, p2, [Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 226
    .line 227
    aput-object p0, p2, p3

    .line 228
    .line 229
    aput-object p1, p2, v2

    .line 230
    .line 231
    invoke-static {v0, p2}, Lcoil3/request/ImageRequestsKt;->transformations(Lcoil3/request/ImageRequest$Builder;[Lorg/wikipedia/views/imageservice/DimImageTransformation;)V

    .line 232
    .line 233
    .line 234
    :goto_5
    if-eqz p5, :cond_9

    .line 235
    .line 236
    new-instance p0, Lorg/wikipedia/media/AvPlayer;

    .line 237
    .line 238
    const/16 p1, 0x1d

    .line 239
    .line 240
    invoke-direct {p0, p1, p5}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->listener:Lcoil3/request/ImageRequest$Listener;

    .line 244
    .line 245
    :cond_9
    return-object v0

    .line 246
    :cond_a
    const-string p0, "Attribute not found; ID=2130968724"

    .line 247
    .line 248
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    return-object v1
.end method

.method public static intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lorg/wikipedia/page/Namespace;->Companion:Lorg/wikipedia/page/Namespace$Companion;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lorg/wikipedia/page/Namespace$Companion;->of(I)Lorg/wikipedia/page/Namespace;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static namespaceToInt(Lorg/wikipedia/page/Namespace;)Ljava/lang/Integer;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/page/Namespace;->code()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lorg/wikipedia/places/PlacesActivity;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "title"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "location"

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public static newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;
    .locals 0

    and-int/lit8 p0, p9, 0x8

    if-eqz p0, :cond_0

    const-wide/16 p4, -0x1

    :cond_0
    and-int/lit8 p0, p9, 0x20

    if-eqz p0, :cond_1

    .line 69
    sget-object p8, Lorg/wikipedia/Constants$InvokeSource;->DIFF_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 70
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    new-instance p0, Landroid/content/Intent;

    const-class p9, Lorg/wikipedia/diff/ArticleEditDetailsActivity;

    invoke-direct {p0, p1, p9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string p1, "articleTitle"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    .line 73
    const-string p1, "pageId"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 74
    const-string p1, "revisionFrom"

    invoke-virtual {p0, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p0

    .line 75
    const-string p1, "revisionTo"

    invoke-virtual {p0, p1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p0

    .line 76
    const-string p1, "invokeSource"

    invoke-virtual {p0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static newIntent$default(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 1
    sget v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->$r8$clinit:I

    .line 2
    .line 3
    and-int/lit8 v0, p6, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    and-int/lit8 p6, p6, 0x20

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    if-eqz p6, :cond_1

    .line 13
    .line 14
    move-object p5, v0

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p6, Landroid/content/Intent;

    .line 22
    .line 23
    const-class v1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 24
    .line 25
    invoke-direct {p6, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo p0, "wikiSite"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p6, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "invokeSource"

    .line 36
    .line 37
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "imageTitle"

    .line 42
    .line 43
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "imageSource"

    .line 48
    .line 49
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "imageSourceProjects"

    .line 54
    .line 55
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "searchQuery"

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    return-object p0
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
    invoke-static/range {v2 .. v7}, Lokhttp3/HttpUrl$Companion;->checkOffsetAndCount(JJJ)V

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


# virtual methods
.method public decode(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Lokio/ByteString$Companion;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->readUtf8String()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->readUtf8String()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p0, p1, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 31
    .line 32
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    const-wide/16 v2, -0x1

    .line 37
    .line 38
    cmp-long v0, v0, v2

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-boolean v0, p1, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    const-wide/16 v2, 0x1

    .line 51
    .line 52
    cmp-long v0, v0, v2

    .line 53
    .line 54
    if-ltz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0}, Lokio/RealBufferedSource;->readByte()B

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    and-int/lit16 v0, v0, 0xff

    .line 61
    .line 62
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->readByteString(J)Lokio/ByteString;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance p1, Lokhttp3/tls/internal/der/BitString;

    .line 71
    .line 72
    invoke-direct {p1, p0, v0}, Lokhttp3/tls/internal/der/BitString;-><init>(Lokio/ByteString;I)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    .line 77
    .line 78
    const-string p1, "malformed bit string"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    .line 85
    .line 86
    const-string p1, "constructed bit strings not supported for DER"

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public encode(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lokio/ByteString$Companion;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p2, Lkotlin/Unit;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_2
    check-cast p2, Lokhttp3/tls/internal/der/BitString;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget p1, p2, Lokhttp3/tls/internal/der/BitString;->unusedBitsCount:I

    .line 57
    .line 58
    invoke-interface {p0, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 59
    .line 60
    .line 61
    iget-object p1, p2, Lokhttp3/tls/internal/der/BitString;->byteString:Lokio/ByteString;

    .line 62
    .line 63
    invoke-interface {p0, p1}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    array-length p0, p2

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    aget-object p1, p2, p0

    .line 10
    .line 11
    instance-of v0, p1, Ljava/lang/Exception;

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Exception;

    .line 16
    .line 17
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "org.wikipedia"

    .line 21
    .line 22
    const-string v0, "beta"

    .line 23
    .line 24
    invoke-static {p1, v0, p0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x3

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    move p1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "alpha"

    .line 35
    .line 36
    invoke-static {p1, v0, p0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string v0, "dev"

    .line 45
    .line 46
    invoke-static {p1, v0, p0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    move p1, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move p1, p0

    .line 55
    :goto_0
    if-eqz p1, :cond_4

    .line 56
    .line 57
    if-eq p1, v2, :cond_4

    .line 58
    .line 59
    aget-object p0, p2, p0

    .line 60
    .line 61
    instance-of p1, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    check-cast p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 66
    .line 67
    iget p0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 68
    .line 69
    const/16 p1, 0x193

    .line 70
    .line 71
    if-eq p0, p1, :cond_4

    .line 72
    .line 73
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 74
    .line 75
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getMainThreadHandler()Landroid/os/Handler;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance p1, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 84
    .line 85
    invoke-direct {p1, v1, p2}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_1
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    sget-object p0, Lorg/wikipedia/util/log/L;->LEVEL_I:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/Integer;IZLjava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move/from16 v1, p6

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    instance-of v3, v2, Lorg/wikipedia/search/StandardSearchRepository$search$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;

    .line 13
    .line 14
    iget v4, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->label:I

    .line 24
    .line 25
    move-object/from16 v5, p0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;

    .line 29
    .line 30
    move-object/from16 v5, p0

    .line 31
    .line 32
    invoke-direct {v3, v5, v2}, Lorg/wikipedia/search/StandardSearchRepository$search$1;-><init>(Lokio/ByteString$Companion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v2, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    iget v4, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->label:I

    .line 40
    .line 41
    const-string/jumbo v12, "x-search-id"

    .line 42
    .line 43
    .line 44
    const/4 v13, 0x5

    .line 45
    const/4 v14, 0x4

    .line 46
    const/4 v15, 0x3

    .line 47
    const/4 v6, 0x1

    .line 48
    const/4 v7, 0x2

    .line 49
    if-eqz v4, :cond_6

    .line 50
    .line 51
    if-eq v4, v6, :cond_5

    .line 52
    .line 53
    if-eq v4, v7, :cond_4

    .line 54
    .line 55
    if-eq v4, v15, :cond_3

    .line 56
    .line 57
    if-eq v4, v14, :cond_2

    .line 58
    .line 59
    if-ne v4, v13, :cond_1

    .line 60
    .line 61
    iget v0, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$1:I

    .line 62
    .line 63
    iget-boolean v1, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->Z$0:Z

    .line 64
    .line 65
    iget v4, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$0:I

    .line 66
    .line 67
    iget-object v5, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$15:Lkotlin/jvm/internal/Ref$IntRef;

    .line 68
    .line 69
    iget-object v6, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$14:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v7, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$12:Ljava/util/Iterator;

    .line 72
    .line 73
    iget-object v10, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$10:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v12, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$9:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v15, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$8:Ljava/lang/Integer;

    .line 78
    .line 79
    iget-object v8, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$6:Ljava/util/List;

    .line 80
    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    iget-object v9, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$4:Ljava/util/List;

    .line 84
    .line 85
    iget-object v13, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$1:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v14, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$0:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object/from16 v19, v14

    .line 93
    .line 94
    move-object v14, v9

    .line 95
    move-object v9, v11

    .line 96
    move-object v11, v13

    .line 97
    move-object/from16 v13, v16

    .line 98
    .line 99
    move-object/from16 v16, v15

    .line 100
    .line 101
    move-object/from16 v15, v19

    .line 102
    .line 103
    goto/16 :goto_d

    .line 104
    .line 105
    :cond_1
    const/16 v16, 0x0

    .line 106
    .line 107
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 108
    .line 109
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v16

    .line 113
    :cond_2
    const/16 v16, 0x0

    .line 114
    .line 115
    iget v0, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$2:I

    .line 116
    .line 117
    iget v1, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$1:I

    .line 118
    .line 119
    iget-boolean v4, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->Z$0:Z

    .line 120
    .line 121
    iget v5, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$0:I

    .line 122
    .line 123
    iget-object v6, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$15:Lkotlin/jvm/internal/Ref$IntRef;

    .line 124
    .line 125
    iget-object v7, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$14:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v8, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$12:Ljava/util/Iterator;

    .line 128
    .line 129
    iget-object v9, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$10:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v10, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$9:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v12, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$8:Ljava/lang/Integer;

    .line 134
    .line 135
    iget-object v13, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$6:Ljava/util/List;

    .line 136
    .line 137
    iget-object v14, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$4:Ljava/util/List;

    .line 138
    .line 139
    iget-object v15, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$1:Ljava/lang/String;

    .line 140
    .line 141
    move/from16 p0, v0

    .line 142
    .line 143
    iget-object v0, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$0:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    move-object/from16 p8, v9

    .line 149
    .line 150
    move/from16 v9, p0

    .line 151
    .line 152
    move-object/from16 p0, v2

    .line 153
    .line 154
    move-object v2, v12

    .line 155
    move-object v12, v10

    .line 156
    move-object/from16 v10, p8

    .line 157
    .line 158
    move-object/from16 p8, v15

    .line 159
    .line 160
    move-object v15, v0

    .line 161
    move v0, v1

    .line 162
    move v1, v4

    .line 163
    move v4, v5

    .line 164
    move-object v5, v6

    .line 165
    move-object v6, v7

    .line 166
    move-object v7, v8

    .line 167
    move-object v8, v13

    .line 168
    move-object/from16 v13, p8

    .line 169
    .line 170
    :goto_1
    move-object/from16 p8, v11

    .line 171
    .line 172
    goto/16 :goto_b

    .line 173
    .line 174
    :cond_3
    const/16 v16, 0x0

    .line 175
    .line 176
    iget-boolean v0, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->Z$0:Z

    .line 177
    .line 178
    iget v1, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$0:I

    .line 179
    .line 180
    iget-object v4, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$9:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v5, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$6:Ljava/util/List;

    .line 183
    .line 184
    iget-object v6, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$5:Lorg/wikipedia/dataclient/WikiSite;

    .line 185
    .line 186
    iget-object v7, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$4:Ljava/util/List;

    .line 187
    .line 188
    iget-object v8, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$2:Lorg/wikipedia/Constants$InvokeSource;

    .line 189
    .line 190
    iget-object v9, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$1:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v10, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$0:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    move-object v14, v10

    .line 198
    move-object v10, v9

    .line 199
    move-object v9, v7

    .line 200
    move-object v7, v3

    .line 201
    move-object v3, v2

    .line 202
    const/4 v2, 0x0

    .line 203
    goto/16 :goto_6

    .line 204
    .line 205
    :cond_4
    const/16 v16, 0x0

    .line 206
    .line 207
    iget-boolean v0, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->Z$0:Z

    .line 208
    .line 209
    iget v1, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$0:I

    .line 210
    .line 211
    iget-object v4, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$6:Ljava/util/List;

    .line 212
    .line 213
    iget-object v5, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$5:Lorg/wikipedia/dataclient/WikiSite;

    .line 214
    .line 215
    iget-object v6, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$4:Ljava/util/List;

    .line 216
    .line 217
    iget-object v7, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$2:Lorg/wikipedia/Constants$InvokeSource;

    .line 218
    .line 219
    iget-object v8, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$1:Ljava/lang/String;

    .line 220
    .line 221
    iget-object v9, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$0:Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    move v10, v1

    .line 227
    move v1, v0

    .line 228
    move-object v0, v7

    .line 229
    move-object v7, v9

    .line 230
    move-object v9, v5

    .line 231
    move-object v5, v4

    .line 232
    move-object v4, v2

    .line 233
    const/4 v2, 0x0

    .line 234
    goto/16 :goto_4

    .line 235
    .line 236
    :cond_5
    const/16 v16, 0x0

    .line 237
    .line 238
    iget-boolean v0, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->Z$0:Z

    .line 239
    .line 240
    iget v1, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$0:I

    .line 241
    .line 242
    iget-object v4, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$6:Ljava/util/List;

    .line 243
    .line 244
    iget-object v5, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$5:Lorg/wikipedia/dataclient/WikiSite;

    .line 245
    .line 246
    iget-object v6, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$4:Ljava/util/List;

    .line 247
    .line 248
    iget-object v8, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$2:Lorg/wikipedia/Constants$InvokeSource;

    .line 249
    .line 250
    iget-object v9, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$1:Ljava/lang/String;

    .line 251
    .line 252
    iget-object v10, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$0:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    move v14, v7

    .line 258
    move-object v7, v10

    .line 259
    const/4 v2, 0x0

    .line 260
    move v10, v1

    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_6
    const/16 v16, 0x0

    .line 264
    .line 265
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    sget-object v2, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    move v2, v6

    .line 274
    invoke-static/range {p2 .. p2}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    new-instance v8, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .line 282
    .line 283
    if-eqz v1, :cond_a

    .line 284
    .line 285
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-lt v4, v7, :cond_7

    .line 290
    .line 291
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->PLACES:Lorg/wikipedia/Constants$InvokeSource;

    .line 292
    .line 293
    if-eq v0, v4, :cond_7

    .line 294
    .line 295
    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 296
    .line 297
    sget-object v13, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 298
    .line 299
    new-instance v4, Lcoil3/RealImageLoader$execute$result$1;

    .line 300
    .line 301
    const/4 v9, 0x0

    .line 302
    const/16 v10, 0x13

    .line 303
    .line 304
    move v15, v2

    .line 305
    move v14, v7

    .line 306
    const/4 v2, 0x0

    .line 307
    move-object/from16 v7, p1

    .line 308
    .line 309
    invoke-direct/range {v4 .. v10}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 310
    .line 311
    .line 312
    iput-object v7, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$0:Ljava/lang/String;

    .line 313
    .line 314
    move-object/from16 v5, p2

    .line 315
    .line 316
    iput-object v5, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$1:Ljava/lang/String;

    .line 317
    .line 318
    iput-object v0, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$2:Lorg/wikipedia/Constants$InvokeSource;

    .line 319
    .line 320
    move-object/from16 v9, p7

    .line 321
    .line 322
    iput-object v9, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$4:Ljava/util/List;

    .line 323
    .line 324
    iput-object v6, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$5:Lorg/wikipedia/dataclient/WikiSite;

    .line 325
    .line 326
    iput-object v8, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$6:Ljava/util/List;

    .line 327
    .line 328
    move/from16 v10, p5

    .line 329
    .line 330
    iput v10, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$0:I

    .line 331
    .line 332
    iput-boolean v1, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->Z$0:Z

    .line 333
    .line 334
    iput v15, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->label:I

    .line 335
    .line 336
    invoke-static {v13, v4, v3}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    if-ne v4, v11, :cond_8

    .line 341
    .line 342
    :goto_2
    move-object v9, v11

    .line 343
    goto/16 :goto_c

    .line 344
    .line 345
    :cond_7
    move-object/from16 v5, p2

    .line 346
    .line 347
    move/from16 v10, p5

    .line 348
    .line 349
    move-object/from16 v9, p7

    .line 350
    .line 351
    move v14, v7

    .line 352
    const/4 v2, 0x0

    .line 353
    move-object/from16 v7, p1

    .line 354
    .line 355
    :cond_8
    move-object v4, v9

    .line 356
    move-object v9, v5

    .line 357
    move-object v5, v6

    .line 358
    move-object v6, v4

    .line 359
    move-object v4, v8

    .line 360
    move-object v8, v0

    .line 361
    move v0, v1

    .line 362
    :goto_3
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 363
    .line 364
    invoke-static {v5}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    new-instance v13, Ljava/lang/Integer;

    .line 369
    .line 370
    invoke-direct {v13, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 371
    .line 372
    .line 373
    iput-object v7, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$0:Ljava/lang/String;

    .line 374
    .line 375
    iput-object v9, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$1:Ljava/lang/String;

    .line 376
    .line 377
    iput-object v8, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$2:Lorg/wikipedia/Constants$InvokeSource;

    .line 378
    .line 379
    iput-object v6, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$4:Ljava/util/List;

    .line 380
    .line 381
    iput-object v5, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$5:Lorg/wikipedia/dataclient/WikiSite;

    .line 382
    .line 383
    iput-object v4, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$6:Ljava/util/List;

    .line 384
    .line 385
    iput v10, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$0:I

    .line 386
    .line 387
    iput-boolean v0, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->Z$0:Z

    .line 388
    .line 389
    iput v14, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->label:I

    .line 390
    .line 391
    invoke-interface {v1, v7, v10, v13, v3}, Lorg/wikipedia/dataclient/Service;->prefixSearchResponse(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    if-ne v1, v11, :cond_9

    .line 396
    .line 397
    goto :goto_2

    .line 398
    :cond_9
    move-object/from16 v19, v1

    .line 399
    .line 400
    move v1, v0

    .line 401
    move-object v0, v8

    .line 402
    move-object v8, v9

    .line 403
    move-object v9, v5

    .line 404
    move-object v5, v4

    .line 405
    move-object/from16 v4, v19

    .line 406
    .line 407
    :goto_4
    check-cast v4, Lretrofit2/Response;

    .line 408
    .line 409
    iget-object v13, v4, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    .line 410
    .line 411
    iget-object v13, v13, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 412
    .line 413
    invoke-virtual {v13, v12}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v13

    .line 417
    iget-object v4, v4, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 420
    .line 421
    new-instance v14, Ljava/lang/Integer;

    .line 422
    .line 423
    invoke-direct {v14, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 424
    .line 425
    .line 426
    move-object/from16 v19, v9

    .line 427
    .line 428
    move-object v9, v6

    .line 429
    move-object/from16 v6, v19

    .line 430
    .line 431
    goto :goto_5

    .line 432
    :cond_a
    move-object/from16 v7, p1

    .line 433
    .line 434
    move-object/from16 v5, p2

    .line 435
    .line 436
    move/from16 v10, p5

    .line 437
    .line 438
    move-object/from16 v9, p7

    .line 439
    .line 440
    const/4 v2, 0x0

    .line 441
    move-object v4, v8

    .line 442
    move-object v8, v5

    .line 443
    move-object v5, v4

    .line 444
    move-object/from16 v14, p4

    .line 445
    .line 446
    const/4 v4, 0x0

    .line 447
    const/4 v13, 0x0

    .line 448
    :goto_5
    sget-object v15, Lorg/wikipedia/search/SearchResult$SearchResultType;->PREFIX:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 449
    .line 450
    invoke-static {v4, v0, v6, v15}, Lorg/wikipedia/search/NoSearchResultsKt;->buildList(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/search/SearchResult$SearchResultType;)Ljava/util/List;

    .line 451
    .line 452
    .line 453
    move-result-object v15

    .line 454
    invoke-interface {v5, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    .line 456
    .line 457
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 458
    .line 459
    .line 460
    move-result v15

    .line 461
    if-ge v15, v10, :cond_d

    .line 462
    .line 463
    sget-object v4, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 464
    .line 465
    invoke-static {v6}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    iput-object v7, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$0:Ljava/lang/String;

    .line 470
    .line 471
    iput-object v8, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$1:Ljava/lang/String;

    .line 472
    .line 473
    iput-object v0, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$2:Lorg/wikipedia/Constants$InvokeSource;

    .line 474
    .line 475
    iput-object v9, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$4:Ljava/util/List;

    .line 476
    .line 477
    iput-object v6, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$5:Lorg/wikipedia/dataclient/WikiSite;

    .line 478
    .line 479
    iput-object v5, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$6:Ljava/util/List;

    .line 480
    .line 481
    const/4 v15, 0x0

    .line 482
    iput-object v15, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$8:Ljava/lang/Integer;

    .line 483
    .line 484
    iput-object v13, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$9:Ljava/lang/String;

    .line 485
    .line 486
    iput v10, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$0:I

    .line 487
    .line 488
    iput-boolean v1, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->Z$0:Z

    .line 489
    .line 490
    const/4 v15, 0x3

    .line 491
    iput v15, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->label:I

    .line 492
    .line 493
    const/4 v15, 0x0

    .line 494
    move-object/from16 p5, v3

    .line 495
    .line 496
    move-object/from16 p0, v4

    .line 497
    .line 498
    move-object/from16 p1, v7

    .line 499
    .line 500
    move/from16 p2, v10

    .line 501
    .line 502
    move-object/from16 p3, v14

    .line 503
    .line 504
    move-object/from16 p4, v15

    .line 505
    .line 506
    invoke-interface/range {p0 .. p5}, Lorg/wikipedia/dataclient/Service;->fullTextSearchResponse(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    move-object/from16 v14, p1

    .line 511
    .line 512
    move-object/from16 v7, p5

    .line 513
    .line 514
    if-ne v3, v11, :cond_b

    .line 515
    .line 516
    goto/16 :goto_2

    .line 517
    .line 518
    :cond_b
    move-object v4, v8

    .line 519
    move-object v8, v0

    .line 520
    move v0, v1

    .line 521
    move v1, v10

    .line 522
    move-object v10, v4

    .line 523
    move-object v4, v13

    .line 524
    :goto_6
    check-cast v3, Lretrofit2/Response;

    .line 525
    .line 526
    iget-object v13, v3, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    .line 527
    .line 528
    iget-object v13, v13, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 529
    .line 530
    invoke-virtual {v13, v12}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v12

    .line 534
    iget-object v3, v3, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 537
    .line 538
    if-eqz v3, :cond_c

    .line 539
    .line 540
    iget-object v13, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    .line 541
    .line 542
    if-eqz v13, :cond_c

    .line 543
    .line 544
    iget-object v13, v13, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;->gsroffset:Ljava/lang/Integer;

    .line 545
    .line 546
    goto :goto_7

    .line 547
    :cond_c
    const/4 v13, 0x0

    .line 548
    :goto_7
    sget-object v15, Lorg/wikipedia/search/SearchResult$SearchResultType;->FULL_TEXT:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 549
    .line 550
    invoke-static {v3, v8, v6, v15}, Lorg/wikipedia/search/NoSearchResultsKt;->buildList(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/search/SearchResult$SearchResultType;)Ljava/util/List;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 555
    .line 556
    .line 557
    move-object v8, v10

    .line 558
    move v10, v1

    .line 559
    move v1, v0

    .line 560
    move-object v0, v13

    .line 561
    move-object v13, v4

    .line 562
    move-object v4, v3

    .line 563
    goto :goto_8

    .line 564
    :cond_d
    move-object v0, v14

    .line 565
    move-object v14, v7

    .line 566
    move-object v7, v3

    .line 567
    const/4 v12, 0x0

    .line 568
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-eqz v3, :cond_15

    .line 573
    .line 574
    if-eqz v4, :cond_e

    .line 575
    .line 576
    iget-object v3, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    .line 577
    .line 578
    goto :goto_9

    .line 579
    :cond_e
    const/4 v3, 0x0

    .line 580
    :goto_9
    if-nez v3, :cond_15

    .line 581
    .line 582
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 583
    .line 584
    .line 585
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 586
    .line 587
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    check-cast v3, Ljava/util/ArrayList;

    .line 592
    .line 593
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    move v4, v2

    .line 598
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    if-eqz v6, :cond_15

    .line 603
    .line 604
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v6

    .line 608
    check-cast v6, Ljava/lang/String;

    .line 609
    .line 610
    new-instance v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 611
    .line 612
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 613
    .line 614
    .line 615
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v18

    .line 619
    if-nez v18, :cond_14

    .line 620
    .line 621
    sget-object v18, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 622
    .line 623
    sget-object v18, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 624
    .line 625
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 626
    .line 627
    .line 628
    invoke-static {v6}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 629
    .line 630
    .line 631
    move-result-object v18

    .line 632
    move-object/from16 p8, v11

    .line 633
    .line 634
    invoke-static/range {v18 .. v18}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 635
    .line 636
    .line 637
    move-result-object v11

    .line 638
    move-object/from16 p0, v11

    .line 639
    .line 640
    new-instance v11, Ljava/lang/Integer;

    .line 641
    .line 642
    invoke-direct {v11, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 643
    .line 644
    .line 645
    iput-object v14, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$0:Ljava/lang/String;

    .line 646
    .line 647
    iput-object v8, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$1:Ljava/lang/String;

    .line 648
    .line 649
    const/4 v2, 0x0

    .line 650
    iput-object v2, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$2:Lorg/wikipedia/Constants$InvokeSource;

    .line 651
    .line 652
    iput-object v9, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$4:Ljava/util/List;

    .line 653
    .line 654
    iput-object v2, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$5:Lorg/wikipedia/dataclient/WikiSite;

    .line 655
    .line 656
    iput-object v5, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$6:Ljava/util/List;

    .line 657
    .line 658
    iput-object v0, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$8:Ljava/lang/Integer;

    .line 659
    .line 660
    iput-object v13, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$9:Ljava/lang/String;

    .line 661
    .line 662
    iput-object v12, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$10:Ljava/lang/String;

    .line 663
    .line 664
    iput-object v3, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$12:Ljava/util/Iterator;

    .line 665
    .line 666
    iput-object v6, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$14:Ljava/lang/String;

    .line 667
    .line 668
    iput-object v15, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$15:Lkotlin/jvm/internal/Ref$IntRef;

    .line 669
    .line 670
    iput v10, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$0:I

    .line 671
    .line 672
    iput-boolean v1, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->Z$0:Z

    .line 673
    .line 674
    iput v4, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$1:I

    .line 675
    .line 676
    const/4 v2, 0x0

    .line 677
    iput v2, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$2:I

    .line 678
    .line 679
    const/4 v2, 0x4

    .line 680
    iput v2, v7, Lorg/wikipedia/search/StandardSearchRepository$search$1;->label:I

    .line 681
    .line 682
    move-object/from16 v2, p0

    .line 683
    .line 684
    invoke-interface {v2, v14, v10, v11, v7}, Lorg/wikipedia/dataclient/Service;->prefixSearch(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    move-object/from16 v11, p8

    .line 689
    .line 690
    if-ne v2, v11, :cond_f

    .line 691
    .line 692
    goto/16 :goto_2

    .line 693
    .line 694
    :cond_f
    move-object/from16 p0, v7

    .line 695
    .line 696
    move-object v7, v3

    .line 697
    move-object/from16 v3, p0

    .line 698
    .line 699
    move-object/from16 p0, v2

    .line 700
    .line 701
    move-object v2, v0

    .line 702
    move v0, v4

    .line 703
    move v4, v10

    .line 704
    move-object v10, v12

    .line 705
    move-object v12, v13

    .line 706
    move-object v13, v8

    .line 707
    move-object v8, v5

    .line 708
    move-object v5, v15

    .line 709
    move-object v15, v14

    .line 710
    move-object v14, v9

    .line 711
    const/4 v9, 0x0

    .line 712
    goto/16 :goto_1

    .line 713
    .line 714
    :goto_b
    move-object/from16 v11, p0

    .line 715
    .line 716
    check-cast v11, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 717
    .line 718
    iget-object v11, v11, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 719
    .line 720
    if-eqz v11, :cond_10

    .line 721
    .line 722
    iget-object v11, v11, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 723
    .line 724
    if-eqz v11, :cond_10

    .line 725
    .line 726
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 727
    .line 728
    .line 729
    move-result v11

    .line 730
    iput v11, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 731
    .line 732
    :cond_10
    iget v11, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 733
    .line 734
    if-nez v11, :cond_13

    .line 735
    .line 736
    sget-object v11, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 737
    .line 738
    sget-object v11, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 739
    .line 740
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 741
    .line 742
    .line 743
    invoke-static {v6}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 744
    .line 745
    .line 746
    move-result-object v11

    .line 747
    invoke-static {v11}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 748
    .line 749
    .line 750
    move-result-object v11

    .line 751
    iput-object v15, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$0:Ljava/lang/String;

    .line 752
    .line 753
    iput-object v13, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$1:Ljava/lang/String;

    .line 754
    .line 755
    move-object/from16 p0, v13

    .line 756
    .line 757
    const/4 v13, 0x0

    .line 758
    iput-object v13, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$2:Lorg/wikipedia/Constants$InvokeSource;

    .line 759
    .line 760
    iput-object v14, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$4:Ljava/util/List;

    .line 761
    .line 762
    iput-object v13, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$5:Lorg/wikipedia/dataclient/WikiSite;

    .line 763
    .line 764
    iput-object v8, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$6:Ljava/util/List;

    .line 765
    .line 766
    iput-object v2, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$8:Ljava/lang/Integer;

    .line 767
    .line 768
    iput-object v12, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$9:Ljava/lang/String;

    .line 769
    .line 770
    iput-object v10, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$10:Ljava/lang/String;

    .line 771
    .line 772
    iput-object v7, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$12:Ljava/util/Iterator;

    .line 773
    .line 774
    iput-object v6, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$14:Ljava/lang/String;

    .line 775
    .line 776
    iput-object v5, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->L$15:Lkotlin/jvm/internal/Ref$IntRef;

    .line 777
    .line 778
    iput v4, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$0:I

    .line 779
    .line 780
    iput-boolean v1, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->Z$0:Z

    .line 781
    .line 782
    iput v0, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$1:I

    .line 783
    .line 784
    iput v9, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->I$2:I

    .line 785
    .line 786
    const/4 v9, 0x5

    .line 787
    iput v9, v3, Lorg/wikipedia/search/StandardSearchRepository$search$1;->label:I

    .line 788
    .line 789
    const/4 v13, 0x0

    .line 790
    invoke-interface {v11, v15, v4, v13, v3}, Lorg/wikipedia/dataclient/Service;->fullTextSearch(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v11

    .line 794
    move-object/from16 v9, p8

    .line 795
    .line 796
    if-ne v11, v9, :cond_11

    .line 797
    .line 798
    :goto_c
    return-object v9

    .line 799
    :cond_11
    move-object/from16 v16, v2

    .line 800
    .line 801
    move-object v2, v11

    .line 802
    move-object/from16 v11, p0

    .line 803
    .line 804
    :goto_d
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 805
    .line 806
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 807
    .line 808
    if-eqz v2, :cond_12

    .line 809
    .line 810
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 811
    .line 812
    if-eqz v2, :cond_12

    .line 813
    .line 814
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    goto :goto_e

    .line 819
    :cond_12
    const/4 v2, 0x0

    .line 820
    :goto_e
    iput v2, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 821
    .line 822
    move v2, v4

    .line 823
    move v4, v0

    .line 824
    move-object/from16 v0, v16

    .line 825
    .line 826
    move-object/from16 v16, v13

    .line 827
    .line 828
    move-object v13, v12

    .line 829
    move-object v12, v10

    .line 830
    move v10, v2

    .line 831
    move-object v2, v7

    .line 832
    move-object v7, v3

    .line 833
    move-object v3, v2

    .line 834
    move-object v2, v5

    .line 835
    move-object v5, v8

    .line 836
    move-object v8, v11

    .line 837
    const/16 v17, 0x5

    .line 838
    .line 839
    goto :goto_f

    .line 840
    :cond_13
    move-object/from16 v9, p8

    .line 841
    .line 842
    move-object/from16 p0, v13

    .line 843
    .line 844
    move-object v13, v7

    .line 845
    move-object v7, v3

    .line 846
    move-object v3, v13

    .line 847
    move-object v13, v12

    .line 848
    const/16 v16, 0x0

    .line 849
    .line 850
    const/16 v17, 0x5

    .line 851
    .line 852
    move-object v12, v10

    .line 853
    move v10, v4

    .line 854
    move v4, v0

    .line 855
    move-object v0, v2

    .line 856
    move-object v2, v5

    .line 857
    move-object v5, v8

    .line 858
    move-object/from16 v8, p0

    .line 859
    .line 860
    goto :goto_f

    .line 861
    :cond_14
    move-object v2, v9

    .line 862
    move-object v9, v11

    .line 863
    const/16 v16, 0x0

    .line 864
    .line 865
    const/16 v17, 0x5

    .line 866
    .line 867
    move-object/from16 v19, v14

    .line 868
    .line 869
    move-object v14, v2

    .line 870
    move-object v2, v15

    .line 871
    move-object/from16 v15, v19

    .line 872
    .line 873
    :goto_f
    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 874
    .line 875
    new-instance v11, Ljava/lang/Integer;

    .line 876
    .line 877
    invoke-direct {v11, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 878
    .line 879
    .line 880
    new-instance v2, Lkotlin/Pair;

    .line 881
    .line 882
    invoke-direct {v2, v6, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 883
    .line 884
    .line 885
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-object v11, v9

    .line 889
    move-object v9, v14

    .line 890
    move-object v14, v15

    .line 891
    const/4 v2, 0x0

    .line 892
    goto/16 :goto_a

    .line 893
    .line 894
    :cond_15
    new-instance v1, Ljava/util/HashSet;

    .line 895
    .line 896
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 897
    .line 898
    .line 899
    new-instance v2, Ljava/util/ArrayList;

    .line 900
    .line 901
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .line 903
    .line 904
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 905
    .line 906
    .line 907
    move-result-object v3

    .line 908
    :cond_16
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 909
    .line 910
    .line 911
    move-result v4

    .line 912
    if-eqz v4, :cond_17

    .line 913
    .line 914
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v4

    .line 918
    move-object v5, v4

    .line 919
    check-cast v5, Lorg/wikipedia/search/SearchResult;

    .line 920
    .line 921
    iget-object v5, v5, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 922
    .line 923
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    move-result v5

    .line 931
    if-eqz v5, :cond_16

    .line 932
    .line 933
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    goto :goto_10

    .line 937
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    .line 938
    .line 939
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 940
    .line 941
    .line 942
    new-instance v2, Lorg/wikipedia/search/StandardSearchResults;

    .line 943
    .line 944
    invoke-direct {v2, v1, v0, v13, v12}, Lorg/wikipedia/search/StandardSearchResults;-><init>(Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    return-object v2
.end method

.method public declared-synchronized threadExiting(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p1, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->exited:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    sget-object p0, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
