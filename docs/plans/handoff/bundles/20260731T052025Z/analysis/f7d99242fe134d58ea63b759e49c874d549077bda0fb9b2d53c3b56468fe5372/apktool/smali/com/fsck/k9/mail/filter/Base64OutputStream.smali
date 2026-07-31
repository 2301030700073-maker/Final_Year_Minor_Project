.class public final Lcom/fsck/k9/mail/filter/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final base64:Lcom/fsck/k9/mail/filter/Base64;

.field public final doEncode:Z

.field public final singleByte:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    new-array v0, p1, [B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->singleByte:[B

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->doEncode:Z

    .line 10
    .line 11
    new-instance p1, Lcom/fsck/k9/mail/filter/Base64;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/fsck/k9/mail/filter/Base64;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->singleByte:[B

    .line 4
    .line 5
    iget-boolean v3, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->doEncode:Z

    .line 6
    .line 7
    iget-object v4, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v4, v2, v1, v0}, Lcom/fsck/k9/mail/filter/Base64;->encode([BII)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v4, v2, v1, v0}, Lcom/fsck/k9/mail/filter/Base64;->decode([BII)V

    .line 16
    .line 17
    .line 18
    :goto_0
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/filter/Base64OutputStream;->flush(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final flush()V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/filter/Base64OutputStream;->flush(Z)V

    return-void
.end method

.method public final flush(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/mail/filter/Base64;->buf:[B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v1, v0, Lcom/fsck/k9/mail/filter/Base64;->pos:I

    .line 9
    .line 10
    iget v3, v0, Lcom/fsck/k9/mail/filter/Base64;->readPos:I

    .line 11
    .line 12
    sub-int/2addr v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    if-lez v1, :cond_1

    .line 16
    .line 17
    new-array v3, v1, [B

    .line 18
    .line 19
    invoke-virtual {v0, v1, v3}, Lcom/fsck/k9/mail/filter/Base64;->readResults(I[B)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 26
    .line 27
    invoke-virtual {v1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 50
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, v0, v1, p1}, Lcom/fsck/k9/mail/filter/Base64OutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-ltz p2, :cond_3

    .line 5
    .line 6
    if-ltz p3, :cond_3

    .line 7
    .line 8
    add-int v0, p2, p3

    .line 9
    .line 10
    if-ltz v0, :cond_3

    .line 11
    .line 12
    array-length v1, p1

    .line 13
    if-gt p2, v1, :cond_2

    .line 14
    .line 15
    array-length v1, p1

    .line 16
    if-gt v0, v1, :cond_2

    .line 17
    .line 18
    if-lez p3, :cond_1

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->doEncode:Z

    .line 21
    .line 22
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, p1, p2, p3}, Lcom/fsck/k9/mail/filter/Base64;->encode([BII)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/fsck/k9/mail/filter/Base64;->decode([BII)V

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/filter/Base64OutputStream;->flush(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method
