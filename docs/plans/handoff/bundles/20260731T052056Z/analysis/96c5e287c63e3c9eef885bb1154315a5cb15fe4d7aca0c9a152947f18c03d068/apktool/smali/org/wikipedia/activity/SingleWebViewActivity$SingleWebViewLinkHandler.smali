.class public final Lorg/wikipedia/activity/SingleWebViewActivity$SingleWebViewLinkHandler;
.super Lorg/wikipedia/page/LinkHandler;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# virtual methods
.method public final getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity$SingleWebViewLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

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
    .locals 0

    .line 1
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
