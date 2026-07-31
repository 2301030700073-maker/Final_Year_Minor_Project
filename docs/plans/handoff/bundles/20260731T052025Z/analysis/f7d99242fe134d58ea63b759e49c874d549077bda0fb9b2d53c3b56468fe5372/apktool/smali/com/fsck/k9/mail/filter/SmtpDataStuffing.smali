.class public final Lcom/fsck/k9/mail/filter/SmtpDataStuffing;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public state:I


# virtual methods
.method public final write(I)V
    .locals 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    iput v2, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    if-ne v0, v2, :cond_2

    .line 23
    .line 24
    const/16 v0, 0x2e

    .line 25
    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    invoke-super {p0, v0}, Ljava/io/FilterOutputStream;->write(I)V

    .line 29
    .line 30
    .line 31
    iput v1, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iput v1, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    .line 35
    .line 36
    :goto_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
