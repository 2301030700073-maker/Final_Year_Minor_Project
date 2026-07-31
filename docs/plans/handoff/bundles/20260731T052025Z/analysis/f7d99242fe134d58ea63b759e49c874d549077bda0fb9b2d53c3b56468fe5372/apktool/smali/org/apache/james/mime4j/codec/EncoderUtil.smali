.class public abstract Lorg/apache/james/mime4j/codec/EncoderUtil;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ATEXT_CHARS:Ljava/util/BitSet;

.field public static final BASE64_TABLE:[B

.field public static final QUOTE:Ljava/util/regex/Pattern;

.field public static final Q_RESTRICTED_CHARS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    .line 2
    .line 3
    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    .line 4
    .line 5
    const-string v0, "=_?"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    .line 8
    .line 9
    .line 10
    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    .line 11
    .line 12
    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    .line 17
    .line 18
    const-string v0, "()<>@,;:\\\"/[]?="

    .line 19
    .line 20
    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    .line 21
    .line 22
    .line 23
    const-string v0, "()<>@.,;:\\\"[]"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    .line 30
    .line 31
    const-string v0, "[\\\\\"]"

    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->QUOTE:Ljava/util/regex/Pattern;

    .line 38
    .line 39
    return-void
.end method

.method public static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-array p1, p1, [B

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public static encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 2

    .line 170
    array-length v0, p3

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    const/16 v0, 0x4b

    if-gt v1, v0, :cond_0

    .line 172
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 173
    invoke-static {p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    const/4 v0, -0x1

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p3

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 177
    invoke-static {p0, v0, p2, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 180
    invoke-static {p0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object p0

    .line 181
    const-string p1, " "

    .line 182
    invoke-static {v0, p1, p0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeB([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    add-int/lit8 v3, v1, -0x2

    .line 9
    .line 10
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    .line 11
    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    aget-byte v3, p0, v2

    .line 15
    .line 16
    and-int/lit16 v3, v3, 0xff

    .line 17
    .line 18
    shl-int/lit8 v3, v3, 0x10

    .line 19
    .line 20
    add-int/lit8 v5, v2, 0x1

    .line 21
    .line 22
    aget-byte v5, p0, v5

    .line 23
    .line 24
    and-int/lit16 v5, v5, 0xff

    .line 25
    .line 26
    shl-int/lit8 v5, v5, 0x8

    .line 27
    .line 28
    or-int/2addr v3, v5

    .line 29
    add-int/lit8 v5, v2, 0x2

    .line 30
    .line 31
    aget-byte v5, p0, v5

    .line 32
    .line 33
    and-int/lit16 v5, v5, 0xff

    .line 34
    .line 35
    or-int/2addr v3, v5

    .line 36
    shr-int/lit8 v5, v3, 0x12

    .line 37
    .line 38
    and-int/lit8 v5, v5, 0x3f

    .line 39
    .line 40
    aget-byte v5, v4, v5

    .line 41
    .line 42
    int-to-char v5, v5

    .line 43
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    shr-int/lit8 v5, v3, 0xc

    .line 47
    .line 48
    and-int/lit8 v5, v5, 0x3f

    .line 49
    .line 50
    aget-byte v5, v4, v5

    .line 51
    .line 52
    int-to-char v5, v5

    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    shr-int/lit8 v5, v3, 0x6

    .line 57
    .line 58
    and-int/lit8 v5, v5, 0x3f

    .line 59
    .line 60
    aget-byte v5, v4, v5

    .line 61
    .line 62
    int-to-char v5, v5

    .line 63
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    and-int/lit8 v3, v3, 0x3f

    .line 67
    .line 68
    aget-byte v3, v4, v3

    .line 69
    .line 70
    int-to-char v3, v3

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    if-ne v2, v3, :cond_1

    .line 78
    .line 79
    aget-byte v1, p0, v2

    .line 80
    .line 81
    and-int/lit16 v1, v1, 0xff

    .line 82
    .line 83
    shl-int/lit8 v1, v1, 0x10

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    aget-byte p0, p0, v2

    .line 88
    .line 89
    and-int/lit16 p0, p0, 0xff

    .line 90
    .line 91
    shl-int/lit8 p0, p0, 0x8

    .line 92
    .line 93
    or-int/2addr p0, v1

    .line 94
    shr-int/lit8 v1, p0, 0x12

    .line 95
    .line 96
    and-int/lit8 v1, v1, 0x3f

    .line 97
    .line 98
    aget-byte v1, v4, v1

    .line 99
    .line 100
    int-to-char v1, v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    shr-int/lit8 v1, p0, 0xc

    .line 105
    .line 106
    and-int/lit8 v1, v1, 0x3f

    .line 107
    .line 108
    aget-byte v1, v4, v1

    .line 109
    .line 110
    int-to-char v1, v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    shr-int/lit8 p0, p0, 0x6

    .line 115
    .line 116
    and-int/lit8 p0, p0, 0x3f

    .line 117
    .line 118
    aget-byte p0, v4, p0

    .line 119
    .line 120
    int-to-char p0, p0

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const/16 p0, 0x3d

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 131
    .line 132
    if-ne v2, v1, :cond_2

    .line 133
    .line 134
    aget-byte p0, p0, v2

    .line 135
    .line 136
    and-int/lit16 p0, p0, 0xff

    .line 137
    .line 138
    shl-int/lit8 p0, p0, 0x10

    .line 139
    .line 140
    shr-int/lit8 v1, p0, 0x12

    .line 141
    .line 142
    and-int/lit8 v1, v1, 0x3f

    .line 143
    .line 144
    aget-byte v1, v4, v1

    .line 145
    .line 146
    int-to-char v1, v1

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    shr-int/lit8 p0, p0, 0xc

    .line 151
    .line 152
    and-int/lit8 p0, p0, 0x3f

    .line 153
    .line 154
    aget-byte p0, v4, p0

    .line 155
    .line 156
    int-to-char p0, p0

    .line 157
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p0, "=="

    .line 161
    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0
.end method

.method public static encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    .line 7
    aget-byte v4, p3, v2

    .line 8
    .line 9
    and-int/lit16 v4, v4, 0xff

    .line 10
    .line 11
    const/16 v5, 0x20

    .line 12
    .line 13
    if-ne v4, v5, :cond_1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x3

    .line 27
    .line 28
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v0, v3

    .line 36
    add-int/lit8 v0, v0, 0x2

    .line 37
    .line 38
    const/16 v2, 0x4b

    .line 39
    .line 40
    if-gt v0, v2, :cond_3

    .line 41
    .line 42
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ([B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, "?="

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    div-int/lit8 p3, p3, 0x2

    .line 68
    .line 69
    const/4 v0, -0x1

    .line 70
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {p0, v0, p2, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-static {p0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string p1, " "

    .line 99
    .line 100
    invoke-static {v0, p1, p0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method

.method public static encodeQ([B)Ljava/lang/String;
    .locals 6

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    const/16 v3, 0x5f

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 108
    :cond_0
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x3d

    .line 109
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v4, v4, 0x4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    add-int/lit8 v4, v4, 0x30

    :goto_1
    int-to-char v4, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x37

    goto :goto_1

    .line 110
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    if-ge v3, v5, :cond_2

    add-int/lit8 v3, v3, 0x30

    :goto_3
    int-to-char v3, v3

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x37

    goto :goto_3

    .line 111
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_3
    int-to-char v3, v4

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initChars(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x21

    .line 9
    .line 10
    :goto_0
    const/16 v2, 0x7f

    .line 11
    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    int-to-char v1, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v0
.end method
