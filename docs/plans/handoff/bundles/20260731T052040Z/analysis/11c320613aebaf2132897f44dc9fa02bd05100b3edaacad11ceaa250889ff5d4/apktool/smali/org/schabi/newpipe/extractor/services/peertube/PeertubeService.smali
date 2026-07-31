.class public final Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public instance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;


# virtual methods
.method public final getChannelExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/ListExtractor;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "/video-channels/"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;-><init>(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;I)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeAccountExtractor;-><init>(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;I)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getChannelTabExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getChannelTabLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->INSTANCE$1:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCommentsExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor;->document:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final getCommentsLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->INSTANCE$2:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKioskList()Lorg/jsoup/parser/TokenData;
    .locals 4

    .line 1
    const-string v0, "Trending"

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;

    .line 4
    .line 5
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/jsoup/parser/TokenData;

    .line 11
    .line 12
    invoke-direct {v3, p0}, Lorg/jsoup/parser/TokenData;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v3, v2, v1, v0}, Lorg/jsoup/parser/TokenData;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p0, "Most liked"

    .line 19
    .line 20
    invoke-virtual {v3, v2, v1, p0}, Lorg/jsoup/parser/TokenData;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p0, "Recently added"

    .line 24
    .line 25
    invoke-virtual {v3, v2, v1, p0}, Lorg/jsoup/parser/TokenData;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p0, "Local"

    .line 29
    .line 30
    invoke-virtual {v3, v2, v1, p0}, Lorg/jsoup/parser/TokenData;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, v3, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    return-object v3

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public final getPlaylistExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubePlaylistExtractor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubePlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final getPlaylistLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->INSTANCE$3:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSearchExtractor;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "sepia_"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    :cond_0
    invoke-direct {v1, p0, p1, v3}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Z)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public final getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeSearchQueryHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeSearchQueryHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/ListExtractor;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getStreamLHFactory()Lokhttp3/Cookie$Companion;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeStreamLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeStreamLinkHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubscriptionExtractor()Landroidx/core/app/NotificationCompat$Style;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSuggestionExtractor()Lorg/koin/core/logger/Logger;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSuggestionExtractor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSuggestionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
