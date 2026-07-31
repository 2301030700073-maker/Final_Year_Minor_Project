.class public final Lcom/google/zxing/common/BitSource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public bitOffset:I

.field public byteOffset:I

.field public final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    mul-int/lit8 v0, v0, 0x8

    .line 8
    .line 9
    iget p0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 10
    .line 11
    sub-int/2addr v0, p0

    .line 12
    return v0
.end method

.method public readBits(I)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lt p1, v1, :cond_4

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    if-gt p1, v2, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gt p1, v2, :cond_4

    .line 14
    .line 15
    iget v2, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 18
    .line 19
    const/16 v4, 0xff

    .line 20
    .line 21
    const/16 v5, 0x8

    .line 22
    .line 23
    if-lez v2, :cond_1

    .line 24
    .line 25
    rsub-int/lit8 v2, v2, 0x8

    .line 26
    .line 27
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    sub-int/2addr v2, v6

    .line 32
    rsub-int/lit8 v7, v6, 0x8

    .line 33
    .line 34
    shr-int v7, v4, v7

    .line 35
    .line 36
    shl-int/2addr v7, v2

    .line 37
    iget v8, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 38
    .line 39
    aget-byte v9, v3, v8

    .line 40
    .line 41
    and-int/2addr v7, v9

    .line 42
    shr-int v2, v7, v2

    .line 43
    .line 44
    sub-int/2addr p1, v6

    .line 45
    iget v7, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 46
    .line 47
    add-int/2addr v7, v6

    .line 48
    iput v7, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 49
    .line 50
    if-ne v7, v5, :cond_0

    .line 51
    .line 52
    iput v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 53
    .line 54
    add-int/2addr v8, v1

    .line 55
    iput v8, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 56
    .line 57
    :cond_0
    move v0, v2

    .line 58
    :cond_1
    if-lez p1, :cond_3

    .line 59
    .line 60
    :goto_0
    if-lt p1, v5, :cond_2

    .line 61
    .line 62
    shl-int/lit8 v0, v0, 0x8

    .line 63
    .line 64
    iget v2, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 65
    .line 66
    aget-byte v6, v3, v2

    .line 67
    .line 68
    and-int/2addr v6, v4

    .line 69
    or-int/2addr v0, v6

    .line 70
    add-int/2addr v2, v1

    .line 71
    iput v2, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 72
    .line 73
    add-int/lit8 p1, p1, -0x8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    if-lez p1, :cond_3

    .line 77
    .line 78
    rsub-int/lit8 v1, p1, 0x8

    .line 79
    .line 80
    shr-int v2, v4, v1

    .line 81
    .line 82
    shl-int/2addr v2, v1

    .line 83
    shl-int/2addr v0, p1

    .line 84
    iget v4, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 85
    .line 86
    aget-byte v3, v3, v4

    .line 87
    .line 88
    and-int/2addr v2, v3

    .line 89
    shr-int v1, v2, v1

    .line 90
    .line 91
    or-int/2addr v0, v1

    .line 92
    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 93
    .line 94
    add-int/2addr v1, p1

    .line 95
    iput v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 96
    .line 97
    :cond_3
    return v0

    .line 98
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return v0
.end method
