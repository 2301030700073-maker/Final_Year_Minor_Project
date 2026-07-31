.class public final Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private commentsCount:I

.field private commentsDisabled:Z


# direct methods
.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getCommentsLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move-object p0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getCommentsExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    if-nez p0, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->fetchPage()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 25
    .line 26
    iget p1, p1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 27
    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 29
    .line 30
    check-cast v0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 31
    .line 32
    new-instance v1, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    .line 33
    .line 34
    const-string v2, "Comments"

    .line 35
    .line 36
    invoke-direct {v1, p1, v0, v2}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, v1, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsDisabled:Z

    .line 41
    .line 42
    invoke-static {v1, p0}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/ListInfo;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->isCommentsDisabled()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, v1, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsDisabled:Z

    .line 51
    .line 52
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->itemsList:Ljava/util/List;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getCommentsCount()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    iput p0, v1, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 69
    .line 70
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method


# virtual methods
.method public final isCommentsDisabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsDisabled:Z

    .line 2
    .line 3
    return p0
.end method
