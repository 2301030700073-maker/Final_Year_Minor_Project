.class public final Lcom/fsck/k9/mail/internet/BinaryTempFileMessageBody;
.super Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/Body;


# virtual methods
.method public final setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "7bit"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "8bit"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 19
    .line 20
    const-string p1, "Incompatible content-transfer-encoding for a message/rfc822 body"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mEncoding:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method
