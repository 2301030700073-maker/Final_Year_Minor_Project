.class public final Lcom/fsck/k9/mail/filter/CountingOutputStream;
.super Ljava/io/OutputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public mCount:J


# virtual methods
.method public final write(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/mail/filter/CountingOutputStream;->mCount:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/fsck/k9/mail/filter/CountingOutputStream;->mCount:J

    .line 7
    .line 8
    return-void
.end method

.method public final write([B)V
    .locals 4

    .line 10
    iget-wide v0, p0, Lcom/fsck/k9/mail/filter/CountingOutputStream;->mCount:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fsck/k9/mail/filter/CountingOutputStream;->mCount:J

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 9
    iget-wide p1, p0, Lcom/fsck/k9/mail/filter/CountingOutputStream;->mCount:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/fsck/k9/mail/filter/CountingOutputStream;->mCount:J

    return-void
.end method
