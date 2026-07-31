.class public abstract Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public final bridge synthetic fromQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p0

    return-object p0
.end method

.method public final fromQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;
    .locals 6

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->contentFilters:Ljava/util/List;

    .line 14
    .line 15
    iget-object v5, p0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->sortFilter:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final onAcceptUrl(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
