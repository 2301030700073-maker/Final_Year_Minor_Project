.class public final Lorg/schabi/newpipe/extractor/search/SearchInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private isCorrectedSearch:Z

.field private metaInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final searchString:Ljava/lang/String;

.field private searchSuggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Search"

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    .line 9
    .line 10
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchString:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchInfo;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->fetchPage()V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/schabi/newpipe/extractor/search/SearchInfo;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 11
    .line 12
    iget v0, v0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;->getSearchString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {p1, v0, v1, v2}, Lorg/schabi/newpipe/extractor/search/SearchInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/Info;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getSearchSuggestion()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p1, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchSuggestion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_1
    move-exception v0

    .line 51
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->isCorrectedSearch()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput-boolean v0, p1, Lorg/schabi/newpipe/extractor/search/SearchInfo;->isCorrectedSearch:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catch_2
    move-exception v0

    .line 62
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getMetaInfo()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p1, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :catch_3
    move-exception v0

    .line 73
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 74
    .line 75
    .line 76
    :goto_3
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/ListInfo;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->itemsList:Ljava/util/List;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 88
    .line 89
    .line 90
    return-object p1
.end method


# virtual methods
.method public final getMetaInfo()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSearchSuggestion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchSuggestion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isCorrectedSearch()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->isCorrectedSearch:Z

    .line 2
    .line 3
    return p0
.end method
