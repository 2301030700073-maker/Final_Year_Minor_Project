.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final EMPTY:Lokio/ByteString;


# instance fields
.field public final data:[B

.field public transient hashCode:I

.field public transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokio/ByteString;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokio/ByteString;->data:[B

    .line 8
    .line 9
    return-void
.end method

.method public static indexOf$default(Lokio/ByteString;Lokio/ByteString;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->indexOf(I[B)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lokio/ByteString;->lastIndexOf([B)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static substring$default(Lokio/ByteString;III)Lokio/ByteString;
    .locals 1

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const p2, -0x499602d2

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .locals 12

    .line 1
    sget-object v0, Lokio/-Base64;->BASE64:[B

    .line 2
    .line 3
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x2

    .line 13
    add-int/2addr v1, v2

    .line 14
    div-int/lit8 v1, v1, 0x3

    .line 15
    .line 16
    mul-int/lit8 v1, v1, 0x4

    .line 17
    .line 18
    new-array v1, v1, [B

    .line 19
    .line 20
    array-length v3, p0

    .line 21
    array-length v4, p0

    .line 22
    rem-int/lit8 v4, v4, 0x3

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    const/4 v4, 0x0

    .line 26
    move v5, v4

    .line 27
    :goto_0
    if-ge v4, v3, :cond_0

    .line 28
    .line 29
    add-int/lit8 v6, v4, 0x1

    .line 30
    .line 31
    aget-byte v7, p0, v4

    .line 32
    .line 33
    add-int/lit8 v8, v4, 0x2

    .line 34
    .line 35
    aget-byte v6, p0, v6

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x3

    .line 38
    .line 39
    aget-byte v8, p0, v8

    .line 40
    .line 41
    add-int/lit8 v9, v5, 0x1

    .line 42
    .line 43
    and-int/lit16 v10, v7, 0xff

    .line 44
    .line 45
    shr-int/2addr v10, v2

    .line 46
    aget-byte v10, v0, v10

    .line 47
    .line 48
    aput-byte v10, v1, v5

    .line 49
    .line 50
    add-int/lit8 v10, v5, 0x2

    .line 51
    .line 52
    and-int/lit8 v7, v7, 0x3

    .line 53
    .line 54
    shl-int/lit8 v7, v7, 0x4

    .line 55
    .line 56
    and-int/lit16 v11, v6, 0xff

    .line 57
    .line 58
    shr-int/lit8 v11, v11, 0x4

    .line 59
    .line 60
    or-int/2addr v7, v11

    .line 61
    aget-byte v7, v0, v7

    .line 62
    .line 63
    aput-byte v7, v1, v9

    .line 64
    .line 65
    add-int/lit8 v7, v5, 0x3

    .line 66
    .line 67
    and-int/lit8 v6, v6, 0xf

    .line 68
    .line 69
    shl-int/2addr v6, v2

    .line 70
    and-int/lit16 v9, v8, 0xff

    .line 71
    .line 72
    shr-int/lit8 v9, v9, 0x6

    .line 73
    .line 74
    or-int/2addr v6, v9

    .line 75
    aget-byte v6, v0, v6

    .line 76
    .line 77
    aput-byte v6, v1, v10

    .line 78
    .line 79
    add-int/lit8 v5, v5, 0x4

    .line 80
    .line 81
    and-int/lit8 v6, v8, 0x3f

    .line 82
    .line 83
    aget-byte v6, v0, v6

    .line 84
    .line 85
    aput-byte v6, v1, v7

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    array-length v6, p0

    .line 89
    sub-int/2addr v6, v3

    .line 90
    const/4 v3, 0x1

    .line 91
    const/16 v7, 0x3d

    .line 92
    .line 93
    if-eq v6, v3, :cond_2

    .line 94
    .line 95
    if-eq v6, v2, :cond_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .line 99
    .line 100
    aget-byte v4, p0, v4

    .line 101
    .line 102
    aget-byte p0, p0, v3

    .line 103
    .line 104
    add-int/lit8 v3, v5, 0x1

    .line 105
    .line 106
    and-int/lit16 v6, v4, 0xff

    .line 107
    .line 108
    shr-int/2addr v6, v2

    .line 109
    aget-byte v6, v0, v6

    .line 110
    .line 111
    aput-byte v6, v1, v5

    .line 112
    .line 113
    add-int/lit8 v6, v5, 0x2

    .line 114
    .line 115
    and-int/lit8 v4, v4, 0x3

    .line 116
    .line 117
    shl-int/lit8 v4, v4, 0x4

    .line 118
    .line 119
    and-int/lit16 v8, p0, 0xff

    .line 120
    .line 121
    shr-int/lit8 v8, v8, 0x4

    .line 122
    .line 123
    or-int/2addr v4, v8

    .line 124
    aget-byte v4, v0, v4

    .line 125
    .line 126
    aput-byte v4, v1, v3

    .line 127
    .line 128
    add-int/lit8 v5, v5, 0x3

    .line 129
    .line 130
    and-int/lit8 p0, p0, 0xf

    .line 131
    .line 132
    shl-int/2addr p0, v2

    .line 133
    aget-byte p0, v0, p0

    .line 134
    .line 135
    aput-byte p0, v1, v6

    .line 136
    .line 137
    aput-byte v7, v1, v5

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    aget-byte p0, p0, v4

    .line 141
    .line 142
    add-int/lit8 v3, v5, 0x1

    .line 143
    .line 144
    and-int/lit16 v4, p0, 0xff

    .line 145
    .line 146
    shr-int/lit8 v2, v4, 0x2

    .line 147
    .line 148
    aget-byte v2, v0, v2

    .line 149
    .line 150
    aput-byte v2, v1, v5

    .line 151
    .line 152
    add-int/lit8 v2, v5, 0x2

    .line 153
    .line 154
    and-int/lit8 p0, p0, 0x3

    .line 155
    .line 156
    shl-int/lit8 p0, p0, 0x4

    .line 157
    .line 158
    aget-byte p0, v0, p0

    .line 159
    .line 160
    aput-byte p0, v1, v3

    .line 161
    .line 162
    add-int/lit8 v5, v5, 0x3

    .line 163
    .line 164
    aput-byte v7, v1, v2

    .line 165
    .line 166
    aput-byte v7, v1, v5

    .line 167
    .line 168
    :goto_1
    new-instance p0, Ljava/lang/String;

    .line 169
    .line 170
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 171
    .line 172
    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 173
    .line 174
    .line 175
    return-object p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 50
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result p0

    return p0
.end method

.method public final compareTo(Lokio/ByteString;)I
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lokio/ByteString;->getSize$okio()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    const/4 v5, -0x1

    .line 19
    const/4 v6, 0x1

    .line 20
    if-ge v4, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Lokio/ByteString;->internalGet$okio(I)B

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    and-int/lit16 v7, v7, 0xff

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Lokio/ByteString;->internalGet$okio(I)B

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    and-int/lit16 v8, v8, 0xff

    .line 33
    .line 34
    if-ne v7, v8, :cond_0

    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-ge v7, v8, :cond_1

    .line 40
    .line 41
    return v5

    .line 42
    :cond_1
    return v6

    .line 43
    :cond_2
    if-ne v0, v1, :cond_3

    .line 44
    .line 45
    return v3

    .line 46
    :cond_3
    if-ge v0, v1, :cond_4

    .line 47
    .line 48
    return v5

    .line 49
    :cond_4
    return v6
.end method

.method public digest$okio(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0}, Lokio/ByteString;->getSize$okio()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 11
    .line 12
    invoke-virtual {p1, p0, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance p1, Lokio/ByteString;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0}, Lokio/ByteString;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lokio/ByteString;

    .line 10
    .line 11
    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 16
    .line 17
    array-length v2, p0

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    array-length v0, p0

    .line 21
    invoke-virtual {p1, v1, v1, v0, p0}, Lokio/ByteString;->rangeEquals(III[B)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    :goto_0
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    return v1
.end method

.method public getSize$okio()I
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lokio/ByteString;->hashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lokio/ByteString;->hashCode:I

    .line 13
    .line 14
    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    mul-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    new-array v0, v0, [C

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-byte v4, p0, v2

    .line 14
    .line 15
    add-int/lit8 v5, v3, 0x1

    .line 16
    .line 17
    shr-int/lit8 v6, v4, 0x4

    .line 18
    .line 19
    and-int/lit8 v6, v6, 0xf

    .line 20
    .line 21
    sget-object v7, Lokio/internal/ZipFilesKt;->HEX_DIGIT_CHARS:[C

    .line 22
    .line 23
    aget-char v6, v7, v6

    .line 24
    .line 25
    aput-char v6, v0, v3

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x2

    .line 28
    .line 29
    and-int/lit8 v4, v4, 0xf

    .line 30
    .line 31
    aget-char v4, v7, v4

    .line 32
    .line 33
    aput-char v4, v0, v5

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method public indexOf(I[B)I
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    array-length v1, p2

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-gt p1, v0, :cond_1

    .line 15
    .line 16
    :goto_0
    array-length v2, p2

    .line 17
    invoke-static {p1, v1, v2, p0, p2}, Lokhttp3/HttpUrl$Companion;->arrayRangeEquals(III[B[B)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    return p1

    .line 24
    :cond_0
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, -0x1

    .line 30
    return p0
.end method

.method public internalArray$okio()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public internalGet$okio(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    return p0
.end method

.method public lastIndexOf([B)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lokio/ByteString;->getSize$okio()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 9
    .line 10
    array-length v1, p0

    .line 11
    array-length v2, p1

    .line 12
    sub-int/2addr v1, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    const/4 v1, -0x1

    .line 18
    if-ge v1, v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    array-length v2, p1

    .line 22
    invoke-static {v0, v1, v2, p0, p1}, Lokhttp3/HttpUrl$Companion;->arrayRangeEquals(III[B[B)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v1
.end method

.method public rangeEquals(III[B)Z
    .locals 1

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 7
    .line 8
    array-length v0, p0

    .line 9
    sub-int/2addr v0, p3

    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    if-ltz p2, :cond_0

    .line 13
    .line 14
    array-length v0, p4

    .line 15
    sub-int/2addr v0, p3

    .line 16
    if-gt p2, v0, :cond_0

    .line 17
    .line 18
    invoke-static {p1, p2, p3, p0, p4}, Lokhttp3/HttpUrl$Companion;->arrayRangeEquals(III[B[B)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public rangeEquals(ILokio/ByteString;I)Z
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-object p0, p0, Lokio/ByteString;->data:[B

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p2, v0, p1, p3, p0}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result p0

    return p0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/String;

    .line 5
    .line 6
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 3

    .line 1
    const v0, -0x499602d2

    .line 2
    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/ByteString;->getSize$okio()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    if-ltz p1, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Lokio/ByteString;->data:[B

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    if-gt p2, v2, :cond_3

    .line 17
    .line 18
    sub-int v2, p2, p1

    .line 19
    .line 20
    if-ltz v2, :cond_2

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    array-length v0, v1

    .line 25
    if-ne p2, v0, :cond_1

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    new-instance p0, Lokio/ByteString;

    .line 29
    .line 30
    invoke-static {v1, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyOfRange([BII)[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lokio/ByteString;-><init>([B)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const-string p0, "endIndex < beginIndex"

    .line 39
    .line 40
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p1, "endIndex > length("

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    array-length p1, v1

    .line 52
    const/16 p2, 0x29

    .line 53
    .line 54
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_4
    const-string p0, "beginIndex < 0"

    .line 63
    .line 64
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lokio/ByteString;->data:[B

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_5

    .line 6
    .line 7
    aget-byte v2, v1, v0

    .line 8
    .line 9
    const/16 v3, 0x41

    .line 10
    .line 11
    if-lt v2, v3, :cond_4

    .line 12
    .line 13
    const/16 v4, 0x5a

    .line 14
    .line 15
    if-le v2, v4, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    array-length p0, v1

    .line 19
    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    add-int/lit8 v1, v0, 0x1

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x20

    .line 26
    .line 27
    int-to-byte v2, v2

    .line 28
    aput-byte v2, p0, v0

    .line 29
    .line 30
    :goto_1
    array-length v0, p0

    .line 31
    if-ge v1, v0, :cond_3

    .line 32
    .line 33
    aget-byte v0, p0, v1

    .line 34
    .line 35
    if-lt v0, v3, :cond_2

    .line 36
    .line 37
    if-le v0, v4, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x20

    .line 41
    .line 42
    int-to-byte v0, v0

    .line 43
    aput-byte v0, p0, v1

    .line 44
    .line 45
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    new-instance v0, Lokio/ByteString;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lokio/ByteString;->data:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    const-string v0, "[size=0]"

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    array-length v2, v1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :cond_1
    :goto_0
    const/16 v8, 0x40

    .line 16
    .line 17
    if-ge v4, v2, :cond_2f

    .line 18
    .line 19
    aget-byte v9, v1, v4

    .line 20
    .line 21
    const v10, 0xfffd

    .line 22
    .line 23
    .line 24
    const/16 v11, 0xa0

    .line 25
    .line 26
    const/16 v12, 0x7f

    .line 27
    .line 28
    const/16 v13, 0x20

    .line 29
    .line 30
    const/16 v14, 0xd

    .line 31
    .line 32
    const/16 v15, 0xa

    .line 33
    .line 34
    const/high16 v3, 0x10000

    .line 35
    .line 36
    const/16 v16, 0x2

    .line 37
    .line 38
    const/16 v17, 0x1

    .line 39
    .line 40
    if-ltz v9, :cond_d

    .line 41
    .line 42
    add-int/lit8 v18, v6, 0x1

    .line 43
    .line 44
    if-ne v6, v8, :cond_2

    .line 45
    .line 46
    goto/16 :goto_a

    .line 47
    .line 48
    :cond_2
    if-eq v9, v15, :cond_4

    .line 49
    .line 50
    if-eq v9, v14, :cond_4

    .line 51
    .line 52
    if-ltz v9, :cond_3

    .line 53
    .line 54
    if-ge v9, v13, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    if-gt v12, v9, :cond_4

    .line 58
    .line 59
    if-ge v9, v11, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    if-ne v9, v10, :cond_6

    .line 63
    .line 64
    :cond_5
    :goto_1
    const/4 v5, -0x1

    .line 65
    goto/16 :goto_a

    .line 66
    .line 67
    :cond_6
    if-ge v9, v3, :cond_7

    .line 68
    .line 69
    move/from16 v6, v17

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_7
    move/from16 v6, v16

    .line 73
    .line 74
    :goto_2
    add-int/2addr v5, v6

    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    :goto_3
    move/from16 v6, v18

    .line 78
    .line 79
    if-ge v4, v2, :cond_1

    .line 80
    .line 81
    aget-byte v9, v1, v4

    .line 82
    .line 83
    if-ltz v9, :cond_1

    .line 84
    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    add-int/lit8 v18, v6, 0x1

    .line 88
    .line 89
    if-ne v6, v8, :cond_8

    .line 90
    .line 91
    goto/16 :goto_a

    .line 92
    .line 93
    :cond_8
    if-eq v9, v15, :cond_a

    .line 94
    .line 95
    if-eq v9, v14, :cond_a

    .line 96
    .line 97
    if-ltz v9, :cond_9

    .line 98
    .line 99
    if-ge v9, v13, :cond_9

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_9
    if-gt v12, v9, :cond_a

    .line 103
    .line 104
    if-ge v9, v11, :cond_a

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_a
    if-ne v9, v10, :cond_b

    .line 108
    .line 109
    :goto_4
    goto :goto_1

    .line 110
    :cond_b
    if-ge v9, v3, :cond_c

    .line 111
    .line 112
    move/from16 v6, v17

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_c
    move/from16 v6, v16

    .line 116
    .line 117
    :goto_5
    add-int/2addr v5, v6

    .line 118
    goto :goto_3

    .line 119
    :cond_d
    shr-int/lit8 v7, v9, 0x5

    .line 120
    .line 121
    const/4 v3, -0x2

    .line 122
    const/16 v10, 0x80

    .line 123
    .line 124
    if-ne v7, v3, :cond_16

    .line 125
    .line 126
    add-int/lit8 v3, v4, 0x1

    .line 127
    .line 128
    if-gt v2, v3, :cond_e

    .line 129
    .line 130
    if-ne v6, v8, :cond_5

    .line 131
    .line 132
    goto/16 :goto_a

    .line 133
    .line 134
    :cond_e
    aget-byte v3, v1, v3

    .line 135
    .line 136
    and-int/lit16 v7, v3, 0xc0

    .line 137
    .line 138
    if-ne v7, v10, :cond_15

    .line 139
    .line 140
    xor-int/lit16 v3, v3, 0xf80

    .line 141
    .line 142
    shl-int/lit8 v7, v9, 0x6

    .line 143
    .line 144
    xor-int/2addr v3, v7

    .line 145
    if-ge v3, v10, :cond_f

    .line 146
    .line 147
    if-ne v6, v8, :cond_5

    .line 148
    .line 149
    goto/16 :goto_a

    .line 150
    .line 151
    :cond_f
    add-int/lit8 v7, v6, 0x1

    .line 152
    .line 153
    if-ne v6, v8, :cond_10

    .line 154
    .line 155
    goto/16 :goto_a

    .line 156
    .line 157
    :cond_10
    if-eq v3, v15, :cond_12

    .line 158
    .line 159
    if-eq v3, v14, :cond_12

    .line 160
    .line 161
    if-ltz v3, :cond_11

    .line 162
    .line 163
    if-ge v3, v13, :cond_11

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_11
    if-gt v12, v3, :cond_12

    .line 167
    .line 168
    if-ge v3, v11, :cond_12

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_12
    const v6, 0xfffd

    .line 172
    .line 173
    .line 174
    if-ne v3, v6, :cond_13

    .line 175
    .line 176
    :goto_6
    goto :goto_1

    .line 177
    :cond_13
    const/high16 v6, 0x10000

    .line 178
    .line 179
    if-ge v3, v6, :cond_14

    .line 180
    .line 181
    move/from16 v16, v17

    .line 182
    .line 183
    :cond_14
    add-int v5, v5, v16

    .line 184
    .line 185
    add-int/lit8 v4, v4, 0x2

    .line 186
    .line 187
    :goto_7
    move v6, v7

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_15
    if-ne v6, v8, :cond_5

    .line 191
    .line 192
    goto/16 :goto_a

    .line 193
    .line 194
    :cond_16
    shr-int/lit8 v7, v9, 0x4

    .line 195
    .line 196
    const v11, 0xe000

    .line 197
    .line 198
    .line 199
    const v12, 0xd800

    .line 200
    .line 201
    .line 202
    if-ne v7, v3, :cond_21

    .line 203
    .line 204
    add-int/lit8 v3, v4, 0x2

    .line 205
    .line 206
    if-gt v2, v3, :cond_17

    .line 207
    .line 208
    if-ne v6, v8, :cond_5

    .line 209
    .line 210
    goto/16 :goto_a

    .line 211
    .line 212
    :cond_17
    add-int/lit8 v7, v4, 0x1

    .line 213
    .line 214
    aget-byte v7, v1, v7

    .line 215
    .line 216
    and-int/lit16 v13, v7, 0xc0

    .line 217
    .line 218
    if-ne v13, v10, :cond_20

    .line 219
    .line 220
    aget-byte v3, v1, v3

    .line 221
    .line 222
    and-int/lit16 v13, v3, 0xc0

    .line 223
    .line 224
    if-ne v13, v10, :cond_1f

    .line 225
    .line 226
    const v10, -0x1e080

    .line 227
    .line 228
    .line 229
    xor-int/2addr v3, v10

    .line 230
    shl-int/lit8 v7, v7, 0x6

    .line 231
    .line 232
    xor-int/2addr v3, v7

    .line 233
    shl-int/lit8 v7, v9, 0xc

    .line 234
    .line 235
    xor-int/2addr v3, v7

    .line 236
    const/16 v7, 0x800

    .line 237
    .line 238
    if-ge v3, v7, :cond_18

    .line 239
    .line 240
    if-ne v6, v8, :cond_5

    .line 241
    .line 242
    goto/16 :goto_a

    .line 243
    .line 244
    :cond_18
    if-gt v12, v3, :cond_19

    .line 245
    .line 246
    if-ge v3, v11, :cond_19

    .line 247
    .line 248
    if-ne v6, v8, :cond_5

    .line 249
    .line 250
    goto/16 :goto_a

    .line 251
    .line 252
    :cond_19
    add-int/lit8 v7, v6, 0x1

    .line 253
    .line 254
    if-ne v6, v8, :cond_1a

    .line 255
    .line 256
    goto/16 :goto_a

    .line 257
    .line 258
    :cond_1a
    if-eq v3, v15, :cond_1c

    .line 259
    .line 260
    if-eq v3, v14, :cond_1c

    .line 261
    .line 262
    if-ltz v3, :cond_1b

    .line 263
    .line 264
    const/16 v6, 0x20

    .line 265
    .line 266
    if-ge v3, v6, :cond_1b

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_1b
    const/16 v6, 0x7f

    .line 270
    .line 271
    if-gt v6, v3, :cond_1c

    .line 272
    .line 273
    const/16 v6, 0xa0

    .line 274
    .line 275
    if-ge v3, v6, :cond_1c

    .line 276
    .line 277
    goto :goto_8

    .line 278
    :cond_1c
    const v6, 0xfffd

    .line 279
    .line 280
    .line 281
    if-ne v3, v6, :cond_1d

    .line 282
    .line 283
    :goto_8
    goto/16 :goto_1

    .line 284
    .line 285
    :cond_1d
    const/high16 v6, 0x10000

    .line 286
    .line 287
    if-ge v3, v6, :cond_1e

    .line 288
    .line 289
    move/from16 v16, v17

    .line 290
    .line 291
    :cond_1e
    add-int v5, v5, v16

    .line 292
    .line 293
    add-int/lit8 v4, v4, 0x3

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_1f
    if-ne v6, v8, :cond_5

    .line 297
    .line 298
    goto/16 :goto_a

    .line 299
    .line 300
    :cond_20
    if-ne v6, v8, :cond_5

    .line 301
    .line 302
    goto/16 :goto_a

    .line 303
    .line 304
    :cond_21
    shr-int/lit8 v7, v9, 0x3

    .line 305
    .line 306
    if-ne v7, v3, :cond_2e

    .line 307
    .line 308
    add-int/lit8 v3, v4, 0x3

    .line 309
    .line 310
    if-gt v2, v3, :cond_22

    .line 311
    .line 312
    if-ne v6, v8, :cond_5

    .line 313
    .line 314
    goto/16 :goto_a

    .line 315
    .line 316
    :cond_22
    add-int/lit8 v7, v4, 0x1

    .line 317
    .line 318
    aget-byte v7, v1, v7

    .line 319
    .line 320
    and-int/lit16 v13, v7, 0xc0

    .line 321
    .line 322
    if-ne v13, v10, :cond_2d

    .line 323
    .line 324
    add-int/lit8 v13, v4, 0x2

    .line 325
    .line 326
    aget-byte v13, v1, v13

    .line 327
    .line 328
    and-int/lit16 v14, v13, 0xc0

    .line 329
    .line 330
    if-ne v14, v10, :cond_2c

    .line 331
    .line 332
    aget-byte v3, v1, v3

    .line 333
    .line 334
    and-int/lit16 v14, v3, 0xc0

    .line 335
    .line 336
    if-ne v14, v10, :cond_2b

    .line 337
    .line 338
    const v10, 0x381f80

    .line 339
    .line 340
    .line 341
    xor-int/2addr v3, v10

    .line 342
    shl-int/lit8 v10, v13, 0x6

    .line 343
    .line 344
    xor-int/2addr v3, v10

    .line 345
    shl-int/lit8 v7, v7, 0xc

    .line 346
    .line 347
    xor-int/2addr v3, v7

    .line 348
    shl-int/lit8 v7, v9, 0x12

    .line 349
    .line 350
    xor-int/2addr v3, v7

    .line 351
    const v7, 0x10ffff

    .line 352
    .line 353
    .line 354
    if-le v3, v7, :cond_23

    .line 355
    .line 356
    if-ne v6, v8, :cond_5

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_23
    if-gt v12, v3, :cond_24

    .line 360
    .line 361
    if-ge v3, v11, :cond_24

    .line 362
    .line 363
    if-ne v6, v8, :cond_5

    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_24
    const/high16 v7, 0x10000

    .line 367
    .line 368
    if-ge v3, v7, :cond_25

    .line 369
    .line 370
    if-ne v6, v8, :cond_5

    .line 371
    .line 372
    goto :goto_a

    .line 373
    :cond_25
    add-int/lit8 v7, v6, 0x1

    .line 374
    .line 375
    if-ne v6, v8, :cond_26

    .line 376
    .line 377
    goto :goto_a

    .line 378
    :cond_26
    if-eq v3, v15, :cond_28

    .line 379
    .line 380
    const/16 v6, 0xd

    .line 381
    .line 382
    if-eq v3, v6, :cond_28

    .line 383
    .line 384
    if-ltz v3, :cond_27

    .line 385
    .line 386
    const/16 v6, 0x20

    .line 387
    .line 388
    if-ge v3, v6, :cond_27

    .line 389
    .line 390
    goto :goto_9

    .line 391
    :cond_27
    const/16 v6, 0x7f

    .line 392
    .line 393
    if-gt v6, v3, :cond_28

    .line 394
    .line 395
    const/16 v6, 0xa0

    .line 396
    .line 397
    if-ge v3, v6, :cond_28

    .line 398
    .line 399
    goto :goto_9

    .line 400
    :cond_28
    const v6, 0xfffd

    .line 401
    .line 402
    .line 403
    if-ne v3, v6, :cond_29

    .line 404
    .line 405
    :goto_9
    goto/16 :goto_1

    .line 406
    .line 407
    :cond_29
    const/high16 v6, 0x10000

    .line 408
    .line 409
    if-ge v3, v6, :cond_2a

    .line 410
    .line 411
    move/from16 v16, v17

    .line 412
    .line 413
    :cond_2a
    add-int v5, v5, v16

    .line 414
    .line 415
    add-int/lit8 v4, v4, 0x4

    .line 416
    .line 417
    goto/16 :goto_7

    .line 418
    .line 419
    :cond_2b
    if-ne v6, v8, :cond_5

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_2c
    if-ne v6, v8, :cond_5

    .line 423
    .line 424
    goto :goto_a

    .line 425
    :cond_2d
    if-ne v6, v8, :cond_5

    .line 426
    .line 427
    goto :goto_a

    .line 428
    :cond_2e
    if-ne v6, v8, :cond_5

    .line 429
    .line 430
    :cond_2f
    :goto_a
    const-string/jumbo v2, "\u2026]"

    .line 431
    .line 432
    .line 433
    const-string v3, "[size="

    .line 434
    .line 435
    const/16 v4, 0x5d

    .line 436
    .line 437
    const/4 v6, -0x1

    .line 438
    if-ne v5, v6, :cond_33

    .line 439
    .line 440
    array-length v5, v1

    .line 441
    if-gt v5, v8, :cond_30

    .line 442
    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    const-string v2, "[hex="

    .line 446
    .line 447
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    return-object v0

    .line 465
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    array-length v3, v1

    .line 471
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v3, " hex="

    .line 475
    .line 476
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    array-length v3, v1

    .line 480
    if-gt v8, v3, :cond_32

    .line 481
    .line 482
    array-length v3, v1

    .line 483
    if-ne v8, v3, :cond_31

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_31
    new-instance v0, Lokio/ByteString;

    .line 487
    .line 488
    const/4 v3, 0x0

    .line 489
    invoke-static {v1, v3, v8}, Lkotlin/collections/ArraysKt___ArraysKt;->copyOfRange([BII)[B

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 494
    .line 495
    .line 496
    :goto_b
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    return-object v0

    .line 511
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    const-string v2, "endIndex > length("

    .line 514
    .line 515
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    array-length v1, v1

    .line 519
    const/16 v2, 0x29

    .line 520
    .line 521
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    const/4 v0, 0x0

    .line 529
    return-object v0

    .line 530
    :cond_33
    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    const/4 v6, 0x0

    .line 535
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    const-string v7, "\\"

    .line 540
    .line 541
    const-string v8, "\\\\"

    .line 542
    .line 543
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    const-string v7, "\n"

    .line 548
    .line 549
    const-string v8, "\\n"

    .line 550
    .line 551
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    const-string v7, "\r"

    .line 556
    .line 557
    const-string v8, "\\r"

    .line 558
    .line 559
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v6

    .line 563
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-ge v5, v0, :cond_34

    .line 568
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    array-length v1, v1

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    const-string v1, " text="

    .line 579
    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    return-object v0

    .line 594
    :cond_34
    const-string v0, "[text="

    .line 595
    .line 596
    invoke-static {v4, v0, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    return-object v0
.end method

.method public final utf8()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lokio/ByteString;->internalArray$okio()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/String;

    .line 13
    .line 14
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    return-object v0
.end method

.method public write$okio(Lokio/Buffer;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    .line 3
    invoke-virtual {p1, p2, p0}, Lokio/Buffer;->write(I[B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
