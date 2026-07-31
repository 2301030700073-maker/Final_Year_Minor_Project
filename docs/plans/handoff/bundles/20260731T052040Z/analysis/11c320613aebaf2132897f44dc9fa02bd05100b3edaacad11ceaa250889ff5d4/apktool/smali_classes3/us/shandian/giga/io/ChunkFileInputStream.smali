.class public final Lus/shandian/giga/io/ChunkFileInputStream;
.super Lorg/schabi/newpipe/streams/io/SharpStream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final length:J

.field public final offset:J

.field public final onProgress:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

.field public position:J

.field public progressReport:J

.field public source:Lorg/schabi/newpipe/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;JJLus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;)V
    .locals 5

    .line 1
    const-string v0, "invalid file length. expected = "

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 7
    .line 8
    iput-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    .line 9
    .line 10
    sub-long v1, p4, p2

    .line 11
    .line 12
    iput-wide v1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    iput-wide v3, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 17
    .line 18
    iput-object p6, p0, Lus/shandian/giga/io/ChunkFileInputStream;->onProgress:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 19
    .line 20
    const-wide/32 v3, 0x40000

    .line 21
    .line 22
    .line 23
    iput-wide v3, p0, Lus/shandian/giga/io/ChunkFileInputStream;->progressReport:J

    .line 24
    .line 25
    const-wide/16 v3, 0x1

    .line 26
    .line 27
    cmp-long p6, v1, v3

    .line 28
    .line 29
    if-ltz p6, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->length()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    cmp-long p1, v1, p4

    .line 36
    .line 37
    if-ltz p1, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 40
    .line 41
    invoke-virtual {p0, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/IOException;

    .line 46
    .line 47
    iget-object p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 48
    .line 49
    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->length()J

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    new-instance p6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p4, "  found = "

    .line 62
    .line 63
    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    iget-object p0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 85
    .line 86
    .line 87
    const-string p0, "The chunk is empty or invalid"

    .line 88
    .line 89
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    throw p0
.end method


# virtual methods
.method public final available()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    .line 2
    .line 3
    iget-wide v2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public final canRead()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final canWrite()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 8
    .line 9
    return-void
.end method

.method public final isClosed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final read()I
    .locals 6

    .line 50
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 52
    iget-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    :cond_1
    return v0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 49
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lus/shandian/giga/io/ChunkFileInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 2
    .line 3
    int-to-long v2, p3

    .line 4
    add-long/2addr v2, v0

    .line 5
    iget-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    .line 6
    .line 7
    cmp-long v2, v2, v4

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    sub-long/2addr v4, v0

    .line 12
    long-to-int p3, v4

    .line 13
    :cond_0
    if-nez p3, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([BII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 24
    .line 25
    int-to-long v0, p1

    .line 26
    add-long/2addr p2, v0

    .line 27
    iput-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 28
    .line 29
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->progressReport:J

    .line 30
    .line 31
    cmp-long v0, p2, v0

    .line 32
    .line 33
    if-lez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->onProgress:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 36
    .line 37
    invoke-virtual {v0, p2, p3}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;->report(J)V

    .line 38
    .line 39
    .line 40
    iget-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 41
    .line 42
    const-wide/32 v0, 0x40000

    .line 43
    .line 44
    .line 45
    add-long/2addr p2, v0

    .line 46
    iput-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->progressReport:J

    .line 47
    .line 48
    :cond_2
    return p1
.end method

.method public final rewind()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 4
    .line 5
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 6
    .line 7
    iget-wide v1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final skip(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    .line 5
    .line 6
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 18
    .line 19
    iget-wide v1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    .line 20
    .line 21
    add-long/2addr v1, p1

    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 23
    .line 24
    .line 25
    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 26
    .line 27
    iput-wide p1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 28
    .line 29
    sub-long/2addr p1, v0

    .line 30
    return-wide p1
.end method

.method public final write(B)V
    .locals 0

    .line 1
    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 2
    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 3
    return-void
.end method
