.class public final Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final HEX_DIGITS:[B


# instance fields
.field public closed:Z

.field public nextSoftBreak:I

.field public final outBuffer:[B

.field public outputIndex:I

.field public pendingCR:Z

.field public pendingSpace:Z

.field public pendingTab:Z

.field public final singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->HEX_DIGITS:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->singleByte:[B

    .line 11
    .line 12
    const/16 v0, 0xc00

    .line 13
    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outBuffer:[B

    .line 17
    .line 18
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    .line 19
    .line 20
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    .line 23
    .line 24
    iput p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    .line 25
    .line 26
    const/16 p1, 0x4d

    .line 27
    .line 28
    iput p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->writePending()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->flushOutput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    .line 18
    .line 19
    throw v1
.end method

.method public final escape(B)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/16 v2, 0x3d

    .line 9
    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0xd

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0xa

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x4c

    .line 26
    .line 27
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 28
    .line 29
    :cond_0
    and-int/lit16 p1, p1, 0xff

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 39
    .line 40
    shr-int/lit8 v0, p1, 0x4

    .line 41
    .line 42
    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->HEX_DIGITS:[B

    .line 43
    .line 44
    aget-byte v0, v1, v0

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 50
    .line 51
    add-int/lit8 v0, v0, -0x1

    .line 52
    .line 53
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 54
    .line 55
    rem-int/lit8 p1, p1, 0x10

    .line 56
    .line 57
    aget-byte p1, v1, p1

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->flushOutput()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final flushOutput()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outBuffer:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iput v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    .line 19
    .line 20
    return-void
.end method

.method public final plain(B)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x3d

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0xd

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x4c

    .line 25
    .line 26
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final write(B)V
    .locals 3

    .line 127
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outBuffer:[B

    aput-byte p1, v2, v0

    .line 128
    array-length p1, v2

    if-lt v1, p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->flushOutput()V

    :cond_0
    return-void
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 125
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 126
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    move v0, p2

    .line 6
    :goto_0
    add-int v1, p3, p2

    .line 7
    .line 8
    if-ge v0, v1, :cond_b

    .line 9
    .line 10
    aget-byte v1, p1, v0

    .line 11
    .line 12
    const/16 v2, 0xd

    .line 13
    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    const/16 v4, 0x9

    .line 17
    .line 18
    const/16 v5, 0x20

    .line 19
    .line 20
    if-ne v1, v3, :cond_3

    .line 21
    .line 22
    iget-boolean v6, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    .line 23
    .line 24
    if-eqz v6, :cond_2

    .line 25
    .line 26
    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x4c

    .line 48
    .line 49
    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    .line 53
    .line 54
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    .line 55
    .line 56
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->writePending()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->plain(B)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/4 v3, 0x1

    .line 67
    if-ne v1, v2, :cond_4

    .line 68
    .line 69
    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->writePending()V

    .line 73
    .line 74
    .line 75
    if-ne v1, v5, :cond_5

    .line 76
    .line 77
    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    if-ne v1, v4, :cond_6

    .line 81
    .line 82
    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    if-ge v1, v5, :cond_7

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_7
    const/16 v2, 0x7e

    .line 92
    .line 93
    if-le v1, v2, :cond_8

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_8
    const/16 v2, 0x3d

    .line 100
    .line 101
    if-eq v1, v2, :cond_a

    .line 102
    .line 103
    const/16 v2, 0x2e

    .line 104
    .line 105
    if-ne v1, v2, :cond_9

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_9
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->plain(B)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_a
    :goto_2
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    .line 113
    .line 114
    .line 115
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_b
    return-void

    .line 119
    :cond_c
    const-string p0, "Stream has been closed"

    .line 120
    .line 121
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final writePending()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->plain(B)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x9

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->plain(B)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const/16 v0, 0xd

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->plain(B)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    .line 36
    .line 37
    return-void
.end method
