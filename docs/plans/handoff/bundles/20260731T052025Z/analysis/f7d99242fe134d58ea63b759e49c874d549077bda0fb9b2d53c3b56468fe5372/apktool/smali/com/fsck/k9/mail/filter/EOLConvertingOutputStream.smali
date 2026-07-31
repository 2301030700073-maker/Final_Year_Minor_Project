.class public final Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public ignoreLf:Z

.field public lastByte:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->ignoreLf:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final endWithCrLfAndFlush()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->lastByte:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/16 v2, 0xd

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->writeByte(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->ignoreLf:Z

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->lastByte:I

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->writeByte(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->writeByte(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->lastByte:I

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->writeByte(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->ignoreLf:Z

    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final write(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->ignoreLf:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->ignoreLf:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v2, 0xd

    .line 14
    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    iget v3, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->lastByte:I

    .line 18
    .line 19
    if-eq v3, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->writeByte(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-eq p1, v1, :cond_2

    .line 26
    .line 27
    iget v3, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->lastByte:I

    .line 28
    .line 29
    if-ne v3, v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->writeByte(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->writeByte(I)V

    .line 35
    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->ignoreLf:Z

    .line 38
    .line 39
    return-void
.end method

.method public final writeByte(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->lastByte:I

    .line 5
    .line 6
    return-void
.end method
