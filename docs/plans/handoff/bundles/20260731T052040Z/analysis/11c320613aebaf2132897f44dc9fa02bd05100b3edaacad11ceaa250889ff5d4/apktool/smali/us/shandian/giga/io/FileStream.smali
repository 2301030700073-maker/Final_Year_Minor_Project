.class public final Lus/shandian/giga/io/FileStream;
.super Lorg/schabi/newpipe/streams/io/SharpStream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public source:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    const-string v1, "rw"

    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final available()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    sub-long/2addr v0, v2

    .line 14
    return-wide v0

    .line 15
    :catch_0
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0
.end method

.method public final canRead()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final canSeek()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final canWrite()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 11
    .line 12
    return-void
.end method

.method public final isClosed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

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

.method public final length()J
    .locals 2

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final read()I
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final read([B)I
    .locals 0

    .line 8
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 9
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0

    return p0
.end method

.method public final rewind()V
    .locals 2

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final seek(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setLength(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final skip(J)J
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    long-to-int p1, p1

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    int-to-long p0, p0

    .line 9
    return-wide p0
.end method

.method public final write(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 7
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 8
    iget-object p0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
