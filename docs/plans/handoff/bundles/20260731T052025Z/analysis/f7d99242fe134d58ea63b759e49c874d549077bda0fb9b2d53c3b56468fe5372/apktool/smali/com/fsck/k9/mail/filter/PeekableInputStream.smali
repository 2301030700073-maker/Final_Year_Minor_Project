.class public final Lcom/fsck/k9/mail/filter/PeekableInputStream;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field public final inputStream:Ljava/io/BufferedInputStream;

.field public peeked:Z

.field public peekedByte:I


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->inputStream:Ljava/io/BufferedInputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peeked:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->inputStream:Ljava/io/BufferedInputStream;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    add-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    return p0
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final peek()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peeked:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->inputStream:Ljava/io/BufferedInputStream;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peekedByte:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peeked:Z

    .line 15
    .line 16
    :cond_0
    iget p0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peekedByte:I

    .line 17
    .line 18
    return p0
.end method

.method public final read()I
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peeked:Z

    if-nez v0, :cond_0

    .line 37
    iget-object p0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peeked:Z

    .line 39
    iget p0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peekedByte:I

    return p0
.end method

.method public final read([B)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 40
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peeked:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->inputStream:Ljava/io/BufferedInputStream;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    iget v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peekedByte:I

    .line 16
    .line 17
    int-to-byte v0, v0

    .line 18
    aput-byte v0, p1, p2

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peeked:Z

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    add-int/2addr p2, p0

    .line 25
    sub-int/2addr p3, p0

    .line 26
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p2, -0x1

    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    return p0

    .line 34
    :cond_1
    add-int/2addr p1, p0

    .line 35
    return p1
.end method

.method public final skip(J)J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peeked:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->inputStream:Ljava/io/BufferedInputStream;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, p1, v2

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peeked:Z

    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    sub-long/2addr p1, v2

    .line 24
    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    return-wide p0

    .line 29
    :cond_1
    return-wide v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->inputStream:Ljava/io/BufferedInputStream;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peeked:Z

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget p0, p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peekedByte:I

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v3, 0x3

    .line 22
    new-array v4, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v1, v4, v5

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-object v2, v4, v1

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    aput-object p0, v4, v1

    .line 32
    .line 33
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v1, "PeekableInputStream(in=%s, peeked=%b, peekedByte=%d)"

    .line 38
    .line 39
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method
