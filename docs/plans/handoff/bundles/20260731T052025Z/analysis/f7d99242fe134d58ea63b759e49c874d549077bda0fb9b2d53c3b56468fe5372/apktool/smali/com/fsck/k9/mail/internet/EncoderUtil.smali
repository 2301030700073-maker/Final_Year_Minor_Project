.class public abstract Lcom/fsck/k9/mail/internet/EncoderUtil;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final Q_RESTRICTED_CHARS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
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
    const-string v2, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, -0x1

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    int-to-char v1, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sput-object v0, Lcom/fsck/k9/mail/internet/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    .line 31
    .line 32
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

    .line 1
    array-length v0, p3

    .line 2
    add-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    mul-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v1, v0

    .line 13
    add-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    const/16 v0, 0x4b

    .line 16
    .line 17
    if-gt v1, v0, :cond_0

    .line 18
    .line 19
    invoke-static {p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB([B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "?="

    .line 24
    .line 25
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    div-int/lit8 p3, p3, 0x2

    .line 35
    .line 36
    add-int/lit8 v0, p3, -0x1

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    add-int/lit8 p3, p3, -0x1

    .line 49
    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0, p2}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {p0, v0, p2, v1}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-static {p0, p1, p2, p3}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string p1, " "

    .line 76
    .line 77
    invoke-static {v0, p1, p0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
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
    sget-object v5, Lcom/fsck/k9/mail/internet/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

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
    invoke-static {p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ([B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "?="

    .line 47
    .line 48
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    div-int/lit8 p3, p3, 0x2

    .line 58
    .line 59
    add-int/lit8 v0, p3, -0x1

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    add-int/lit8 p3, p3, -0x1

    .line 72
    .line 73
    :cond_4
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0, p2}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {p0, v0, p2, v1}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-static {p0, p1, p2, p3}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string p1, " "

    .line 98
    .line 99
    invoke-static {v0, p1, p0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method
