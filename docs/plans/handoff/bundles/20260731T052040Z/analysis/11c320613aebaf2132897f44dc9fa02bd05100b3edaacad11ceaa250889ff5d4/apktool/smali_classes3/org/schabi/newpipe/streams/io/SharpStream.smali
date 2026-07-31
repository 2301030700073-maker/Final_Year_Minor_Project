.class public abstract Lorg/schabi/newpipe/streams/io/SharpStream;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# virtual methods
.method public abstract available()J
.end method

.method public abstract canRead()Z
.end method

.method public canSeek()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lus/shandian/giga/io/CircularFileWriter;

    .line 2
    .line 3
    return p0
.end method

.method public abstract canWrite()Z
.end method

.method public abstract close()V
.end method

.method public flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract isClosed()Z
.end method

.method public length()J
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Unsupported operation"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public abstract read()I
.end method

.method public abstract read([B)I
.end method

.method public abstract read([BII)I
.end method

.method public abstract rewind()V
.end method

.method public seek(J)V
    .locals 0

    .line 1
    new-instance p0, Ljava/io/IOException;

    .line 2
    .line 3
    const-string p1, "Not implemented"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public setLength(J)V
    .locals 0

    .line 1
    new-instance p0, Ljava/io/IOException;

    .line 2
    .line 3
    const-string p1, "Not implemented"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public abstract skip(J)J
.end method

.method public abstract write(B)V
.end method

.method public abstract write([B)V
.end method

.method public abstract write([BII)V
.end method
