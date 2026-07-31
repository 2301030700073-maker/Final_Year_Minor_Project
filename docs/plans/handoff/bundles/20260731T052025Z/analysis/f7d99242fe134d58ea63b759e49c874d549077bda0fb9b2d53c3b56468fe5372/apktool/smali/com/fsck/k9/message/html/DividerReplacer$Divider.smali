.class public final Lcom/fsck/k9/message/html/DividerReplacer$Divider;
.super Lcom/fsck/k9/message/html/HtmlModification;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ", endIndex="

    .line 2
    .line 3
    const-string/jumbo v1, "}"

    .line 4
    .line 5
    .line 6
    const-string v2, "Divider{startIndex="

    .line 7
    .line 8
    iget v3, p0, Lcom/fsck/k9/message/html/HtmlModification;->startIndex:I

    .line 9
    .line 10
    iget p0, p0, Lcom/fsck/k9/message/html/HtmlModification;->endIndex:I

    .line 11
    .line 12
    invoke-static {v2, v3, v0, p0, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
