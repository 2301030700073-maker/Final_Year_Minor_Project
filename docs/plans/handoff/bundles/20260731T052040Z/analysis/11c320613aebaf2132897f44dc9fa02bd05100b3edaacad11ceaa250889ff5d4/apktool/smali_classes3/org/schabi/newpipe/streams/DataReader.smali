.class public final Lorg/schabi/newpipe/streams/DataReader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public position:J

.field public final primitive:[S

.field public final readBuffer:[B

.field public readCount:I

.field public readOffset:I

.field public final stream:Lorg/schabi/newpipe/streams/io/SharpStream;

.field public view:Lorg/schabi/newpipe/streams/DataReader$1;

.field public viewSize:I


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    new-array v0, v0, [S

    .line 11
    .line 12
    iput-object v0, p0, Lorg/schabi/newpipe/streams/DataReader;->primitive:[S

    .line 13
    .line 14
    const/high16 v0, 0x20000

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    iput-object v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readBuffer:[B

    .line 19
    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/streams/DataReader;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 21
    .line 22
    array-length p1, v0

    .line 23
    iput p1, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final available()Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;->available()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long p0, v0, v2

    .line 14
    .line 15
    if-lez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final fillBuffer()Z
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 8
    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/streams/DataReader;->readBuffer:[B

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    const/4 v4, 0x0

    .line 13
    if-lt v0, v3, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([B)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 22
    .line 23
    if-ge v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iput v4, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 30
    .line 31
    :cond_2
    iget p0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 32
    .line 33
    if-ge p0, v1, :cond_3

    .line 34
    .line 35
    :goto_0
    return v1

    .line 36
    :cond_3
    return v4
.end method

.method public final primitiveRead(I)V
    .locals 4

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lorg/schabi/newpipe/streams/DataReader;->read([BII)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ne v2, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    if-ge v1, p1, :cond_0

    .line 11
    .line 12
    aget-byte v2, v0, v1

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    int-to-short v2, v2

    .line 17
    iget-object v3, p0, Lorg/schabi/newpipe/streams/DataReader;->primitive:[S

    .line 18
    .line 19
    aput-short v2, v3, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 26
    .line 27
    sub-int/2addr p1, v2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Truncated stream, missing "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " bytes"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final read()I
    .locals 4

    .line 86
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/DataReader;->fillBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 87
    :cond_0
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 88
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 89
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader;->readBuffer:[B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([BII)I
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/streams/DataReader;->readBuffer:[B

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-lt p3, v2, :cond_2

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    iget v2, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 16
    .line 17
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 21
    .line 22
    iget v1, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 26
    .line 27
    add-int/2addr p2, v1

    .line 28
    sub-int/2addr p3, v1

    .line 29
    iput v3, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v1, v3

    .line 33
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([BII)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    add-int/2addr p1, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :goto_1
    if-lez p3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/DataReader;->fillBuffer()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 54
    .line 55
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget v2, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 60
    .line 61
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    iget v2, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 65
    .line 66
    add-int/2addr v2, v0

    .line 67
    iput v2, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 68
    .line 69
    iget v2, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 70
    .line 71
    sub-int/2addr v2, v0

    .line 72
    iput v2, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 73
    .line 74
    add-int/2addr p2, v0

    .line 75
    sub-int/2addr p3, v0

    .line 76
    add-int/2addr v3, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move p1, v3

    .line 79
    :goto_2
    iget-wide p2, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 80
    .line 81
    int-to-long v0, p1

    .line 82
    add-long/2addr p2, v0

    .line 83
    iput-wide p2, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 84
    .line 85
    return p1
.end method

.method public final readInt()I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/streams/DataReader;->primitiveRead(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader;->primitive:[S

    .line 7
    .line 8
    aget-short v0, p0, v0

    .line 9
    .line 10
    shl-int/lit8 v0, v0, 0x18

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    aget-short v1, p0, v1

    .line 14
    .line 15
    shl-int/lit8 v1, v1, 0x10

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    aget-short v1, p0, v1

    .line 20
    .line 21
    shl-int/lit8 v1, v1, 0x8

    .line 22
    .line 23
    or-int/2addr v0, v1

    .line 24
    const/4 v1, 0x3

    .line 25
    aget-short p0, p0, v1

    .line 26
    .line 27
    or-int/2addr p0, v0

    .line 28
    return p0
.end method

.method public final readLong()J
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/streams/DataReader;->primitiveRead(I)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader;->primitive:[S

    .line 8
    .line 9
    aget-short v1, p0, v1

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x18

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aget-short v2, p0, v2

    .line 15
    .line 16
    shl-int/lit8 v2, v2, 0x10

    .line 17
    .line 18
    or-int/2addr v1, v2

    .line 19
    const/4 v2, 0x2

    .line 20
    aget-short v2, p0, v2

    .line 21
    .line 22
    shl-int/2addr v2, v0

    .line 23
    or-int/2addr v1, v2

    .line 24
    const/4 v2, 0x3

    .line 25
    aget-short v2, p0, v2

    .line 26
    .line 27
    or-int/2addr v1, v2

    .line 28
    int-to-long v1, v1

    .line 29
    const/4 v3, 0x4

    .line 30
    aget-short v3, p0, v3

    .line 31
    .line 32
    shl-int/lit8 v3, v3, 0x18

    .line 33
    .line 34
    const/4 v4, 0x5

    .line 35
    aget-short v4, p0, v4

    .line 36
    .line 37
    shl-int/lit8 v4, v4, 0x10

    .line 38
    .line 39
    or-int/2addr v3, v4

    .line 40
    const/4 v4, 0x6

    .line 41
    aget-short v4, p0, v4

    .line 42
    .line 43
    shl-int/lit8 v0, v4, 0x8

    .line 44
    .line 45
    or-int/2addr v0, v3

    .line 46
    const/4 v3, 0x7

    .line 47
    aget-short p0, p0, v3

    .line 48
    .line 49
    or-int/2addr p0, v0

    .line 50
    int-to-long v3, p0

    .line 51
    const/16 p0, 0x20

    .line 52
    .line 53
    shl-long v0, v1, p0

    .line 54
    .line 55
    or-long/2addr v0, v3

    .line 56
    return-wide v0
.end method

.method public final readShort()S
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/streams/DataReader;->primitiveRead(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader;->primitive:[S

    .line 7
    .line 8
    aget-short v0, p0, v0

    .line 9
    .line 10
    shl-int/lit8 v0, v0, 0x8

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    aget-short p0, p0, v1

    .line 14
    .line 15
    or-int/2addr p0, v0

    .line 16
    int-to-short p0, p0

    .line 17
    return p0
.end method

.method public final skipBytes(J)J
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 p0, 0x0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/streams/DataReader;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    int-to-long v2, v0

    .line 18
    cmp-long v4, v2, p1

    .line 19
    .line 20
    if-lez v4, :cond_2

    .line 21
    .line 22
    long-to-int v1, p1

    .line 23
    sub-int/2addr v0, v1

    .line 24
    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 25
    .line 26
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sub-long/2addr p1, v2

    .line 33
    invoke-virtual {v1, p1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    add-long/2addr p1, v2

    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 40
    .line 41
    iget-object v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readBuffer:[B

    .line 42
    .line 43
    array-length v0, v0

    .line 44
    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 45
    .line 46
    :goto_0
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 47
    .line 48
    add-long/2addr v0, p1

    .line 49
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 50
    .line 51
    return-wide p1
.end method
