.class public final Lcom/fsck/k9/message/TextBodyBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public mAppendSignature:Z

.field public mIncludeQuotedText:Z

.field public mInsertSeparator:Z

.field public mQuotedText:Ljava/lang/String;

.field public mQuotedTextHtml:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

.field public mReplyAfterQuote:Z

.field public mSignature:Ljava/lang/String;

.field public mSignatureBeforeQuotedText:Z


# virtual methods
.method public final getSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "\r\n"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    const-string p0, ""

    .line 30
    .line 31
    return-object p0
.end method
