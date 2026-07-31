.class public final Lokio/OutputStreamSink;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lokio/Sink;


# instance fields
.field public final out:Ljava/io/FileOutputStream;

.field public final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;Lokio/Timeout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/OutputStreamSink;->out:Ljava/io/FileOutputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lokio/OutputStreamSink;->timeout:Lokio/Timeout;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/OutputStreamSink;->out:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/OutputStreamSink;->out:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/OutputStreamSink;->timeout:Lokio/Timeout;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "sink("

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lokio/OutputStreamSink;->out:Ljava/io/FileOutputStream;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 p0, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final write(JLokio/Buffer;)V
    .locals 7

    .line 1
    iget-wide v0, p3, Lokio/Buffer;->size:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    move-wide v4, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lkotlin/text/UStringsKt;->checkOffsetAndCount(JJJ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lokio/OutputStreamSink;->timeout:Lokio/Timeout;

    .line 16
    .line 17
    invoke-virtual {v0}, Lokio/Timeout;->throwIfReached()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p3, Lokio/Buffer;->head:Lokio/Segment;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget v1, v0, Lokio/Segment;->limit:I

    .line 26
    .line 27
    iget v2, v0, Lokio/Segment;->pos:I

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    int-to-long v1, v1

    .line 31
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    long-to-int v1, v1

    .line 36
    iget-object v2, v0, Lokio/Segment;->data:[B

    .line 37
    .line 38
    iget v3, v0, Lokio/Segment;->pos:I

    .line 39
    .line 40
    iget-object v4, p0, Lokio/OutputStreamSink;->out:Ljava/io/FileOutputStream;

    .line 41
    .line 42
    invoke-virtual {v4, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    .line 44
    .line 45
    iget v2, v0, Lokio/Segment;->pos:I

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    iput v2, v0, Lokio/Segment;->pos:I

    .line 49
    .line 50
    int-to-long v3, v1

    .line 51
    sub-long/2addr p1, v3

    .line 52
    iget-wide v5, p3, Lokio/Buffer;->size:J

    .line 53
    .line 54
    sub-long/2addr v5, v3

    .line 55
    iput-wide v5, p3, Lokio/Buffer;->size:J

    .line 56
    .line 57
    iget v1, v0, Lokio/Segment;->limit:I

    .line 58
    .line 59
    if-ne v2, v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p3, Lokio/Buffer;->head:Lokio/Segment;

    .line 66
    .line 67
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method
