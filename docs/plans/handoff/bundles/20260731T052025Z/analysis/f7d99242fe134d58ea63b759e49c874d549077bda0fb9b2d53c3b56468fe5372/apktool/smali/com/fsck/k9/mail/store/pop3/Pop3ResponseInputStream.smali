.class public final Lcom/fsck/k9/mail/store/pop3/Pop3ResponseInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field public mFinished:Z

.field public mIn:Ljava/io/BufferedInputStream;

.field public mStartOfLine:Z


# virtual methods
.method public final read()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3ResponseInputStream;->mIn:Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3ResponseInputStream;->mFinished:Z

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3ResponseInputStream;->mStartOfLine:Z

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    const/16 v3, 0x2e

    .line 19
    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v3, 0xd

    .line 27
    .line 28
    if-ne v1, v3, :cond_1

    .line 29
    .line 30
    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/pop3/Pop3ResponseInputStream;->mFinished:Z

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    const/16 v0, 0xa

    .line 37
    .line 38
    if-ne v1, v0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v4, 0x0

    .line 42
    :goto_0
    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/pop3/Pop3ResponseInputStream;->mStartOfLine:Z

    .line 43
    .line 44
    return v1
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
