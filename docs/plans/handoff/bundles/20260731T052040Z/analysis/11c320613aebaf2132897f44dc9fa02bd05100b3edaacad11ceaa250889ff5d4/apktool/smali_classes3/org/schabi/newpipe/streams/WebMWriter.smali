.class public final Lorg/schabi/newpipe/streams/WebMWriter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public clustersOffsetsSizes:Ljava/util/ArrayList;

.field public done:Z

.field public infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

.field public outBuffer:[B

.field public outByteBuffer:Ljava/nio/ByteBuffer;

.field public parsed:Z

.field public readers:[Lorg/schabi/newpipe/streams/WebMReader;

.field public readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

.field public readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

.field public sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

.field public written:J


# direct methods
.method public static encode(JZ)[B
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 4
    .line 5
    const/4 v4, 0x7

    .line 6
    if-gt v1, v4, :cond_1

    .line 7
    .line 8
    long-to-double v4, p0

    .line 9
    mul-int/lit8 v6, v1, 0x7

    .line 10
    .line 11
    int-to-double v6, v6

    .line 12
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 13
    .line 14
    .line 15
    move-result-wide v6

    .line 16
    cmpg-double v4, v4, v6

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, -0x1

    .line 25
    :goto_1
    if-lt v1, v0, :cond_8

    .line 26
    .line 27
    long-to-double v4, p0

    .line 28
    mul-int/lit8 v6, v1, 0x7

    .line 29
    .line 30
    int-to-double v6, v6

    .line 31
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 36
    .line 37
    sub-double/2addr v2, v6

    .line 38
    cmpl-double v2, v4, v2

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    :cond_2
    add-int v2, p2, v1

    .line 45
    .line 46
    new-array v2, v2, [B

    .line 47
    .line 48
    add-int/lit8 v3, v1, -0x1

    .line 49
    .line 50
    div-int/lit8 v4, v3, 0x8

    .line 51
    .line 52
    const/16 v5, 0x8

    .line 53
    .line 54
    mul-int/2addr v5, v4

    .line 55
    sub-int v5, v3, v5

    .line 56
    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    xor-int/lit8 v5, v3, 0x8

    .line 61
    .line 62
    shr-int/lit8 v5, v5, 0x1f

    .line 63
    .line 64
    or-int/2addr v0, v5

    .line 65
    if-gez v0, :cond_4

    .line 66
    .line 67
    add-int/lit8 v4, v4, -0x1

    .line 68
    .line 69
    :cond_4
    :goto_2
    int-to-long v4, v4

    .line 70
    const/4 v0, 0x0

    .line 71
    move v7, v0

    .line 72
    move v6, v3

    .line 73
    :goto_3
    const/16 v8, 0x80

    .line 74
    .line 75
    if-ltz v6, :cond_6

    .line 76
    .line 77
    ushr-long v9, p0, v7

    .line 78
    .line 79
    if-nez p2, :cond_5

    .line 80
    .line 81
    int-to-long v11, v6

    .line 82
    cmp-long v11, v11, v4

    .line 83
    .line 84
    if-nez v11, :cond_5

    .line 85
    .line 86
    ushr-int/2addr v8, v3

    .line 87
    int-to-long v11, v8

    .line 88
    or-long/2addr v9, v11

    .line 89
    :cond_5
    add-int v8, p2, v6

    .line 90
    .line 91
    long-to-int v9, v9

    .line 92
    int-to-byte v9, v9

    .line 93
    aput-byte v9, v2, v8

    .line 94
    .line 95
    add-int/lit8 v6, v6, -0x1

    .line 96
    .line 97
    add-int/lit8 v7, v7, 0x8

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_6
    if-eqz p2, :cond_7

    .line 101
    .line 102
    or-int/lit16 p0, v1, 0x80

    .line 103
    .line 104
    int-to-byte p0, p0

    .line 105
    aput-byte p0, v2, v0

    .line 106
    .line 107
    :cond_7
    return-object v2

    .line 108
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 109
    .line 110
    const-string p1, "Can\'t encode a number of bigger than 7 bytes"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public static lengthFor(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, [B

    .line 15
    .line 16
    array-length v3, v3

    .line 17
    int-to-long v3, v3

    .line 18
    add-long/2addr v0, v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->done:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->parsed:Z

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 22
    .line 23
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->infoTracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 26
    .line 27
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 30
    .line 31
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    .line 32
    .line 33
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    .line 36
    .line 37
    return-void
.end method

.method public final dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, p1, v0, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    .line 6
    .line 7
    int-to-long p1, p2

    .line 8
    add-long/2addr v0, p1

    .line 9
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    .line 10
    .line 11
    return-void
.end method

.method public final getNextBlockFrom(I)Lorg/schabi/newpipe/streams/WebMWriter$Block;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readers:[Lorg/schabi/newpipe/streams/WebMReader;

    .line 9
    .line 10
    aget-object v1, v1, p1

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/WebMReader;->getNextSegment()Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    aput-object v1, v0, p1

    .line 17
    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 19
    .line 20
    aget-object v0, v0, p1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 26
    .line 27
    aget-object v1, v0, p1

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 32
    .line 33
    aget-object v1, v1, p1

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->getNextCluster()Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    aput-object v1, v0, p1

    .line 40
    .line 41
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 42
    .line 43
    aget-object v0, v0, p1

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersSegment:[Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 48
    .line 49
    aput-object v2, v0, p1

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->getNextBlockFrom(I)Lorg/schabi/newpipe/streams/WebMWriter$Block;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 57
    .line 58
    aget-object v0, v0, p1

    .line 59
    .line 60
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->getNextSimpleBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->readersCluster:[Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 67
    .line 68
    aput-object v2, p0, p1

    .line 69
    .line 70
    new-instance p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;

    .line 71
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;

    .line 77
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    .line 82
    .line 83
    iput-object v1, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    .line 84
    .line 85
    iget v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    .line 86
    .line 87
    iput v1, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->dataSize:I

    .line 88
    .line 89
    iput p1, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->trackNumber:I

    .line 90
    .line 91
    iget-byte p1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->flags:B

    .line 92
    .line 93
    iput-byte p1, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->flags:B

    .line 94
    .line 95
    iget-wide v0, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    .line 96
    .line 97
    const-wide/32 v2, 0xf4240

    .line 98
    .line 99
    .line 100
    div-long/2addr v0, v2

    .line 101
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    .line 102
    .line 103
    return-object p0
.end method

.method public final makeCluster(Lorg/schabi/newpipe/streams/io/SharpStream;JJZ)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p4, v0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;

    .line 15
    .line 16
    iget-wide v2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    .line 17
    .line 18
    sub-long/2addr v2, p4

    .line 19
    const-wide/16 p4, 0x8

    .line 20
    .line 21
    sub-long/2addr v2, p4

    .line 22
    long-to-int p4, v2

    .line 23
    iput p4, v0, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;->size:I

    .line 24
    .line 25
    :cond_0
    iget-wide p4, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    .line 26
    .line 27
    if-eqz p6, :cond_1

    .line 28
    .line 29
    const/4 p6, 0x4

    .line 30
    new-array v0, p6, [B

    .line 31
    .line 32
    fill-array-data v0, :array_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0, p6, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 36
    .line 37
    .line 38
    new-instance p6, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;

    .line 39
    .line 40
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-wide v2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    .line 44
    .line 45
    iput-wide v2, p6, Lorg/schabi/newpipe/streams/WebMWriter$ClusterInfo;->offset:J

    .line 46
    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    const/4 p6, 0x5

    .line 53
    new-array v0, p6, [B

    .line 54
    .line 55
    fill-array-data v0, :array_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0, p6, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p2, p3, v1}, Lorg/schabi/newpipe/streams/WebMWriter;->encode(JZ)[B

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    array-length p3, p2

    .line 66
    invoke-virtual {p0, p2, p3, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-wide p4

    .line 70
    nop

    .line 71
    :array_0
    .array-data 1
        0x1ft
        0x43t
        -0x4at
        0x75t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
        -0x19t
    .end array-data
.end method

.method public final makeEbmlVoid(Lorg/schabi/newpipe/streams/io/SharpStream;IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, -0x13e0

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    add-int/lit8 v1, p2, -0x4

    .line 12
    .line 13
    int-to-short v1, v1

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-virtual {p0, v0, v1, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 22
    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    add-int/lit8 p2, p2, -0x4

    .line 27
    .line 28
    :goto_0
    if-lez p2, :cond_0

    .line 29
    .line 30
    iget-object p3, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    .line 31
    .line 32
    array-length p3, p3

    .line 33
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->outBuffer:[B

    .line 38
    .line 39
    invoke-virtual {p0, v0, p3, p1}, Lorg/schabi/newpipe/streams/WebMWriter;->dump([BILorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 40
    .line 41
    .line 42
    sub-int/2addr p2, p3

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final seekTo(Lorg/schabi/newpipe/streams/io/SharpStream;J)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canSeek()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    .line 12
    .line 13
    cmp-long v2, p2, v0

    .line 14
    .line 15
    if-lez v2, :cond_1

    .line 16
    .line 17
    sub-long v0, p2, v0

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->rewind()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    .line 27
    .line 28
    .line 29
    :goto_0
    iput-wide p2, p0, Lorg/schabi/newpipe/streams/WebMWriter;->written:J

    .line 30
    .line 31
    return-void
.end method
