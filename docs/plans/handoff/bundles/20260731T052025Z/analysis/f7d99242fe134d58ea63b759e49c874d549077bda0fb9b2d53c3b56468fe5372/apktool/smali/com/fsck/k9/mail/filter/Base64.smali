.class public final Lcom/fsck/k9/mail/filter/Base64;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final CHUNK_SEPARATOR:[B

.field public static final base64ToInt:[B

.field public static final intToBase64:[B


# instance fields
.field public buf:[B

.field public currentLinePos:I

.field public final decodeSize:I

.field public final encodeSize:I

.field public eof:Z

.field public final lineLength:I

.field public final lineSeparator:[B

.field public modulus:I

.field public pos:I

.field public readPos:I

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fsck/k9/mail/filter/Base64;->CHUNK_SEPARATOR:[B

    .line 8
    .line 9
    const/16 v0, 0x40

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    .line 17
    .line 18
    const/16 v0, 0x7b

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_2

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/fsck/k9/mail/filter/Base64;->base64ToInt:[B

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    nop

    .line 35
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x4c

    .line 82
    sget-object v1, Lcom/fsck/k9/mail/filter/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/filter/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/fsck/k9/mail/filter/Base64;->lineLength:I

    .line 5
    .line 6
    array-length v0, p2

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iput-object v0, p0, Lcom/fsck/k9/mail/filter/Base64;->lineSeparator:[B

    .line 10
    .line 11
    array-length v1, p2

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    array-length p1, p2

    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Lcom/fsck/k9/mail/filter/Base64;->encodeSize:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput v0, p0, Lcom/fsck/k9/mail/filter/Base64;->encodeSize:I

    .line 25
    .line 26
    :goto_0
    iget p1, p0, Lcom/fsck/k9/mail/filter/Base64;->encodeSize:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    iput p1, p0, Lcom/fsck/k9/mail/filter/Base64;->decodeSize:I

    .line 31
    .line 32
    array-length p0, p2

    .line 33
    :goto_1
    if-ge v2, p0, :cond_3

    .line 34
    .line 35
    aget-byte p1, p2, v2

    .line 36
    .line 37
    const/16 v0, 0x3d

    .line 38
    .line 39
    if-eq p1, v0, :cond_2

    .line 40
    .line 41
    if-ltz p1, :cond_1

    .line 42
    .line 43
    const/16 v0, 0x7b

    .line 44
    .line 45
    if-ge p1, v0, :cond_1

    .line 46
    .line 47
    sget-object v0, Lcom/fsck/k9/mail/filter/Base64;->base64ToInt:[B

    .line 48
    .line 49
    aget-byte p1, v0, p1

    .line 50
    .line 51
    const/4 v0, -0x1

    .line 52
    if-ne p1, v0, :cond_2

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 58
    .line 59
    const-string p1, "UTF-8"

    .line 60
    .line 61
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p2, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 66
    .line 67
    .line 68
    const-string p1, "lineSeperator must not contain base64 characters: ["

    .line 69
    .line 70
    const-string p2, "]"

    .line 71
    .line 72
    invoke-static {p1, p0, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    throw p0

    .line 81
    :cond_3
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64;

    invoke-direct {v0}, Lcom/fsck/k9/mail/filter/Base64;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 170
    invoke-static {p0}, Lcom/fsck/k9/mail/filter/Base64;->decodeBase64([B)[B

    move-result-object p0

    .line 171
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/fsck/k9/mail/filter/Base64;-><init>()V

    .line 10
    .line 11
    .line 12
    array-length v1, p0

    .line 13
    mul-int/lit8 v1, v1, 0x3

    .line 14
    .line 15
    div-int/lit8 v1, v1, 0x4

    .line 16
    .line 17
    int-to-long v1, v1

    .line 18
    long-to-int v1, v1

    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    iput-object v1, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput v1, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 25
    .line 26
    iput v1, v0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 27
    .line 28
    array-length v2, p0

    .line 29
    invoke-virtual {v0, p0, v1, v2}, Lcom/fsck/k9/mail/filter/Base64;->decode([BII)V

    .line 30
    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-virtual {v0, p0, v1, v2}, Lcom/fsck/k9/mail/filter/Base64;->decode([BII)V

    .line 34
    .line 35
    .line 36
    iget p0, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 37
    .line 38
    new-array v1, p0, [B

    .line 39
    .line 40
    invoke-virtual {v0, p0, v1}, Lcom/fsck/k9/mail/filter/Base64;->readResults(I[B)I

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 275
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64;

    invoke-direct {v0}, Lcom/fsck/k9/mail/filter/Base64;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 276
    invoke-static {p0}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64$1([B)[B

    move-result-object p0

    .line 277
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encodeBase64$1([B)[B
    .locals 11

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64;

    .line 8
    .line 9
    sget-object v1, Lcom/fsck/k9/mail/filter/Base64;->CHUNK_SEPARATOR:[B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v2, v1}, Lcom/fsck/k9/mail/filter/Base64;-><init>(I[B)V

    .line 13
    .line 14
    .line 15
    array-length v1, p0

    .line 16
    mul-int/lit8 v1, v1, 0x4

    .line 17
    .line 18
    div-int/lit8 v1, v1, 0x3

    .line 19
    .line 20
    int-to-long v3, v1

    .line 21
    const-wide/16 v5, 0x4

    .line 22
    .line 23
    rem-long v7, v3, v5

    .line 24
    .line 25
    const-wide/16 v9, 0x0

    .line 26
    .line 27
    cmp-long v1, v7, v9

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    sub-long/2addr v5, v7

    .line 32
    add-long/2addr v3, v5

    .line 33
    :cond_1
    const-wide/32 v5, 0x7fffffff

    .line 34
    .line 35
    .line 36
    cmp-long v1, v3, v5

    .line 37
    .line 38
    if-gtz v1, :cond_3

    .line 39
    .line 40
    long-to-int v1, v3

    .line 41
    new-array v3, v1, [B

    .line 42
    .line 43
    iput-object v3, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 44
    .line 45
    iput v2, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 46
    .line 47
    iput v2, v0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 48
    .line 49
    array-length v4, p0

    .line 50
    invoke-virtual {v0, p0, v2, v4}, Lcom/fsck/k9/mail/filter/Base64;->encode([BII)V

    .line 51
    .line 52
    .line 53
    const/4 v4, -0x1

    .line 54
    invoke-virtual {v0, p0, v2, v4}, Lcom/fsck/k9/mail/filter/Base64;->encode([BII)V

    .line 55
    .line 56
    .line 57
    iget-object p0, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 58
    .line 59
    if-eq p0, v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v1, v3}, Lcom/fsck/k9/mail/filter/Base64;->readResults(I[B)I

    .line 62
    .line 63
    .line 64
    :cond_2
    return-object v3

    .line 65
    :cond_3
    const-string p0, "Input array too big, output array would be bigger than Integer.MAX_VALUE=2147483647"

    .line 66
    .line 67
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    :cond_4
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final decode([BII)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-gez p3, :cond_1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    .line 11
    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, p3, :cond_8

    .line 14
    .line 15
    iget-object v2, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    array-length v2, v2

    .line 20
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->decodeSize:I

    .line 24
    .line 25
    if-ge v2, v3, :cond_3

    .line 26
    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/Base64;->resizeBuf()V

    .line 28
    .line 29
    .line 30
    :cond_3
    add-int/lit8 v2, p2, 0x1

    .line 31
    .line 32
    aget-byte p2, p1, p2

    .line 33
    .line 34
    const/16 v3, 0x3d

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    if-ne p2, v3, :cond_6

    .line 38
    .line 39
    iget p1, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 40
    .line 41
    shl-int/lit8 p2, p1, 0x6

    .line 42
    .line 43
    iput p2, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 44
    .line 45
    iget p3, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    if-eq p3, v1, :cond_5

    .line 49
    .line 50
    if-eq p3, v4, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    iget-object p1, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 54
    .line 55
    iget p3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 56
    .line 57
    add-int/lit8 v2, p3, 0x1

    .line 58
    .line 59
    iput v2, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 60
    .line 61
    shr-int/lit8 v3, p2, 0x10

    .line 62
    .line 63
    and-int/lit16 v3, v3, 0xff

    .line 64
    .line 65
    int-to-byte v3, v3

    .line 66
    aput-byte v3, p1, p3

    .line 67
    .line 68
    add-int/2addr p3, v1

    .line 69
    iput p3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 70
    .line 71
    shr-int/lit8 p2, p2, 0x8

    .line 72
    .line 73
    and-int/lit16 p2, p2, 0xff

    .line 74
    .line 75
    int-to-byte p2, p2

    .line 76
    aput-byte p2, p1, v2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    shl-int/lit8 p1, p1, 0xc

    .line 80
    .line 81
    iput p1, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 82
    .line 83
    iget-object p2, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 84
    .line 85
    iget p3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 86
    .line 87
    add-int/lit8 v1, p3, 0x1

    .line 88
    .line 89
    iput v1, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 90
    .line 91
    shr-int/lit8 p1, p1, 0x10

    .line 92
    .line 93
    and-int/lit16 p1, p1, 0xff

    .line 94
    .line 95
    int-to-byte p1, p1

    .line 96
    aput-byte p1, p2, p3

    .line 97
    .line 98
    :goto_1
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    if-ltz p2, :cond_7

    .line 102
    .line 103
    const/16 v3, 0x7b

    .line 104
    .line 105
    if-ge p2, v3, :cond_7

    .line 106
    .line 107
    sget-object v3, Lcom/fsck/k9/mail/filter/Base64;->base64ToInt:[B

    .line 108
    .line 109
    aget-byte p2, v3, p2

    .line 110
    .line 111
    if-ltz p2, :cond_7

    .line 112
    .line 113
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    .line 114
    .line 115
    add-int/2addr v3, v0

    .line 116
    rem-int/lit8 v3, v3, 0x4

    .line 117
    .line 118
    iput v3, p0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    .line 119
    .line 120
    iget v5, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 121
    .line 122
    shl-int/lit8 v5, v5, 0x6

    .line 123
    .line 124
    add-int/2addr v5, p2

    .line 125
    iput v5, p0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 126
    .line 127
    if-nez v3, :cond_7

    .line 128
    .line 129
    iget-object p2, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 130
    .line 131
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 132
    .line 133
    add-int/lit8 v6, v3, 0x1

    .line 134
    .line 135
    iput v6, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 136
    .line 137
    shr-int/lit8 v7, v5, 0x10

    .line 138
    .line 139
    and-int/lit16 v7, v7, 0xff

    .line 140
    .line 141
    int-to-byte v7, v7

    .line 142
    aput-byte v7, p2, v3

    .line 143
    .line 144
    add-int/lit8 v7, v3, 0x2

    .line 145
    .line 146
    iput v7, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 147
    .line 148
    shr-int/lit8 v8, v5, 0x8

    .line 149
    .line 150
    and-int/lit16 v8, v8, 0xff

    .line 151
    .line 152
    int-to-byte v8, v8

    .line 153
    aput-byte v8, p2, v6

    .line 154
    .line 155
    add-int/2addr v3, v4

    .line 156
    iput v3, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 157
    .line 158
    and-int/lit16 v3, v5, 0xff

    .line 159
    .line 160
    int-to-byte v3, v3

    .line 161
    aput-byte v3, p2, v7

    .line 162
    .line 163
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 164
    .line 165
    move p2, v2

    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_8
    :goto_2
    return-void
.end method

.method public final encode([BII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget v2, v0, Lcom/fsck/k9/mail/filter/Base64;->lineLength:I

    .line 12
    .line 13
    iget v3, v0, Lcom/fsck/k9/mail/filter/Base64;->encodeSize:I

    .line 14
    .line 15
    sget-object v4, Lcom/fsck/k9/mail/filter/Base64;->intToBase64:[B

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    iget-object v6, v0, Lcom/fsck/k9/mail/filter/Base64;->lineSeparator:[B

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    if-gez v1, :cond_5

    .line 22
    .line 23
    iput-boolean v7, v0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    .line 24
    .line 25
    iget-object v1, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    array-length v1, v1

    .line 30
    iget v8, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 31
    .line 32
    sub-int/2addr v1, v8

    .line 33
    if-ge v1, v3, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/Base64;->resizeBuf()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget v1, v0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    .line 39
    .line 40
    const/16 v3, 0x3d

    .line 41
    .line 42
    if-eq v1, v7, :cond_4

    .line 43
    .line 44
    const/4 v7, 0x2

    .line 45
    if-eq v1, v7, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-object v1, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 49
    .line 50
    iget v8, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 51
    .line 52
    add-int/lit8 v9, v8, 0x1

    .line 53
    .line 54
    iput v9, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 55
    .line 56
    iget v10, v0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 57
    .line 58
    shr-int/lit8 v11, v10, 0xa

    .line 59
    .line 60
    and-int/lit8 v11, v11, 0x3f

    .line 61
    .line 62
    aget-byte v11, v4, v11

    .line 63
    .line 64
    aput-byte v11, v1, v8

    .line 65
    .line 66
    add-int/lit8 v11, v8, 0x2

    .line 67
    .line 68
    iput v11, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 69
    .line 70
    shr-int/lit8 v12, v10, 0x4

    .line 71
    .line 72
    and-int/lit8 v12, v12, 0x3f

    .line 73
    .line 74
    aget-byte v12, v4, v12

    .line 75
    .line 76
    aput-byte v12, v1, v9

    .line 77
    .line 78
    add-int/lit8 v9, v8, 0x3

    .line 79
    .line 80
    iput v9, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 81
    .line 82
    shl-int/lit8 v7, v10, 0x2

    .line 83
    .line 84
    and-int/lit8 v7, v7, 0x3f

    .line 85
    .line 86
    aget-byte v4, v4, v7

    .line 87
    .line 88
    aput-byte v4, v1, v11

    .line 89
    .line 90
    add-int/lit8 v8, v8, 0x4

    .line 91
    .line 92
    iput v8, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 93
    .line 94
    aput-byte v3, v1, v9

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-object v1, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 98
    .line 99
    iget v7, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 100
    .line 101
    add-int/lit8 v8, v7, 0x1

    .line 102
    .line 103
    iput v8, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 104
    .line 105
    iget v9, v0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 106
    .line 107
    shr-int/lit8 v10, v9, 0x2

    .line 108
    .line 109
    and-int/lit8 v10, v10, 0x3f

    .line 110
    .line 111
    aget-byte v10, v4, v10

    .line 112
    .line 113
    aput-byte v10, v1, v7

    .line 114
    .line 115
    add-int/lit8 v10, v7, 0x2

    .line 116
    .line 117
    iput v10, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 118
    .line 119
    shl-int/lit8 v9, v9, 0x4

    .line 120
    .line 121
    and-int/lit8 v9, v9, 0x3f

    .line 122
    .line 123
    aget-byte v4, v4, v9

    .line 124
    .line 125
    aput-byte v4, v1, v8

    .line 126
    .line 127
    add-int/lit8 v4, v7, 0x3

    .line 128
    .line 129
    iput v4, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 130
    .line 131
    aput-byte v3, v1, v10

    .line 132
    .line 133
    add-int/lit8 v7, v7, 0x4

    .line 134
    .line 135
    iput v7, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 136
    .line 137
    aput-byte v3, v1, v4

    .line 138
    .line 139
    :goto_0
    if-lez v2, :cond_a

    .line 140
    .line 141
    iget-object v1, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 142
    .line 143
    iget v2, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 144
    .line 145
    array-length v3, v6

    .line 146
    invoke-static {v6, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    .line 148
    .line 149
    iget v1, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 150
    .line 151
    array-length v2, v6

    .line 152
    add-int/2addr v1, v2

    .line 153
    iput v1, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 154
    .line 155
    return-void

    .line 156
    :cond_5
    move/from16 v8, p2

    .line 157
    .line 158
    move v9, v5

    .line 159
    :goto_1
    if-ge v9, v1, :cond_a

    .line 160
    .line 161
    iget-object v10, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 162
    .line 163
    if-eqz v10, :cond_6

    .line 164
    .line 165
    array-length v10, v10

    .line 166
    iget v11, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 167
    .line 168
    sub-int/2addr v10, v11

    .line 169
    if-ge v10, v3, :cond_7

    .line 170
    .line 171
    :cond_6
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/Base64;->resizeBuf()V

    .line 172
    .line 173
    .line 174
    :cond_7
    iget v10, v0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    .line 175
    .line 176
    add-int/2addr v10, v7

    .line 177
    rem-int/lit8 v10, v10, 0x3

    .line 178
    .line 179
    iput v10, v0, Lcom/fsck/k9/mail/filter/Base64;->modulus:I

    .line 180
    .line 181
    add-int/lit8 v11, v8, 0x1

    .line 182
    .line 183
    aget-byte v8, p1, v8

    .line 184
    .line 185
    if-gez v8, :cond_8

    .line 186
    .line 187
    add-int/lit16 v8, v8, 0x100

    .line 188
    .line 189
    :cond_8
    iget v12, v0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 190
    .line 191
    shl-int/lit8 v12, v12, 0x8

    .line 192
    .line 193
    add-int/2addr v12, v8

    .line 194
    iput v12, v0, Lcom/fsck/k9/mail/filter/Base64;->x:I

    .line 195
    .line 196
    if-nez v10, :cond_9

    .line 197
    .line 198
    iget-object v8, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 199
    .line 200
    iget v10, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 201
    .line 202
    add-int/lit8 v13, v10, 0x1

    .line 203
    .line 204
    iput v13, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 205
    .line 206
    shr-int/lit8 v14, v12, 0x12

    .line 207
    .line 208
    and-int/lit8 v14, v14, 0x3f

    .line 209
    .line 210
    aget-byte v14, v4, v14

    .line 211
    .line 212
    aput-byte v14, v8, v10

    .line 213
    .line 214
    add-int/lit8 v14, v10, 0x2

    .line 215
    .line 216
    iput v14, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 217
    .line 218
    shr-int/lit8 v15, v12, 0xc

    .line 219
    .line 220
    and-int/lit8 v15, v15, 0x3f

    .line 221
    .line 222
    aget-byte v15, v4, v15

    .line 223
    .line 224
    aput-byte v15, v8, v13

    .line 225
    .line 226
    add-int/lit8 v13, v10, 0x3

    .line 227
    .line 228
    iput v13, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 229
    .line 230
    shr-int/lit8 v15, v12, 0x6

    .line 231
    .line 232
    and-int/lit8 v15, v15, 0x3f

    .line 233
    .line 234
    aget-byte v15, v4, v15

    .line 235
    .line 236
    aput-byte v15, v8, v14

    .line 237
    .line 238
    add-int/lit8 v10, v10, 0x4

    .line 239
    .line 240
    iput v10, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 241
    .line 242
    and-int/lit8 v12, v12, 0x3f

    .line 243
    .line 244
    aget-byte v12, v4, v12

    .line 245
    .line 246
    aput-byte v12, v8, v13

    .line 247
    .line 248
    iget v12, v0, Lcom/fsck/k9/mail/filter/Base64;->currentLinePos:I

    .line 249
    .line 250
    add-int/lit8 v12, v12, 0x4

    .line 251
    .line 252
    iput v12, v0, Lcom/fsck/k9/mail/filter/Base64;->currentLinePos:I

    .line 253
    .line 254
    if-lez v2, :cond_9

    .line 255
    .line 256
    if-gt v2, v12, :cond_9

    .line 257
    .line 258
    array-length v12, v6

    .line 259
    invoke-static {v6, v5, v8, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    .line 261
    .line 262
    iget v8, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 263
    .line 264
    array-length v10, v6

    .line 265
    add-int/2addr v8, v10

    .line 266
    iput v8, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 267
    .line 268
    iput v5, v0, Lcom/fsck/k9/mail/filter/Base64;->currentLinePos:I

    .line 269
    .line 270
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 271
    .line 272
    move v8, v11

    .line 273
    goto :goto_1

    .line 274
    :cond_a
    :goto_2
    return-void
.end method

.method public final readResults(I[B)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 9
    .line 10
    iget v2, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 11
    .line 12
    sub-int/2addr v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eq v0, p2, :cond_2

    .line 23
    .line 24
    iget v3, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 25
    .line 26
    invoke-static {v0, v3, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 30
    .line 31
    add-int/2addr p2, p1

    .line 32
    iput p2, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 33
    .line 34
    iget v0, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 35
    .line 36
    if-lt p2, v0, :cond_1

    .line 37
    .line 38
    iput-object v2, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 39
    .line 40
    :cond_1
    return p1

    .line 41
    :cond_2
    iput-object v2, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 42
    .line 43
    return p1

    .line 44
    :cond_3
    iget-boolean p0, p0, Lcom/fsck/k9/mail/filter/Base64;->eof:Z

    .line 45
    .line 46
    if-eqz p0, :cond_4

    .line 47
    .line 48
    const/4 p0, -0x1

    .line 49
    return p0

    .line 50
    :cond_4
    return v1
.end method

.method public final resizeBuf()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x2000

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 11
    .line 12
    iput v1, p0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 13
    .line 14
    iput v1, p0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    array-length v2, v0

    .line 18
    mul-int/lit8 v2, v2, 0x2

    .line 19
    .line 20
    new-array v2, v2, [B

    .line 21
    .line 22
    array-length v3, v0

    .line 23
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 27
    .line 28
    return-void
.end method
