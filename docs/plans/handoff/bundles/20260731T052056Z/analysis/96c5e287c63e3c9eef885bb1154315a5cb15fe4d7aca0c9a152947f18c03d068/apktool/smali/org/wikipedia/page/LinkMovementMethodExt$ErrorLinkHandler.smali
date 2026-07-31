.class public final Lorg/wikipedia/page/LinkMovementMethodExt$ErrorLinkHandler;
.super Lorg/wikipedia/page/LinkHandler;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# virtual methods
.method public final getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/LinkMovementMethodExt$ErrorLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onDiffLinkClicked(Lorg/wikipedia/page/PageTitle;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 1
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1, v0}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method
