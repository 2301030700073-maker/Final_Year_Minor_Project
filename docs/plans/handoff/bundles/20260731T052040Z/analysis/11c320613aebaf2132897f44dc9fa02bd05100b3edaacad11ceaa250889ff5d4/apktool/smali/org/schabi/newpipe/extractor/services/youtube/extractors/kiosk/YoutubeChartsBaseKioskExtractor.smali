.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;
.super Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final YT_CHARTS_SUPPORTED_COUNTRY_CODES:Ljava/util/Set;


# instance fields
.field public browseResponse:Lcom/grack/nanojson/JsonObject;

.field public final chartType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 62

    .line 1
    const-string v60, "ZA"

    .line 2
    .line 3
    const-string v61, "ZW"

    .line 4
    .line 5
    const-string v1, "AE"

    .line 6
    .line 7
    const-string v2, "AR"

    .line 8
    .line 9
    const-string v3, "AT"

    .line 10
    .line 11
    const-string v4, "AU"

    .line 12
    .line 13
    const-string v5, "BE"

    .line 14
    .line 15
    const-string v6, "BO"

    .line 16
    .line 17
    const-string v7, "BR"

    .line 18
    .line 19
    const-string v8, "CA"

    .line 20
    .line 21
    const-string v9, "CH"

    .line 22
    .line 23
    const-string v10, "CL"

    .line 24
    .line 25
    const-string v11, "CO"

    .line 26
    .line 27
    const-string v12, "CR"

    .line 28
    .line 29
    const-string v13, "CZ"

    .line 30
    .line 31
    const-string v14, "DE"

    .line 32
    .line 33
    const-string v15, "DK"

    .line 34
    .line 35
    const-string v16, "DO"

    .line 36
    .line 37
    const-string v17, "EC"

    .line 38
    .line 39
    const-string v18, "EE"

    .line 40
    .line 41
    const-string v19, "EG"

    .line 42
    .line 43
    const-string v20, "ES"

    .line 44
    .line 45
    const-string v21, "FI"

    .line 46
    .line 47
    const-string v22, "FR"

    .line 48
    .line 49
    const-string v23, "GB"

    .line 50
    .line 51
    const-string v24, "GT"

    .line 52
    .line 53
    const-string v25, "HN"

    .line 54
    .line 55
    const-string v26, "HU"

    .line 56
    .line 57
    const-string v27, "ID"

    .line 58
    .line 59
    const-string v28, "IE"

    .line 60
    .line 61
    const-string v29, "IL"

    .line 62
    .line 63
    const-string v30, "IN"

    .line 64
    .line 65
    const-string v31, "IS"

    .line 66
    .line 67
    const-string v32, "IT"

    .line 68
    .line 69
    const-string v33, "JP"

    .line 70
    .line 71
    const-string v34, "KE"

    .line 72
    .line 73
    const-string v35, "KR"

    .line 74
    .line 75
    const-string v36, "LU"

    .line 76
    .line 77
    const-string v37, "MX"

    .line 78
    .line 79
    const-string v38, "NG"

    .line 80
    .line 81
    const-string v39, "NI"

    .line 82
    .line 83
    const-string v40, "NL"

    .line 84
    .line 85
    const-string v41, "NO"

    .line 86
    .line 87
    const-string v42, "NZ"

    .line 88
    .line 89
    const-string v43, "PA"

    .line 90
    .line 91
    const-string v44, "PE"

    .line 92
    .line 93
    const-string v45, "PL"

    .line 94
    .line 95
    const-string v46, "PT"

    .line 96
    .line 97
    const-string v47, "PY"

    .line 98
    .line 99
    const-string v48, "RO"

    .line 100
    .line 101
    const-string v49, "RS"

    .line 102
    .line 103
    const-string v50, "RU"

    .line 104
    .line 105
    const-string v51, "SA"

    .line 106
    .line 107
    const-string v52, "SE"

    .line 108
    .line 109
    const-string v53, "SV"

    .line 110
    .line 111
    const-string v54, "TR"

    .line 112
    .line 113
    const-string v55, "TZ"

    .line 114
    .line 115
    const-string v56, "UA"

    .line 116
    .line 117
    const-string v57, "UG"

    .line 118
    .line 119
    const-string v58, "US"

    .line 120
    .line 121
    const-string v59, "UY"

    .line 122
    .line 123
    filled-new-array/range {v1 .. v61}, [Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v1, Ljava/util/HashSet;

    .line 128
    .line 129
    const/16 v2, 0x3d

    .line 130
    .line 131
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 132
    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    :goto_0
    if-ge v3, v2, :cond_1

    .line 136
    .line 137
    aget-object v4, v0, v3

    .line 138
    .line 139
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_0

    .line 147
    .line 148
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_0
    const-string v0, "duplicate element: "

    .line 152
    .line 153
    invoke-static {v4, v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_1
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->YT_CHARTS_SUPPORTED_COUNTRY_CODES:Ljava/util/Set;

    .line 162
    .line 163
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->chartType:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->browseResponse:Lcom/grack/nanojson/JsonObject;

    .line 2
    .line 3
    const-string v1, "contents"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "sectionListRenderer"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "musicAnalyticsSectionRenderer"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "content"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string/jumbo v2, "videos"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string/jumbo v2, "videoViews"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v2, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 57
    .line 58
    iget p0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-direct {v2, p0, v3, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(ILjava/util/Comparator;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda4;

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKiosk$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 75
    .line 76
    .line 77
    new-instance p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 78
    .line 79
    invoke-direct {p0, v2, v3}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    .line 80
    .line 81
    .line 82
    return-object p0
.end method

.method public final getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->EMPTY:Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 2
    .line 3
    return-object p0
.end method

.method public onFetchPage(Lkotlin/io/CloseableKt;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Lorg/jsoup/parser/TokenData;

    .line 14
    .line 15
    new-instance v5, Lokhttp3/Dispatcher;

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v7, "WEB_MUSIC_ANALYTICS"

    .line 19
    .line 20
    const-string v8, "2.0"

    .line 21
    .line 22
    const-string v9, "31"

    .line 23
    .line 24
    invoke-direct {v5, v7, v8, v9, v6}, Lokhttp3/Dispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v10, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 28
    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    const/4 v11, -0x1

    .line 32
    const/4 v12, 0x0

    .line 33
    const/4 v13, 0x0

    .line 34
    const/4 v14, 0x0

    .line 35
    const/4 v15, 0x0

    .line 36
    invoke-direct/range {v10 .. v16}, Landroidx/compose/ui/node/RulerTrackingMap;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v6, 0xc

    .line 40
    .line 41
    invoke-direct {v4, v5, v10, v6}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/jsoup/parser/TokenData;)Lcom/grack/nanojson/JsonBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v4, "browseId"

    .line 53
    .line 54
    const-string v6, "FEmusic_analytics_charts_home"

    .line 55
    .line 56
    invoke-virtual {v1, v6, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string v4, "perspective=CHART_DETAILS&chart_params_country_code="

    .line 64
    .line 65
    const-string v6, "&chart_params_chart_type="

    .line 66
    .line 67
    iget-object v7, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->chartType:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v4, v3, v6, v7}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "query"

    .line 74
    .line 75
    invoke-virtual {v1, v3, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v1, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 81
    .line 82
    invoke-static {v1}, Lorg/jsoup/Jsoup;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v3, Ljava/util/HashMap;

    .line 93
    .line 94
    const-string v4, "https://charts.youtube.com"

    .line 95
    .line 96
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 101
    .line 102
    .line 103
    iget-object v4, v5, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v4, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v9, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    iget-object v4, v0, Lorg/schabi/newpipe/extractor/ListExtractor;->downloader:Lkotlin/io/CloseableKt;

    .line 115
    .line 116
    const-string v5, "https://charts.youtube.com/youtubei/v1/browse?alt=json&prettyPrint=false"

    .line 117
    .line 118
    invoke-virtual {v4, v5, v3, v1, v2}, Lkotlin/io/CloseableKt;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Landroidx/recyclerview/widget/ChildHelper;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Landroidx/recyclerview/widget/ChildHelper;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iput-object v1, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeChartsBaseKioskExtractor;->browseResponse:Lcom/grack/nanojson/JsonObject;

    .line 131
    .line 132
    return-void
.end method
