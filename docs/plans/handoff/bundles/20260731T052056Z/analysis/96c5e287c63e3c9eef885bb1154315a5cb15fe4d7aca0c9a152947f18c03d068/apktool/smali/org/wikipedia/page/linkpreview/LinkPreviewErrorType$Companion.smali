.class public final Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static get(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    instance-of v0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 9
    .line 10
    iget v0, v0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 11
    .line 12
    const/16 v1, 0x194

    .line 13
    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    sget-object p1, Lorg/wikipedia/page/Namespace;->USER:Lorg/wikipedia/page/Namespace;

    .line 25
    .line 26
    if-ne p0, p1, :cond_1

    .line 27
    .line 28
    sget-object p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->USER_PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    sget-object p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    if-eqz p0, :cond_5

    .line 35
    .line 36
    instance-of p1, p0, Ljava/net/UnknownHostException;

    .line 37
    .line 38
    if-nez p1, :cond_4

    .line 39
    .line 40
    instance-of p1, p0, Ljava/net/SocketException;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    .line 46
    .line 47
    if-eqz p0, :cond_5

    .line 48
    .line 49
    :cond_4
    :goto_1
    sget-object p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_5
    sget-object p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->GENERIC:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 53
    .line 54
    return-object p0
.end method
